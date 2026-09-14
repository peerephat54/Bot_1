import asyncio
import time
import unittest
from concurrent.futures import ThreadPoolExecutor
from unittest.mock import patch

from test_grade_screening import app


class BotNavigationCacheTests(unittest.IsolatedAsyncioTestCase):
    async def test_simultaneous_navigation_refreshes_share_one_database_load(self):
        bot = app.MyBot()
        calls = []

        def load_navigation():
            calls.append(True)
            time.sleep(0.03)
            return [{"code": "test-program"}]

        with patch.object(app, "fetch_navigation_programs", side_effect=load_navigation):
            results = await asyncio.gather(
                *(bot.load_navigation_programs(timeout=1) for _ in range(6))
            )

        self.assertEqual(len(calls), 1)
        self.assertTrue(all(result == [{"code": "test-program"}] for result in results))
        await bot.close()

    async def test_simultaneous_cold_recommendation_reads_share_one_database_load(self):
        original_cache = app._RECOMMENDATION_CACHE
        app._RECOMMENDATION_CACHE = None
        calls = []
        result = [{"program": {"code": "p"}, "project": {"code": "p1"}}]

        def load_recommendations():
            calls.append(True)
            time.sleep(0.03)
            app._RECOMMENDATION_CACHE = {}
            app._cache_write(app._RECOMMENDATION_CACHE, "all", result)
            return result

        try:
            with patch.object(
                app,
                "_fetch_recommendation_projects_uncached",
                side_effect=load_recommendations,
            ):
                with ThreadPoolExecutor(max_workers=6) as pool:
                    outputs = list(pool.map(lambda _: app.fetch_recommendation_projects(), range(6)))
            self.assertEqual(len(calls), 1)
            self.assertTrue(all(output == result for output in outputs))
        finally:
            app._RECOMMENDATION_CACHE = original_cache


if __name__ == "__main__":
    unittest.main()
