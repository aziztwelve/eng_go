#!/usr/bin/env python3
"""
Import TRAVEL A1 tracks from 4 docx files → SQL seed.
Usage: python3 scripts/import_travel_tracks.py
Env: OPENAI_API_KEY
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

TRACKS_DIR = Path("/home/aziz/Documents/startup/eng/TRACKS FOLDER/TRAVEL")
DOCX_FILES = [
    (TRACKS_DIR / "LEVEL A1 GOAL 2 TRAVEL TRACK 1-10.docx",  0, 10),
    (TRACKS_DIR / "LEVEL A1 TRAVEL TRACK 11-20.docx",        10, 20),
    (TRACKS_DIR / "LEVEL A1 TRAVEL TRACK 21-30.docx",        20, 30),
    (TRACKS_DIR / "LEVELA1 TRAVEL TRACK 31-40.docx",         30, 40),
]

SCRIPT_DIR   = Path(__file__).parent
CACHE_FILE   = SCRIPT_DIR / "cache" / "travel_a1_ru.json"
OUTPUT_SQL   = Path(__file__).parent.parent / "services" / "course-service" / "seeds" / "100_travel_a1.sql"

NAMESPACE    = uuid.UUID("6ba7b810-9dad-11d1-80b4-00c04fd430c8")

# Deterministic IDs
def track_id():   return str(uuid.uuid5(NAMESPACE, "travel-a1:track"))
def lesson_id(i): return str(uuid.uuid5(NAMESPACE, f"travel-a1:lesson:{i}"))
def step_id(li, si): return str(uuid.uuid5(NAMESPACE, f"travel-a1:step:{li}:{si}"))
def vocab_id(w):  return str(uuid.uuid5(NAMESPACE, f"travel-a1:vocab:{w.lower()}"))

# ---------------------------------------------------------------------------
# Parsing
# ---------------------------------------------------------------------------

WORD_RE = re.compile(r'^\s*(\d+)\.\s*(.+?)\s*[–\-]\s*Explanation:\s*(.+?)\s*"(.+?)"\s*$')
TEST_RE  = re.compile(r'Scrambled:\s*(.+?)\s*(?:\$?\\?rightarrow\$?|→)\s*Target:\s*(.+?)\s*$')


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
        # Lesson header
        if "📌" in line or line.strip().startswith("Track "):
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

        # Word line
        wm = WORD_RE.match(line)
        if wm:
            current["words"].append({
                "word":        wm.group(2).strip(),
                "explanation": wm.group(3).strip(),
                "example":     wm.group(4).strip(),
            })
            continue

        # Sentence test
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
    """Translate missing keys via OpenAI. texts_keys: list of (cache_key, text, system_prompt)"""
    missing = [(k, t, s) for k, t, s in texts_keys if k not in cache]
    if not missing:
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

    word_tasks = []
    word_system = (
        "You translate English vocabulary into Russian for an A1 Russian-speaking learner. "
        "Use the provided definition and example sentence to choose the correct meaning and "
        "part of speech (e.g. verb vs noun). Return the natural Russian translation of the WORD "
        "in its base/dictionary form for that meaning. "
        "Reply with ONLY the Russian word or short phrase — no quotes, no English, no explanation."
    )
    for lesson in lessons:
        for w in lesson["words"]:
            key = tr_key(w)
            user_msg = (
                f"Word: {w['word']}\n"
                f"Definition: {w['explanation']}\n"
                f"Example: {w['example']}"
            )
            word_tasks.append((key, user_msg, word_system))

    ex_tasks = []
    for lesson in lessons:
        for w in lesson["words"][:3]:
            key = f"ex:{w['example']}"
            ex_tasks.append((key, w["example"],
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
    """Cache key per word *meaning* (word + its definition) so that the same
    word used with different senses across lessons gets a context-correct
    Russian translation."""
    return f"{w['word'].lower()}|{w['explanation']}"


def tr(w, cache):
    """Context-aware Russian translation for a word occurrence."""
    return cache.get(tr_key(w)) or cache.get(w["word"].lower()) or w["word"]


def blank_sentence(example, word):
    """Replace first exact occurrence of word (case-insensitive) with ___"""
    pattern = re.compile(re.escape(word), re.IGNORECASE)
    result, n = pattern.subn("___", example, count=1)
    if n == 0:
        # word not found verbatim — blank last word before period
        result = re.sub(r'(\b\w+)([.?!]?\s*)$', r'___\2', example, count=1)
    return result


def pick_distractors(word, all_words, n=3):
    others = [w for w in all_words if w.lower() != word.lower()]
    rng = random.Random(word)
    return rng.sample(others, min(n, len(others)))


def word_bank_translate(correct_translation, lesson_words, word):
    bank = correct_translation.split()
    extras = pick_distractors(word, [w["word"] for w in lesson_words], 3)
    for e in extras:
        if e not in bank:
            bank.append(e)
    return bank


# ---------------------------------------------------------------------------
# Step builders
# ---------------------------------------------------------------------------

def build_text_step(lesson):
    lines = [f"## {lesson['title']}", ""]
    for w in lesson["words"]:
        lines.append(f"**{w['word']}** — {w['explanation']}")
        lines.append(f"_{w['example']}_")
        lines.append("")
    return {"text": "\n".join(lines)}


def build_match_pairs(lesson, cache):
    pairs = []
    for w in lesson["words"]:
        ru = tr(w, cache)
        pairs.append({"left": w["word"], "right": ru})
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
    ru = tr(w, cache)
    return {
        "instruction": "Choose the correct word",
        "question":    w["explanation"],
        "options":     options,
        "explanation": f"{w['word']} = {ru}",
    }


def build_translate(w, cache):
    ru_example = cache.get(f"ex:{w['example']}", w["example"])
    correct    = w["example"]
    bank       = correct.split()
    # add up to 3 words from example not already in bank
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
    # 2 random distractors: words NOT in correct
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
    vid  = vocab_id(w["word"])
    ru   = tr(w, cache)
    return (
        f"INSERT INTO courses.vocabulary (id, language, target_language, level, word, translation, definition, example_sentence, created_at, updated_at)\n"
        f"VALUES ('{vid}', 'en', 'ru', 'A1', '{esc(w['word'])}', '{esc(ru)}', '{esc(w['explanation'])}', '{esc(w['example'])}', NOW(), NOW())\n"
        f"ON CONFLICT (language, word, target_language) DO UPDATE SET\n"
        f"  translation=EXCLUDED.translation, definition=EXCLUDED.definition,\n"
        f"  example_sentence=EXCLUDED.example_sentence, updated_at=NOW();"
    )


def sql_lesson_insert(lesson):
    lid = lesson_id(lesson["order_index"])
    return (
        f"INSERT INTO courses.lessons (id, title, description, module_id, order_index, created_at, updated_at)\n"
        f"VALUES ('{lid}', '{esc(lesson['title'])}', '', NULL, {lesson['order_index']}, NOW(), NOW())\n"
        f"ON CONFLICT (id) DO NOTHING;"
    )


STEP_TITLES = {
    "text":        "Vocabulary",
    "match_pairs": "Match the pairs",
    "fill_blank":  "Fill in the blank",
    "quiz":        "Choose the word",
    "translate":   "Translate",
    "tap_words":   "Sentence order",
}


def sql_step_insert(li, si, stype, content):
    sid = step_id(li, si)
    lid = lesson_id(li)
    title = STEP_TITLES.get(stype, "")
    content_json = esc(json.dumps(content, ensure_ascii=False))
    return (
        f"INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)\n"
        f"VALUES ('{sid}', '{lid}', '{stype}', '{esc(title)}', '{content_json}', {si}, NOW(), NOW())\n"
        f"ON CONFLICT (id) DO NOTHING;"
    )


def sql_track_insert():
    tid = track_id()
    return (
        f"INSERT INTO courses.learning_tracks (id, code, title, language, level, track_type, motivation, is_published, created_at, updated_at)\n"
        f"VALUES ('{tid}', 'travel-a1', 'Travel — A1', 'en', 'A1', 'thematic', '{{travel}}', true, NOW(), NOW())\n"
        f"ON CONFLICT (code) DO UPDATE SET\n"
        f"  title=EXCLUDED.title, is_published=EXCLUDED.is_published, updated_at=NOW();"
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
    if not os.environ.get("OPENAI_API_KEY"):
        print("ERROR: OPENAI_API_KEY not set", file=sys.stderr)
        sys.exit(1)

    # 1. Parse all docx files
    print("Parsing docx files...")
    lessons = []
    for filepath, start, end in DOCX_FILES:
        if not filepath.exists():
            print(f"ERROR: file not found: {filepath}", file=sys.stderr)
            sys.exit(1)
        parsed = parse_docx(filepath, start)
        print(f"  {filepath.name}: {len(parsed)} lessons")
        lessons.extend(parsed)

    # Ensure exactly 40 lessons with correct order_index
    for i, l in enumerate(lessons):
        l["order_index"] = i

    if len(lessons) != 40:
        print(f"WARNING: expected 40 lessons, got {len(lessons)}", file=sys.stderr)

    # 2. Build translation cache
    print("Building translations...")
    cache = build_translations(lessons)

    # 3. Generate SQL
    print("Generating SQL...")
    lines = [
        "-- =====================================================================",
        "-- 100_travel_a1.sql — TRAVEL A1 track seed.",
        "-- Generated by scripts/import_travel_tracks.py — DO NOT EDIT MANUALLY.",
        "-- =====================================================================",
        "",
        "BEGIN;",
        "",
        "-- vocabulary (400 rows)",
    ]

    seen_words = set()
    for lesson in lessons:
        for w in lesson["words"]:
            key = w["word"].lower()
            if key not in seen_words:
                seen_words.add(key)
                lines.append(sql_vocab_insert(w, cache))

    lines += ["", "-- learning_tracks (1 row)", sql_track_insert(), ""]
    lines += ["", "-- lessons (40 rows)"]
    for lesson in lessons:
        lines.append(sql_lesson_insert(lesson))

    lines += ["", "-- steps (~560 rows)"]
    for lesson in lessons:
        li = lesson["order_index"]
        words = lesson["words"]

        # step 0: text
        lines.append(sql_step_insert(li, 0, "text", build_text_step(lesson)))

        # step 1: match_pairs
        lines.append(sql_step_insert(li, 1, "match_pairs", build_match_pairs(lesson, cache)))

        # steps 2-6: fill_blank (first 5 words)
        for si, w in enumerate(words[:5], start=2):
            lines.append(sql_step_insert(li, si, "fill_blank", build_fill_blank(w, words, cache)))

        # steps 7-9: quiz (words 5-7)
        for si, w in enumerate(words[5:8], start=7):
            lines.append(sql_step_insert(li, si, "quiz", build_quiz(w, words, cache)))

        # steps 10-12: translate (words 7-9, their examples)
        for si, w in enumerate(words[7:10], start=10):
            lines.append(sql_step_insert(li, si, "translate", build_translate(w, cache)))

        # step 13: tap_words
        if lesson["test"]:
            lines.append(sql_step_insert(li, 13, "tap_words", build_tap_words(lesson["test"])))
        else:
            # fallback: use first word example as tap_words
            w = words[0]
            fake_test = {"scrambled": "/".join(w["example"].split()), "target": w["example"]}
            lines.append(sql_step_insert(li, 13, "tap_words", build_tap_words(fake_test)))

    lines += ["", "-- track_lessons (40 rows)"]
    for lesson in lessons:
        lines.append(sql_track_lesson_insert(lesson["order_index"]))

    lines += ["", "COMMIT;", ""]

    OUTPUT_SQL.parent.mkdir(parents=True, exist_ok=True)
    OUTPUT_SQL.write_text("\n".join(lines), encoding="utf-8")
    print(f"Written: {OUTPUT_SQL}")
    print(f"Lines: {len(lines)}")
    print(f"Lessons: {len(lessons)}, Steps per lesson: 14")


if __name__ == "__main__":
    main()
