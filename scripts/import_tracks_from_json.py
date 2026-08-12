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
TRANSLATIONS_PATH = Path(__file__).parent / "cache" / "a1_study_ru.json"


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


def load_translations():
    if not TRANSLATIONS_PATH.exists():
        return {}
    return json.loads(TRANSLATIONS_PATH.read_text(encoding="utf-8"))


def normalize_track_import_v2(data):
    """Convert the stable authoring contract into the legacy SQL import shape."""
    track = data["track"]
    native_language = track["native_language"]
    title = track["title"].get(native_language) or track["title"].get("en")
    description = track["description"].get(native_language) or track["description"].get("en")
    lessons = []
    for lesson in data["lessons"]:
        lesson_title = lesson["title"].get(native_language) or lesson["title"].get("en")
        steps = []
        for step in lesson["steps"]:
            step_title = step["title"].get(native_language) or step["title"].get("en")
            instructions = step["instructions"].get(native_language) or step["instructions"].get("en")
            content = {**step["data"], "instruction": instructions}
            if step["type"] == "activity":
                # The mobile activity renderer expects the canonical activity envelope.
                content = {
                    "activity_id": step["id"],
                    "activity_type": step["data"]["activity_type"],
                    "instructions": instructions,
                    "estimated_seconds": step["estimated_seconds"],
                    "success_criteria": step["data"].get("success_criteria", []),
                    "content": {
                        key: value
                        for key, value in step["data"].items()
                        if key not in {"activity_type", "success_criteria"}
                    },
                }
            steps.append({"order_index": step["order"], "type": step["type"], "title": step_title, "content": content})
        lessons.append({
            "title": lesson_title,
            "description": lesson["objective"].get(native_language) or lesson["objective"].get("en"),
            "order_index": lesson["order"],
            "estimated_duration_minutes": max(1, lesson["estimated_seconds"] // 60),
            "steps": steps,
        })
    return {
        "track_info": {
            "code": track["code"], "title": title, "description": description,
            "language": track["target_language"], "level": track["level"],
            "goal": track["goal"], "track_type": track["track_type"],
        },
        "lessons": lessons,
        "metadata": {"schema_version": data["schema_version"], "native_language": native_language, "tags": track.get("tags", [])},
    }


def compile_activity(activity, lesson, translations):
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
            "instruction": "Посмотрите на название урока и выберите слово, которое будете изучать.",
            "question": f"Какое слово есть в названии урока «{lesson['title']}»?",
            "options": [{"text": option, "is_correct": option == correct} for option in options],
            "explanation": f"«{correct}» - одно из ключевых слов этого урока.",
        }

    if activity_type == "context_story":
        mission = lesson.get("mission") or activity["content"].get("story") or activity["instructions"]
        options = unique([
            mission,
            "Выучить пять новых слов.",
            "Написать большое эссе.",
            "Поговорить на другую тему.",
        ])
        return "quiz", {
            **source,
            "instruction": "Прочитайте ситуацию и выберите цель урока.",
            "question": "Какая у вас цель в этом уроке?",
            "options": [{"text": option, "is_correct": option == mission} for option in options],
            "explanation": activity["content"].get("story", ""),
        }

    if activity_type == "vocabulary_input":
        pairs = []
        for item in lesson.get("target_language", {}).get("vocabulary", []):
            word = item["word"]
            pairs.append({
                "left": word,
                "right": translations.get(word.lower(), f"Значение слова «{word}»"),
            })
        return "match_pairs", {
            **source,
            "instruction": "Соедините английское слово с его значением.",
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
            "instruction": "Составьте предложение из слов в правильном порядке.",
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
            "instruction": "Вставьте пропущенное слово, затем произнесите фразу вслух.",
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
            "instruction": "Выберите следующую реплику в диалоге.",
            "question": f"Что говорит {current.get('speaker', 'собеседник')}?",
            "options": [{"text": option, "is_correct": option == correct} for option in options],
            "explanation": activity["content"].get("support", ""),
        }

    # AI roleplay and final voice mission keep their dedicated mobile UI.
    return "activity", {**source, **activity}


