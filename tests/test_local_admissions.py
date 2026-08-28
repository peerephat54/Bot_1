"""Regression checks for the official-source update reviewed on 2026-08-28."""
from copy import deepcopy
from types import SimpleNamespace
import unittest
from unittest.mock import MagicMock, patch

from local_admissions import calendar_fields, local_candidates
from scripts.validate_dataset import validate
from screening import screening_entries
from test_grade_screening import NAVIGATION
from test_pending_program_cards import DATA, PROGRAMS, app, card_text


class LocalUpdateTests(unittest.TestCase):
    def test_allowlist_only_and_remote_precedence(self):
        original = deepcopy(DATA)
        rows = local_candidates(DATA)
        self.assertEqual(len(rows), 6)
        self.assertEqual({r['project']['code'] for r in rows}, set(DATA['runtime_local_project_codes']))
        self.assertEqual(local_candidates(DATA, DATA['runtime_local_project_codes']), [])
        rows[0]['project']['selected_criteria']['min_gpax'] = 0
        self.assertEqual(DATA, original)

    def test_hidden_and_wrong_year_local_records_fail_validation(self):
        for field, value in [('is_visible', False), ('academic_year', 2569)]:
            data = deepcopy(DATA)
            data['projects'][0][field] = value
            self.assertTrue(validate(data)[0])

    def test_tu_thresholds_dates_and_shared_slots(self):
        rows = local_candidates(DATA)
        for row in rows:
            p = row['project']
            source = p['selected_criteria']
            self.assertEqual(source['min_gpax'], 2.75 if 'software' in p['code'] else 3)
            text = card_text(app.build_project_embed(row['program'], p))
            for fact in ('14 ก.ย. 2569', '16 ธ.ค. 2569', '10 มี.ค. 2570', '15.00', '200 บาท'):
                self.assertIn(fact, text)
            if 'posn' in p['code'] or 'ipst' in p['code']:
                self.assertIsNone(p['slots_available'])
                self.assertIn(p['program_notes'], text)
        entries, _ = screening_entries(rows, DATA, NAVIGATION, 2.8, 'engineering')
        current = [e for e in entries if e['kind'] == 'current']
        self.assertEqual([e['project']['code'] for e in current], ['tu-direct-software-2570'])
        self.assertEqual(current[0]['assessment']['status'], 'meets')

    def test_calendars_do_not_leak_campus_or_international_scope(self):
        bang = next(p for p in PROGRAMS.values() if p['university_short_name']=='KU' and p['campus_code']=='bangkhen')
        sakon = next(p for p in PROGRAMS.values() if p['university_short_name']=='KU' and p['campus_code']=='sakon-nakhon')
        self.assertIn('18 ก.ย. 2569', calendar_fields(bang, DATA)[0][1])
        self.assertNotIn('18 ก.ย. 2569', calendar_fields(sakon, DATA)[0][1])
        self.assertEqual(calendar_fields(PROGRAMS['cu-engineering-ice'], DATA), [])
        self.assertIn('ยังไม่ระบุว่าสาขานี้อยู่กลุ่มใด', calendar_fields(PROGRAMS['cu-engineering-cedt'], DATA)[0][1])
        for p in PROGRAMS.values():
            for _, value in calendar_fields(p, DATA):
                self.assertLessEqual(len(value), 1024)

    def test_runtime_reads_remote_codes_without_official_only_filter(self):
        database = MagicMock()
        database.table.return_value.select.return_value.in_.return_value.execute.return_value = SimpleNamespace(data=[{'code': 'tu-direct-cpe-2570'}])
        with patch.object(app, 'database', database):
            rows = app.fetch_local_project_additions()
        self.assertNotIn('tu-direct-cpe-2570', {r['project']['code'] for r in rows})
        database.table.return_value.select.return_value.in_.return_value.eq.assert_not_called()

    def test_all_new_project_detail_tabs_fit(self):
        for row in local_candidates(DATA):
            for builder in (app.build_project_embed, app.build_project_criteria_embed, app.build_project_portfolio_embed, app.build_project_timeline_embed):
                embed = builder(row['program'], row['project'])
                self.assertLessEqual(len(embed), 6000)
                self.assertTrue(all(len(f.value)<=1024 for f in embed.fields))
                self.assertIn('TCAS70', card_text(embed))
                self.assertNotIn('≥ ใช้คัดเลือก', card_text(embed))


if __name__ == '__main__':
    unittest.main()
