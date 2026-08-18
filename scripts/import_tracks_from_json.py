#!/usr/bin/env python3
"""Generate an idempotent SQL seed from a lingoiq.track.v2 JSON track file.

lingoiq.track.v2 (see docs/TRACK_IMPORT_V2.schema.json and
docs/TRACK_IMPORT_V2_MINIMAL_EXAMPLE.json) is the only supported track
import format. See docs/specs/11-track-import-contract.md for the full
contract.

Usage:
    python3 scripts/import_tracks_from_json.py track.json --output services/course-service/seeds/NNN_track.sql
"""

import json
import sys
import uuid
from pathlib import Path

NAMESPACE = uuid.UUID("6ba7b810-9dad-11d1-80b4-00c04fd430c8")


def esc(value):
    return str(value or "").replace("'", "''")


def json_sql(value):
    return esc(json.dumps(value, ensure_ascii=False, sort_keys=True, separators=(",", ":")))


def stable_id(*parts):
    return str(uuid.uuid5(NAMESPACE, ":".join(parts)))


def localized(value, native_language):
    """Prefer the track's native language, fall back to English."""
    return value.get(native_language) or value.get("en")


def generate_sql_from_json(json_file_path):
    """Generate an idempotent seed SQL string for one lingoiq.track.v2 file."""
    with open(json_file_path, "r", encoding="utf-8") as f:
        data = json.load(f)

    if data.get("schema_version") != "lingoiq.track.v2":
        raise ValueError(
            f"Unsupported schema_version: {data.get('schema_version')!r}. "
            "Only 'lingoiq.track.v2' is supported — see "
            "docs/specs/11-track-import-contract.md."
        )

    track = data["track"]
    native_language = track["native_language"]
    code = track["code"]

    title = localized(track["title"], native_language)
    description = localized(track["description"], native_language)

    lines = [
        f"-- Track: {code}. Generated from lingoiq.track.v2 by import_tracks_from_json.py.",
        "BEGIN;",
    ]

    track_id = stable_id("lingoiq.track.v2", code)
    lines.append(
        "INSERT INTO courses.learning_tracks "
        "(id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)\n"
        f"VALUES ('{track_id}', '{esc(code)}', '{esc(title)}', '{esc(description)}', "
        f"'{esc(track['target_language'])}', '{esc(track['level'])}', '{esc(track['track_type'])}', "
        f"ARRAY['{esc(track['goal'])}']::text[], true, 0, NOW(), NOW())\n"
        "ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, "
        "motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, updated_at = NOW();"
    )

    for lesson in data["lessons"]:
        lesson_code = lesson["code"]
        lesson_id = stable_id("lingoiq.track.v2", code, lesson_code)
        lesson_title = localized(lesson["title"], native_language)
        lesson_objective = localized(lesson["objective"], native_language)

        lines.append(
            "INSERT INTO courses.lessons "
            "(id, module_id, title, description, order_index, created_at, updated_at)\n"
            f"VALUES ('{lesson_id}', NULL, '{esc(lesson_title)}', '{esc(lesson_objective)}', "
            f"{lesson['order'] - 1}, NOW(), NOW())\n"
            "ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, "
            "order_index = EXCLUDED.order_index, updated_at = NOW();"
        )

        for step in lesson["steps"]:
            step_id = stable_id("lingoiq.track.v2", code, lesson_code, step["id"])
            step_title = localized(step["title"], native_language)
            instructions = localized(step["instructions"], native_language)
            content = {**step["data"], "instruction": instructions}

            lines.append(
                "INSERT INTO courses.steps "
                "(id, lesson_id, type, title, content, order_index, created_at, updated_at)\n"
                f"VALUES ('{step_id}', '{lesson_id}', '{esc(step['type'])}', '{esc(step_title)}', "
                f"'{json_sql(content)}'::jsonb, {step['order'] - 1}, NOW(), NOW())\n"
                "ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, "
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
    if len(sys.argv) < 2:
        print("Usage: python3 import_tracks_from_json.py <track.json> [--output <file.sql>]")
        sys.exit(1)

    args = sys.argv[1:]
    output = None
    if "--output" in args:
        index = args.index("--output")
        if index == len(args) - 1:
            print("ERROR: --output requires a file path", file=sys.stderr)
            sys.exit(1)
        output = Path(args[index + 1])
        del args[index:index + 2]

    if len(args) != 1:
        print("ERROR: provide exactly one lingoiq.track.v2 JSON file", file=sys.stderr)
        sys.exit(1)

    json_file = args[0]
    if not Path(json_file).exists():
        print(f"ERROR: File not found: {json_file}", file=sys.stderr)
        sys.exit(1)

    sql = generate_sql_from_json(json_file)

    if output:
        output.write_text(sql, encoding="utf-8")
        print(f"Written: {output}")
    else:
        print(sql)


if __name__ == "__main__":
    main()
