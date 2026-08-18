#!/usr/bin/env python3
"""Convert the A1 Business English authoring package into v2 import files."""

import json
import uuid
from pathlib import Path


ROOT = Path(__file__).resolve().parents[3]
SOURCE = ROOT / "tracks" / "A1_BUSINESS_ENGLISH_TRACKS_01_10_APP_ACTIVITIES_ONLY_COMBINED.json"
OUTPUT = ROOT / "tracks" / "A1_BUSINESS_ENGLISH_TRACKS_01_10_V2"
SEED = Path(__file__).resolve().parents[1] / "services" / "course-service" / "seeds" / "109_a1_business_tracks_01_10.sql"
NAMESPACE = uuid.UUID("6ba7b810-9dad-11d1-80b4-00c04fd430c8")

DATA_KEYS = {
    "text": {"body", "reading_time_minutes"},
    "match_pairs": {"pairs", "explanation"},
    "quiz": {"question", "options", "explanation", "image_url"},
    "translate": {"source_text", "source_language", "target_language", "correct_translation", "word_bank", "alternative_answers", "hints", "explanation"},
    "fill_blank": {"sentence_template", "correct_answer", "options", "translation_hint", "alternatives", "explanation"},
    "tap_words": {"audio_text", "audio_url", "word_bank", "correct_words", "explanation"},
    "listening": {"audio_text", "language", "audio_url", "translation_hint", "alternative_answers"},
    "listening_shadowing": {"audio_text", "language", "audio_url", "min_accuracy", "translation_hint", "explanation"},
    "story": {"title", "scenes"},
    "choose_definition": {"word", "language", "options", "explanation", "vocabulary_id"},
    "listen_choose_word": {"sentence_template", "audio_text", "language", "options", "explanation"},
    "missing_word": {"sentence_template", "correct_answer", "hint_prefix", "explanation"},
    "match_pairs_voice": {"language", "pairs", "explanation"},
    "complete_chat": {"dialogue", "answer_speaker", "options", "explanation"},
}


def localized(value):
    """Keep supplied localizations; source track and lesson metadata are English-only."""
    return value if isinstance(value, dict) else {"en": value}


def normalize_step(step):
    step_type = step["type"]
    allowed = DATA_KEYS[step_type]
    return {
        "id": step["id"],
        "order": step["order"],
        "type": step_type,
        "title": localized(step["title"]),
        "instructions": localized(step["instructions"]),
        "estimated_seconds": step["estimated_seconds"],
        "data": {key: value for key, value in step["data"].items() if key in allowed},
    }


def normalize_track(source):
    return {
        "schema_version": "lingoiq.track.v2",
        "track": {
            "code": source["track_id"],
            "title": localized(source["title"]),
            "description": localized(source["description"]),
            "target_language": "en",
            "native_language": "ru",
            "level": source["level"],
            "goal": source["goal"],
            "track_type": "thematic",
        },
        "lessons": [
            {
                "code": lesson["lesson_id"],
                "order": lesson["lesson_number"],
                "title": localized(lesson["title"]),
                "objective": localized(lesson["mission"]),
                "estimated_seconds": lesson["duration_minutes"] * 60,
                "steps": [normalize_step(step) for step in lesson["lesson_flow"]],
            }
            for lesson in source["lessons"]
        ],
    }


def sql_string(value):
    return str(value).replace("'", "''")


def stable_id(*parts):
    return str(uuid.uuid5(NAMESPACE, ":".join(parts)))


def seed_sql(tracks):
    """Create an idempotent course-service seed for canonical v2 tracks."""
    lines = [
        "-- A1 Business English tracks 01-10. Generated from lingoiq.track.v2 sources.",
        "BEGIN;",
    ]
    for item in tracks:
        track = item["track"]
        track_id = stable_id("lingoiq.track.v2", track["code"])
        title = track["title"].get("ru") or track["title"]["en"]
        description = track["description"].get("ru") or track["description"]["en"]
        lines.append(
            "INSERT INTO courses.learning_tracks "
            "(id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)\n"
            f"VALUES ('{track_id}', '{sql_string(track['code'])}', '{sql_string(title)}', "
            f"'{sql_string(description)}', '{track['target_language']}', '{track['level']}', "
            f"'{track['track_type']}', ARRAY['{sql_string(track['goal'])}']::text[], true, 0, NOW(), NOW())\n"
            "ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, "
            "motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, updated_at = NOW();"
        )
        for lesson in item["lessons"]:
            lesson_id = stable_id("lingoiq.track.v2", track["code"], lesson["code"])
            lesson_title = lesson["title"].get("ru") or lesson["title"]["en"]
            objective = lesson["objective"].get("ru") or lesson["objective"]["en"]
            lines.append(
                "INSERT INTO courses.lessons "
                "(id, module_id, title, description, order_index, created_at, updated_at)\n"
                f"VALUES ('{lesson_id}', NULL, '{sql_string(lesson_title)}', '{sql_string(objective)}', {lesson['order'] - 1}, NOW(), NOW())\n"
                "ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, "
                "order_index = EXCLUDED.order_index, updated_at = NOW();"
            )
            for step in lesson["steps"]:
                step_id = stable_id("lingoiq.track.v2", track["code"], lesson["code"], step["id"])
                step_title = step["title"].get("ru") or step["title"]["en"]
                instruction = step["instructions"].get("ru") or step["instructions"]["en"]
                content = {**step["data"], "instruction": instruction}
                content_json = json.dumps(content, ensure_ascii=False, separators=(",", ":"))
                lines.append(
                    "INSERT INTO courses.steps "
                    "(id, lesson_id, title, type, content, order_index, created_at, updated_at)\n"
                    f"VALUES ('{step_id}', '{lesson_id}', '{sql_string(step_title)}', '{step['type']}', "
                    f"'{sql_string(content_json)}'::jsonb, {step['order'] - 1}, NOW(), NOW())\n"
                    "ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, "
                    "content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();"
                )
            lines.append(
                "INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)\n"
                f"VALUES ('{track_id}', '{lesson_id}', {lesson['order'] - 1})\n"
                "ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;"
            )
    lines.append("COMMIT;")
    return "\n\n".join(lines) + "\n"


def main():
    package = json.loads(SOURCE.read_text(encoding="utf-8"))
    OUTPUT.mkdir(parents=True, exist_ok=True)
    normalized_tracks = []
    for source_track in package["tracks"]:
        normalized = normalize_track(source_track)
        normalized_tracks.append(normalized)
        target = OUTPUT / f'{source_track["track_id"]}.json'
        target.write_text(
            json.dumps(normalized, ensure_ascii=False, indent=2) + "\n",
            encoding="utf-8",
        )
    SEED.write_text(seed_sql(normalized_tracks), encoding="utf-8")


if __name__ == "__main__":
    main()
