#!/usr/bin/env python3
"""Generate SQL seeds from legacy tracks or canonical learning packages.

Canonical package usage:
    python3 scripts/import_tracks_from_json.py package.json --output services/course-service/seeds/104_a1_study_tracks.sql
"""

import json
import sys
import uuid
from datetime import datetime
from pathlib import Path


NAMESPACE = uuid.UUID("6ba7b810-9dad-11d1-80b4-00c04fd430c8")


def esc(value):
    return str(value or "").replace("'", "''")


def json_sql(value):
    return esc(json.dumps(value, ensure_ascii=False, sort_keys=True, separators=(",", ":")))


def stable_id(*parts):
    return str(uuid.uuid5(NAMESPACE, ":".join(parts)))


def lesson_words(lesson):
    return [item["word"] for item in lesson.get("target_language", {}).get("vocabulary", [])]


def unique(values):
    return list(dict.fromkeys(value for value in values if value))


def compile_activity(activity, lesson):
    """Compile canonical activity content into an existing mobile step type."""
    activity_type = activity["type"]
    source = {"activity_type": activity_type, "source_activity": activity}
    words = lesson_words(lesson)
    phrases = [item["phrase"] for item in lesson.get("target_language", {}).get("phrases", [])]

    if activity_type == "warm_up":
        title_words = [word.strip(".,!?…").lower() for word in lesson["title"].split()]
        correct = next((word for word in words if word.lower() in title_words), words[0] if words else "English")
        options = unique([correct, *[word for word in words if word != correct][:3]])
        return "quiz", {
            **source,
            "instruction": "Look at the lesson title and choose a word you will learn.",
            "question": f"Which word is in the lesson title: '{lesson['title']}'?",
            "options": [{"text": option, "is_correct": option == correct} for option in options],
            "explanation": f"'{correct}' is one of the key words for this lesson.",
        }

    if activity_type == "context_story":
        mission = lesson.get("mission") or activity["content"].get("story") or activity["instructions"]
        options = unique([
            mission,
            "Learn five new words.",
            "Complete a long written essay.",
            "Talk about a different topic.",
        ])
        return "quiz", {
            **source,
            "instruction": "Read the situation, then choose the lesson mission.",
            "question": "What is your mission in this lesson?",
            "options": [{"text": option, "is_correct": option == mission} for option in options],
            "explanation": activity["content"].get("story", ""),
        }

    if activity_type == "vocabulary_input":
        pairs = []
        for item in lesson.get("target_language", {}).get("vocabulary", []):
            pairs.append({"left": item["word"], "right": item.get("meaning") or item["word"]})
        return "match_pairs", {
            **source,
            "instruction": "Match each word with its meaning.",
            "pairs": pairs,
        }

    if activity_type == "listening":
        questions = activity["content"].get("questions", [])
        question = questions[0] if questions else {"question": activity["instructions"], "answer": ""}
        correct = question.get("answer", "")
        options = unique([correct, *[item.get("answer", "") for item in questions[1:]], *phrases[:2]])
        return "quiz", {
            **source,
            "instruction": activity["instructions"],
            "question": question.get("question", activity["instructions"]),
            "options": [{"text": option, "is_correct": option == correct} for option in options],
            "explanation": activity["content"].get("script", ""),
        }

    if activity_type in {"repeat_after_me", "controlled_speaking"}:
        models = activity["content"].get("models") or activity["content"].get("frames") or phrases
        sentence = models[0] if models else ""
        return "tap_words", {
            **source,
            "instruction": "Put the words in the correct order.",
            "audio_text": sentence,
            "word_bank": sentence.split(),
            "correct_words": sentence.split(),
        }

    if activity_type == "pronunciation_drill":
        sentence = (activity["content"].get("models") or phrases or [""])[0]
        tokens = sentence.split()
        answer = tokens[-1] if tokens else ""
        template = " ".join(tokens[:-1] + ["___"]) if answer else sentence
        return "fill_blank", {
            **source,
            "instruction": "Complete the phrase, then say it aloud.",
            "sentence_template": template,
            "correct_answer": answer,
            "options": unique([answer, *words[:3]]),
            "explanation": activity["content"].get("tip", ""),
        }

    if activity_type == "guided_dialogue":
        dialogue = activity["content"].get("dialogue", [])
        current = dialogue[0] if dialogue else {}
        correct = current.get("text", "")
        options = unique([correct, *[line.get("text", "") for line in dialogue[1:4]]])
        return "quiz", {
            **source,
            "instruction": "Choose the next line in the dialogue.",
            "question": f"What does {current.get('speaker', 'the speaker')} say?",
            "options": [{"text": option, "is_correct": option == correct} for option in options],
            "explanation": activity["content"].get("support", ""),
        }

    # AI roleplay and final voice mission keep their dedicated mobile UI.
    return "activity", {**source, **activity}


