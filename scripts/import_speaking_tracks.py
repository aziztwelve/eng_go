#!/usr/bin/env python3
"""
Import "Goal 4: Speaking Proficiency" A1 tracks from 5 docx modules → SQL seed.

Структура исходников идентична travel:
  📌 Track NNN: <title>
  1. Word – Explanation: <def>. "<example>"
  ... (10 слов)
  Sentence Formation Test:
  Scrambled: a / b / c $\rightarrow$ Target: ...

Каждый "Track NNN" = один урок (lesson). 5 модулей × 10 = 50 уроков.

Usage:
  DRY_RUN=1 python3 scripts/import_speaking_tracks.py   # парс + валидация, без OpenAI
  python3 scripts/import_speaking_tracks.py             # с переводами (нужен OPENAI_API_KEY)
"""

import html
import json
import os
import random
import re
import sys
import uuid
import zipfile
from pathlib import Path

# ---------------------------------------------------------------------------
# Config
# ---------------------------------------------------------------------------

TRACKS_DIR = Path("/home/aziz/Documents/startup/eng/ENGLISH PROFICIENCY TRACKS")
DOCX_FILES = [
    (TRACKS_DIR / "A1 GOAL 4 SPEAKING PROFICIENCY 1.docx",        0, 10),
    (TRACKS_DIR / "A1 Goal 4 Speaking Proficiency MOD 2.docx",   10, 20),
    (TRACKS_DIR / "Goal 4 Speaking Proficiency Module 3.docx",   20, 30),
    (TRACKS_DIR / "Goal 4 Speaking Proficiency Module 4.docx",   30, 40),
    (TRACKS_DIR / "Goal 4 Speaking Proficiency Module 5.docx",   40, 50),
]

# Трек: код / название / уровень / цель(motivation).
TRACK_CODE       = "speaking-a1"
TRACK_TITLE      = "Speaking Proficiency — A1"
TRACK_LEVEL      = "A1"
TRACK_MOTIVATION = "{social}"   # ← цель (motivation). Поменяй при необходимости.
EXPECTED_LESSONS = 50

SCRIPT_DIR   = Path(__file__).parent
CACHE_FILE   = SCRIPT_DIR / "cache" / "speaking_a1_ru.json"
OUTPUT_SQL   = Path(__file__).parent.parent / "services" / "course-service" / "seeds" / "101_speaking_a1.sql"

NAMESPACE    = uuid.UUID("6ba7b810-9dad-11d1-80b4-00c04fd430c8")
ID_PREFIX    = "speaking-a1"

DRY_RUN = bool(os.environ.get("DRY_RUN"))

# Deterministic IDs
def track_id():      return str(uuid.uuid5(NAMESPACE, f"{ID_PREFIX}:track"))
def lesson_id(i):    return str(uuid.uuid5(NAMESPACE, f"{ID_PREFIX}:lesson:{i}"))
def step_id(li, si): return str(uuid.uuid5(NAMESPACE, f"{ID_PREFIX}:step:{li}:{si}"))
def vocab_id(w):     return str(uuid.uuid5(NAMESPACE, f"{ID_PREFIX}:vocab:{w.lower()}"))

# ---------------------------------------------------------------------------
# Parsing
# ---------------------------------------------------------------------------

WORD_RE = re.compile(r'^\s*(\d+)\.\s*(.+?)\s*[–\-]\s*Explanation:\s*(.+?)\s*"(.+?)"\s*$')
TEST_RE = re.compile(r'Scrambled:\s*(.+?)\s*(?:\$?\\*rightarrow\$?|→)\s*Target:\s*(.+?)\s*$')


def extract_paras(filepath):
    z = zipfile.ZipFile(filepath)
    xml = z.read("word/document.xml").decode("utf-8")
    paras = []
    for p in xml.split("</w:p>"):
        t = "".join(re.findall(r"<w:t[^>]*>(.*?)</w:t>", p, re.S))
        if t.strip():
            paras.append(html.unescape(t))
    return paras


def parse_docx(filepath, start_order):
    paras = extract_paras(filepath)
    lessons = []
    current = None

    for line in paras:
        # Lesson header: "📌 Track 151: Title". Module-заголовки (содержат
        # "Module" но не "Track NNN") сюда не попадают.
        if ("📌" in line or line.strip().startswith("Track ")) and re.search(r"Track\s+\d+", line):
            m = re.search(r"Track\s+\d+[:\s]+(.+)", line)
            if m:
                if current:
                    lessons.append(current)
                title = m.group(1).strip().rstrip(":")
                current = {
                    "title": title,
                    "order_index": start_order + len(lessons),
                    "words": [],
                    "test": None,
                }
            continue

        if current is None:
            continue

        wm = WORD_RE.match(line)
        if wm:
            current["words"].append({
                "word":        wm.group(2).strip(),
                "explanation": wm.group(3).strip(),
                "example":     wm.group(4).strip(),
            })
            continue

        tm = TEST_RE.search(line)
        if tm:
            current["test"] = {
                "scrambled": tm.group(1).strip(),
                "target":    tm.group(2).strip(),
            }

    if current:
        lessons.append(current)

    return lessons


