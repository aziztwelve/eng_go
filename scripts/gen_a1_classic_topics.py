#!/usr/bin/env python3
"""Generate A1 classic Duolingo-style topics: 10 topics x 3 lessons x 13 steps.

New architecture: level -> topic (track) -> 3 lessons -> 13 steps each.
Output: tracks/A1_CLASSIC_V3/A1_T*.json in lingoiq.track.v2 format.
goal is omitted => universal track (motivation '{}'), visible for every
user goal filter (see repository/postgres/track.go).

Usage: python3 scripts/gen_a1_classic_topics.py
"""

import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from a1_content_part1 import TOPICS_PART1
from a1_content_part2 import TOPICS_PART2
from a1_content_part3 import TOPICS_PART3

OUT_DIR = Path(__file__).resolve().parent.parent / "tracks" / "A1_CLASSIC_V3"

STEP_SECONDS = [30, 20, 30, 25, 30, 35, 60, 40, 30, 30, 25, 30, 30]
STEP_SUFFIXES = ["MATCH", "QUIZ", "TRANSLATE", "FILL", "TAP", "LISTEN",
                 "SHADOW", "STORY", "DEF", "LISTEN_WORD", "MISSING", "VOICE", "CHAT"]

TITLES = {
    "match": ({"ru": "Соедините пары", "en": "Match the pairs"},
              {"ru": "Соедините английские слова с переводом.", "en": "Match the English words with their translations."}),
    "quiz": ({"ru": "Проверьте себя", "en": "Check yourself"},
             {"ru": "Выберите правильный ответ.", "en": "Choose the correct answer."}),
    "translate": ({"ru": "Переведите фразу", "en": "Translate the phrase"},
                  {"ru": "Составьте перевод из слов.", "en": "Build the translation from the words."}),
    "fill": ({"ru": "Заполните пропуск", "en": "Fill the blank"},
             {"ru": "Выберите подходящее слово.", "en": "Choose the word that fits."}),
    "tap": ({"ru": "Соберите фразу", "en": "Build the phrase"},
            {"ru": "Расставьте слова в правильном порядке.", "en": "Put the words in the correct order."}),
    "listen": ({"ru": "Послушайте", "en": "Listen"},
               {"ru": "Прослушайте фразу и напишите, что услышали.", "en": "Listen to the phrase and type what you hear."}),
    "shadow": ({"ru": "Повторите за диктором", "en": "Repeat after the speaker"},
               {"ru": "Прослушайте фразу, запишите повтор и получите оценку произношения.", "en": "Listen to the phrase, record your repetition, and get pronunciation feedback."}),
    "story": ({"ru": "История", "en": "Story"},
              {"ru": "Прочитайте историю и выберите ответ.", "en": "Read the story and choose an answer."}),
    "def": ({"ru": "Выберите определение", "en": "Choose the definition"},
            {"ru": "Выберите правильное значение слова.", "en": "Choose the correct meaning of the word."}),
    "listen_word": ({"ru": "Выберите услышанное слово", "en": "Choose the word you hear"},
                    {"ru": "Прослушайте предложение и выберите пропущенное слово.", "en": "Listen to the sentence and choose the missing word."}),
    "missing": ({"ru": "Впишите слово", "en": "Type the missing word"},
                {"ru": "Впишите пропущенное слово по подсказке.", "en": "Type the missing word using the hint."}),
    "voice": ({"ru": "Соедините звук и слово", "en": "Match the sound and word"},
              {"ru": "Прослушайте каждое слово и выберите его написание.", "en": "Listen to each word and choose its spelling."}),
    "chat": ({"ru": "Завершите диалог", "en": "Complete the chat"},
             {"ru": "Выберите подходящую реплику.", "en": "Choose the reply that completes the dialogue."}),
}


def words(sentence):
    out = []
    for w in sentence.split():
        w = w.strip("!?.,")
        if w:
            out.append(w)
    return out


def opts_abcd(rng, correct, wrongs):
    items = [(correct, True)] + [(w, False) for w in wrongs]
    rng.shuffle(items)
    return [{"id": chr(ord("A") + i), "text": t, "is_correct": c}
            for i, (t, c) in enumerate(items)]