def generate_canonical_package_sql(data):
    package = data["package"]
    package_id = package["package_id"]
    goal = package["goal"]
    lines = [
        "-- Canonical learning package seed. Generated by import_tracks_from_json.py.",
        f"-- Package: {package_id}",
        "BEGIN;",
    ]

    for track in data["tracks"]:
        track_id = stable_id(package_id, track["track_id"])
        track_metadata = {key: value for key, value in track.items() if key != "lessons"}
        source_metadata = {"package": package, "track": track_metadata}
        description = track.get("description") or track.get("communication_outcome") or ""
        lines.append(
            "INSERT INTO courses.learning_tracks "
            "(id, code, title, description, language, level, track_type, motivation, is_published, sort_order, source_metadata, created_at, updated_at)\n"
            f"VALUES ('{track_id}', '{esc(track['track_id'])}', '{esc(track['title'])}', '{esc(description)}', "
            f"'en', '{esc(track['level'])}', 'thematic', ARRAY['{esc(goal)}']::text[], true, {track['track_number']}, "
            f"'{json_sql(source_metadata)}'::jsonb, NOW(), NOW())\n"
            "ON CONFLICT (id) DO UPDATE SET "
            "title = EXCLUDED.title, description = EXCLUDED.description, level = EXCLUDED.level, "
            "motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, "
            "sort_order = EXCLUDED.sort_order, source_metadata = EXCLUDED.source_metadata, updated_at = NOW();"
        )

        for lesson in track["lessons"]:
            lesson_id = stable_id(package_id, track["track_id"], lesson["lesson_id"])
            lesson_metadata = {key: value for key, value in lesson.items() if key != "lesson_flow"}
            description = "\n\n".join(filter(None, [lesson.get("mission"), lesson.get("scenario")]))
            lines.append(
                "INSERT INTO courses.lessons "
                "(id, module_id, title, description, order_index, source_metadata, created_at, updated_at)\n"
                f"VALUES ('{lesson_id}', NULL, '{esc(lesson['title'])}', '{esc(description)}', {lesson['lesson_number'] - 1}, "
                f"'{json_sql(lesson_metadata)}'::jsonb, NOW(), NOW())\n"
                "ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, "
                "order_index = EXCLUDED.order_index, source_metadata = EXCLUDED.source_metadata, updated_at = NOW();"
            )

            for activity in lesson["lesson_flow"]:
                activity_id = stable_id(package_id, track["track_id"], lesson["lesson_id"], activity["activity_id"])
                step_type, payload = compile_activity(activity, lesson)
                lines.append(
                    "INSERT INTO courses.steps "
                    "(id, lesson_id, type, title, content, order_index, created_at, updated_at)\n"
                    f"VALUES ('{activity_id}', '{lesson_id}', '{step_type}', '{esc(activity['title'])}', "
                    f"'{json_sql(payload)}'::jsonb, {activity['order'] - 1}, NOW(), NOW())\n"
                    "ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, "
                    "order_index = EXCLUDED.order_index, updated_at = NOW();"
                )

            lines.append(
                "INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)\n"
                f"VALUES ('{track_id}', '{lesson_id}', {lesson['lesson_number'] - 1})\n"
                "ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;"
            )

    lines.append("COMMIT;")
    return "\n\n".join(lines) + "\n"


