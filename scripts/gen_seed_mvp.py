#!/usr/bin/env python3
# /// script
# requires-python = ">=3.10"
# ///
"""
Генератор seed-файла services/course-service/seeds/007_english_a1_mvp.sql.

Создаёт MVP-курс "English for Beginners — A1 (MVP)":
  • 1 курс
  • 4 модуля × 5 уроков = 20 уроков
  • 5 шагов на урок = 100 шагов (text / translate / fill_blank /
    match_pairs / listening / tap_words / quiz / story)
  • ~50 vocabulary-записей (en → ru, level A1)

Запуск (никаких внешних зависимостей):
    python3 scripts/gen_seed_mvp.py
        > services/course-service/seeds/007_english_a1_mvp.sql

Все UUID детерминированные — повторный запуск даёт идентичный SQL.
"""

from __future__ import annotations

import json
import sys
import textwrap
from dataclasses import dataclass, field
from pathlib import Path

# ---------------------------------------------------------------------------
# Константы / идентификаторы
# ---------------------------------------------------------------------------

COURSE_ID = "aaaa0001-0000-4000-8000-000000000001"
INSTRUCTOR_ID = "22222222-2222-2222-2222-222222222222"  # John Smith из 001_courses

LANG = "en"
TARGET_LANG = "ru"
LEVEL = "A1"


def module_id(m: int) -> str:
    return f"aaaa0001-0001-4000-8000-00000000000{m}"


def lesson_id(m: int, l: int) -> str:
    return f"aaaa0001-0002-4000-8000-0000000000{m}{l}"


def step_id(m: int, l: int, s: int) -> str:
    # Последняя группа UUID = 12 hex: 8 нулей + m + l + ss (2 цифры).
    return f"aaaa0001-0003-4000-8000-00000000{m}{l}{s:02d}"


def vocab_id(v: int) -> str:
    return f"aaaa0001-0004-4000-8000-{v:012d}"


# ---------------------------------------------------------------------------
# Модель контента
# ---------------------------------------------------------------------------


@dataclass
class Step:
    type: str
    title: str
    content: dict


@dataclass
class Lesson:
    title: str
    description: str
    steps: list[Step] = field(default_factory=list)


@dataclass
class Module:
    title: str
    description: str
    lessons: list[Lesson] = field(default_factory=list)


# ---------------------------------------------------------------------------
# Helpers для типов шагов (соответствуют валидаторам step-validation-service)
# ---------------------------------------------------------------------------


def text_step(title: str, body: str) -> Step:
    return Step("text", title, {"text": body})


def quiz_step(title: str, question: str, options: list[tuple[str, bool]],
              explanation: str = "") -> Step:
    return Step("quiz", title, {
        "type": "quiz",
        "instruction": "Choose the correct answer",
        "question": question,
        "options": [{"text": t, "is_correct": c} for t, c in options],
        "explanation": explanation,
    })


def translate_step(title: str, instruction: str, source: str,
                   correct: str, alternatives: list[str],
                   word_bank: list[str],
                   src_lang: str = LANG, tgt_lang: str = TARGET_LANG,
                   hints: list[str] | None = None) -> Step:
    return Step("translate", title, {
        "type": "translate",
        "instruction": instruction,
        "source_text": source,
        "source_language": src_lang,
        "target_language": tgt_lang,
        "correct_translation": correct,
        "alternative_answers": alternatives,
        "word_bank": word_bank,
        "hints": hints or [],
    })


def fill_blank_step(title: str, instruction: str, template: str,
                    options: list[str], correct: str,
                    alternatives: list[str] | None = None,
                    explanation: str = "") -> Step:
    return Step("fill_blank", title, {
        "type": "fill_blank",
        "instruction": instruction,
        "sentence_template": template,
        "options": options,
        "correct_answer": correct,
        # validator читает alternatives (см. fill_blank.go)
        "alternatives": alternatives or [],
        "explanation": explanation,
    })


def match_pairs_step(title: str, instruction: str,
                     pairs: list[tuple[str, str]]) -> Step:
    return Step("match_pairs", title, {
        "type": "match_pairs",
        "instruction": instruction,
        "pairs": [{"left": l, "right": r} for l, r in pairs],
    })


def listening_step(title: str, instruction: str, audio_text: str,
                   translation_hint: str = "",
                   alternatives: list[str] | None = None) -> Step:
    return Step("listening", title, {
        "type": "listening",
        "instruction": instruction,
        "audio_text": audio_text,
        "language": LANG,
        # Real audio_url — Phase 5 (TTS). Пока пусто, фронт ничего не падает.
        "audio_url": "",
        "translation_hint": translation_hint,
        "alternative_answers": alternatives or [audio_text.lower()],
    })


def tap_words_step(title: str, instruction: str, audio_text: str,
                   correct_words: list[str], distractors: list[str]) -> Step:
    return Step("tap_words", title, {
        "type": "tap_words",
        "instruction": instruction,
        "audio_url": "",
        "audio_text": audio_text,
        "word_bank": correct_words + distractors,
        "correct_words": correct_words,
    })


def story_step(title: str, scenes: list[dict]) -> Step:
    return Step("story", title, {
        "type": "story",
        "title": title,
        "scenes": scenes,
    })


# ---------------------------------------------------------------------------
# Контент: 4 модуля × 5 уроков × 5 шагов
# ---------------------------------------------------------------------------


def build_modules() -> list[Module]:
    return [
        build_module_1_greetings(),
        build_module_2_numbers_time(),
        build_module_3_family_daily(),
        build_module_4_food_cafe(),
    ]


# --- Module 1: Greetings & Introductions -----------------------------------


