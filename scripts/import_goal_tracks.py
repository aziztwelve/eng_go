#!/usr/bin/env python3
"""
Generic importer: A1 goal tracks from docx → SQL seed.
Формат docx идентичен travel/speaking:
  📌 Track NNN: <title>
  N. Word – Explanation: <def>. "<example>"   (10 слов)
  Sentence Formation Test:
  Scrambled: a / b / c $\rightarrow$ Target: ...

Usage:
  DRY_RUN=1 python3 scripts/import_goal_tracks.py career
  python3 scripts/import_goal_tracks.py education     # нужен OPENAI_API_KEY
"""

import glob
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
# Configs per goal
# ---------------------------------------------------------------------------

TF = "/home/aziz/Documents/startup/eng/TRACKS FOLDER"
SEEDS = Path(__file__).parent.parent / "services" / "course-service" / "seeds"

CONFIGS = {
    "career": {
        "folder":     f"{TF}/CAREER",
        "code":       "career-a1",
        "title":      "Career — A1",
        "motivation": "{work}",
        "out":        SEEDS / "102_career_a1.sql",
        "cache":      "career_a1_ru.json",
    },
    "education": {
        "folder":     f"{TF}/EDUCATION",
        "code":       "education-a1",
        "title":      "Education — A1",
        "motivation": "{study}",
        "out":        SEEDS / "103_education_a1.sql",
        "cache":      "education_a1_ru.json",
    },
}

LEVEL = "A1"
NAMESPACE = uuid.UUID("6ba7b810-9dad-11d1-80b4-00c04fd430c8")
DRY_RUN = bool(os.environ.get("DRY_RUN"))
SCRIPT_DIR = Path(__file__).parent

WORD_RE = re.compile(r'^\s*(\d+)\.\s*(.+?)\s*[–\-]\s*Explanation:\s*(.+?)\s*"(.+?)"\s*$')
TEST_RE = re.compile(r'Scrambled:\s*(.+?)\s*(?:\$?\\*rightarrow\$?|→)\s*Target:\s*(.+?)\s*$')


# ---------------------------------------------------------------------------
# IDs (namespaced by track code)
# ---------------------------------------------------------------------------
def make_ids(code):
    pfx = code
    return (
        lambda: str(uuid.uuid5(NAMESPACE, f"{pfx}:track")),
        lambda i: str(uuid.uuid5(NAMESPACE, f"{pfx}:lesson:{i}")),
        lambda li, si: str(uuid.uuid5(NAMESPACE, f"{pfx}:step:{li}:{si}")),
        lambda w: str(uuid.uuid5(NAMESPACE, f"{pfx}:vocab:{w.lower()}")),
    )


# ---------------------------------------------------------------------------
# Parsing
# ---------------------------------------------------------------------------
def extract_paras(filepath):
    z = zipfile.ZipFile(filepath)
    xml = z.read("word/document.xml").decode("utf-8")
    out = []
    for p in xml.split("</w:p>"):
        t = "".join(re.findall(r"<w:t[^>]*>(.*?)</w:t>", p, re.S))
        if t.strip():
            out.append(html.unescape(t))
    return out


def parse_docx(filepath):
    paras = extract_paras(filepath)
    lessons, current = [], None
    for line in paras:
        if ("📌" in line or line.strip().startswith("Track ")) and re.search(r"Track\s+\d+", line):
            m = re.search(r"Track\s+\d+[:\s]+(.+)", line)
            if m:
                if current:
                    lessons.append(current)
                current = {"title": m.group(1).strip().rstrip(":"), "words": [], "test": None}
            continue
        if current is None:
            continue
        wm = WORD_RE.match(line)
        if wm:
            current["words"].append({
                "word": wm.group(2).strip(),
                "explanation": wm.group(3).strip(),
                "example": wm.group(4).strip(),
            })
            continue
        tm = TEST_RE.search(line)
        if tm:
            current["test"] = {"scrambled": tm.group(1).strip(), "target": tm.group(2).strip()}
    if current:
        lessons.append(current)
    return lessons


def discover_files(folder):
    files = glob.glob(f"{folder}/*.docx")

    def start_num(path):
        m = re.search(r"(\d+)\s*-\s*\d+", Path(path).name)
        return int(m.group(1)) if m else 0
    return sorted(files, key=start_num)


# ---------------------------------------------------------------------------
# Translations
# ---------------------------------------------------------------------------
def cache_path(cfg):
    return SCRIPT_DIR / "cache" / cfg["cache"]


def load_cache(cfg):
    p = cache_path(cfg)
    return json.load(open(p)) if p.exists() else {}


def save_cache(cfg, cache):
    p = cache_path(cfg)
    p.parent.mkdir(parents=True, exist_ok=True)
    json.dump(cache, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=2)


def tr_key(w):
    return f"{w['word'].lower()}|{w['explanation']}"


def tr(w, cache):
    return cache.get(tr_key(w)) or cache.get(w["word"].lower()) or w["word"]


