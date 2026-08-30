"""Explicit, audited additions while the Supabase runtime role is read-only.

Only allowlisted project codes are served locally. Any record with that code in
Supabase that the runtime role can read takes precedence over the local copy.
Remove the local allowlist entries when migrating these projects to Supabase;
RLS does not expose hidden records to this client.
"""
from copy import deepcopy
import json
from pathlib import Path

from admission_dates import MISSING, thai_date
from scripts.validate_dataset import validate


def load_catalog(path=None):
    path = path or Path(__file__).with_name("datasets") / "tcas70_admissions.json"
    data = json.loads(Path(path).read_text(encoding="utf-8"))
    errors, _ = validate(data)
    if errors:
        raise ValueError("Invalid local admissions dataset: " + "; ".join(errors))
    return data


def local_candidates(data, remote_codes=()):
    allowed = set(data.get("runtime_local_project_codes", [])) - set(remote_codes)
    projects = {p["code"]: p for p in data["projects"] if p["code"] in allowed
                and p.get("publication_status") == "official" and p.get("is_visible")
                and p.get("academic_year") == data["academic_year"]}
    programs = {p["code"]: p for p in data["programs"] if p.get("data_status") == "official"}
    universities = {u["short_name"]: u for u in data["universities"]}
    campuses = {(c["university_short_name"], c["code"]): c for c in data["campuses"]}
    criteria = {(c["project_code"], c["program_code"]): c for c in data["criteria"]}
    result = []
    for link in data["project_programs"]:
        code, program_code = link["project_code"], link["program_code"]
        if code not in projects or program_code not in programs:
            continue
        program = deepcopy(programs[program_code])
        university = program["university_short_name"]
        program["universities"] = deepcopy(universities[university])
        program["university_campuses"] = deepcopy(campuses[(university, program["campus_code"])])
        project = deepcopy(projects[code])
        project.update(slots_available=link.get("slots_available"),
                       program_notes=link.get("program_notes"),
                       selected_criteria=deepcopy(criteria[(code, program_code)]),
                       admission_timeline=deepcopy([e for e in data["timeline"] if e["project_code"] == code]))
        result.append({"program": program, "project": project})
    return result


def calendar_fields(program, data):
    university = program.get("universities") or {}
    campus = program.get("university_campuses") or {}
    if isinstance(university, list):
        university = university[0] if university else {}
    if isinstance(campus, list):
        campus = campus[0] if campus else {}
    university_code = university.get("short_name") or program.get("university_short_name")
    campus_code = campus.get("code") or program.get("campus_code")
    fields = []
    for calendar in data.get("university_admission_calendars", []):
        if calendar["university_short_name"] != university_code:
            continue
        if calendar.get("campus_codes") and campus_code not in calendar["campus_codes"]:
            continue
        if calendar.get("program_codes") and program.get("code") not in calendar["program_codes"]:
            continue
        lines = [calendar["scope_note"]]

        def date_range(item, start_key, end_key):
            start = thai_date(item.get(start_key))
            end = thai_date(item.get(end_key))
            if start and end and start != end:
                return f"{start} – {end}"
            return start or end or MISSING

        for period in calendar["rounds"]:
            lines.append(f"**{period['label']}:** {date_range(period, 'application_start_on', 'application_end_on')}")
            if period.get("interview_eligible_on"):
                lines.append("ประกาศสิทธิ์สัมภาษณ์: " + thai_date(period["interview_eligible_on"]))
            if period.get("interview_on") or period.get("interview_end_on"):
                lines.append("สอบสัมภาษณ์: " + date_range(period, "interview_on", "interview_end_on"))
            if period.get("result_announcement_on"):
                lines.append("ผลคัดเลือก: " + thai_date(period["result_announcement_on"]))
            if period.get("interview_passed_on"):
                lines.append("ผลสัมภาษณ์: " + thai_date(period["interview_passed_on"]))
            if period.get("result_note"):
                lines.append("ผลคัดเลือก: " + period["result_note"])

        if calendar.get("interview_eligible_on"):
            lines.append("ประกาศสิทธิ์สัมภาษณ์: " + thai_date(calendar["interview_eligible_on"]))
        if calendar.get("interview_on") or calendar.get("interview_end_on"):
            lines.append("สอบสัมภาษณ์: " + date_range(calendar, "interview_on", "interview_end_on"))
        if calendar.get("interview_passed_on"):
            lines.append("ผลสัมภาษณ์: " + thai_date(calendar["interview_passed_on"]))

        if not any(
            p.get("result_announcement_on") or p.get("interview_passed_on") or p.get("result_note")
            for p in calendar["rounds"]
        ) and not calendar.get("interview_passed_on"):
            lines.append("ประกาศผล: ยังไม่ระบุในปฏิทินนี้")
        lines.append(f"[ปฏิทินทางการ]({calendar['source_url']}) • ตรวจ {thai_date(calendar['source_checked_at'])}")
        fields.append((calendar["title"] + " • TCAS70", "\n".join(lines)))
    return fields
