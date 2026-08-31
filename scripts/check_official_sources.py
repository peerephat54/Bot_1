"""Check audited official source links without changing admission data.

This job detects broken links, stale audit timestamps, and content changes.
It deliberately does not copy web text into the dataset: a human or an
importer must review a changed source before admission criteria are updated.
"""
import argparse
import hashlib
import json
import sys
from datetime import date, datetime, timezone
from pathlib import Path
from urllib.error import HTTPError, URLError
from urllib.request import Request, urlopen


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_AUDIT_PATH = ROOT / "datasets" / "tcas70_source_audit.json"
DEFAULT_REPORT_PATH = ROOT / "tmp" / "source_monitor_report.json"
MAX_BYTES = 4 * 1024 * 1024


def now_iso():
    return datetime.now(timezone.utc).astimezone().isoformat(timespec="seconds")


def parse_checked_date(value):
    if not value:
        return None
    text = str(value).strip()
    try:
        return datetime.fromisoformat(text.replace("Z", "+00:00")).date()
    except ValueError:
        try:
            return date.fromisoformat(text[:10])
        except ValueError:
            return None


def source_age_days(value, today=None):
    checked = parse_checked_date(value)
    if checked is None:
        return None
    reference = today or date.today()
    return (reference - checked).days


def monitored_sources(audit):
    """Return unique non-excluded audited sources for the current academic year."""
    seen = set()
    sources = []
    for source in audit.get("sources") or []:
        url = str(source.get("url") or "").strip()
        classification = str(source.get("classification") or "")
        if not url or classification.startswith("excluded") or url in seen:
            continue
        seen.add(url)
        sources.append(source)
    return sources


def fetch_source(url, timeout=20):
    request = Request(url, headers={"User-Agent": "BotPortfolioSourceMonitor/1.0"})
    digest = hashlib.sha256()
    total = 0
    truncated = False
    content_type = ""
    try:
        with urlopen(request, timeout=timeout) as response:
            content_type = response.headers.get("Content-Type", "")
            status_code = getattr(response, "status", None) or response.getcode()
            chunks = []
            while total < MAX_BYTES:
                chunk = response.read(min(64 * 1024, MAX_BYTES - total))
                if not chunk:
                    break
                chunks.append(chunk)
                digest.update(chunk)
                total += len(chunk)
            if total >= MAX_BYTES:
                truncated = bool(response.read(1))
        return {
            "status": "ok" if 200 <= status_code < 400 else "http_error",
            "http_status": status_code,
            "content_type": content_type,
            "bytes_read": total,
            "truncated": truncated,
            "sha256": digest.hexdigest(),
        }
    except HTTPError as error:
        return {"status": "http_error", "http_status": error.code, "error": str(error.reason)}
    except (URLError, TimeoutError, OSError) as error:
        return {"status": "network_error", "error": str(error)}


def check_source(source, *, fetcher=fetch_source, today=None, stale_after_days=7):
    result = {
        "url": source.get("url"),
        "publisher": source.get("publisher"),
        "classification": source.get("classification"),
        "academic_year": source.get("academic_year"),
        "source_checked_at": source.get("source_checked_at"),
    }
    age = source_age_days(source.get("source_checked_at"), today=today)
    result["age_days"] = age
    result["stale"] = age is None or age > stale_after_days
    result.update(fetcher(source["url"]))
    return result


def build_report(
    audit,
    *,
    fetcher=fetch_source,
    today=None,
    stale_after_days=7,
    previous_report=None,
):
    previous_by_url = {
        item.get("url"): item
        for item in (previous_report or {}).get("results") or []
        if item.get("url")
    }
    results = [
        check_source(source, fetcher=fetcher, today=today, stale_after_days=stale_after_days)
        for source in monitored_sources(audit)
    ]
    for result in results:
        previous = previous_by_url.get(result["url"], {})
        result["previous_sha256"] = previous.get("sha256")
        result["changed"] = bool(
            result.get("status") == "ok"
            and result.get("sha256")
            and result.get("previous_sha256")
            and result["sha256"] != result["previous_sha256"]
        )
    return {
        "checked_at": now_iso(),
        "academic_year": audit.get("academic_year"),
        "stale_after_days": stale_after_days,
        "source_count": len(results),
        "ok_count": sum(item.get("status") == "ok" for item in results),
        "error_count": sum(item.get("status") != "ok" for item in results),
        "stale_count": sum(item.get("stale") for item in results),
        "changed_count": sum(item.get("changed") for item in results),
        "results": results,
        "policy": "changed sources require human review before data import",
    }


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--audit-path", type=Path, default=DEFAULT_AUDIT_PATH)
    parser.add_argument("--report-path", type=Path, default=DEFAULT_REPORT_PATH)
    parser.add_argument("--previous-report", type=Path)
    parser.add_argument("--timeout", type=int, default=20)
    parser.add_argument("--stale-after-days", type=int, default=7)
    parser.add_argument("--fail-on-error", action="store_true")
    parser.add_argument("--fail-on-stale", action="store_true")
    parser.add_argument("--fail-on-change", action="store_true")
    args = parser.parse_args(argv)

    audit = json.loads(args.audit_path.read_text(encoding="utf-8"))
    previous_report = None
    if args.previous_report and args.previous_report.exists():
        previous_report = json.loads(args.previous_report.read_text(encoding="utf-8"))
    report = build_report(
        audit,
        fetcher=lambda url: fetch_source(url, timeout=args.timeout),
        stale_after_days=args.stale_after_days,
        previous_report=previous_report,
    )
    args.report_path.parent.mkdir(parents=True, exist_ok=True)
    args.report_path.write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
    print(
        f"source_count={report['source_count']} ok={report['ok_count']} "
        f"errors={report['error_count']} stale={report['stale_count']} "
        f"changed={report['changed_count']}"
    )
    if args.fail_on_error and report["error_count"]:
        return 1
    if args.fail_on_stale and report["stale_count"]:
        return 2
    if args.fail_on_change and report["changed_count"]:
        return 3
    return 0


if __name__ == "__main__":
    sys.exit(main())