# ---------------------------------------------------------------------------
# OpenAI translations
# ---------------------------------------------------------------------------

def load_cache():
    if CACHE_FILE.exists():
        with open(CACHE_FILE) as f:
            return json.load(f)
    return {}


def save_cache(cache):
    CACHE_FILE.parent.mkdir(parents=True, exist_ok=True)
    with open(CACHE_FILE, "w", encoding="utf-8") as f:
        json.dump(cache, f, ensure_ascii=False, indent=2)


def translate_openai(texts_keys, cache):
    missing = [(k, t, s) for k, t, s in texts_keys if k not in cache]
    if not missing:
        return
    if DRY_RUN:
        print(f"[DRY_RUN] skip translating {len(missing)} items")
        return

    try:
        from openai import OpenAI
    except ImportError:
        print("ERROR: openai package not installed. Run: pip install openai", file=sys.stderr)
        sys.exit(1)

    client = OpenAI(api_key=os.environ["OPENAI_API_KEY"])
    for i, (key, text, system) in enumerate(missing):
        if i % 50 == 0:
            print(f"  Translating {i+1}/{len(missing)}...")
        resp = client.chat.completions.create(
            model="gpt-4o-mini",
            temperature=0,
            messages=[
                {"role": "system", "content": system},
                {"role": "user",   "content": text},
            ],
        )
        cache[key] = resp.choices[0].message.content.strip()
        if i % 20 == 19:
            save_cache(cache)
    save_cache(cache)


def build_translations(lessons):
    cache = load_cache()
    word_system = (
        "You translate English vocabulary into Russian for an A1 Russian-speaking learner. "
        "Use the provided definition and example sentence to choose the correct meaning and "
        "part of speech (e.g. verb vs noun). Return the natural Russian translation of the WORD "
        "in its base/dictionary form for that meaning. "
        "Reply with ONLY the Russian word or short phrase — no quotes, no English, no explanation."
    )
    word_tasks = []
    for lesson in lessons:
        for w in lesson["words"]:
            user_msg = f"Word: {w['word']}\nDefinition: {w['explanation']}\nExample: {w['example']}"
            word_tasks.append((tr_key(w), user_msg, word_system))

    ex_tasks = []
    for lesson in lessons:
        for w in lesson["words"][:3]:
            ex_tasks.append((f"ex:{w['example']}", w["example"],
                "Translate to Russian naturally. Reply with only the translation."))

    print(f"Words to translate: {len([t for t in word_tasks if t[0] not in cache])}")
    print(f"Examples to translate: {len([t for t in ex_tasks if t[0] not in cache])}")
    translate_openai(word_tasks + ex_tasks, cache)
    return cache


# ---------------------------------------------------------------------------
# SQL helpers
# ---------------------------------------------------------------------------

def esc(s):
    return s.replace("'", "''")


def tr_key(w):
    return f"{w['word'].lower()}|{w['explanation']}"


def tr(w, cache):
    return cache.get(tr_key(w)) or cache.get(w["word"].lower()) or w["word"]


def blank_sentence(example, word):
    pattern = re.compile(re.escape(word), re.IGNORECASE)
    result, n = pattern.subn("___", example, count=1)
    if n == 0:
        result = re.sub(r'(\b\w+)([.?!]?\s*)$', r'___\2', example, count=1)
    return result


def pick_distractors(word, all_words, n=3):
    others = [w for w in all_words if w.lower() != word.lower()]
    rng = random.Random(word)
    return rng.sample(others, min(n, len(others)))


# ---------------------------------------------------------------------------
# Step builders (идентичны travel-импортёру — те же форматы, что рендерит app)
# ---------------------------------------------------------------------------

def build_text_step(lesson):
    lines = [f"## {lesson['title']}", ""]
    for w in lesson["words"]:
        lines.append(f"**{w['word']}** — {w['explanation']}")
        lines.append(f"_{w['example']}_")
        lines.append("")
    return {"text": "\n".join(lines)}


def build_match_pairs(lesson, cache):
    pairs = [{"left": w["word"], "right": tr(w, cache)} for w in lesson["words"]]
    return {"instruction": "Match the word to its Russian translation", "pairs": pairs}


