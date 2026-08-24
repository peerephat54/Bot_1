import json
import sys
from datetime import date
from pathlib import Path
from urllib.parse import urlparse


ALLOWED_STATUSES = {
    "draft_waiting_official",
    "official",
    "closed",
    "superseded",
    "cancelled",
}

ALLOWED_DATE_STATUSES = {
    "confirmed",
    "month_only",
    "tentative",
    "disputed",
    "unknown",
}

ALLOWED_SOURCE_CLASSIFICATIONS = {
    "excluded_secondary_wrong_year",
    "excluded_primary_wrong_year",
    "excluded_secondary_editable",
    "excluded_primary_not_announced",
    "excluded_user_scope",
    "used_primary_index",
    "imported_primary_supporting",
    "verified_existing_primary",
    "imported_primary",
    "reference_unconfirmed_current",
    "reference_unconfirmed_prior_year",
}

OFFICIAL_HOSTS = {
    "KMITL": {
        "www.it.kmitl.ac.th",
        "admission.reg.kmitl.ac.th",
        "reg.kmitl.ac.th",
        "www.reg.kmitl.ac.th",
        "www1.reg.kmitl.ac.th",
        "office.kmitl.ac.th",
        "www.ce.kmitl.ac.th",
    },
    "KMUTT": {"join.kmutt.ac.th"},
    "MU": {"www.ict.mahidol.ac.th", "www.eg.mahidol.ac.th"},
    "CMU": {"admission.reg.cmu.ac.th"},
    "KU": {
        "misreg.csc.ku.ac.th",
        "admission.ku.ac.th",
        "www.admission.ku.ac.th",
        "cpe.ku.ac.th",
        "sci.ku.ac.th",
        "www.sci.ku.ac.th",
    },
    "TU": {
        "admissions.siit.tu.ac.th",
        "engr.tu.ac.th",
        "cs.sci.tu.ac.th",
        "tuadmissions.in.th",
        "www.tuadmissions.in.th",
    },
    "CU": {
        "admission.chula.ac.th",
        "www.reg.chula.ac.th",
        "reg.chula.ac.th",
        "www.cp.eng.chula.ac.th",
        "cp.eng.chula.ac.th",
        "www.math.sc.chula.ac.th",
        "math.sc.chula.ac.th",
        "www.ise.eng.chula.ac.th",
        "ise.eng.chula.ac.th",
        "stat.cbs.chula.ac.th",
        "www.stat.cbs.chula.ac.th",
        "bba.acc.chula.ac.th",
    },
    "KMUTNB": {
        "admission.kmutnb.ac.th",
        "www.admission.kmutnb.ac.th",
        "kmutnb.ac.th",
        "www.kmutnb.ac.th",
        "itd.kmutnb.ac.th",
        "www.itd.kmutnb.ac.th",
        "fitm.kmutnb.ac.th",
        "www.fitm.kmutnb.ac.th",
    },
}


def duplicate_values(items):
    seen = set()
    duplicates = set()
    for item in items:
        if item in seen:
            duplicates.add(item)
        seen.add(item)
    return sorted(duplicates)