def build_module_1_greetings() -> Module:
    return Module(
        title="Greetings & Introductions",
        description="Поздороваться, представиться, попрощаться — самые первые "
                    "фразы английского.",
        lessons=[
            Lesson(
                title="Hello & Goodbye",
                description="Hi, hello, bye — что когда говорить.",
                steps=[
                    text_step(
                        "Welcome",
                        "Hi! In this lesson you will learn how to greet "
                        "people in English. The most common greetings are: "
                        "Hello, Hi, Good morning, Good evening.",
                    ),
                    match_pairs_step(
                        "Match greetings",
                        "Match each English greeting with its Russian translation",
                        [
                            ("Hello", "Привет"),
                            ("Goodbye", "До свидания"),
                            ("Good morning", "Доброе утро"),
                            ("Good night", "Спокойной ночи"),
                            ("See you", "Увидимся"),
                        ],
                    ),
                    quiz_step(
                        "Morning greeting",
                        "What do you say to someone at 9 AM?",
                        [
                            ("Good morning", True),
                            ("Good night", False),
                            ("Goodbye", False),
                            ("See you tomorrow", False),
                        ],
                        explanation="Good morning is used until about noon.",
                    ),
                    translate_step(
                        "Translate: Hello, friend",
                        "Translate the phrase to Russian",
                        "Hello, my friend!",
                        "Привет, мой друг!",
                        ["Здравствуй, мой друг!", "Привет мой друг"],
                        ["Привет", ",", "мой", "друг", "!", "Пока", "до"],
                        hints=["friend = друг"],
                    ),
                    fill_blank_step(
                        "Fill the goodbye",
                        "Complete the goodbye phrase",
                        "___ night! Sleep well.",
                        ["Good", "Bad", "Hello", "Hi"],
                        "Good",
                        explanation="'Good night' is said before sleep.",
                    ),
                ],
            ),
            Lesson(
                title="My name is...",
                description="Представиться и спросить имя собеседника.",
                steps=[
                    text_step(
                        "How to introduce yourself",
                        "To introduce yourself in English say: "
                        "'My name is …' or 'I am …'. To ask the other "
                        "person: 'What is your name?'",
                    ),
                    fill_blank_step(
                        "Complete the introduction",
                        "Fill in the blank",
                        "My ___ is Anna.",
                        ["name", "age", "city", "friend"],
                        "name",
                        explanation="'My name is …' is the standard form.",
                    ),
                    translate_step(
                        "Translate: I am Alex",
                        "Translate to Russian",
                        "I am Alex. Nice to meet you.",
                        "Я Алекс. Приятно познакомиться.",
                        ["Я — Алекс. Приятно познакомиться."],
                        ["Я", "Алекс", ".", "Приятно", "познакомиться",
                         "Привет", "имя"],
                    ),
                    listening_step(
                        "Listen: name",
                        "Type what you hear",
                        "My name is John",
                        translation_hint="Меня зовут Джон",
                        alternatives=["my name is john", "My name is John."],
                    ),
                    quiz_step(
                        "Asking a name",
                        "How do you ask someone's name?",
                        [
                            ("What is your name?", True),
                            ("How old are you?", False),
                            ("Where are you from?", False),
                            ("How are you?", False),
                        ],
                        explanation="'What is your name?' asks for the name.",
                    ),
                ],
            ),
            Lesson(
                title="Where are you from?",
                description="Страны и национальности.",
                steps=[
                    text_step(
                        "Talking about countries",
                        "To say where you are from, use 'I am from + "
                        "country'. Example: I am from Russia. I am from "
                        "Kazakhstan. To ask: Where are you from?",
                    ),
                    match_pairs_step(
                        "Match countries",
                        "Match the country with its translation",
                        [
                            ("Russia", "Россия"),
                            ("Kazakhstan", "Казахстан"),
                            ("the USA", "США"),
                            ("the UK", "Великобритания"),
                            ("Germany", "Германия"),
                        ],
                    ),
                    fill_blank_step(
                        "Country sentence",
                        "Complete the sentence",
                        "I am ___ Kazakhstan.",
                        ["from", "in", "to", "at"],
                        "from",
                        explanation="'from' indicates origin.",
                    ),
                    translate_step(
                        "Translate: from Russia",
                        "Translate to Russian",
                        "I am from Russia.",
                        "Я из России.",
                        ["Я — из России."],
                        ["Я", "из", "России", ".", "в", "США"],
                    ),
                    quiz_step(
                        "Nationality",
                        "A person from Germany is …",
                        [
                            ("German", True),
                            ("Germanian", False),
                            ("Germany", False),
                            ("Germanic", False),
                        ],
                        explanation="Nationality of Germany is 'German'.",
                    ),
                ],
            ),
            Lesson(
                title="How are you?",
                description="Small talk: спросить и ответить о состоянии.",
                steps=[
                    text_step(
                        "Asking how someone is",
                        "Common phrases: How are you? — I am fine, thanks. "
                        "And you? Use 'fine' / 'good' / 'great' / 'so-so'.",
                    ),
                    match_pairs_step(
                        "Match responses",
                        "Match phrase and translation",
                        [
                            ("I am fine", "Я в порядке"),
                            ("Not bad", "Неплохо"),
                            ("So-so", "Так себе"),
                            ("Great!", "Отлично!"),
                            ("Thank you", "Спасибо"),
                        ],
                    ),
                    fill_blank_step(
                        "Reply politely",
                        "Complete the polite reply",
                        "I am fine, ___ you.",
                        ["thank", "please", "sorry", "hello"],
                        "thank",
                        explanation="'Thank you' is a polite phrase.",
                    ),
                    listening_step(
                        "Listen: how are you",
                        "Type what you hear",
                        "How are you today",
                        translation_hint="Как ты сегодня?",
                        alternatives=["how are you today", "How are you today?"],
                    ),
                    quiz_step(
                        "Polite question",
                        "After 'I am fine, thanks', what is polite to add?",
                        [
                            ("And you?", True),
                            ("Goodbye!", False),
                            ("Sorry.", False),
                            ("No.", False),
                        ],
                        explanation="'And you?' returns the question.",
                    ),
                ],
            ),
            Lesson(
                title="Nice to meet you",
                description="Вежливые формулы при знакомстве.",
                steps=[
                    text_step(
                        "Polite expressions",
                        "When you meet someone for the first time say: "
                        "'Nice to meet you.' Reply: 'Nice to meet you too.'",
                    ),
                    tap_words_step(
                        "Tap: meet you",
                        "Tap the words you hear, in order",
                        "Nice to meet you",
                        ["Nice", "to", "meet", "you"],
                        ["see", "again", "hello", "name"],
                    ),
                    translate_step(
                        "Translate: meet you too",
                        "Translate to Russian",
                        "Nice to meet you too.",
                        "Мне тоже приятно познакомиться.",
                        ["И мне приятно познакомиться."],
                        ["Мне", "тоже", "приятно", "познакомиться", ".",
                         "очень"],
                    ),
                    fill_blank_step(
                        "Fill the meeting phrase",
                        "Complete the phrase",
                        "Nice ___ meet you.",
                        ["to", "for", "of", "at"],
                        "to",
                        explanation="'Nice to meet you' — fixed phrase.",
                    ),
                    story_step(
                        "Meeting at a party",
                        [
                            {
                                "image_url": "",
                                "character": "Anna",
                                "text": "Hi! I am Anna.",
                                "translation": "Привет! Я Анна.",
                            },
                            {
                                "image_url": "",
                                "character": "You",
                                "text": "Hello, Anna! I am Sam.",
                                "translation": "Привет, Анна! Я Сэм.",
                            },
                            {
                                "type": "choice",
                                "question": "What do you say next?",
                                "options": [
                                    {"text": "Nice to meet you!",
                                     "is_correct": True},
                                    {"text": "Goodbye!", "is_correct": False},
                                    {"text": "How old are you?",
                                     "is_correct": False},
                                ],
                            },
                        ],
                    ),
                ],
            ),
        ],
    )


