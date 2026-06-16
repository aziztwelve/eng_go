#!/usr/bin/env python3
"""
Генератор пустых шаблонов треков для заполнения преподавателем.

Создаёт 50 треков для каждой комбинации уровень + цель.

Использование:
    python3 scripts/generate_track_templates.py
    
Результат: создаётся директория tracks/ с JSON файлами для заполнения
"""

import json
import os
from pathlib import Path


# Конфигурация
LEVELS = ['A1', 'A2', 'B1', 'B2', 'C1']
GOALS = ['work', 'travel', 'education', 'hobby', 'family', 'career']
TRACKS_PER_COMBINATION = 50

# Типы треков по целям
TRACK_TYPES = {
    'work': 'thematic',
    'travel': 'stories',
    'education': 'thematic',
    'hobby': 'daily',
    'family': 'daily',
    'career': 'thematic'
}

# Рекомендуемая сложность по уровням
DIFFICULTY = {
    'A1': 1,
    'A2': 2,
    'B1': 3,
    'B2': 4,
    'C1': 5
}

# Примеры тем для каждой цели
THEMES = {
    'work': [
        'Офисные приветствия', 'Email этикет', 'Телефонные звонки', 'Совещания',
        'Презентации', 'Переговоры', 'Деловая переписка', 'Отчёты',
        'Тайм-менеджмент', 'Командная работа', 'Обратная связь', 'Проекты'
    ],
    'travel': [
        'В аэропорту', 'В гостинице', 'В ресторане', 'Спросить дорогу',
        'Покупки', 'Транспорт', 'Экскурсии', 'Достопримечательности',
        'Чрезвычайные ситуации', 'Культурные различия', 'Погода', 'Бронирование'
    ],
    'education': [
        'На лекции', 'В библиотеке', 'Обсуждения', 'Экзамены',
        'Исследования', 'Презентации', 'Работа в группе', 'Эссе',
        'Заметки', 'Вопросы', 'Академическое письмо', 'Научные статьи'
    ],
    'hobby': [
        'Спорт', 'Музыка', 'Искусство', 'Кулинария',
        'Чтение', 'Кино', 'Игры', 'Фотография',
        'Садоводство', 'Рукоделие', 'Танцы', 'Путешествия'
    ],
    'family': [
        'Родственники', 'Дом', 'Ежедневная рутина', 'Праздники',
        'Традиции', 'Воспитание детей', 'Хозяйство', 'Отношения',
        'Здоровье', 'Досуг', 'Финансы', 'Общение'
    ],
    'career': [
        'Собеседование', 'Резюме', 'Навыки', 'Повышение',
        'Нетворкинг', 'Личный бренд', 'Развитие', 'Цели',
        'Самопрезентация', 'LinkedIn', 'Зарплата', 'Смена работы'
    ]
}


def create_empty_track_template(level, goal, track_number, theme=''):
    """Создаёт пустой шаблон трека для заполнения."""
    
    code = f"{level.lower()}-{goal}-{track_number:03d}"
    track_type = TRACK_TYPES.get(goal, 'daily')
    difficulty = DIFFICULTY.get(level, 3)
    
    template = {
        "_instructions": f"ЗАПОЛНИТЕ ВСЕ ПОЛЯ. Это трек #{track_number} для уровня {level} и цели {goal}",
        "_theme_suggestion": theme if theme else "Придумайте тему для этого трека",
        
        "track_info": {
            "code": code,
            "title": f"[ЗАПОЛНИТЕ] Название трека на тему: {theme if theme else '???'}",
            "description": "[ЗАПОЛНИТЕ] Краткое описание трека (1-2 предложения)",
            "language": "en",
            "level": level,
            "goal": goal,
            "track_type": track_type,
            "difficulty": difficulty,
            "estimated_duration_minutes": "[ЗАПОЛНИТЕ] 20-60 минут",
            "icon_url": "https://example.com/icon.png",
            "tags": ["[ЗАПОЛНИТЕ]", "минимум", "3", "тега"]
        },
        
        "lessons": [
            {
                "_note": "Рекомендуется 5-10 уроков на трек",
                "title": "[ЗАПОЛНИТЕ] Урок 1: Название",
                "description": "[ЗАПОЛНИТЕ] Что изучим в этом уроке",
                "order_index": 1,
                "estimated_duration_minutes": 5,
                "steps": [
                    {
                        "_note": "Рекомендуется 5-8 шагов на урок",
                        "order_index": 1,
                        "type": "[ВЫБЕРИТЕ] video | text | translate | fill_blank | match_pairs | listening | quiz | story | tap_words | ai_writing",
                        "title": "[ЗАПОЛНИТЕ] Название шага",
                        "content": {
                            "_note": "Заполните содержимое в зависимости от типа шага. См. TRACK_EXAMPLE_FILLED.json"
                        }
                    }
                ]
            }
        ],
        
        "metadata": {
            "vocabulary": [
                {
                    "word": "[ЗАПОЛНИТЕ]",
                    "translation": "[ЗАПОЛНИТЕ]",
                    "example": "[ЗАПОЛНИТЕ] пример использования"
                }
            ],
            "grammar_topics": ["[ЗАПОЛНИТЕ]"],
            "skills": ["[ВЫБЕРИТЕ ИЗ] listening, reading, writing, speaking"],
            "prerequisites": [],
            "next_tracks": []
        }
    }
    
    return template


