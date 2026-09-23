"""Run the daily evidence gate and dataset validation without importing facts."""

from __future__ import annotations

import argparse
import json
import subprocess
import sys
from datetime import date
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]


def import_is_allowed(report):
    """Only a fully passed evidence report may proceed to an importer."""
    return (report or {}).get("status") == "passed"


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    default_output = ROOT / "tmp" / f"import_truth_report_{date.today().isoformat()}.json"
    parser.add_argument("--output", type=Path, default=default_output)
    parser.add_argument("--timeout", type=int, default=12)
    parser.add_argument("--workers", type=int, default=8)
    args = parser.parse_args(argv)

    args.output.parent.mkdir(parents=True, exist_ok=True)
    verify = subprocess.run(
        [
            sys.executable,
            str(ROOT / "scripts" / "verify_import_truth.py"),
            "--output", str(args.output),
            "--timeout", str(args.timeout),
            "--workers", str(args.workers),
        ],
        cwd=str(ROOT),
        check=False,
    )
    validate = subprocess.run(
        [sys.executable, str(ROOT / "scripts" / "validate_dataset.py")],
        cwd=str(ROOT),
        check=False,
    )
    try:
        report = json.loads(args.output.read_text(encoding="utf-8"))
    except (FileNotFoundError, OSError, json.JSONDecodeError):
        report = {}

    if verify.returncode or validate.returncode:
        return 1
    if not import_is_allowed(report):
        print("Evidence gate is not passed; keep current dataset and review the queue before import.")
        return 2
    print("Evidence gate passed; review the report once more before running the importer.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
