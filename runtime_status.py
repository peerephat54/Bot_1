"""Small, testable status formatting helpers for the bot supervisor."""


def supervisor_status(state, is_alive, is_expected=None):
    state = state or {}
    def active(pid):
        return bool(is_alive(pid)) and (is_expected is None or bool(is_expected(pid)))

    watchdog_alive = active(state.get("watchdog_pid"))
    bot_alive = active(state.get("bot_pid"))
    if watchdog_alive and bot_alive:
        label = "✅ บอทและ watchdog ทำงานอยู่"
    elif bot_alive:
        label = "🟡 บอททำงาน แต่ไม่พบ watchdog"
    elif watchdog_alive:
        label = "🟠 พบ watchdog แต่บอทยังไม่ทำงาน"
    else:
        label = "❌ ไม่พบ bot/watchdog จาก state ล่าสุด"
    return {
        "label": label,
        "watchdog_alive": watchdog_alive,
        "bot_alive": bot_alive,
        "watchdog_pid": state.get("watchdog_pid"),
        "bot_pid": state.get("bot_pid"),
    }