def translate(cfg, lessons):
    cache = load_cache(cfg)
    word_system = (
        "You translate English vocabulary into Russian for an A1 Russian-speaking learner. "
        "Use the provided definition and example sentence to choose the correct meaning and "
        "part of speech (e.g. verb vs noun). Return the natural Russian translation of the WORD "
        "in its base/dictionary form for that meaning. "
        "Reply with ONLY the Russian word or short phrase — no quotes, no English, no explanation."
    )
    tasks = []
    for lesson in lessons:
        for w in lesson["words"]:
            tasks.append((tr_key(w),
                          f"Word: {w['word']}\nDefinition: {w['explanation']}\nExample: {w['example']}",
                          word_system))
    for lesson in lessons:
        for w in lesson["words"][:3]:
            tasks.append((f"ex:{w['example']}", w["example"],
                          "Translate to Russian naturally. Reply with only the translation."))

    missing = [(k, t, s) for k, t, s in tasks if k not in cache]
    print(f"To translate: {len(missing)}")
    if not missing or DRY_RUN:
        if DRY_RUN:
            print(f"[DRY_RUN] skip translating {len(missing)}")
        return cache
    from openai import OpenAI
    client = OpenAI(api_key=os.environ["OPENAI_API_KEY"])
    for i, (key, text, system) in enumerate(missing):
        if i % 50 == 0:
            print(f"  {i+1}/{len(missing)}...")
        resp = client.chat.completions.create(
            model="gpt-4o-mini", temperature=0,
            messages=[{"role": "system", "content": system}, {"role": "user", "content": text}],
        )
        cache[key] = resp.choices[0].message.content.strip()
        if i % 20 == 19:
            save_cache(cfg, cache)
    save_cache(cfg, cache)
    return cache


# ---------------------------------------------------------------------------
# Step builders + SQL (идентичны travel/speaking)
# ---------------------------------------------------------------------------
def esc(s):
    return s.replace("'", "''")


def blank_sentence(example, word):
    res, n = re.compile(re.escape(word), re.IGNORECASE).subn("___", example, count=1)
    if n == 0:
        res = re.sub(r'(\b\w+)([.?!]?\s*)$', r'___\2', example, count=1)
    return res


def pick_distractors(word, all_words, n=3):
    others = [w for w in all_words if w.lower() != word.lower()]
    return random.Random(word).sample(others, min(n, len(others)))


def build_text_step(lesson):
    lines = [f"## {lesson['title']}", ""]
    for w in lesson["words"]:
        lines += [f"**{w['word']}** — {w['explanation']}", f"_{w['example']}_", ""]
    return {"text": "\n".join(lines)}


def build_match_pairs(lesson, cache):
    return {"instruction": "Match the word to its Russian translation",
            "pairs": [{"left": w["word"], "right": tr(w, cache)} for w in lesson["words"]]}


def build_fill_blank(w, lw, cache):
    options = [w["word"]] + pick_distractors(w["word"], [x["word"] for x in lw if x["word"] != w["word"]], 3)
    random.Random(w["word"] + "opts").shuffle(options)
    return {"instruction": "Fill in the blank", "sentence_template": blank_sentence(w["example"], w["word"]),
            "correct_answer": w["word"], "options": options, "translation_hint": tr(w, cache),
            "explanation": w["explanation"]}


def build_quiz(w, lw, cache):
    options = [{"text": w["word"], "is_correct": True}] + \
              [{"text": d, "is_correct": False} for d in pick_distractors(w["word"], [x["word"] for x in lw if x["word"] != w["word"]], 2)]
    random.Random(w["word"] + "quiz").shuffle(options)
    return {"instruction": "Choose the correct word", "question": w["explanation"],
            "options": options, "explanation": f"{w['word']} = {tr(w, cache)}"}


def build_translate(w, cache):
    correct = w["example"]
    bank = correct.split()
    return {"instruction": "Translate to English", "source_text": cache.get(f"ex:{w['example']}", w["example"]),
            "source_language": "ru", "target_language": "en", "correct_translation": correct,
            "word_bank": bank, "alternative_answers": [correct.lower()],
            "hints": [f"{w['word']} = {tr(w, cache)}"]}


def build_tap_words(test):
    sw = [w.strip() for w in test["scrambled"].split("/")]
    cw = test["target"].split()
    pool = [w for w in sw if w not in cw]
    distractors = random.Random(test["target"]).sample(pool, min(2, len(pool))) if pool else []
    return {"instruction": "Put the words in the correct order",
            "word_bank": sw + [d for d in distractors if d not in sw],
            "correct_words": cw, "audio_url": ""}


STEP_TITLES = {"text": "Vocabulary", "match_pairs": "Match the pairs", "fill_blank": "Fill in the blank",
               "quiz": "Choose the word", "translate": "Translate", "tap_words": "Sentence order"}