# --- Module 2: Numbers, Days & Time ----------------------------------------


def build_module_2_numbers_time() -> Module:
    return Module(
        title="Numbers, Days & Time",
        description="Считать, называть дни недели и время.",
        lessons=[
            Lesson(
                title="Numbers 1–10",
                description="Базовые числительные.",
                steps=[
                    text_step(
                        "Counting 1 to 10",
                        "1 one, 2 two, 3 three, 4 four, 5 five, 6 six, "
                        "7 seven, 8 eight, 9 nine, 10 ten.",
                    ),
                    match_pairs_step(
                        "Match numbers",
                        "Match digit and English word",
                        [
                            ("1", "one"),
                            ("3", "three"),
                            ("5", "five"),
                            ("7", "seven"),
                            ("10", "ten"),
                        ],
                    ),
                    fill_blank_step(
                        "Next number",
                        "Complete the sequence",
                        "one, two, ___, four",
                        ["three", "five", "ten", "six"],
                        "three",
                    ),
                    listening_step(
                        "Listen: number seven",
                        "Type what you hear",
                        "seven",
                        translation_hint="семь",
                        alternatives=["seven", "Seven", "7"],
                    ),
                    quiz_step(
                        "How many?",
                        "How do you say '8' in English?",
                        [
                            ("eight", True),
                            ("ate", False),
                            ("eit", False),
                            ("ait", False),
                        ],
                    ),
                ],
            ),
            Lesson(
                title="Numbers 11–100",
                description="Десятки и составные числа.",
                steps=[
                    text_step(
                        "Tens",
                        "11 eleven, 12 twelve, 13 thirteen, 20 twenty, "
                        "30 thirty, 40 forty, 50 fifty, 100 one hundred. "
                        "Составные: 21 twenty-one, 35 thirty-five.",
                    ),
                    match_pairs_step(
                        "Match tens",
                        "Match number and English",
                        [
                            ("20", "twenty"),
                            ("30", "thirty"),
                            ("40", "forty"),
                            ("50", "fifty"),
                            ("100", "one hundred"),
                        ],
                    ),
                    fill_blank_step(
                        "Compose 25",
                        "Complete the number twenty-five",
                        "twenty-___",
                        ["five", "four", "six", "seven"],
                        "five",
                    ),
                    translate_step(
                        "Translate the number",
                        "Translate to Russian",
                        "I am twenty years old.",
                        "Мне двадцать лет.",
                        ["Мне 20 лет."],
                        ["Мне", "двадцать", "лет", ".", "годов", "20"],
                    ),
                    quiz_step(
                        "Tricky teen",
                        "Which is THIRTEEN?",
                        [
                            ("13", True),
                            ("30", False),
                            ("33", False),
                            ("3", False),
                        ],
                        explanation="thirteen = 13, thirty = 30.",
                    ),
                ],
            ),
            Lesson(
                title="Days of the week",
                description="Понедельник, вторник… по-английски.",
                steps=[
                    text_step(
                        "Seven days",
                        "Monday, Tuesday, Wednesday, Thursday, Friday, "
                        "Saturday, Sunday. The week starts on Monday.",
                    ),
                    match_pairs_step(
                        "Match weekdays",
                        "Match day and translation",
                        [
                            ("Monday", "Понедельник"),
                            ("Wednesday", "Среда"),
                            ("Friday", "Пятница"),
                            ("Saturday", "Суббота"),
                            ("Sunday", "Воскресенье"),
                        ],
                    ),
                    fill_blank_step(
                        "Day after Monday",
                        "Complete the sequence",
                        "Monday, ___, Wednesday",
                        ["Tuesday", "Thursday", "Sunday", "Saturday"],
                        "Tuesday",
                    ),
                    tap_words_step(
                        "Tap weekdays in order",
                        "Tap the first three days of the week, in order",
                        "Monday Tuesday Wednesday",
                        ["Monday", "Tuesday", "Wednesday"],
                        ["Friday", "Sunday", "Saturday"],
                    ),
                    quiz_step(
                        "Weekend",
                        "Which days are the weekend?",
                        [
                            ("Saturday and Sunday", True),
                            ("Friday and Saturday", False),
                            ("Sunday and Monday", False),
                            ("Wednesday and Thursday", False),
                        ],
                    ),
                ],
            ),
            Lesson(
                title="What time is it?",
                description="Часы и минуты.",
                steps=[
                    text_step(
                        "Telling time",
                        "Use 'It is …' to tell time. Examples: It is 3 "
                        "o'clock. It is half past two. It is a quarter to "
                        "five.",
                    ),
                    fill_blank_step(
                        "Time phrase",
                        "Complete the sentence",
                        "It ___ five o'clock.",
                        ["is", "are", "am", "be"],
                        "is",
                    ),
                    translate_step(
                        "Translate: half past two",
                        "Translate to Russian",
                        "It is half past two.",
                        "Половина третьего.",
                        ["Полтретьего."],
                        ["Половина", "третьего", ".", "пять", "часов"],
                    ),
                    listening_step(
                        "Listen: time",
                        "Type what you hear",
                        "It is three o'clock",
                        translation_hint="Сейчас три часа",
                        alternatives=[
                            "it is three o'clock",
                            "It is three o'clock.",
                            "it's three o'clock",
                        ],
                    ),
                    quiz_step(
                        "Quarter past",
                        "What does 'a quarter past four' mean?",
                        [
                            ("4:15", True),
                            ("3:45", False),
                            ("4:45", False),
                            ("4:30", False),
                        ],
                    ),
                ],
            ),
            Lesson(
                title="My daily schedule",
                description="Утром, днём, вечером — простые предложения.",
                steps=[
                    text_step(
                        "Parts of the day",
                        "in the morning, in the afternoon, in the evening, "
                        "at night. Example: I work in the morning.",
                    ),
                    match_pairs_step(
                        "Match parts of day",
                        "Match phrase and translation",
                        [
                            ("morning", "утро"),
                            ("afternoon", "день"),
                            ("evening", "вечер"),
                            ("night", "ночь"),
                            ("noon", "полдень"),
                        ],
                    ),
                    fill_blank_step(
                        "When do you work?",
                        "Complete the time-of-day phrase",
                        "I work ___ the morning.",
                        ["in", "on", "at", "to"],
                        "in",
                        explanation="'in the morning' is fixed.",
                    ),
                    translate_step(
                        "Translate: in the evening",
                        "Translate to Russian",
                        "I read in the evening.",
                        "Я читаю вечером.",
                        ["По вечерам я читаю."],
                        ["Я", "читаю", "вечером", ".", "утром", "ночью"],
                    ),
                    story_step(
                        "A day with Anna",
                        [
                            {
                                "image_url": "",
                                "character": "Narrator",
                                "text": "It is 7 in the morning.",
                                "translation": "Сейчас 7 утра.",
                            },
                            {
                                "image_url": "",
                                "character": "Anna",
                                "text": "Good morning! I drink coffee.",
                                "translation": "Доброе утро! Я пью кофе.",
                            },
                            {
                                "type": "choice",
                                "question": "When does Anna drink coffee?",
                                "options": [
                                    {"text": "In the morning",
                                     "is_correct": True},
                                    {"text": "At night", "is_correct": False},
                                    {"text": "In the evening",
                                     "is_correct": False},
                                ],
                            },
                        ],
                    ),
                ],
            ),
        ],
    )