def build_fill_blank(w, lesson_words, cache):
    sentence = blank_sentence(w["example"], w["word"])
    others = [x["word"] for x in lesson_words if x["word"] != w["word"]]
    distractors = pick_distractors(w["word"], others, 3)
    options = [w["word"]] + distractors
    random.Random(w["word"] + "opts").shuffle(options)
    return {
        "instruction":       "Fill in the blank",
        "sentence_template": sentence,
        "correct_answer":    w["word"],
        "options":           options,
        "translation_hint":  tr(w, cache),
        "explanation":       w["explanation"],
    }


def build_quiz(w, lesson_words, cache):
    others = [x["word"] for x in lesson_words if x["word"] != w["word"]]
    distractors = pick_distractors(w["word"], others, 2)
    options = [{"text": w["word"], "is_correct": True}] + \
              [{"text": d, "is_correct": False} for d in distractors]
    random.Random(w["word"] + "quiz").shuffle(options)
    return {
        "instruction": "Choose the correct word",
        "question":    w["explanation"],
        "options":     options,
        "explanation": f"{w['word']} = {tr(w, cache)}",
    }


def build_translate(w, cache):
    ru_example = cache.get(f"ex:{w['example']}", w["example"])
    correct    = w["example"]
    bank       = correct.split()
    extra_words = list({x for x in correct.split()} - set(bank))
    extra_rng   = random.Random(w["word"] + "bank")
    sample_size = min(3, len(extra_words))
    if sample_size:
        for x in extra_rng.sample(extra_words, sample_size):
            if x not in bank:
                bank.append(x)
    return {
        "instruction":       "Translate to English",
        "source_text":       ru_example,
        "source_language":   "ru",
        "target_language":   "en",
        "correct_translation": correct,
        "word_bank":         bank,
        "alternative_answers": [correct.lower()],
        "hints":             [f"{w['word']} = {tr(w, cache)}"],
    }


def build_tap_words(test):
    scrambled_words = [w.strip() for w in test["scrambled"].split("/")]
    correct_words   = test["target"].split()
    pool = [w for w in scrambled_words if w not in correct_words]
    rng  = random.Random(test["target"])
    distractors = rng.sample(pool, min(2, len(pool))) if pool else []
    bank = scrambled_words + [d for d in distractors if d not in scrambled_words]
    return {
        "instruction":  "Put the words in the correct order",
        "word_bank":    bank,
        "correct_words": correct_words,
        "audio_url":    "",
    }


# ---------------------------------------------------------------------------
# SQL generation
# ---------------------------------------------------------------------------

def sql_vocab_insert(w, cache):
    return (
        f"INSERT INTO courses.vocabulary (id, language, target_language, level, word, translation, definition, example_sentence, created_at, updated_at)\n"
        f"VALUES ('{vocab_id(w['word'])}', 'en', 'ru', '{TRACK_LEVEL}', '{esc(w['word'])}', '{esc(tr(w, cache))}', '{esc(w['explanation'])}', '{esc(w['example'])}', NOW(), NOW())\n"
        f"ON CONFLICT (language, word, target_language) DO UPDATE SET\n"
        f"  translation=EXCLUDED.translation, definition=EXCLUDED.definition,\n"
        f"  example_sentence=EXCLUDED.example_sentence, updated_at=NOW();"
    )


def sql_lesson_insert(lesson):
    return (
        f"INSERT INTO courses.lessons (id, title, description, module_id, order_index, created_at, updated_at)\n"
        f"VALUES ('{lesson_id(lesson['order_index'])}', '{esc(lesson['title'])}', '', NULL, {lesson['order_index']}, NOW(), NOW())\n"
        f"ON CONFLICT (id) DO NOTHING;"
    )


STEP_TITLES = {
    "text": "Vocabulary", "match_pairs": "Match the pairs", "fill_blank": "Fill in the blank",
    "quiz": "Choose the word", "translate": "Translate", "tap_words": "Sentence order",
}


def sql_step_insert(li, si, stype, content):
    return (
        f"INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)\n"
        f"VALUES ('{step_id(li, si)}', '{lesson_id(li)}', '{stype}', '{esc(STEP_TITLES.get(stype, ''))}', '{esc(json.dumps(content, ensure_ascii=False))}', {si}, NOW(), NOW())\n"
        f"ON CONFLICT (id) DO NOTHING;"
    )


def sql_track_insert():
    return (
        f"INSERT INTO courses.learning_tracks (id, code, title, language, level, track_type, motivation, is_published, created_at, updated_at)\n"
        f"VALUES ('{track_id()}', '{TRACK_CODE}', '{esc(TRACK_TITLE)}', 'en', '{TRACK_LEVEL}', 'thematic', '{TRACK_MOTIVATION}', true, NOW(), NOW())\n"
        f"ON CONFLICT (code) DO UPDATE SET\n"
        f"  title=EXCLUDED.title, motivation=EXCLUDED.motivation, is_published=EXCLUDED.is_published, updated_at=NOW();"
    )


