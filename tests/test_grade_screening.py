import asyncio
import copy
import unittest
from unittest.mock import AsyncMock, patch

from screening import FIELDS, assess_gpax, group_universities, screening_entries, study_field
from test_pending_program_cards import DATA, PROGRAMS, app, card_text, make_interaction


NAVIGATION = [
    {**p, "campus_name": p["university_campuses"]["name"], "university_name": p["universities"]["name"]}
    for p in PROGRAMS.values() if p["code"] not in app.PROGRAM_CODES_EXCLUDED_FROM_BOT_SCOPE
]
PROJECTS = {p["code"]: p for p in DATA["projects"]}
CANDIDATES = []
for link in DATA["project_programs"]:
    source = PROJECTS[link["project_code"]]
    if source["publication_status"] != "official" or not source["is_visible"]:
        continue
    criteria = next((c for c in DATA["criteria"] if c["project_code"] == source["code"] and c.get("program_code") == link["program_code"]), {})
    project = {
        **source, "selected_criteria": criteria,
        "slots_available": link["slots_available"],
        "admission_timeline": [e for e in DATA["timeline"] if e["project_code"] == source["code"]],
    }
    CANDIDATES.append({"program": PROGRAMS[link["program_code"]], "project": project})


def results(gpax=3.2, field="engineering"):
    entries, excluded = screening_entries(CANDIDATES, DATA, NAVIGATION, gpax, field)
    return entries, group_universities(entries), excluded


class GradeRulesTests(unittest.TestCase):
    def test_thresholds_unknown_and_conditional(self):
        self.assertEqual(assess_gpax(3.0, 3.0)["status"], "meets")
        self.assertEqual(assess_gpax(2.99, 3.0)["status"], "below")
        self.assertEqual(assess_gpax(0, 0)["status"], "meets")
        for threshold in (None, "bad", float("nan"), float("inf"), 5, -1):
            self.assertEqual(assess_gpax(4, threshold)["status"], "unknown")
        self.assertEqual(assess_gpax(4, 3, conditional=True)["status"], "unknown")

    def test_faculty_and_campus_classification(self):
        expectations = {
            "kmitl-it": "it", "kmutt-sit-cs": "it", "kmitl-ait": "it",
            "cu-engineering-cedt": "engineering", "ku-csc-computer-science": "science",
            "ku-csc-computer-engineering": "engineering", "kmitl-chumphon-computer-engineering": "engineering",
            "kmutnb-fitm-information-network-engineering": "engineering", "kmitl-science-computer-science": "science",
        }
        for code, field in expectations.items():
            self.assertEqual(study_field(PROGRAMS[code]), field, code)

    def test_fallback_and_current_year_are_not_mixed(self):
        entries, groups, excluded = results()
        cedt = [e for e in entries if e["program"]["code"] == "cu-engineering-cedt"]
        self.assertEqual(len(cedt), 1)
        self.assertEqual(cedt[0]["kind"], "reference")
        self.assertEqual(cedt[0]["year"], 2569)
        self.assertEqual(cedt[0]["assessment"]["status"], "meets")
        current_codes = {e["program"]["code"] for e in entries if e["kind"] == "current"}
        self.assertFalse(any(e["kind"] == "reference" and e["program"]["code"] in current_codes for e in entries))
        self.assertNotIn("kmitl-bit", {e["program"]["code"] for e in results(field="it")[0]})
        self.assertGreater(len(entries), 10)
        self.assertEqual(sum(len(g["entries"]) for g in groups), len(entries))
        self.assertEqual(sum(g["current"] + g["reference"] + g["unknown"] for g in groups), len(entries))
        self.assertGreater(excluded, 0)

    def test_no_changes_to_source_and_invalid_input(self):
        original = copy.deepcopy(CANDIDATES)
        for field in FIELDS:
            entries, _, _ = results(field=field)
            self.assertTrue(all(study_field(e["program"]) == field for e in entries))
            self.assertTrue(all(e["assessment"]["status"] != "below" for e in entries))
        self.assertEqual(original, CANDIDATES)
        for grade, field in ((5, "it"), (-1, "it"), (float("nan"), "it"), (3, "missing")):
            with self.assertRaises(ValueError):
                screening_entries(CANDIDATES, DATA, NAVIGATION, grade, field)

    def test_old_cutoff_never_disqualifies_current_year(self):
        entries, _, _ = results(2.0, "engineering")
        cedt = next(e for e in entries if e["program"]["code"] == "cu-engineering-cedt")
        self.assertEqual(cedt["assessment"]["status"], "unknown")
        self.assertIn("ยังตัดสินปี 2570 ไม่ได้", cedt["assessment"]["reason"])

    def test_conditional_gpax_does_not_exclude_other_qualifications(self):
        entries, _, _ = results(2.0, "science")
        special = [e for e in entries if e["program"]["code"] == "kmitl-science-computer-science"]
        self.assertTrue(special)
        self.assertTrue(all(e["assessment"]["status"] == "unknown" for e in special))

    def test_all_cards_fit_discord_and_keep_year_warnings(self):
        for field in FIELDS:
            entries, groups, excluded = results(field=field)
            profile = {"gpax": 3.2, "field": field}
            cards = [app.build_grade_universities_embed(profile, groups, excluded)]
            for i, entry in enumerate(entries):
                sections = ("assessment", "criteria", "portfolio", "timeline") if entry["kind"] == "current" else ("assessment", "criteria")
                cards += [app.build_grade_result_embed(entry, profile, i, len(entries), s) for s in sections]
                if entry["kind"] == "reference":
                    self.assertIn("ไม่ใช้ยืนยัน", card_text(app.build_grade_result_embed(entry, profile, i, len(entries))))
            for card in cards:
                self.assertLessEqual(len(card), 6000)
                self.assertLessEqual(len(card.fields), 25)
                for field in card.fields:
                    self.assertLessEqual(len(field.value), 1024)
                    self.assertLessEqual(len(field.name), 256)