# --- Module 3: Family & Daily Life -----------------------------------------


def build_module_3_family_daily() -> Module:
    return Module(
        title="Family & Daily Life",
        description="Семья, дом, повседневные дела.",
        lessons=[
            Lesson(
                title="My family",
                description="Mother, father, brother, sister, son, daughter.",
                steps=[
                    text_step(
                        "Family words",
                        "mother, father, brother, sister, son, daughter, "
                        "grandmother, grandfather, parents, children.",
                    ),
                    match_pairs_step(
                        "Match family",
                        "Match the word and translation",
                        [
                            ("mother", "мама"),
                            ("father", "папа"),
                            ("brother", "брат"),
                            ("sister", "сестра"),
                            ("parents", "родители"),
                        ],
                    ),
                    fill_blank_step(
                        "Sibling",
                        "Complete the sentence",
                        "She is my ___.",
                        ["sister", "brother", "father", "son"],
                        "sister",
                    ),
                    translate_step(
                        "Translate: I have a brother",
                        "Translate to Russian",
                        "I have a brother.",
                        "У меня есть брат.",
                        ["У меня брат."],
                        ["У", "меня", "есть", "брат", ".", "сестра"],
                    ),
                    quiz_step(
                        "Parents",
                        "Your mother and father are your …",
                        [
                            ("parents", True),
                            ("children", False),
                            ("siblings", False),
                            ("cousins", False),
                        ],
                    ),
                ],
            ),
            Lesson(
                title="My home",
                description="Комнаты и мебель.",
                steps=[
                    text_step(
                        "Rooms",
                        "kitchen, bedroom, bathroom, living room, hall. "
                        "Example: I cook in the kitchen.",
                    ),
                    match_pairs_step(
                        "Match rooms",
                        "Match room and translation",
                        [
                            ("kitchen", "кухня"),
                            ("bedroom", "спальня"),
                            ("bathroom", "ванная"),
                            ("living room", "гостиная"),
                            ("hall", "прихожая"),
                        ],
                    ),
                    fill_blank_step(
                        "Sleep in the …",
                        "Complete the sentence",
                        "I sleep in the ___.",
                        ["bedroom", "kitchen", "bathroom", "garage"],
                        "bedroom",
                    ),
                    listening_step(
                        "Listen: my kitchen",
                        "Type what you hear",
                        "My kitchen is small",
                        translation_hint="Моя кухня маленькая",
                        alternatives=[
                            "my kitchen is small",
                            "My kitchen is small.",
                        ],
                    ),
                    quiz_step(
                        "Cooking place",
                        "Where do people usually cook?",
                        [
                            ("in the kitchen", True),
                            ("in the bedroom", False),
                            ("in the bathroom", False),
                            ("in the garage", False),
                        ],
                    ),
                ],
            ),
            Lesson(
                title="Daily routine",
                description="Wake up, eat, work, sleep.",
                steps=[
                    text_step(
                        "Routine verbs",
                        "wake up, get up, have breakfast, go to work, "
                        "come home, have dinner, go to bed.",
                    ),
                    tap_words_step(
                        "Tap the routine",
                        "Tap words you hear, in order",
                        "I wake up at seven",
                        ["I", "wake", "up", "at", "seven"],
                        ["go", "bed", "home"],
                    ),
                    fill_blank_step(
                        "Morning verb",
                        "Complete the morning phrase",
                        "I ___ up at 7 AM.",
                        ["wake", "go", "sleep", "eat"],
                        "wake",
                    ),
                    translate_step(
                        "Translate: I work",
                        "Translate to Russian",
                        "I work from 9 to 6.",
                        "Я работаю с 9 до 6.",
                        ["Работаю с 9 до 6."],
                        ["Я", "работаю", "с", "до", "6", "9", "."],
                    ),
                    quiz_step(
                        "Bedtime",
                        "What does 'go to bed' mean?",
                        [
                            ("Lie down to sleep", True),
                            ("Wake up", False),
                            ("Eat dinner", False),
                            ("Take a shower", False),
                        ],
                    ),
                ],
            ),
            Lesson(
                title="Hobbies",
                description="Что мы любим делать.",
                steps=[
                    text_step(
                        "Common hobbies",
                        "read books, listen to music, play football, watch "
                        "movies, cook. Example: I like to read books.",
                    ),
                    match_pairs_step(
                        "Match hobbies",
                        "Match hobby and translation",
                        [
                            ("read books", "читать книги"),
                            ("listen to music", "слушать музыку"),
                            ("play football", "играть в футбол"),
                            ("watch movies", "смотреть фильмы"),
                            ("cook", "готовить"),
                        ],
                    ),
                    fill_blank_step(
                        "I like to …",
                        "Complete the sentence",
                        "I like ___ read books.",
                        ["to", "for", "in", "at"],
                        "to",
                        explanation="'like to + verb' — стандартная форма.",
                    ),
                    translate_step(
                        "Translate: music",
                        "Translate to Russian",
                        "I listen to music every day.",
                        "Я слушаю музыку каждый день.",
                        ["Я каждый день слушаю музыку."],
                        ["Я", "слушаю", "музыку", "каждый", "день", ".",
                         "часто"],
                    ),
                    quiz_step(
                        "Hobby verb",
                        "Which verb goes with 'football'?",
                        [
                            ("play", True),
                            ("read", False),
                            ("listen", False),
                            ("watch", False),
                        ],
                    ),
                ],
            ),
            Lesson(
                title="At the weekend",
                description="What do you do on weekends?",
                steps=[
                    text_step(
                        "Weekend phrases",
                        "On Saturday I … / On Sunday I … / At the weekend "
                        "we usually rest, meet friends, go for a walk.",
                    ),
                    fill_blank_step(
                        "Weekend day",
                        "Complete the sentence",
                        "On ___ I rest.",
                        ["Sunday", "Monday", "Tuesday", "Wednesday"],
                        "Sunday",
                    ),
                    translate_step(
                        "Translate: meet friends",
                        "Translate to Russian",
                        "On Saturday I meet my friends.",
                        "В субботу я встречаюсь с друзьями.",
                        ["По субботам я встречаюсь с друзьями."],
                        ["В", "субботу", "я", "встречаюсь", "с", "друзьями",
                         ".", "воскресенье"],
                    ),
                    listening_step(
                        "Listen: weekend plan",
                        "Type what you hear",
                        "I go for a walk on Sunday",
                        translation_hint="Я гуляю в воскресенье",
                        alternatives=[
                            "i go for a walk on sunday",
                            "I go for a walk on Sunday.",
                        ],
                    ),
                    story_step(
                        "Saturday plans",
                        [
                            {
                                "image_url": "",
                                "character": "Mia",
                                "text": "What do you do on Saturday?",
                                "translation": "Что ты делаешь в субботу?",
                            },
                            {
                                "image_url": "",
                                "character": "Tom",
                                "text": "I meet my friends.",
                                "translation": "Я встречаюсь с друзьями.",
                            },
                            {
                                "type": "choice",
                                "question": "What is Tom doing on Saturday?",
                                "options": [
                                    {"text": "Meeting friends",
                                     "is_correct": True},
                                    {"text": "Working", "is_correct": False},
                                    {"text": "Sleeping", "is_correct": False},
                                ],
                            },
                        ],
                    ),
                ],
            ),
        ],
    )


