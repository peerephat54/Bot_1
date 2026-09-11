"""Keep the Discord bot process alive after an unexpected crash.

This is intentionally a small process supervisor. It does not read or print
the Discord token and it only starts the bot script supplied by the caller.
"""

import argparse
import json
import os
import subprocess
import sys
import time
from pathlib import Path


def process_is_alive(pid):
    if not isinstance(pid, int) or pid <= 0:
        return False
    try:
        os.kill(pid, 0)
    except (OSError, ProcessLookupError):
        return False
    return True


def write_state(path, watchdog_pid, bot_pid):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(
        json.dumps(
            {
                "watchdog_pid": watchdog_pid,
                "bot_pid": bot_pid,
                "updated_at": int(time.time()),
            }
        ),
        encoding="utf-8",
    )


def start_bot(bot_script, cwd):
    flags = (
        getattr(subprocess, "DETACHED_PROCESS", 0)
        | getattr(subprocess, "CREATE_NEW_PROCESS_GROUP", 0)
    )
    return subprocess.Popen(
        [sys.executable, str(bot_script)],
        cwd=str(cwd),
        stdin=subprocess.DEVNULL,
        stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL,
        creationflags=flags,
    )


def main():
    parser = argparse.ArgumentParser(description="Bot Portfolio watchdog")
    parser.add_argument("--watch-pid", type=int, required=True)
    parser.add_argument("--bot-script", type=Path, required=True)
    parser.add_argument("--cwd", type=Path, required=True)
    parser.add_argument("--state-file", type=Path, required=True)
    parser.add_argument("--interval", type=float, default=10)
    args = parser.parse_args()

    bot_pid = args.watch_pid
    try:
        while True:
            if not process_is_alive(bot_pid):
                bot = start_bot(args.bot_script, args.cwd)
                bot_pid = bot.pid
            write_state(args.state_file, os.getpid(), bot_pid)
            time.sleep(max(args.interval, 3))
    except KeyboardInterrupt:
        return 0
    finally:
        try:
            state = json.loads(args.state_file.read_text(encoding="utf-8"))
            if state.get("watchdog_pid") == os.getpid():
                args.state_file.unlink(missing_ok=True)
        except (FileNotFoundError, json.JSONDecodeError, OSError):
            pass


if __name__ == "__main__":
    raise SystemExit(main())