def generate_all_templates():
    """Генерирует все шаблоны треков."""
    
    output_dir = Path('tracks')
    output_dir.mkdir(exist_ok=True)
    
    total_tracks = 0
    summary = {}
    
    for level in LEVELS:
        for goal in GOALS:
            combination_dir = output_dir / f"{level.lower()}-{goal}"
            combination_dir.mkdir(exist_ok=True)
            
            themes = THEMES.get(goal, [])
            
            for i in range(1, TRACKS_PER_COMBINATION + 1):
                # Циклически используем темы
                theme = themes[(i - 1) % len(themes)] if themes else ''
                
                template = create_empty_track_template(level, goal, i, theme)
                
                filename = f"{level.lower()}-{goal}-{i:03d}.json"
                filepath = combination_dir / filename
                
                with open(filepath, 'w', encoding='utf-8') as f:
                    json.dump(template, f, ensure_ascii=False, indent=2)
                
                total_tracks += 1
            
            summary[f"{level}-{goal}"] = TRACKS_PER_COMBINATION
    
    # Создаём README с инструкциями
    readme_content = f"""# Шаблоны треков для преподавателя

Дата генерации: {os.popen('date').read().strip()}

## Структура

Создано **{total_tracks} шаблонов треков**:
- {len(LEVELS)} уровней: {', '.join(LEVELS)}
- {len(GOALS)} целей: {', '.join(GOALS)}
- {TRACKS_PER_COMBINATION} треков на каждую комбинацию

## Директории

```
tracks/
├── a1-work/          (50 треков)
├── a1-travel/        (50 треков)
├── a1-education/     (50 треков)
├── a1-hobby/         (50 треков)
├── a1-family/        (50 треков)
├── a1-career/        (50 треков)
├── a2-work/          (50 треков)
└── ... и так далее
```

## Как заполнять

1. **Откройте JSON файл** в любом редакторе
2. **Замените все [ЗАПОЛНИТЕ]** на реальный контент
3. **Следуйте инструкциям** внутри файла
4. **Смотрите пример** в `../docs/TRACK_EXAMPLE_FILLED.json`
5. **Проверьте JSON** на валидность перед импортом

## Импорт в базу данных

После заполнения треков, импортируйте их:

```bash
# Один трек
python3 scripts/import_tracks_from_json.py tracks/a1-work/a1-work-001.json

# Все треки для A1-work
python3 scripts/import_tracks_from_json.py tracks/a1-work/*.json

# Все треки
find tracks -name "*.json" -exec python3 scripts/import_tracks_from_json.py {{}} \\;
```

## Рекомендации по содержанию

### Структура урока:
1. **Warm-up** (1-2 шага): video или text
2. **Practice** (3-5 шагов): interactive (translate, fill_blank, match_pairs)
3. **Production** (1-2 шага): quiz или ai_writing
4. **Cool-down** (1 шаг): story или listening

### По уровням:
- **A1**: 5-10 слов/урок, простые предложения, present simple
- **A2**: 10-15 слов/урок, past simple, сравнения
- **B1**: 15-20 слов/урок, условные предложения, present perfect
- **B2**: 20-25 слов/урок, сложные конструкции

### По целям:
- **work**: деловая лексика, формальный стиль
- **travel**: практические ситуации, выживание
- **education**: академическая лексика, аргументация
- **hobby**: неформальный стиль, интересы
- **family**: бытовая лексика, общение
- **career**: профессиональное развитие, самопрезентация

## Помощь

См. полную документацию:
- `docs/TRACK_TEMPLATE.json` - детальное описание структуры
- `docs/TRACK_EXAMPLE_FILLED.json` - полностью заполненный пример

Вопросы? Создайте issue в репозитории.
"""
    
    with open(output_dir / 'README.md', 'w', encoding='utf-8') as f:
        f.write(readme_content)
    
    # Создаём сводку
    print("=" * 70)
    print(f"✅ Создано {total_tracks} шаблонов треков")
    print("=" * 70)
    print(f"\nДиректория: {output_dir.absolute()}")
    print(f"\nКомбинаций уровень×цель: {len(LEVELS)} × {len(GOALS)} = {len(LEVELS) * len(GOALS)}")
    print(f"Треков на комбинацию: {TRACKS_PER_COMBINATION}")
    print(f"Всего треков: {total_tracks}")
    print(f"\nСм. инструкции: {output_dir / 'README.md'}")
    print(f"См. пример: docs/TRACK_EXAMPLE_FILLED.json")
    print("\n" + "=" * 70)


if __name__ == '__main__':
    generate_all_templates()
