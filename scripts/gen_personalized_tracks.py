#!/usr/bin/env python3
"""
Генерация персонализированных треков для пользователей на основе данных онбординга.

Логика:
- proficiency_level определяет уровень курсов/треков
- daily_goal_xp определяет интенсивность (количество уроков)
- motivation определяет тип контента (work → business, travel → conversational и т.д.)

Usage:
    python3 scripts/gen_personalized_tracks.py > services/course-service/seeds/003_user_tracks.sql
"""

import os
import sys
from datetime import datetime, timedelta
import random

# Для детерминированности
random.seed(42)

# Маппинг уровней онбординга на уровни курсов
PROFICIENCY_TO_COURSE_LEVEL = {
    'beginner': ['A1'],
    'a1': ['A1', 'A2'],
    'a2': ['A2', 'B1'],
    'b1': ['B1', 'B2'],
    'b2': ['B2', 'C1'],
    'just_for_fun': ['A1', 'A2'],  # легкий контент
}

# Маппинг мотивации на типы треков
MOTIVATION_TO_TRACK_TYPE = {
    'work': ['business', 'professional', 'daily'],
    'travel': ['conversational', 'daily', 'stories'],
    'education': ['grammar', 'academic', 'daily'],
    'hobby': ['stories', 'podcast', 'daily'],
    'family': ['conversational', 'daily', 'stories'],
    'career': ['business', 'professional', 'daily'],
}

# Маппинг daily_goal_xp на количество уроков в треке
DAILY_GOAL_TO_LESSONS_COUNT = {
    10: 5,   # легкий темп
    20: 10,  # средний темп
    30: 15,  # активный темп
    50: 20,  # интенсивный темп
}


def generate_user_tracks_sql():
    """
    Генерирует SQL для создания персонализированных треков для пользователей.
    """
    
    print("-- Сгенерировано scripts/gen_personalized_tracks.py — НЕ редактировать вручную.")
    print("-- Персонализированные треки на основе данных онбординга")
    print(f"-- Дата генерации: {datetime.utcnow().isoformat()}")
    print()
    print("-- Логика:")
    print("-- 1. proficiency_level → уровень курсов (A1, A2, B1, B2)")
    print("-- 2. daily_goal_xp → количество уроков в треке (10xp=5 уроков, 50xp=20 уроков)")
    print("-- 3. motivation → тип контента (work=business, travel=conversational)")
    print()
    print("SET search_path TO courses, public;")
    print()
    
    # Создаем персонализированные треки для каждого пользователя с онбордингом
    print("-- Создаем персонализированные треки для пользователей")
    print()
    
    # SQL для выборки пользователей с онбордингом
    print("""
-- Временная таблица с данными пользователей
CREATE TEMP TABLE IF NOT EXISTS user_onboarding_data AS
SELECT 
    user_id,
    native_lang,
    target_lang,
    proficiency_level,
    daily_goal_xp,
    motivation,
    CASE 
        WHEN proficiency_level = 'beginner' THEN 'A1'
        WHEN proficiency_level = 'a1' THEN 'A1'
        WHEN proficiency_level = 'a2' THEN 'A2'
        WHEN proficiency_level = 'b1' THEN 'B1'
        WHEN proficiency_level = 'b2' THEN 'B2'
        WHEN proficiency_level = 'just_for_fun' THEN 'A1'
        ELSE 'A1'
    END as recommended_level,
    CASE 
        WHEN daily_goal_xp <= 10 THEN 5
        WHEN daily_goal_xp <= 20 THEN 10
        WHEN daily_goal_xp <= 30 THEN 15
        ELSE 20
    END as recommended_lessons_count
FROM users.profiles
WHERE onboarded_at IS NOT NULL
  AND proficiency_level IS NOT NULL
  AND daily_goal_xp IS NOT NULL
  AND target_lang IS NOT NULL;

-- Создаем персонализированные треки
INSERT INTO learning_tracks (id, code, title, description, language, level, track_type, is_published, sort_order, created_at, updated_at)
SELECT 
    gen_random_uuid() as id,
    'personal-' || user_id::text as code,
    'Персональный трек ' || UPPER(recommended_level) || ' (' || target_lang || ')' as title,
    'Автоматически созданный трек на основе ваших предпочтений' as description,
    target_lang as language,
    recommended_level as level,
    'personal' as track_type,
    true as is_published,
    0 as sort_order,
    NOW() as created_at,
    NOW() as updated_at
FROM user_onboarding_data
ON CONFLICT (code) DO NOTHING;

-- Связываем треки с уроками на основе уровня и языка
-- Выбираем уроки из курсов соответствующего уровня
WITH ranked_lessons AS (
    SELECT 
        uod.user_id,
        lt.id as track_id,
        l.id as lesson_id,
        l.order_index,
        ROW_NUMBER() OVER (
            PARTITION BY uod.user_id 
            ORDER BY c.created_at, m.order_index, l.order_index
        ) as rn,
        uod.recommended_lessons_count
    FROM user_onboarding_data uod
    JOIN learning_tracks lt ON lt.code = 'personal-' || uod.user_id::text
    JOIN courses c ON c.language = uod.target_lang 
                   AND c.level = uod.recommended_level 
                   AND c.is_published = true
    JOIN modules m ON m.course_id = c.id
    JOIN lessons l ON l.module_id = m.id
)
INSERT INTO track_lessons (track_id, lesson_id, order_index, created_at)
SELECT 
    track_id,
    lesson_id,
    (rn - 1) as order_index,
    NOW() as created_at
FROM ranked_lessons
WHERE rn <= recommended_lessons_count
ON CONFLICT (track_id, lesson_id) DO NOTHING;

-- Автоматически записываем пользователей на курсы из их треков
-- Это необходимо для прохождения уроков (проверка доступа в course-service)
INSERT INTO enrollments (user_id, course_id, enrolled_at)
SELECT DISTINCT
    SUBSTRING(lt.code FROM 10)::uuid as user_id,
    c.id as course_id,
    NOW() as enrolled_at
FROM learning_tracks lt
JOIN track_lessons tl ON tl.track_id = lt.id
JOIN lessons l ON l.id = tl.lesson_id
JOIN modules m ON m.id = l.module_id
JOIN courses c ON c.id = m.course_id
WHERE lt.track_type = 'personal'
  AND lt.code LIKE 'personal-%'
ON CONFLICT (user_id, course_id) DO NOTHING;

-- Статистика
SELECT 
    'Создано персональных треков: ' || COUNT(*)::text as result
FROM learning_tracks
WHERE track_type = 'personal';

SELECT 
    'Добавлено связей трек-урок: ' || COUNT(*)::text as result
FROM track_lessons tl
JOIN learning_tracks lt ON lt.id = tl.track_id
WHERE lt.track_type = 'personal';

SELECT 
    'Создано enrollments: ' || COUNT(*)::text as result
FROM enrollments e
WHERE EXISTS (
    SELECT 1 FROM learning_tracks lt 
    WHERE lt.code = 'personal-' || e.user_id::text
);
""")

    print()
    print("-- Готово!")


if __name__ == '__main__':
    generate_user_tracks_sql()
