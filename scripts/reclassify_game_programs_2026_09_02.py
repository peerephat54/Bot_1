"""Move explicitly game-focused programs into the game screening field."""

from __future__ import annotations

import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
DATASET_PATH = ROOT / "datasets" / "tcas70_admissions.json"
CHECKED_AT = "2026-09-02T00:00+07:00"
GAME_PROGRAM_CODES = {"kmutt-game-design", "cmu-digital-game"}


def main() -> None:
    dataset = json.loads(DATASET_PATH.read_text(encoding="utf-8"))
    programs = {row.get("code"): row for row in dataset.get("programs", [])}
    missing = GAME_PROGRAM_CODES - programs.keys()
    if missing:
        raise SystemExit(f"missing game programs: {', '.join(sorted(missing))}")
    for code in GAME_PROGRAM_CODES:
        programs[code]["screening_field"] = "game"
    dataset["checked_at"] = CHECKED_AT
    DATASET_PATH.write_text(
        json.dumps(dataset, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )
    print(f"reclassified={len(GAME_PROGRAM_CODES)} checked_at={CHECKED_AT}")


if __name__ == "__main__":
    main()
