import importlib.util
import json
import tempfile
import unittest
from pathlib import Path


SPEC = importlib.util.spec_from_file_location(
    "track_importer", Path(__file__).with_name("import_tracks_from_json.py")
)
IMPORTER = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(IMPORTER)


class VocabularyExtractionTest(unittest.TestCase):
    def test_extracts_real_match_pair(self):
        step = {"type": "match_pairs", "data": {"pairs": [{"left": " Boarding  pass ", "right": "посадочный талон"}]}}
        self.assertEqual(
            IMPORTER.extract_vocabulary_pairs(step, "ru", "en"),
            [("Boarding  pass", "посадочный талон", "")],
        )

    def test_skips_generated_explanation_with_warning(self):
        warnings = []
        step = {"id": "s1", "type": "match_pairs", "data": {"pairs": [{"left": "gate", "right": "The term 'gate' as it is used in this lesson means..."}]}}
        self.assertEqual(IMPORTER.extract_vocabulary_pairs(step, "ru", "en", warnings), [])
        self.assertEqual(len(warnings), 1)

    def test_skips_listening_placeholder(self):
        step = {"type": "match_pairs", "data": {"pairs": [{"left": "want", "right": "Listening word: want."}]}}
        self.assertEqual(IMPORTER.extract_vocabulary_pairs(step, "ru", "en"), [])

    def test_ignores_non_match_pair_steps(self):
        self.assertEqual(IMPORTER.extract_vocabulary_pairs({"type": "quiz"}, "ru", "en"), [])

    def test_normalized_word_is_stable(self):
        self.assertEqual(IMPORTER.normalize_word(" Boarding   PASS "), "boarding pass")

    def test_relation_resolves_existing_vocabulary_by_natural_key(self):
        document = {
            "schema_version": "lingoiq.track.v2",
            "track": {
                "code": "TEST_TRACK",
                "title": {"en": "Test", "ru": "Тест"},
                "description": {"en": "Test", "ru": "Тест"},
                "target_language": "en",
                "native_language": "ru",
                "level": "A1",
                "goal": "study",
                "track_type": "thematic",
            },
            "lessons": [{
                "code": "L1", "order": 1,
                "title": {"en": "One", "ru": "Один"},
                "objective": {"en": "Learn", "ru": "Учить"},
                "estimated_seconds": 60,
                "steps": [{
                    "id": "S1", "order": 1, "type": "match_pairs",
                    "title": {"en": "Words", "ru": "Слова"},
                    "instructions": {"en": "Match", "ru": "Соедини"},
                    "estimated_seconds": 30,
                    "data": {"pairs": [{"left": "gate", "right": "выход"}]},
                }],
            }],
        }
        with tempfile.NamedTemporaryFile("w", suffix=".json", encoding="utf-8") as f:
            json.dump(document, f, ensure_ascii=False)
            f.flush()
            sql = IMPORTER.generate_sql_from_json(f.name)
        self.assertIn("word = 'gate'", sql)
        self.assertNotIn("SELECT word FROM courses.vocabulary WHERE id", sql)


if __name__ == "__main__":
    unittest.main()
