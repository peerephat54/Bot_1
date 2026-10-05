"""Run the daily evidence gate and dataset validation without importing facts."""

from __future__ import annotations

import argparse
import json
import subprocess
import sys
import tempfile
from datetime import datetime, timedelta, timezone
from pathlib import Path

try:
    from scripts.write_review_report import render_report
except ImportError:  # Running the file directly from the scripts directory.
    from write_review_report import render_report


ROOT = Path(__file__).resolve().parents[1]


def import_is_allowed(report):
    """Only a fully passed evidence report may proceed to an importer."""
    return (report or {}).get("status") == "ready"


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    today = datetime.now(timezone(timedelta(hours=7))).date()
    default_output = ROOT / "tmp" / f"import_truth_report_{today.isoformat()}.json"
    parser.add_argument("--output", type=Path, default=default_output)
    parser.add_argument("--timeout", type=int, default=12)
    parser.add_argument("--workers", type=int, default=8)
    parser.add_argument(
        "--review-output",
        type=Path,
        help="optionally write the evidence-gate result as a Markdown review snapshot",
    )
    args = parser.parse_args(argv)

    args.output.parent.mkdir(parents=True, exist_ok=True)
    # Each run owns a new report path; a failed verifier cannot reuse yesterday's ready report.
    with tempfile.TemporaryDirectory(prefix="evidence-", dir=args.output.parent) as folder:
        fresh_output = Path(folder) / "report.json"
        verify = subprocess.run(
            [
                sys.executable,
                str(ROOT / "scripts" / "verify_import_truth.py"),
                "--output", str(fresh_output),
                "--timeout", str(args.timeout),
                "--workers", str(args.workers),
            ],
            cwd=str(ROOT),
            check=False,
        )
        validation = subprocess.run(
            [sys.executable, str(ROOT / "scripts" / "validate_dataset.py")],
            cwd=str(ROOT),
            check=False,
        )
        try:
            report = json.loads(fresh_output.read_text(encoding="utf-8"))
        except (OSError, json.JSONDecodeError):
            print("No readable evidence report was created by this run; previous report was preserved.")
            return 1
        expected_status = {0: "ready", 2: "needs_review"}.get(verify.returncode)
        if (
            validation.returncode or not isinstance(report, dict)
            or expected_status is None or report.get("status") != expected_status
        ):
            print("Evidence verification or dataset validation failed; previous report was preserved.")
            return 1
        fresh_output.replace(args.output)
    print(f"Evidence report saved: {args.output}")

    if args.review_output and report:
        args.review_output.parent.mkdir(parents=True, exist_ok=True)
        args.review_output.write_text(render_report(report), encoding="utf-8")
        print(f"Review snapshot saved: {args.review_output}")

    if not import_is_allowed(report):
        print("Dataset facts were not changed; no import was authorized.")
        print("Evidence gate is not passed; keep current dataset and review the queue before import.")
        return 2
    print("Evidence gate passed; review the report once more before running the importer.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
