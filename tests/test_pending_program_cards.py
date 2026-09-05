"""Offline regressions for readable pending-program cards and navigation."""
import copy
import json
import os
from pathlib import Path
from types import SimpleNamespace
import unittest
from unittest.mock import AsyncMock, patch

import discord

# No live database or Discord connection is needed for presentation tests.
with patch.dict(os.environ, {
    "DISCORD_BOT_TOKEN": "test-only",
    "SUPABASE_URL": "https://example.invalid",
    "SUPABASE_KEY": "test-only",
}), patch("supabase.create_client"):
    import Bot_Portfolio as app


DATA = json.loads((Path(__file__).resolve().parents[1] / "datasets" / "tcas70_admissions.json").read_text(encoding="utf-8"))
PROGRAMS = {}
for source in DATA["programs"]:
    program = copy.deepcopy(source)
    program["universities"] = next(u for u in DATA["universities"] if u["short_name"] == program["university_short_name"])
    program["university_campuses"] = next(c for c in DATA["campuses"] if c["code"] == program["campus_code"] and c["university_short_name"] == program["university_short_name"])
    program["projects"] = []
    PROGRAMS[program["code"]] = program


def card_text(embed):
    return "\n".join([embed.title or "", embed.description or ""] + [f"{f.name}\n{f.value}" for f in embed.fields])


def make_interaction():
    return SimpleNamespace(
        user=SimpleNamespace(id=42),
        response=SimpleNamespace(edit_message=AsyncMock(), defer=AsyncMock(), send_message=AsyncMock()),
        edit_original_response=AsyncMock(),
    )


class CardTests(unittest.TestCase):
    def test_all_dataset_cards_fit_discord_limits_and_preserve_data(self):
        for program in PROGRAMS.values():
            original = copy.deepcopy(program)
            references = [p for p in program.get("admission_previews", []) if p.get("reference_academic_year") != 2570]
            cards = [app.build_program_profile_embed(program, s) for s in ("summary", "curriculum")]
            cards += [app.build_program_profile_embed(program, "references", i) for i in range(len(references))]
            for card in cards:
                with self.subTest(program=program["code"], title=card.title):
                    self.assertLessEqual(len(card), 6000)
                    self.assertLessEqual(len(card.fields), 25)
                    self.assertLessEqual(len(card.title or ""), 256)
                    for field in card.fields:
                        self.assertLessEqual(len(field.name), 256)
                        self.assertLessEqual(len(field.value), 1024)
                        self.assertFalse(field.inline)
            for index, reference in enumerate(references):
                text = card_text(app.build_program_profile_embed(program, "references", index))
                for key in ("qualification_summary", "application_period", "note", "source_url", "round_label"):
                    if reference.get(key):
                        self.assertIn(reference[key], text)
                for key in ("portfolio_summary", "selection_summary", "english_score_summary"):
                    for part in (reference.get(key) or "").split(";"):
                        if part.strip():
                            self.assertIn(part.strip(), text)
            summary_text = card_text(cards[0])
            for preview in program.get("admission_previews", []):
                if preview.get("reference_academic_year") == 2570:
                    if preview.get("source_url"):
                        self.assertIn(preview["source_url"], summary_text)
                    if preview.get("note"):
                        self.assertIn(preview["note"], summary_text)
            self.assertEqual(original, program)

    def test_cedt_summary_is_short_and_years_are_explicit(self):
        program = PROGRAMS["cu-engineering-cedt"]
        card = app.build_program_profile_embed(program)
        text = card_text(card)
        self.assertLess(len(card), 1400)
        self.assertEqual(text.count(program["major_name"]), 1)
        self.assertIn("TCAS69", text)
        self.assertIn("จำนวนรับปีก่อน 220 คน", text)
        self.assertIn("ไม่ใช่เกณฑ์ TCAS70", text)
        self.assertNotIn("GPAX: GPAX", text)
        self.assertNotIn("3-17 พ.ย. 2568", text)
        reference = card_text(app.build_program_profile_embed(program, "references"))
        self.assertIn("ค่าสมัคร 0 บาท", reference)
        self.assertIn("ช่วงสมัครของปีก่อน", reference)
        self.assertIn("\n• สัมภาษณ์", reference)

    def test_missing_and_zero_values(self):
        program = copy.deepcopy(PROGRAMS["cu-engineering-cedt"])
        program["admission_previews"] = [{"title": "reference", "slots_available": 0, "min_gpax": 0, "application_fee": 0}]
        text = card_text(app.build_program_profile_embed(program, "references"))
        for value in ("ไม่ระบุปี", "0 คน", "0.00", "ค่าสมัคร 0 บาท"):
            self.assertIn(value, text)
        for preview in ({}, {"gpax_summary": "GPAX: 5 ภาค ไม่น้อยกว่า 3.00"}):
            self.assertFalse(app.preview_gpax_text(preview).startswith("GPAX"))


