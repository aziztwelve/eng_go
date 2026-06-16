#!/usr/bin/env python3
"""
Импорт треков из JSON в базу данных.

Использование:
    python3 scripts/import_tracks_from_json.py tracks/a1-work-001.json
    python3 scripts/import_tracks_from_json.py tracks/*.json
"""

import json
import sys
import uuid
from datetime import datetime
from pathlib import Path


def generate_sql_from_json(json_file_path):
    """Генерирует SQL для импорта трека из JSON."""
    
    with open(json_file_path, 'r', encoding='utf-8') as f:
        data = json.load(f)
    
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
    
    json_files = sys.argv[1:]
    
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