# --- Module 4: Food & Café -------------------------------------------------


def build_module_4_food_cafe() -> Module:
    return Module(
        title="Food & Café",
        description="Базовый food-vocab + заказать в кафе.",
        lessons=[
            Lesson(
                title="Food basics",
                description="Bread, water, coffee, tea, milk.",
                steps=[
                    text_step(
                        "Common foods",
                        "bread, water, milk, coffee, tea, sugar, salt, "
                        "cheese, butter, egg.",
                    ),
                    match_pairs_step(
                        "Match foods",
                        "Match food and translation",
                        [
                            ("bread", "хлеб"),
                            ("water", "вода"),
                            ("milk", "молоко"),
                            ("coffee", "кофе"),
                            ("tea", "чай"),
                        ],
                    ),
                    fill_blank_step(
                        "Drink phrase",
                        "Complete the sentence",
                        "I drink ___ in the morning.",
                        ["coffee", "bread", "shoes", "music"],
                        "coffee",
                    ),
                    translate_step(
                        "Translate: bread and milk",
                        "Translate to Russian",
                        "I buy bread and milk.",
                        "Я покупаю хлеб и молоко.",
                        ["Покупаю хлеб и молоко."],
                        ["Я", "покупаю", "хлеб", "и", "молоко", ".", "сахар"],
                    ),
                    quiz_step(
                        "Hot drinks",
                        "Which one is usually HOT?",
                        [
                            ("tea", True),
                            ("water", False),
                            ("milk", False),
                            ("ice", False),
                        ],
                    ),
                ],
            ),
            Lesson(
                title="Fruits & vegetables",
                description="Apples, bananas, tomatoes…",
                steps=[
                    text_step(
                        "Fruits and veggies",
                        "Fruits: apple, banana, orange, grape. "
                        "Vegetables: tomato, potato, onion, carrot.",
                    ),
                    match_pairs_step(
                        "Match fruits",
                        "Match the fruit and translation",
                        [
                            ("apple", "яблоко"),
                            ("banana", "банан"),
                            ("orange", "апельсин"),
                            ("grape", "виноград"),
                            ("tomato", "помидор"),
                        ],
                    ),
                    fill_blank_step(
                        "Red fruit",
                        "Complete the sentence",
                        "An ___ is usually red or green.",
                        ["apple", "banana", "lemon", "milk"],
                        "apple",
                    ),
                    tap_words_step(
                        "Tap: I like apples",
                        "Tap the words you hear",
                        "I like apples",
                        ["I", "like", "apples"],
                        ["bananas", "buy", "she"],
                    ),
                    quiz_step(
                        "Not a fruit",
                        "Which one is NOT a fruit?",
                        [
                            ("tomato", False),
                            ("potato", True),
                            ("apple", False),
                            ("banana", False),
                        ],
                        explanation="Tomato is technically a fruit; "
                                    "potato is a vegetable.",
                    ),
                ],
            ),
            Lesson(
                title="Ordering in a café",
                description="Базовая фраза для заказа.",
                steps=[
                    text_step(
                        "Polite ordering",
                        "To order: 'Can I have …, please?' Reply from "
                        "waiter: 'Sure, anything else?'",
                    ),
                    fill_blank_step(
                        "Polite request",
                        "Complete the polite request",
                        "Can I have a coffee, ___?",
                        ["please", "thanks", "sorry", "hello"],
                        "please",
                    ),
                    translate_step(
                        "Translate: order coffee",
                        "Translate to Russian",
                        "Can I have a coffee, please?",
                        "Можно мне кофе, пожалуйста?",
                        ["Можно мне один кофе, пожалуйста?"],
                        ["Можно", "мне", "кофе", ",", "пожалуйста", "?",
                         "чай"],
                    ),
                    listening_step(
                        "Listen: order",
                        "Type what you hear",
                        "I want a tea please",
                        translation_hint="Я хочу чай, пожалуйста",
                        alternatives=[
                            "i want a tea please",
                            "I want a tea, please.",
                            "I want a tea please.",
                        ],
                    ),
                    quiz_step(
                        "Polite word",
                        "Which word makes a request polite?",
                        [
                            ("please", True),
                            ("now", False),
                            ("quickly", False),
                            ("you", False),
                        ],
                    ),
                ],
            ),
            Lesson(
                title="Numbers in a café",
                description="Сколько стоит и сколько взять.",
                steps=[
                    text_step(
                        "Asking the price",
                        "How much is it? — It is five dollars. "
                        "How much are they? — They are ten dollars.",
                    ),
                    fill_blank_step(
                        "Asking price",
                        "Complete the question",
                        "How ___ is the coffee?",
                        ["much", "many", "old", "long"],
                        "much",
                        explanation="'how much' для неисчисляемых.",
                    ),
                    translate_step(
                        "Translate: it is five dollars",
                        "Translate to Russian",
                        "It is five dollars.",
                        "Это пять долларов.",
                        ["Пять долларов."],
                        ["Это", "пять", "долларов", ".", "три", "евро"],
                    ),
                    match_pairs_step(
                        "Match price",
                        "Match the price and word",
                        [
                            ("$1", "one dollar"),
                            ("$2", "two dollars"),
                            ("$5", "five dollars"),
                            ("$10", "ten dollars"),
                            ("$0.50", "fifty cents"),
                        ],
                    ),
                    quiz_step(
                        "Cheap",
                        "If something is 'cheap', it is …",
                        [
                            ("not expensive", True),
                            ("very expensive", False),
                            ("hot", False),
                            ("cold", False),
                        ],
                    ),
                ],
            ),
            Lesson(
                title="Café dialogue",
                description="Финальный практический урок.",
                steps=[
                    text_step(
                        "Putting it together",
                        "Сейчас разыграем диалог в кафе и закрепим всю "
                        "лексику модуля.",
                    ),
                    match_pairs_step(
                        "Match dialogue phrases",
                        "Match phrase and translation",
                        [
                            ("Can I have a coffee, please?",
                             "Можно мне кофе, пожалуйста?"),
                            ("Anything else?", "Что-нибудь ещё?"),
                            ("That is all, thanks.", "Это всё, спасибо."),
                            ("How much is it?", "Сколько это стоит?"),
                            ("Here you are.", "Вот, пожалуйста."),
                        ],
                    ),
                    fill_blank_step(
                        "Cafe reply",
                        "Complete the customer's reply",
                        "That ___ all, thanks.",
                        ["is", "are", "be", "am"],
                        "is",
                    ),
                    translate_step(
                        "Translate: anything else",
                        "Translate to Russian",
                        "Anything else?",
                        "Что-нибудь ещё?",
                        ["Ещё что-нибудь?"],
                        ["Что-нибудь", "ещё", "?", "сейчас", "спасибо"],
                    ),
                    story_step(
                        "Order a tea",
                        [
                            {
                                "image_url": "",
                                "character": "Waiter",
                                "text": "Hi! What would you like?",
                                "translation": "Привет! Что желаете?",
                            },
                            {
                                "type": "choice",
                                "question": "Order a tea politely.",
                                "options": [
                                    {"text": "Can I have a tea, please?",
                                     "is_correct": True},
                                    {"text": "Tea now!", "is_correct": False},
                                    {"text": "Goodbye!", "is_correct": False},
                                ],
                            },
                            {
                                "image_url": "",
                                "character": "Waiter",
                                "text": "Sure, anything else?",
                                "translation": "Конечно, что-нибудь ещё?",
                            },
                            {
                                "type": "choice",
                                "question": "Politely say it is enough.",
                                "options": [
                                    {"text": "That is all, thanks.",
                                     "is_correct": True},
                                    {"text": "More tea!", "is_correct": False},
                                    {"text": "No.", "is_correct": False},
                                ],
                            },
                        ],
                    ),
                ],
            ),
        ],
    )


