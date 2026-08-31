import json
import os
import tempfile
import unittest
from types import SimpleNamespace
from unittest.mock import patch

from usage_metrics import new_flow_id, record_event


class UsageMetricsTests(unittest.TestCase):
    def test_events_are_anonymous_and_written_without_raw_discord_id(self):
        with tempfile.TemporaryDirectory() as directory:
            path = os.path.join(directory, "metrics.jsonl")
            interaction = SimpleNamespace(user=SimpleNamespace(id=123456789))
            with patch.dict(os.environ, {"BOT_METRICS_PATH": path, "METRICS_SALT": "test-salt"}, clear=False):
                self.assertTrue(record_event("answer_found", interaction, flow_id=new_flow_id(), success=True))
            with open(path, encoding="utf-8") as handle:
                payload = json.loads(handle.readline())
            self.assertEqual(payload["event"], "answer_found")
            self.assertTrue(payload["success"])
            self.assertIn("actor_id", payload)
            self.assertNotIn("123456789", json.dumps(payload))


if __name__ == "__main__":
    unittest.main()