def sql_track_lesson_insert(li):
    return (
        f"INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)\n"
        f"VALUES ('{track_id()}', '{lesson_id(li)}', {li})\n"
        f"ON CONFLICT (track_id, lesson_id) DO NOTHING;"
    )


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main():
    if not DRY_RUN and not os.environ.get("OPENAI_API_KEY"):
        print("ERROR: OPENAI_API_KEY not set (or use DRY_RUN=1)", file=sys.stderr)
        sys.exit(1)

    print("Parsing docx files...")
    lessons = []
    for filepath, start, end in DOCX_FILES:
        if not filepath.exists():
            print(f"ERROR: file not found: {filepath}", file=sys.stderr)
            sys.exit(1)
        parsed = parse_docx(filepath, start)
        words = sum(len(l["words"]) for l in parsed)
        tests = sum(1 for l in parsed if l["test"])
        print(f"  {filepath.name}: {len(parsed)} lessons, {words} words, {tests} tests")
        lessons.extend(parsed)

    for i, l in enumerate(lessons):
        l["order_index"] = i

    if len(lessons) != EXPECTED_LESSONS:
        print(f"WARNING: expected {EXPECTED_LESSONS} lessons, got {len(lessons)}", file=sys.stderr)

    # sanity: each lesson has words + test
    bad = [l["title"] for l in lessons if len(l["words"]) != 10 or not l["test"]]
    if bad:
        print(f"WARNING: {len(bad)} lessons missing 10 words or a test:", file=sys.stderr)
        for t in bad[:10]:
            print(f"   - {t}", file=sys.stderr)

    print("Building translations...")
    cache = build_translations(lessons)

    print("Generating SQL...")
    lines = [
        "-- =====================================================================",
        f"-- 101_speaking_a1.sql — Speaking Proficiency {TRACK_LEVEL} track seed.",
        "-- Generated by scripts/import_speaking_tracks.py — DO NOT EDIT MANUALLY.",
        "-- =====================================================================",
        "",
        "BEGIN;",
        "",
        "-- vocabulary",
    ]

    seen_words = set()
    for lesson in lessons:
        for w in lesson["words"]:
            key = w["word"].lower()
            if key not in seen_words:
                seen_words.add(key)
                lines.append(sql_vocab_insert(w, cache))

    lines += ["", "-- learning_tracks (1 row)", sql_track_insert(), ""]
    lines += ["", f"-- lessons ({len(lessons)} rows)"]
    for lesson in lessons:
        lines.append(sql_lesson_insert(lesson))

    lines += ["", "-- steps (14 per lesson)"]
    for lesson in lessons:
        li = lesson["order_index"]
        words = lesson["words"]
        lines.append(sql_step_insert(li, 0, "text", build_text_step(lesson)))
        lines.append(sql_step_insert(li, 1, "match_pairs", build_match_pairs(lesson, cache)))
        for si, w in enumerate(words[:5], start=2):
            lines.append(sql_step_insert(li, si, "fill_blank", build_fill_blank(w, words, cache)))
        for si, w in enumerate(words[5:8], start=7):
            lines.append(sql_step_insert(li, si, "quiz", build_quiz(w, words, cache)))
        for si, w in enumerate(words[7:10], start=10):
            lines.append(sql_step_insert(li, si, "translate", build_translate(w, cache)))
        if lesson["test"]:
            lines.append(sql_step_insert(li, 13, "tap_words", build_tap_words(lesson["test"])))
        else:
            w = words[0]
            fake = {"scrambled": "/".join(w["example"].split()), "target": w["example"]}
            lines.append(sql_step_insert(li, 13, "tap_words", build_tap_words(fake)))

    lines += ["", f"-- track_lessons ({len(lessons)} rows)"]
    for lesson in lessons:
        lines.append(sql_track_lesson_insert(lesson["order_index"]))

    lines += ["", "COMMIT;", ""]

    if DRY_RUN:
        print(f"[DRY_RUN] would write {OUTPUT_SQL} ({len(lines)} lines)")
        print(f"[DRY_RUN] lessons={len(lessons)} vocab={len(seen_words)} steps={len(lessons)*14}")
        return

    OUTPUT_SQL.parent.mkdir(parents=True, exist_ok=True)
    OUTPUT_SQL.write_text("\n".join(lines), encoding="utf-8")
    print(f"Written: {OUTPUT_SQL}")
    print(f"Lessons: {len(lessons)}, vocab: {len(seen_words)}, steps/lesson: 14")


if __name__ == "__main__":
    main()