def compile_pilot_activity(activity, lesson, translations):
    """T01 pilot: use proven steps where they fit and preserve real speaking work."""
    activity_type = activity["type"]
    phrases = [item["phrase"] for item in lesson.get("target_language", {}).get("phrases", [])]

    if activity_type in {"warm_up", "vocabulary_input"}:
        return compile_activity(activity, lesson, translations)

    if activity_type == "context_story":
        return "text", {
            "body": (
                "<h2>Ситуация</h2>"
                "<p>Вы в короткой учебной ситуации. Сначала послушайте модель, "
                "затем используйте ключевые слова и фразы этого урока.</p>"
                "<p><strong>Ваша задача:</strong> понять ситуацию и подготовиться "
                "к короткому ответу по-английски.</p>"
            ),
            "reading_time_minutes": 1,
            "source_activity": activity,
        }

    if activity_type == "listening":
        return "listening", {
            "instruction": "Прослушайте короткий диалог и напишите то, что услышали.",
            "audio_text": activity["content"].get("script", ""),
            "language": "en",
            "source_activity": activity,
        }

    if activity_type in {"repeat_after_me", "pronunciation_drill", "guided_dialogue", "ai_roleplay", "real_world_mission"}:
        return "activity", {
            "activity_type": activity_type,
            "source_activity": activity,
            "target_phrases": phrases,
            "target_vocabulary": lesson_words(lesson),
            **activity,
        }

    if activity_type == "controlled_speaking":
        models = activity["content"].get("frames") or []
        sentence = models[0] if models else ""
        # Alternate the two established sentence-builders across the pilot lessons.
        if lesson["lesson_number"] % 2 == 0:
            tokens = sentence.split()
            answer = tokens[-1] if tokens else ""
            return "fill_blank", {
                "instruction": "Вставьте пропущенное слово, затем произнесите фразу вслух.",
                "sentence_template": " ".join(tokens[:-1] + ["___"]),
                "correct_answer": answer,
                "options": unique([answer, *lesson_words(lesson)[:3]]),
                "source_activity": activity,
            }
        return "tap_words", {
            "instruction": "Составьте фразу из слов, затем произнесите её вслух.",
            "audio_text": sentence,
            "word_bank": sentence.split(),
            "correct_words": sentence.split(),
            "source_activity": activity,
        }

    return compile_activity(activity, lesson, translations)


GENERATED_PILOT_TITLES = {
    "warm_up": "Старт",
    "context_story": "Ситуация урока",
    "vocabulary_input": "Новые слова",
    "listening": "Слушаем и пишем",
    "repeat_after_me": "Повторяем за диктором",
    "pronunciation_drill": "Чёткое произношение",
    "controlled_speaking": "Соберите фразу",
    "guided_dialogue": "Диалог с подсказками",
    "ai_roleplay": "Разговор с AI",
    "real_world_mission": "Финальная голосовая миссия",
}


def lesson_phrases(lesson):
    return [item["phrase"] for item in lesson.get("target_language", {}).get("phrases", [])]