def main():
    if len(sys.argv) < 2 or sys.argv[1] not in CONFIGS:
        print(f"Usage: python3 {sys.argv[0]} [{'|'.join(CONFIGS)}]", file=sys.stderr)
        sys.exit(1)
    cfg = CONFIGS[sys.argv[1]]
    if not DRY_RUN and not os.environ.get("OPENAI_API_KEY"):
        print("ERROR: OPENAI_API_KEY not set (or DRY_RUN=1)", file=sys.stderr)
        sys.exit(1)

    track_id, lesson_id, step_id, vocab_id = make_ids(cfg["code"])

    files = discover_files(cfg["folder"])
    print(f"Files: {len(files)}")
    lessons = []
    for f in files:
        parsed = parse_docx(f)
        print(f"  {Path(f).name}: {len(parsed)} lessons")
        lessons.extend(parsed)
    for i, l in enumerate(lessons):
        l["order_index"] = i
    print(f"Total lessons: {len(lessons)}")

    cache = translate(cfg, lessons)
    if DRY_RUN:
        print(f"[DRY_RUN] lessons={len(lessons)} steps={len(lessons)*14}")
        return

    lines = ["-- =====================================================================",
             f"-- {cfg['out'].name} — {cfg['title']} track seed.",
             "-- Generated by scripts/import_goal_tracks.py — DO NOT EDIT MANUALLY.",
             "-- =====================================================================", "",
             "BEGIN;", "", "-- vocabulary"]
    seen = set()
    for lesson in lessons:
        for w in lesson["words"]:
            if w["word"].lower() not in seen:
                seen.add(w["word"].lower())
                lines.append(
                    f"INSERT INTO courses.vocabulary (id, language, target_language, level, word, translation, definition, example_sentence, created_at, updated_at)\n"
                    f"VALUES ('{vocab_id(w['word'])}', 'en', 'ru', '{LEVEL}', '{esc(w['word'])}', '{esc(tr(w, cache))}', '{esc(w['explanation'])}', '{esc(w['example'])}', NOW(), NOW())\n"
                    f"ON CONFLICT (language, word, target_language) DO UPDATE SET\n"
                    f"  translation=EXCLUDED.translation, definition=EXCLUDED.definition,\n"
                    f"  example_sentence=EXCLUDED.example_sentence, updated_at=NOW();")

    lines += ["", "-- learning_tracks (1 row)",
              f"INSERT INTO courses.learning_tracks (id, code, title, language, level, track_type, motivation, is_published, created_at, updated_at)\n"
              f"VALUES ('{track_id()}', '{cfg['code']}', '{esc(cfg['title'])}', 'en', '{LEVEL}', 'thematic', '{cfg['motivation']}', true, NOW(), NOW())\n"
              f"ON CONFLICT (code) DO UPDATE SET\n"
              f"  title=EXCLUDED.title, motivation=EXCLUDED.motivation, is_published=EXCLUDED.is_published, updated_at=NOW();", ""]

    lines += ["", f"-- lessons ({len(lessons)} rows)"]
    for lesson in lessons:
        lines.append(
            f"INSERT INTO courses.lessons (id, title, description, module_id, order_index, created_at, updated_at)\n"
            f"VALUES ('{lesson_id(lesson['order_index'])}', '{esc(lesson['title'])}', '', NULL, {lesson['order_index']}, NOW(), NOW())\n"
            f"ON CONFLICT (id) DO NOTHING;")

    def step_sql(li, si, stype, content):
        return (f"INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)\n"
                f"VALUES ('{step_id(li, si)}', '{lesson_id(li)}', '{stype}', '{esc(STEP_TITLES[stype])}', '{esc(json.dumps(content, ensure_ascii=False))}', {si}, NOW(), NOW())\n"
                f"ON CONFLICT (id) DO NOTHING;")

    lines += ["", "-- steps (14 per lesson)"]
    for lesson in lessons:
        li, words = lesson["order_index"], lesson["words"]
        lines.append(step_sql(li, 0, "text", build_text_step(lesson)))
        lines.append(step_sql(li, 1, "match_pairs", build_match_pairs(lesson, cache)))
        for si, w in enumerate(words[:5], start=2):
            lines.append(step_sql(li, si, "fill_blank", build_fill_blank(w, words, cache)))
        for si, w in enumerate(words[5:8], start=7):
            lines.append(step_sql(li, si, "quiz", build_quiz(w, words, cache)))
        for si, w in enumerate(words[7:10], start=10):
            lines.append(step_sql(li, si, "translate", build_translate(w, cache)))
        test = lesson["test"] or {"scrambled": "/".join(words[0]["example"].split()), "target": words[0]["example"]}
        lines.append(step_sql(li, 13, "tap_words", build_tap_words(test)))

    lines += ["", f"-- track_lessons ({len(lessons)} rows)"]
    for lesson in lessons:
        li = lesson["order_index"]
        lines.append(
            f"INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)\n"
            f"VALUES ('{track_id()}', '{lesson_id(li)}', {li})\n"
            f"ON CONFLICT (track_id, lesson_id) DO NOTHING;")

    lines += ["", "COMMIT;", ""]
    cfg["out"].write_text("\n".join(lines), encoding="utf-8")
    print(f"Written: {cfg['out']}  (lessons={len(lessons)}, vocab={len(seen)}, steps={len(lessons)*14})")


if __name__ == "__main__":
    main()
