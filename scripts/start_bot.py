"""Bootstrap Bot_Portfolio.py and keep it alive with the watchdog.

Run this once on the server or computer that hosts the bot when the bot is
offline. Discord cannot deliver /startbot while the bot process is stopped.
"""

import json
import subprocess
import sys
from pathlib import Path

from process_utils import process_is_alive


ROOT = Path(__file__).resolve().parents[1]
BOT_SCRIPT = ROOT / "Bot_Portfolio.py"
WATCHDOG_SCRIPT = ROOT / "scripts" / "bot_watchdog.py"
STATE_FILE = ROOT / "tmp" / "bot_watchdog.json"


def main():
    try:
        state = json.loads(STATE_FILE.read_text(encoding="utf-8"))
        if process_is_alive(state.get("watchdog_pid")):
            print("Bot watchdog is already running.")
            return 0
    except (FileNotFoundError, json.JSONDecodeError, OSError):
        pass

    flags = (
        getattr(subprocess, "DETACHED_PROCESS", 0)
        | getattr(subprocess, "CREATE_NEW_PROCESS_GROUP", 0)
    )
    bot = subprocess.Popen(
        [sys.executable, str(BOT_SCRIPT)],
        cwd=str(ROOT),
        stdin=subprocess.DEVNULL,
        stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL,
        creationflags=flags,
    )
    subprocess.Popen(
        [
            sys.executable,
            str(WATCHDOG_SCRIPT),
            "--watch-pid",
            str(bot.pid),
            "--bot-script",
            str(BOT_SCRIPT),
            "--cwd",
            str(ROOT),
            "--state-file",
            str(STATE_FILE),
        ],
        cwd=str(ROOT),
        stdin=subprocess.DEVNULL,
        stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL,
        creationflags=flags,
    )
    print(f"Bot started with PID {bot.pid}.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