class NavigationTests(unittest.IsolatedAsyncioTestCase):
    def view(self, program, section="summary", reference_index=0):
        return app.PendingProgramDetailView(42, [], program["university_short_name"], program["campus_code"], program["faculty_name"], program, section, reference_index)

    async def test_university_projects_view_has_direct_project_selector(self):
        program = copy.deepcopy(PROGRAMS["cu-engineering-cedt"])
        entries = [{
            "program": program,
            "project": {
                "code": "project-1",
                "name": "โครงการ Portfolio",
                "publication_status": "official",
                "selected_criteria": {},
            },
        }]
        view = app.UniversityProjectsView(
            42, [program], program["university_short_name"], entries
        )
        selector = next(c for c in view.children if isinstance(c, discord.ui.Select))
        self.assertEqual(selector.placeholder, "เลือกโครงการเพื่อดูรายละเอียด")
        self.assertIn("✅ ยืนยันแล้ว", selector.options[0].description)
        button_labels = [getattr(c, "label", None) for c in view.children]
        self.assertIn("← เลือกมหาวิทยาลัย", button_labels)
        self.assertNotIn("ก่อนหน้า", button_labels)
        view.stop()

    async def test_tabs_for_all_programs_no_duplicate_selector(self):
        for program in PROGRAMS.values():
            for section in ("summary", "curriculum", "references"):
                view = self.view(program, section)
                self.assertFalse(any(isinstance(c, discord.ui.Select) for c in view.children))
                labels = [c.label for c in view.children]
                self.assertIn("← เลือกสาขาอื่น", labels)
                self.assertIn("เริ่มใหม่", labels)
                self.assertEqual("เกณฑ์ปีก่อน" in labels, bool(view.prior_previews))
                for row in range(5):
                    self.assertLessEqual(sum(c.row == row for c in view.children), 5)
                view.stop()

    async def test_reference_paging_tabs_and_ownership(self):
        view = self.view(PROGRAMS["kmitl-it"])
        interaction = make_interaction()
        await view.show_references.callback(interaction)
        next_view = interaction.response.edit_message.call_args.kwargs["view"]
        self.assertEqual(next_view.section, "references")
        self.assertTrue(next_view.previous_reference.disabled)
        self.assertFalse(next_view.next_reference.disabled)
        await next_view.next_reference.callback(interaction)
        paged = interaction.response.edit_message.call_args.kwargs["view"]
        self.assertEqual(paged.reference_index, 1)
        await paged.show_curriculum.callback(interaction)
        curriculum = interaction.response.edit_message.call_args.kwargs["view"]
        self.assertEqual(curriculum.section, "curriculum")
        self.assertNotIn(curriculum.next_reference, curriculum.children)
        await curriculum.show_summary.callback(interaction)
        self.assertEqual(interaction.response.edit_message.call_args.kwargs["view"].section, "summary")
        self.assertTrue(await view.interaction_check(interaction))
        interaction.user.id = 99
        self.assertFalse(await view.interaction_check(interaction))
        interaction.response.send_message.assert_awaited_once()
        last = self.view(PROGRAMS["kmitl-it"], "references", 999)
        self.assertTrue(last.next_reference.disabled)

    async def test_single_reference_has_no_paging(self):
        view = self.view(PROGRAMS["cu-engineering-cedt"], "references")
        self.assertNotIn(view.previous_reference, view.children)
        self.assertNotIn(view.next_reference, view.children)

    async def test_kmitl_information_group_requires_child_program_selection(self):
        parent = PROGRAMS["kmitl-engineering-information-engineering"]
        navigation = [{
            "code": parent["code"],
            "university_short_name": "KMITL",
            "university_name": "สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง",
            "campus_code": "ladkrabang",
            "campus_name": "ลาดกระบัง",
            "is_main_campus": True,
            "faculty_name": parent["faculty_name"],
            "major_name": parent["major_name"],
            "program_tracks": parent["program_tracks"],
        }]
        view = app.ProgramView(42, navigation, "KMITL", "ladkrabang", parent["faculty_name"])
        selector = next(child for child in view.children if isinstance(child, discord.ui.Select))
        self.assertEqual(selector.options[0].description, "เลือกหลักสูตรย่อยก่อนดูรายละเอียด")

        interaction = make_interaction()
        selector._values = [selector.options[0].value]
        await selector.callback(interaction)
        result = interaction.response.edit_message.call_args.kwargs
        self.assertIsInstance(result["view"], app.ProgramTrackView)
        track_selector = next(child for child in result["view"].children if isinstance(child, discord.ui.Select))
        self.assertEqual(len(track_selector.options), 1)
        self.assertEqual(
            "วิศวกรรมไอโอทีและสารสนเทศ",
            track_selector.options[0].label.split("(")[0].replace("วศ.บ. ", "").strip(),
        )

    async def test_child_program_opens_its_own_detail_card(self):
        parent = PROGRAMS["kmitl-engineering-information-engineering"]
        navigation = [{
            "code": parent["code"],
            "university_short_name": "KMITL",
            "university_name": "สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง",
            "campus_code": "ladkrabang",
            "campus_name": "ลาดกระบัง",
            "is_main_campus": True,
            "faculty_name": parent["faculty_name"],
            "major_name": parent["major_name"],
            "program_tracks": parent["program_tracks"],
        }]
        view = app.ProgramTrackView(
            42, navigation, "KMITL", "ladkrabang", parent["faculty_name"],
            parent["major_name"], parent["program_tracks"], "ลาดกระบัง",
        )
        interaction = make_interaction()
        child = copy.deepcopy(PROGRAMS["kmitl-engineering-iot-information"])
        with patch.object(app, "fetch_program_projects", return_value=child):
            selector = next(child for child in view.children if isinstance(child, discord.ui.Select))
            selector._values = [selector.options[0].value]
            await selector.callback(interaction)
        interaction.response.defer.assert_awaited_once()
        self.assertIsInstance(
            interaction.edit_original_response.call_args.kwargs["view"],
            app.PendingProgramDetailView,
        )
        self.assertIn("วิศวกรรมไอโอทีและสารสนเทศ", interaction.edit_original_response.call_args.kwargs["embeds"][0].title)

    async def test_back_and_home_keep_navigation_context(self):
        program = PROGRAMS["cu-engineering-cedt"]
        navigation = [{**program, "campus_name": program["university_campuses"]["name"], "university_name": program["universities"]["name"]}]
        view = app.PendingProgramDetailView(42, navigation, "CU", program["campus_code"], program["faculty_name"], program)
        interaction = make_interaction()
        await view.back_to_programs.callback(interaction)
        result = interaction.response.edit_message.call_args.kwargs
        self.assertIsInstance(result["view"], app.ProgramView)
        self.assertEqual(result["view"].campus_code, program["campus_code"])
        self.assertEqual(result["view"].faculty_name, program["faculty_name"])
        self.assertEqual(result["embeds"], [])
        home = next(c for c in view.children if isinstance(c, app.HomeButton))
        await home.callback(interaction)
        result = interaction.response.edit_message.call_args.kwargs
        self.assertIsInstance(result["view"], app.StartView)
        self.assertEqual(result["embeds"], [])

    async def test_program_selection_clears_duplicate_content(self):
        program = PROGRAMS["cu-engineering-cedt"]
        view = app.ProgramView(42, [{**program, "campus_name": "พื้นที่การศึกษาปทุมวัน"}], "CU", program["campus_code"], program["faculty_name"])
        select = next(c for c in view.children if isinstance(c, app.ProgramSelect))
        select._values = [program["code"]]
        interaction = make_interaction()
        with patch.object(app, "fetch_program_projects", return_value=program):
            await select.callback(interaction)
        result = interaction.edit_original_response.call_args.kwargs
        self.assertIsNone(result["content"])
        self.assertEqual(len(result["embeds"]), 1)
        self.assertIsInstance(result["view"], app.PendingProgramDetailView)
        with patch.object(app, "fetch_program_projects", return_value=None):
            await select.callback(interaction)
        result = interaction.edit_original_response.call_args.kwargs
        self.assertTrue(result["content"])
        self.assertEqual(len(result["view"].children), 2)


if __name__ == "__main__":
    unittest.main()