# ---------------------------------------------------------------------------
# Vocabulary (~50 записей)
# ---------------------------------------------------------------------------


VOCAB: list[tuple[str, str, str]] = [
    # (word, translation, part-of-speech)
    # Greetings
    ("hello", "привет", "interj"),
    ("goodbye", "до свидания", "interj"),
    ("good morning", "доброе утро", "phrase"),
    ("good evening", "добрый вечер", "phrase"),
    ("good night", "спокойной ночи", "phrase"),
    ("please", "пожалуйста", "interj"),
    ("thank you", "спасибо", "phrase"),
    ("sorry", "извини", "interj"),
    ("yes", "да", "interj"),
    ("no", "нет", "interj"),
    # Pronouns / family
    ("name", "имя", "noun"),
    ("friend", "друг", "noun"),
    ("mother", "мама", "noun"),
    ("father", "папа", "noun"),
    ("brother", "брат", "noun"),
    ("sister", "сестра", "noun"),
    ("son", "сын", "noun"),
    ("daughter", "дочь", "noun"),
    ("parents", "родители", "noun"),
    ("children", "дети", "noun"),
    # Numbers
    ("one", "один", "num"),
    ("two", "два", "num"),
    ("three", "три", "num"),
    ("five", "пять", "num"),
    ("ten", "десять", "num"),
    ("twenty", "двадцать", "num"),
    ("hundred", "сто", "num"),
    # Days / time
    ("Monday", "Понедельник", "noun"),
    ("Friday", "Пятница", "noun"),
    ("Sunday", "Воскресенье", "noun"),
    ("morning", "утро", "noun"),
    ("evening", "вечер", "noun"),
    ("night", "ночь", "noun"),
    ("today", "сегодня", "adv"),
    ("tomorrow", "завтра", "adv"),
    # Home
    ("kitchen", "кухня", "noun"),
    ("bedroom", "спальня", "noun"),
    ("bathroom", "ванная", "noun"),
    ("living room", "гостиная", "noun"),
    # Food
    ("bread", "хлеб", "noun"),
    ("water", "вода", "noun"),
    ("milk", "молоко", "noun"),
    ("coffee", "кофе", "noun"),
    ("tea", "чай", "noun"),
    ("apple", "яблоко", "noun"),
    ("banana", "банан", "noun"),
    ("tomato", "помидор", "noun"),
    # Verbs
    ("to drink", "пить", "verb"),
    ("to eat", "есть", "verb"),
    ("to work", "работать", "verb"),
    ("to read", "читать", "verb"),
    ("to sleep", "спать", "verb"),
]