class GradeFlowTests(unittest.IsolatedAsyncioTestCase):
    async def test_direct_grade_command_opens_private_flow(self):
        interaction = make_interaction()
        with patch.object(app.bot, "load_navigation_programs", new=AsyncMock(return_value=NAVIGATION)):
            await app.open_grade_screening(interaction)
        interaction.response.defer.assert_awaited_once_with(thinking=True, ephemeral=True)
        response = interaction.edit_original_response.call_args.kwargs
        self.assertIn("GPAX", response["content"])
        self.assertIsInstance(response["view"], app.GradeScreeningFieldView)

    async def test_start_field_grade_university_then_direct_result(self):
        interaction = make_interaction()
        interaction.response.send_modal = AsyncMock()
        start = app.StartView(42, NAVIGATION)
        await start.beginner_screening.callback(interaction)
        field_view = interaction.response.edit_message.call_args.kwargs["view"]
        self.assertIsInstance(field_view, app.GradeScreeningFieldView)
        selector = next(c for c in field_view.children if isinstance(c, app.GradeScreeningFieldSelect))
        self.assertEqual(len(selector.options), 3)
        selector._values = ["engineering"]
        await selector.callback(interaction)
        modal = interaction.response.send_modal.call_args.args[0]
        self.assertEqual(len(modal.children), 1)
        modal.gpax_input._value = "3.20"
        entries, groups, excluded = results()
        with patch.object(app, "fetch_grade_screening", return_value=(entries, excluded)):
            await modal.on_submit(interaction)
        interaction.response.defer.assert_awaited_once_with(thinking=True, ephemeral=True)
        response = interaction.edit_original_response.call_args.kwargs
        universities = response["view"]
        self.assertIsInstance(universities, app.GradeScreeningUniversityView)
        select = next(c for c in universities.children if isinstance(c, app.GradeScreeningUniversitySelect))
        self.assertEqual(len(select.options), len(groups))
        select._values = ["CU"]
        interaction.response.defer.reset_mock()
        interaction.edit_original_response.reset_mock()
        await select.callback(interaction)
        interaction.response.defer.assert_awaited_once_with()
        response = interaction.edit_original_response.call_args.kwargs
        view = response["view"]
        self.assertIsInstance(view, app.GradeScreeningResultView)
        self.assertEqual(view.section, "assessment")
        self.assertIn("GPAX ของคุณ 3.20", card_text(response["embeds"][0]))
        self.assertFalse(any(isinstance(c, app.discord.ui.Select) for c in view.children))
        await view.show_criteria.callback(interaction)
        detail = interaction.response.edit_message.call_args.kwargs["view"]
        self.assertEqual(detail.section, "criteria")
        self.assertEqual(detail.profile["gpax"], 3.2)
        await detail.next_result.callback(interaction)
        next_result = interaction.response.edit_message.call_args.kwargs["view"]
        self.assertEqual(next_result.index, 1)
        self.assertEqual(next_result.section, "assessment")
        await next_result.back_to_universities.callback(interaction)
        restored = interaction.response.edit_message.call_args.kwargs["view"]
        self.assertEqual(restored.groups, groups)
        await restored.edit_profile.callback(interaction)
        self.assertEqual(interaction.response.edit_message.call_args.kwargs["view"].gpax, 3.2)

    async def test_validation_ownership_and_retry(self):
        for value in ("oops", "4.01", "-1", "nan", "inf", ""):
            modal = app.GradeScreeningModal(42, NAVIGATION, "it")
            modal.gpax_input._value = value
            interaction = make_interaction()
            with patch.object(app, "fetch_grade_screening") as fetch:
                await modal.on_submit(interaction)
                fetch.assert_not_called()
            self.assertTrue(interaction.response.send_message.call_args.kwargs["ephemeral"])
        modal.gpax_input._value = "3.20"
        interaction = make_interaction()
        interaction.user.id = 7
        await modal.on_submit(interaction)
        interaction.response.defer.assert_not_awaited()
        interaction.user.id = 42
        with patch.object(app, "fetch_grade_screening", side_effect=TimeoutError), patch.object(app, "logger"):
            await modal.on_submit(interaction)
        response = interaction.edit_original_response.call_args.kwargs
        self.assertIn("ไม่ใช่ผลว่าไม่ผ่าน", response["content"])
        self.assertIsInstance(response["view"], app.GradeScreeningFieldView)

    async def test_empty_result_has_recovery_controls(self):
        profile = {"gpax": 0, "field": "engineering"}
        view = app.GradeScreeningUniversityView(42, NAVIGATION, profile, [], 10)
        self.assertFalse(any(isinstance(c, app.discord.ui.Select) for c in view.children))
        self.assertEqual({c.label for c in view.children}, {"แก้เกรด / เปลี่ยนสาย", "เริ่มใหม่"})

    async def test_pagination_no_global_top_ten_limit(self):
        entries, groups, excluded = results()
        many = [{**groups[0], "key": f"U{i}", "name": f"University {i}"} for i in range(30)]
        profile = {"gpax": 3.2, "field": "engineering"}
        view = app.GradeScreeningUniversityView(42, NAVIGATION, profile, many, excluded)
        select = next(c for c in view.children if isinstance(c, app.GradeScreeningUniversitySelect))
        self.assertEqual(len(select.options), 25)
        interaction = make_interaction()
        await view.next_page.callback(interaction)
        second = interaction.response.edit_message.call_args.kwargs["view"]
        select = next(c for c in second.children if isinstance(c, app.GradeScreeningUniversitySelect))
        self.assertEqual(len(select.options), 5)
        self.assertTrue(second.next_page.disabled)

    async def test_profiles_stay_private_and_separate(self):
        async def submit(grade, user):
            modal = app.GradeScreeningModal(user, NAVIGATION, "engineering")
            modal.gpax_input._value = grade
            interaction = make_interaction()
            interaction.user.id = user
            await modal.on_submit(interaction)
            return interaction.edit_original_response.call_args.kwargs["view"].profile
        def fetch(navigation, grade, field):
            entries, _, excluded = results(grade, field)
            return entries, excluded
        with patch.object(app, "fetch_grade_screening", side_effect=fetch):
            low, high = await asyncio.gather(submit("2.00", 42), submit("4.00", 43))
        self.assertEqual(low["gpax"], 2.0)
        self.assertEqual(high["gpax"], 4.0)


if __name__ == "__main__":
    unittest.main()
