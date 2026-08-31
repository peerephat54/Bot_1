"""Small anonymous event logger for user testing and local product metrics."""
import hashlib
import hmac
import json
import os
import time
import uuid
from datetime import datetime, timezone
from pathlib import Path


DEFAULT_PATH = Path(__file__).with_name("tmp") / "usage_metrics.jsonl"


def new_flow_id():
    return uuid.uuid4().hex[:12]


def _anonymous_actor_id(interaction):
    user = getattr(interaction, "user", None)
    user_id = getattr(user, "id", None)
    salt = os.getenv("METRICS_SALT")
    if user_id is None or not salt:
        return None
    digest = hmac.new(salt.encode("utf-8"), str(user_id).encode("utf-8"), hashlib.sha256)
    return digest.hexdigest()[:16]


def record_event(
    event,
    interaction=None,
    *,
    flow_id=None,
    started_at=None,
    success=None,
    confusion=None,
    **details,
):
    """Append a safe event; metrics failures must never break the bot."""
    payload = {
        "timestamp": datetime.now(timezone.utc).isoformat(timespec="seconds"),
        "event": str(event),
        "flow_id": flow_id,
    }
    actor_id = _anonymous_actor_id(interaction)
    if actor_id:
        payload["actor_id"] = actor_id
    if started_at is not None:
        payload["duration_ms"] = max(0, round((time.monotonic() - started_at) * 1000))
    if success is not None:
        payload["success"] = bool(success)
    if confusion:
        payload["confusion"] = str(confusion)
    payload.update({key: value for key, value in details.items() if value is not None})
    try:
        target = Path(os.getenv("BOT_METRICS_PATH", str(DEFAULT_PATH)))
        target.parent.mkdir(parents=True, exist_ok=True)
        with target.open("a", encoding="utf-8") as handle:
            handle.write(json.dumps(payload, ensure_ascii=False) + "\n")
        return True
    except (OSError, TypeError, ValueError):
        return False