# ---------------------------------------------------------------------------
# Эмиссия SQL
# ---------------------------------------------------------------------------


def sql_str(s: str) -> str:
    """Экранирование строки для PostgreSQL ('' для одинарных кавычек)."""
    return "'" + s.replace("'", "''") + "'"


def sql_json(d: dict) -> str:
    """JSONB-литерал. json.dumps выдаёт безопасный ASCII для русского."""
    raw = json.dumps(d, ensure_ascii=False, separators=(",", ":"))
    return sql_str(raw) + "::jsonb"


def emit() -> str:
    out: list[str] = []
    out.append(textwrap.dedent(f"""\
        -- =====================================================================
        -- 007_english_a1_mvp.sql — MVP контент для course-service.
        -- Сгенерировано scripts/gen_seed_mvp.py — НЕ ПРАВЬТЕ ВРУЧНУЮ.
        --
        -- 1 курс: English for Beginners A1 (MVP)
        -- 4 модуля × 5 уроков × 5 шагов = 100 шагов
        -- + {len(VOCAB)} vocabulary-записей (en → ru, A1)
        --
        -- Идемпотентный: ON CONFLICT (id) DO NOTHING + повторное удаление
        -- старого MVP-курса перед накатом (через ID-namespace aaaa0001-…).
        -- =====================================================================

        BEGIN;

        SET search_path TO courses;

        -- Чистим прошлый MVP (если есть) — каскад через FK снесёт modules /
        -- lessons / steps. Vocabulary дропаем по своему ID-namespace.
        DELETE FROM courses     WHERE id = '{COURSE_ID}';
        DELETE FROM vocabulary  WHERE id IN (
        """))
    for v_idx, _ in enumerate(VOCAB, start=1):
        comma = "," if v_idx < len(VOCAB) else ""
        out.append(f"            '{vocab_id(v_idx)}'{comma}")
    out.append("        );\n")

    # Course
    out.append("-- ---- course ----------------------------------------------------------")
    out.append(textwrap.dedent(f"""\
        INSERT INTO courses (id, title, description, price, instructor_id,
                             level, language, thumbnail_url, is_published,
                             created_at, updated_at)
        VALUES ({sql_str(COURSE_ID)},
                {sql_str('English for Beginners A1 (MVP)')},
                {sql_str('MVP-курс A1: 4 модуля, 20 уроков, 100 шагов. '
                         'Greetings, Numbers/Time, Family/Daily Life, '
                         'Food/Café. Все интерактивные форматы Phase 2.')},
                0.00,
                {sql_str(INSTRUCTOR_ID)},
                {sql_str(LEVEL)},
                {sql_str(LANG)},
                {sql_str('https://images.unsplash.com/photo-1546410531-bb4caa6b424d?w=400')},
                TRUE,
                NOW(), NOW())
        ON CONFLICT (id) DO NOTHING;
    """))

    modules = build_modules()
    assert len(modules) == 4, "Ожидается 4 модуля"

    # Modules
    out.append("-- ---- modules ---------------------------------------------------------")
    out.append("INSERT INTO modules (id, course_id, title, description, "
               "order_index, created_at, updated_at) VALUES")
    rows: list[str] = []
    for m_idx, m in enumerate(modules, start=1):
        rows.append(
            f"  ({sql_str(module_id(m_idx))}, {sql_str(COURSE_ID)}, "
            f"{sql_str(m.title)}, {sql_str(m.description)}, "
            f"{m_idx}, NOW(), NOW())"
        )
    out.append(",\n".join(rows) + "\nON CONFLICT (id) DO NOTHING;\n")

    # Lessons
    out.append("-- ---- lessons ---------------------------------------------------------")
    out.append("INSERT INTO lessons (id, module_id, title, description, "
               "order_index, created_at, updated_at) VALUES")
    rows = []
    for m_idx, m in enumerate(modules, start=1):
        assert len(m.lessons) == 5, f"Модуль {m_idx}: ожидается 5 уроков"
        for l_idx, lesson in enumerate(m.lessons, start=1):
            rows.append(
                f"  ({sql_str(lesson_id(m_idx, l_idx))}, "
                f"{sql_str(module_id(m_idx))}, "
                f"{sql_str(lesson.title)}, {sql_str(lesson.description)}, "
                f"{l_idx}, NOW(), NOW())"
            )
    out.append(",\n".join(rows) + "\nON CONFLICT (id) DO NOTHING;\n")

    # Steps
    out.append("-- ---- steps -----------------------------------------------------------")
    out.append("INSERT INTO steps (id, lesson_id, title, content, type, "
               "order_index, created_at, updated_at) VALUES")
    rows = []
    total_steps = 0
    for m_idx, m in enumerate(modules, start=1):
        for l_idx, lesson in enumerate(m.lessons, start=1):
            assert len(lesson.steps) == 5, (
                f"Урок {m_idx}.{l_idx}: ожидается 5 шагов")
            for s_idx, step in enumerate(lesson.steps, start=1):
                rows.append(
                    f"  ({sql_str(step_id(m_idx, l_idx, s_idx))}, "
                    f"{sql_str(lesson_id(m_idx, l_idx))}, "
                    f"{sql_str(step.title)}, {sql_json(step.content)}, "
                    f"{sql_str(step.type)}, {s_idx}, NOW(), NOW())"
                )
                total_steps += 1
    assert total_steps == 100, f"Ожидается 100 шагов, получено {total_steps}"
    out.append(",\n".join(rows) + "\nON CONFLICT (id) DO NOTHING;\n")

    # Vocabulary
    out.append("-- ---- vocabulary ------------------------------------------------------")
    out.append("INSERT INTO vocabulary (id, language, word, translation, "
               "target_language, level, pos, created_at, updated_at) VALUES")
    rows = []
    for v_idx, (word, translation, pos) in enumerate(VOCAB, start=1):
        rows.append(
            f"  ({sql_str(vocab_id(v_idx))}, {sql_str(LANG)}, "
            f"{sql_str(word)}, {sql_str(translation)}, "
            f"{sql_str(TARGET_LANG)}, {sql_str(LEVEL)}, {sql_str(pos)}, "
            f"NOW(), NOW())"
        )
    # Без conflict-target: ловим и id-, и (language, word, target_language)-конфликты.
    out.append(",\n".join(rows) + "\nON CONFLICT DO NOTHING;\n")

    out.append("COMMIT;\n")
    out.append("-- =====================================================================")
    out.append(f"-- Итого: 1 course / {len(modules)} modules / "
               f"{sum(len(m.lessons) for m in modules)} lessons / "
               f"{total_steps} steps / {len(VOCAB)} vocab.")
    out.append("-- =====================================================================")
    return "\n".join(out) + "\n"


def main() -> int:
    sys.stdout.write(emit())
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