def compile_generated_pilot_activity(activity, lesson, translations):
    """Generate a new T01 lesson experience from objectives, words, and phrases only."""
    activity_type = activity["type"]
    words = lesson_words(lesson)
    phrases = lesson_phrases(lesson)
    first_phrase = phrases[0] if phrases else "Hello."
    generated_from = {"generator": "a1_study_t01_generated_pilot_v1", "lesson_id": lesson["lesson_id"]}

    if activity_type == "warm_up":
        correct = words[0] if words else first_phrase
        options = unique([correct, *words[1:4]])
        return "quiz", {
            **generated_from,
            "instruction": "Начните с одного слова из этого урока.",
            "question": "Какое английское слово вы будете использовать сегодня?",
            "options": [{"text": option, "is_correct": option == correct} for option in options],
            "explanation": f"Сегодня это слово: «{correct}».",
        }

    if activity_type == "context_story":
        examples = " · ".join(phrases[:2])
        return "text", {
            **generated_from,
            "body": (
                "<h2>Ситуация</h2>"
                "<p>Вы на коротком разговорном задании по английскому. "
                "Слушайте, повторяйте и отвечайте короткими фразами.</p>"
                f"<p><strong>Сегодня пригодятся:</strong> {examples}</p>"
            ),
            "reading_time_minutes": 1,
        }

    if activity_type == "vocabulary_input":
        return "match_pairs", {
            **generated_from,
            "instruction": "Соедините английские слова с русскими значениями.",
            "pairs": [{"left": word, "right": translations.get(word.lower(), f"Значение слова «{word}»")} for word in words],
        }

    if activity_type == "listening":
        return "listening", {
            **generated_from,
            "instruction": "Прослушайте фразы и напишите то, что услышали.",
            "audio_text": " ".join(phrases),
            "language": "en",
        }

    if activity_type == "repeat_after_me":
        return "activity", {**generated_from, "activity_type": activity_type, "content": {"models": phrases}, "target_phrases": phrases}

    if activity_type == "pronunciation_drill":
        return "activity", {
            **generated_from,
            "activity_type": activity_type,
            "content": {"models": [first_phrase], "tip": "Сначала послушайте пример, затем произнесите фразу слитно и спокойно."},
            "target_phrases": phrases,
        }

    if activity_type == "controlled_speaking":
        tokens = first_phrase.split()
        if lesson["lesson_number"] % 2 == 0:
            answer = tokens[-1] if tokens else ""
            return "fill_blank", {
                **generated_from,
                "instruction": "Вставьте слово, затем произнесите всю фразу вслух.",
                "sentence_template": " ".join(tokens[:-1] + ["___"]),
                "correct_answer": answer,
                "options": unique([answer, *words[:3]]),
            }
        return "tap_words", {
            **generated_from,
            "instruction": "Соберите английскую фразу, затем произнесите её вслух.",
            "audio_text": first_phrase,
            "word_bank": tokens,
            "correct_words": tokens,
        }

    if activity_type == "guided_dialogue":
        dialogue = [{"speaker": "A" if index % 2 == 0 else "B", "text": phrase} for index, phrase in enumerate(phrases)]
        return "activity", {
            **generated_from,
            "activity_type": activity_type,
            "content": {"dialogue": dialogue, "learner_role": "A", "support": "Нажмите на реплику, чтобы услышать её ещё раз."},
            "target_phrases": phrases,
        }

    if activity_type == "ai_roleplay":
        return "activity", {
            **generated_from,
            "activity_type": activity_type,
            "content": {"scenario": "Потренируйте короткий разговор по теме урока.", "required_phrases": phrases[:2]},
            "target_phrases": phrases,
            "target_vocabulary": words,
        }

    if activity_type == "real_world_mission":
        return "activity", {
            **generated_from,
            "activity_type": activity_type,
            "content": {"minimum_seconds": 30, "recording_required": True, "task": "Запишите короткий ответ, используя фразы этого урока."},
            "target_phrases": phrases,
            "target_vocabulary": words,
        }

    raise ValueError(f"Unsupported generated pilot activity: {activity_type}")


