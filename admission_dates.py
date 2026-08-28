"""Readable admission milestones without inventing dates or merging rounds."""
from datetime import date
import re

MONTHS = ("ม.ค.", "ก.พ.", "มี.ค.", "เม.ย.", "พ.ค.", "มิ.ย.", "ก.ค.", "ส.ค.", "ก.ย.", "ต.ค.", "พ.ย.", "ธ.ค.")
MISSING = "ยังไม่ระบุในข้อมูล"


def thai_date(value):
    try:
        parsed = date.fromisoformat(str(value))
    except (ValueError, TypeError):
        return None
    return f"{parsed.day} {MONTHS[parsed.month - 1]} {parsed.year + 543}"


def parse_reference_period(value):
    """Parse only explicit Thai date ranges. An end-only deadline stays end-only."""
    text = str(value or "").split("(", 1)[0].strip()
    month_pattern = "|".join(re.escape(month) for month in MONTHS)
    pattern = rf"(\d{{1,2}})\s*(?:({month_pattern})\s*)?(\d{{4}})?"

    def parts(part):
        match = re.fullmatch(pattern, part.strip())
        return match.groups() if match else None

    def iso(parts_value, fallback=None):
        if not parts_value:
            return None
        day, month, year = parts_value
        if fallback:
            month, year = month or fallback[1], year or fallback[2]
        if not month or not year:
            return None
        try:
            return date(int(year) - 543, MONTHS.index(month) + 1, int(day)).isoformat()
        except ValueError:
            return None

    if text.startswith("ถึง "):
        return None, iso(parts(text[4:]))
    split = re.split(r"\s*[-–—]\s*", text)
    if len(split) != 2:
        return None, None
    first, last = parts(split[0]), parts(split[1])
    end = iso(last)
    start = iso(first, last) if last else None
    # Do not guess the year when a range crosses New Year with no starting year.
    if start and end and start > end:
        return None, None
    return start, end


def event_date(event, boundary=None):
    status = event.get("date_status")
    display = str(event.get("date_display") or "")
    if status == "disputed":
        return "ข้อมูลวันขัดแย้ง ต้องตรวจประกาศ" + (f" — {display}" if display else "")
    if status == "month_only":
        return (display or MISSING) + " (ระบุเพียงเดือน ไม่ยืนยันวัน)"
    if boundary:
        value = thai_date(event.get(boundary))
    else:
        start, end = thai_date(event.get("start_on")), thai_date(event.get("end_on"))
        value = display or (f"{start} – {end}" if start and end and start != end else start or end)
    value = value or MISSING
    if status == "tentative":
        value += " (เบื้องต้น ยังไม่ยืนยัน)"
    elif status not in ("confirmed",):
        value += " (ต้องตรวจยืนยันวัน)"
    return value


def is_application_event(event):
    name = str(event.get("event_name") or "").casefold()
    return (
        any(term in name for term in ("รับสมัคร", "สมัครทาง", "สมัคร inter"))
        and "ประกาศ" not in name
        and not (name.startswith("ชำระ") and "รับสมัคร" not in name)
    )


def portfolio_dates(events=None, preview=None):
    events = list(events or [])
    raw_period = None
    if preview:
        events = list(preview.get("admission_timeline") or events)
        raw_period = preview.get("application_period")
        start, end = parse_reference_period(raw_period)
        start = preview.get("application_start_on") or start
        end = preview.get("application_end_on") or end
        if not any(is_application_event(event) for event in events) and (start or end):
            events.append({"event_name": "รับสมัคร", "start_on": start, "end_on": end, "date_status": "confirmed"})
        if preview.get("result_announcement_on"):
            events.append({"event_name": "ประกาศผลการคัดเลือก", "start_on": preview["result_announcement_on"], "date_status": "confirmed"})

    applications, results, interview_results, admission_lists = [], [], [], []
    for event in events:
        name = str(event.get("event_name") or "")
        if is_application_event(event):
            applications.append(event)
        elif "ประกาศ" in name:
            if "สัมภาษณ์" in name:
                interview_results.append(event)
            elif "ผู้ยืนยันสิทธิ์" in name or "สำรอง" in name:
                continue
            elif any(term in name for term in ("ผลการคัดเลือก", "ผู้ผ่านการคัดเลือก")):
                results.append(event)
            elif any(term in name for term in ("มีสิทธิ์เข้าศึกษา", "มีสิทธิ์รายงานตัว")):
                admission_lists.append(event)

    def boundary_values(boundary):
        values = []
        for event in applications:
            name = event.get("event_name", "")
            if boundary == "start_on" and "ปิดรับ" in name:
                continue
            if boundary == "end_on" and "ปิดรับ" in name and not event.get("end_on"):
                event = {**event, "end_on": event.get("start_on")}
            if not event.get(boundary) and event.get("date_status") not in ("disputed", "month_only"):
                continue
            value = event_date(event, boundary)
            if len(applications) > 1:
                value += f" ({name})"
            if value not in values:
                values.append(value)
        return " / ".join(values) or MISSING

    def result_values(items):
        return " / ".join(dict.fromkeys(event_date(item) for item in items)) or MISSING

    lines = [
        f"**เปิดรับสมัคร:** {boundary_values('start_on')}",
        f"**ปิดรับสมัคร:** {boundary_values('end_on')}",
        f"**ประกาศผลคัดเลือก:** {result_values(results)}",
    ]
    if admission_lists:
        lines.append(f"**ประกาศผู้มีสิทธิ์เข้าศึกษา:** {result_values(admission_lists)}")
    if interview_results:
        lines.append(f"**ประกาศสิทธิ์สัมภาษณ์:** {result_values(interview_results)}")
    if raw_period and not applications:
        lines.append(f"**ช่วงสมัครตามต้นทาง:** {raw_period}")
    for event in applications:
        display = str(event.get("date_display") or "")
        name = str(event.get("event_name") or "")
        detail = f"{name}: {display}"
        if re.search(r"เวลา|\d{1,2}[:.]\d{2}|เส้นตาย", detail):
            lines.append(f"**รายละเอียดช่วงสมัคร:** {detail}")
    return "\n".join(lines)