def build_lesson(track_code, ln, ls, rng):
    code = f"{track_code}_L{ln:02d}"

    def sid(i):
        return f"{code}_S{i:02d}_{STEP_SUFFIXES[i - 1]}"

    def step(i, step_type, data):
        t = TITLES[STEP_SUFFIXES[i - 1].lower()]
        return {"id": sid(i), "order": i, "type": step_type, "title": t[0],
                "instructions": t[1], "estimated_seconds": STEP_SECONDS[i - 1],
                "data": data}

    quiz = ls["quiz"]
    ru_s, en_s, distr = ls["translate"]
    bank_tr = words(en_s) + list(distr)
    rng.shuffle(bank_tr)
    tpl, ans, opts_f, hint = ls["fill"]
    opts_f = [ans] + list(opts_f)
    rng.shuffle(opts_f)
    correct_w = words(ls["tap"][0])
    bank_tap = correct_w + list(ls["tap"][1])
    rng.shuffle(bank_tap)
    lc = ls["listen_choose"]
    items_lc = [(lc[2], True)] + [(w, False) for w in lc[3]]
    rng.shuffle(items_lc)
    ch = ls["chat"]

    steps = [
        step(1, "match_pairs",
             {"pairs": [{"id": f"P{i + 1}", "left": en, "right": ru}
                        for i, (en, ru) in enumerate(ls["vocab"])]}),
        step(2, "quiz",
             {"question": quiz[0], "options": opts_abcd(rng, quiz[1], quiz[2]),
              "explanation": quiz[3]}),
        step(3, "translate",
             {"source_text": ru_s, "source_language": "ru", "target_language": "en",
              "correct_translation": en_s, "word_bank": bank_tr}),
        step(4, "fill_blank",
             {"sentence_template": tpl, "correct_answer": ans, "options": opts_f,
              "translation_hint": hint}),
        step(5, "tap_words",
             {"word_bank": bank_tap, "correct_words": correct_w}),
        step(6, "listening",
             {"audio_text": ls["listening"], "language": "en"}),
        step(7, "listening_shadowing",
             {"audio_text": ls["shadowing"][0], "language": "en", "min_accuracy": 0.7,
              "translation_hint": ls["shadowing"][1]}),
        step(8, "story",
             {"title": ls["story"][0], "scenes": ls["story"][1]}),
        step(9, "choose_definition",
             {"word": ls["definition"][0], "language": "en",
              "options": opts_abcd(rng, ls["definition"][1], ls["definition"][2]),
              "explanation": ls["definition"][3]}),
        step(10, "listen_choose_word",
             {"sentence_template": lc[0], "audio_text": lc[1], "language": "en",
              "options": [{"id": chr(ord("A") + i), "audio_text": t, "is_correct": c}
                          for i, (t, c) in enumerate(items_lc)],
              "explanation": lc[4]}),
        step(11, "missing_word",
             {"sentence_template": ls["missing"][0], "correct_answer": ls["missing"][1],
              "hint_prefix": ls["missing"][2], "explanation": ls["missing"][3]}),
        step(12, "match_pairs_voice",
             {"language": "en",
              "pairs": [{"id": f"V{i + 1}", "audio_text": w, "text": w}
                        for i, w in enumerate(ls["voice"])]}),
        step(13, "complete_chat",
             {"dialogue": [{"speaker": sp, "text": tx} for sp, tx in ch[0]],
              "answer_speaker": ch[1],
              "options": opts_abcd(rng, ch[2], ch[3]),
              "explanation": ch[4]}),
    ]
    return {
        "code": code,
        "order": ln,
        "title": {"ru": ls["title_ru"], "en": ls["title_en"]},
        "objective": {"ru": ls["obj_ru"], "en": ls["obj_en"]},
        "estimated_seconds": sum(STEP_SECONDS),
        "steps": steps,
    }


def validate(track_doc):
    assert track_doc["schema_version"] == "lingoiq.track.v2"
    for lesson in track_doc["lessons"]:
        steps = lesson["steps"]
        assert len(steps) == 13, f"{lesson['code']}: {len(steps)} steps"
        expected = ["match_pairs", "quiz", "translate", "fill_blank", "tap_words",
                    "listening", "listening_shadowing", "story", "choose_definition",
                    "listen_choose_word", "missing_word", "match_pairs_voice",
                    "complete_chat"]
        assert [s["type"] for s in steps] == expected, f"{lesson['code']}: bad order"
        ids = [s["id"] for s in steps]
        assert len(ids) == len(set(ids)), f"{lesson['code']}: dup step ids"
        assert [s["order"] for s in steps] == list(range(1, 14)), f"{lesson['code']}: bad orders"
        pairs = steps[0]["data"]["pairs"]
        assert len(pairs) == 7, f"{lesson['code']}: {len(pairs)} pairs"
        lefts = [p["left"] for p in pairs]
        assert len(set(lefts)) == 7, f"{lesson['code']}: dup lefts"
    return True


def main():
    import random

    OUT_DIR.mkdir(parents=True, exist_ok=True)
    topics = TOPICS_PART1 + TOPICS_PART2 + TOPICS_PART3
    for idx, topic in enumerate(topics, start=1):
        rng = random.Random(1000 + idx)
        lessons = [build_lesson(topic["code"], i, ls, rng)
                   for i, ls in enumerate(topic["lessons"], start=1)]
        doc = {
            "schema_version": "lingoiq.track.v2",
            "track": {
                "code": topic["code"],
                "title": topic["title"],
                "description": topic["desc"],
                "target_language": "en",
                "native_language": "ru",
                "level": "A1",
                "sort_order": idx,
            },
            "lessons": lessons,
        }
        validate(doc)
        out = OUT_DIR / f"{topic['code']}.json"
        out.write_text(json.dumps(doc, ensure_ascii=False, indent=2), encoding="utf-8")
        print(f"OK {out.name}: 3 lessons x 13 steps")
    print(f"\nDone: {len(topics)} topics -> {OUT_DIR}")


if __name__ == "__main__":
    main()