def generate_sql_from_json(json_file_path):
    """Генерирует SQL для импорта трека из JSON."""
    
    with open(json_file_path, 'r', encoding='utf-8') as f:
        data = json.load(f)
    
    if "package" in data and "tracks" in data:
        return generate_canonical_package_sql(data)

    track_info = data['track_info']
    lessons = data['lessons']
    metadata = data.get('metadata', {})
    
    sql_statements = []
    
    # 1. Создаём трек
    track_id = str(uuid.uuid4())
    sql_statements.append(f"""
-- Трек: {track_info['title']}
INSERT INTO courses.learning_tracks (
    id, code, title, description, language, level, 
    track_type, is_published, sort_order, created_at, updated_at
) VALUES (
    '{track_id}',
    '{track_info['code']}',
    '{track_info['title'].replace("'", "''")}',
    '{track_info['description'].replace("'", "''")}',
    '{track_info['language']}',
    '{track_info['level']}',
    '{track_info['track_type']}',
    true,
    0,
    NOW(),
    NOW()
) ON CONFLICT (code) DO UPDATE SET
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    updated_at = NOW()
RETURNING id;
""")
    
    # 2. Создаём курс (если нужен для standalone lessons)
    course_id = str(uuid.uuid4())
    course_code = f"course-{track_info['code']}"
    sql_statements.append(f"""
-- Курс для трека
INSERT INTO courses.courses (
    id, title, description, price, instructor_id, 
    level, language, is_published, created_at, updated_at
) VALUES (
    '{course_id}',
    '{track_info['title'].replace("'", "''")}',
    '{track_info['description'].replace("'", "''")}',
    0,
    '11111111-1111-1111-1111-111111111111', -- admin
    '{track_info['level']}',
    '{track_info['language']}',
    true,
    NOW(),
    NOW()
) ON CONFLICT DO NOTHING;
""")
    
    # 3. Создаём модуль
    module_id = str(uuid.uuid4())
    sql_statements.append(f"""
-- Модуль для уроков
INSERT INTO courses.modules (
    id, course_id, title, description, order_index, created_at, updated_at
) VALUES (
    '{module_id}',
    '{course_id}',
    'Main Module',
    'Generated from {track_info['code']}',
    1,
    NOW(),
    NOW()
) ON CONFLICT DO NOTHING;
""")
    
    # 4. Создаём уроки и шаги
    lesson_ids = []
    for lesson in lessons:
        lesson_id = str(uuid.uuid4())
        lesson_ids.append(lesson_id)
        
        sql_statements.append(f"""
-- Урок: {lesson['title']}
INSERT INTO courses.lessons (
    id, module_id, title, description, order_index, created_at, updated_at
) VALUES (
    '{lesson_id}',
    '{module_id}',
    '{lesson['title'].replace("'", "''")}',
    '{lesson.get('description', '').replace("'", "''")}',
    {lesson['order_index']},
    NOW(),
    NOW()
);
""")
        
        # Создаём шаги урока
        for step in lesson.get('steps', []):
            step_id = str(uuid.uuid4())
            step_type = step['type']
            content_json = json.dumps(step['content'], ensure_ascii=False).replace("'", "''")
            
            sql_statements.append(f"""
-- Шаг: {step['title']}
INSERT INTO courses.steps (
    id, lesson_id, title, type, content, order_index, created_at, updated_at
) VALUES (
    '{step_id}',
    '{lesson_id}',
    '{step['title'].replace("'", "''")}',
    '{step_type}',
    '{content_json}'::jsonb,
    {step['order_index']},
    NOW(),
    NOW()
);
""")
    
    # 5. Связываем уроки с треком
    for idx, lesson_id in enumerate(lesson_ids):
        sql_statements.append(f"""
-- Связь урока с треком
INSERT INTO courses.track_lessons (
    track_id, lesson_id, order_index, created_at
) VALUES (
    '{track_id}',
    '{lesson_id}',
    {idx},
    NOW()
) ON CONFLICT DO NOTHING;
""")
    
    return '\n'.join(sql_statements)


def main():
    if len(sys.argv) < 2:
        print("Usage: python3 import_tracks_from_json.py <json_file>")
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
    json_files = args

    if output and len(json_files) != 1:
        print("ERROR: --output supports one JSON package", file=sys.stderr)
        sys.exit(1)

    if output:
        if not Path(json_files[0]).exists():
            print(f"ERROR: File not found: {json_files[0]}", file=sys.stderr)
            sys.exit(1)
        output.write_text(generate_sql_from_json(json_files[0]), encoding="utf-8")
        print(f"Written: {output}")
        return
    
    print("-- Generated SQL for importing tracks from JSON")
    print(f"-- Date: {datetime.utcnow().isoformat()}")
    print("-- Files: " + ', '.join(json_files))
    print()
    print("SET search_path TO courses, public;")
    print()
    
    for json_file in json_files:
        if not Path(json_file).exists():
            print(f"-- WARNING: File not found: {json_file}", file=sys.stderr)
            continue
        
        try:
            sql = generate_sql_from_json(json_file)
            print(sql)
            print()
        except Exception as e:
            print(f"-- ERROR processing {json_file}: {e}", file=sys.stderr)
    
    print("-- Done!")


if __name__ == '__main__':
    main()