def generate_canonical_package_sql(data, selected_track_id=None, pilot=False, generated_pilot=False):
    package = data["package"]
    package_id = package["package_id"]
    goal = package["goal"]
    translations = load_translations()
    lines = [
        "-- Canonical learning package seed. Generated by import_tracks_from_json.py.",
        f"-- Package: {package_id}",
        "BEGIN;",
    ]

    for track in data["tracks"]:
        if selected_track_id and track["track_id"] != selected_track_id:
            continue
        track_id = stable_id(package_id, track["track_id"])
        track_metadata = {key: value for key, value in track.items() if key != "lessons"}
        source_metadata = {"package": package, "track": track_metadata}
        description = track.get("description") or track.get("communication_outcome") or ""
        track_title = "Мой первый урок английского" if generated_pilot else track["title"]
        track_description = "Короткие разговорные уроки для первого знакомства с английским." if generated_pilot else description
        lines.append(
            "INSERT INTO courses.learning_tracks "
            "(id, code, title, description, language, level, track_type, motivation, is_published, sort_order, source_metadata, created_at, updated_at)\n"
            f"VALUES ('{track_id}', '{esc(track['track_id'])}', '{esc(track_title)}', '{esc(track_description)}', "
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
            lesson_title = f"Урок {lesson['lesson_number']}: {lesson['title']}" if generated_pilot else lesson["title"]
            lesson_description = "Практика слов, слушания и короткой речи на английском." if generated_pilot else description
            lines.append(
                "INSERT INTO courses.lessons "
                "(id, module_id, title, description, order_index, source_metadata, created_at, updated_at)\n"
                f"VALUES ('{lesson_id}', NULL, '{esc(lesson_title)}', '{esc(lesson_description)}', {lesson['lesson_number'] - 1}, "
                f"'{json_sql(lesson_metadata)}'::jsonb, NOW(), NOW())\n"
                "ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, "
                "order_index = EXCLUDED.order_index, source_metadata = EXCLUDED.source_metadata, updated_at = NOW();"
            )

            for activity in lesson["lesson_flow"]:
                activity_id = stable_id(package_id, track["track_id"], lesson["lesson_id"], activity["activity_id"])
                compiler = compile_generated_pilot_activity if generated_pilot else compile_pilot_activity if pilot else compile_activity
                step_type, payload = compiler(activity, lesson, translations)
                step_title = GENERATED_PILOT_TITLES[activity["type"]] if generated_pilot else activity["title"]
                lines.append(
                    "INSERT INTO courses.steps "
                    "(id, lesson_id, type, title, content, order_index, created_at, updated_at)\n"
                    f"VALUES ('{activity_id}', '{lesson_id}', '{step_type}', '{esc(step_title)}', "
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


def generate_sql_from_json(json_file_path, selected_track_id=None, pilot=False, generated_pilot=False):
    """Генерирует SQL для импорта трека из JSON."""
    
    with open(json_file_path, 'r', encoding='utf-8') as f:
        data = json.load(f)

    if data.get("schema_version") == "lingoiq.track.v2":
        data = normalize_track_import_v2(data)
    
    if "package" in data and "tracks" in data:
        return generate_canonical_package_sql(data, selected_track_id, pilot, generated_pilot)

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
    track_type, motivation, is_published, sort_order, created_at, updated_at
) VALUES (
    '{track_id}',
    '{track_info['code']}',
    '{track_info['title'].replace("'", "''")}',
    '{track_info['description'].replace("'", "''")}',
    '{track_info['language']}',
    '{track_info['level']}',
    '{track_info['track_type']}',
    ARRAY['{track_info['goal']}']::text[],
    true,
    0,
    NOW(),
    NOW()
) ON CONFLICT (code) DO UPDATE SET
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    motivation = EXCLUDED.motivation,
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
    selected_track_id = None
    pilot = False
    generated_pilot = False
    if "--output" in args:
        index = args.index("--output")
        if index == len(args) - 1:
            print("ERROR: --output requires a file path", file=sys.stderr)
            sys.exit(1)
        output = Path(args[index + 1])
        del args[index:index + 2]
    if "--track" in args:
        index = args.index("--track")
        if index == len(args) - 1:
            print("ERROR: --track requires a track ID", file=sys.stderr)
            sys.exit(1)
        selected_track_id = args[index + 1]
        del args[index:index + 2]
    if "--pilot" in args:
        pilot = True
        args.remove("--pilot")
    if "--generated-pilot" in args:
        generated_pilot = True
        args.remove("--generated-pilot")
    json_files = args

    if output and len(json_files) != 1:
        print("ERROR: --output supports one JSON package", file=sys.stderr)
        sys.exit(1)

    if output:
        if not Path(json_files[0]).exists():
            print(f"ERROR: File not found: {json_files[0]}", file=sys.stderr)
            sys.exit(1)
        output.write_text(
            generate_sql_from_json(json_files[0], selected_track_id, pilot, generated_pilot),
            encoding="utf-8",
        )
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