def validate(data):
    errors = []
    universities = data.get("universities", [])
    programs = data.get("programs", [])
    projects = data.get("projects", [])
    links = data.get("project_programs", [])
    criteria = data.get("criteria", [])
    timeline = data.get("timeline", [])

    university_codes = {item.get("short_name") for item in universities}
    program_codes = {item.get("code") for item in programs}
    project_codes = {item.get("code") for item in projects}

    for label, values in (
        ("university short_name", [item.get("short_name") for item in universities]),
        ("program code", [item.get("code") for item in programs]),
        ("project code", [item.get("code") for item in projects]),
        (
            "criteria project/program",
            [
                (item.get("project_code"), item.get("program_code"))
                for item in criteria
            ],
        ),
        (
            "project/program link",
            [(item.get("project_code"), item.get("program_code")) for item in links],
        ),
        (
            "timeline event",
            [(item.get("project_code"), item.get("event_name")) for item in timeline],
        ),
    ):
        duplicates = duplicate_values(values)
        if duplicates:
            errors.append(f"duplicate {label}: {duplicates}")

    for program in programs:
        if program.get("university_short_name") not in university_codes:
            errors.append(f"unknown university for program {program.get('code')}")
        university = program.get("university_short_name")
        for preview in program.get("admission_previews") or []:
            preview_title = preview.get("title")
            if preview.get("status") != "unconfirmed":
                errors.append(
                    f"invalid preview status for {program.get('code')}: "
                    f"{preview.get('status')}"
                )
            reference_year = preview.get("reference_academic_year")
            if not isinstance(reference_year, int) or reference_year > data.get(
                "academic_year", 0
            ):
                errors.append(
                    f"invalid preview year for {program.get('code')}: "
                    f"{reference_year}"
                )
            source_url = preview.get("source_url")
            source_host = urlparse(source_url or "").hostname
            if source_host not in OFFICIAL_HOSTS.get(university, set()):
                errors.append(
                    f"unapproved preview source for {program.get('code')}: "
                    f"{source_host}"
                )
            if not preview_title or not preview.get("note"):
                errors.append(
                    f"incomplete admission preview for {program.get('code')}"
                )

    variants = []
    for project in projects:
        code = project.get("code")
        university = project.get("university_short_name")
        status = project.get("publication_status")
        visible = project.get("is_visible")
        variants.append(
            (
                university,
                project.get("group_code"),
                project.get("round_variant"),
                project.get("academic_year"),
            )
        )
        if university not in university_codes:
            errors.append(f"unknown university for project {code}")
        if status not in ALLOWED_STATUSES:
            errors.append(f"invalid publication_status for {code}: {status}")
        if visible and status not in {"official", "closed"}:
            errors.append(f"non-official project is visible: {code}")
        if status == "official" and not visible:
            errors.append(f"official project is hidden: {code}")
        if project.get("academic_year") != data.get("academic_year"):
            errors.append(f"academic year mismatch: {code}")
        source_url = project.get("source_url")
        host = urlparse(source_url or "").hostname
        if not source_url or host not in OFFICIAL_HOSTS.get(university, set()):
            errors.append(f"unapproved source host for {code}: {host}")

    duplicate_variants = duplicate_values(variants)
    if duplicate_variants:
        errors.append(f"duplicate project group/variant: {duplicate_variants}")

    linked_projects = set()
    link_pairs = set()
    for link in links:
        project_code = link.get("project_code")
        program_code = link.get("program_code")
        linked_projects.add(project_code)
        link_pairs.add((project_code, program_code))
        if project_code not in project_codes:
            errors.append(f"unknown project in link: {project_code}")
        if program_code not in program_codes:
            errors.append(f"unknown program in link: {program_code}")
        slots = link.get("slots_available")
        if slots is not None and (not isinstance(slots, int) or slots < 0):
            errors.append(f"invalid slots for {project_code}/{program_code}: {slots}")

    criteria_projects = set()
    criteria_pairs = set()
    for item in criteria:
        project_code = item.get("project_code")
        program_code = item.get("program_code")
        criteria_projects.add(project_code)
        criteria_pairs.add((project_code, program_code))
        if project_code not in project_codes:
            errors.append(f"unknown project in criteria: {project_code}")
        if program_code not in program_codes:
            errors.append(
                f"unknown program in criteria: {project_code}/{program_code}"
            )
        if (project_code, program_code) not in link_pairs:
            errors.append(
                f"criteria has no project/program link: {project_code}/{program_code}"
            )
        min_gpax = item.get("min_gpax")
        if min_gpax is not None and not (0 <= min_gpax <= 4):
            errors.append(f"invalid min_gpax for {project_code}: {min_gpax}")

    missing_criteria = sorted(link_pairs - criteria_pairs)
    if missing_criteria:
        errors.append(f"project/program links missing criteria: {missing_criteria}")

    for project_code in project_codes:
        if project_code not in linked_projects:
            errors.append(f"project has no program link: {project_code}")
        if project_code not in criteria_projects:
            errors.append(f"project has no criteria: {project_code}")

    for event in timeline:
        project_code = event.get("project_code")
        if project_code not in project_codes:
            errors.append(f"unknown project in timeline: {project_code}")
        if event.get("date_status") not in ALLOWED_DATE_STATUSES:
            errors.append(
                f"invalid timeline date_status for {project_code}: "
                f"{event.get('date_status')}"
            )
        start_on = event.get("start_on")
        end_on = event.get("end_on")
        try:
            start_date = date.fromisoformat(start_on) if start_on else None
            end_date = date.fromisoformat(end_on) if end_on else None
        except ValueError as error:
            errors.append(f"invalid date for {project_code}: {error}")
            continue
        if start_date and end_date and end_date < start_date:
            errors.append(f"timeline ends before it starts: {project_code}")

    counts = {
        "universities": len(universities),
        "programs": len(programs),
        "projects": len(projects),
        "official_projects": sum(
            1 for item in projects if item.get("publication_status") == "official"
        ),
        "draft_projects": sum(
            1
            for item in projects
            if item.get("publication_status") == "draft_waiting_official"
        ),
        "project_program_links": len(links),
        "criteria": len(criteria),
        "timeline_events": len(timeline),
        "admission_previews": sum(
            len(item.get("admission_previews") or []) for item in programs
        ),
    }
    return errors, counts


def validate_source_audit(audit):
    errors = []
    sources = audit.get("sources", [])
    urls = [item.get("url") for item in sources]
    duplicates = duplicate_values(urls)
    if duplicates:
        errors.append(f"duplicate source audit URL: {duplicates}")

    for item in sources:
        url = item.get("url")
        classification = item.get("classification")
        if not url or urlparse(url).scheme != "https":
            errors.append(f"invalid audited source URL: {url}")
        if classification not in ALLOWED_SOURCE_CLASSIFICATIONS:
            errors.append(f"invalid source classification for {url}: {classification}")
        if not item.get("decision"):
            errors.append(f"missing source decision: {url}")
        if (
            item.get("academic_year") not in {None, audit.get("academic_year")}
            and not classification.startswith("excluded_")
            and not classification.startswith("reference_")
        ):
            errors.append(f"wrong-year source is not excluded: {url}")

    counts = {
        "audited_sources": len(sources),
        "excluded_sources": sum(
            1
            for item in sources
            if str(item.get("classification", "")).startswith("excluded_")
        ),
    }
    return errors, counts


def main():
    default_path = Path(__file__).resolve().parents[1] / "datasets" / "tcas70_admissions.json"
    dataset_path = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else default_path
    data = json.loads(dataset_path.read_text(encoding="utf-8"))
    errors, counts = validate(data)
    audit_path = dataset_path.with_name("tcas70_source_audit.json")
    audit_counts = {}
    if audit_path.exists():
        audit = json.loads(audit_path.read_text(encoding="utf-8"))
        audit_errors, audit_counts = validate_source_audit(audit)
        errors.extend(audit_errors)
    if errors:
        print("Dataset validation failed:")
        for error in errors:
            print(f"- {error}")
        raise SystemExit(1)
    print("Dataset validation passed")
    print(json.dumps({**counts, **audit_counts}, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
