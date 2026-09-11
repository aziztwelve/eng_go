#!/usr/bin/env python3
"""Regenerate A2 track content with genuine A2-level difficulty.

Reads the original A2 application files (track/lesson metadata and step IDs
stay identical so the DB seeds update in place via ON CONFLICT), replaces the
lesson content with real A2 material from a2_content_*.py modules, and writes
lingoiq.track.v2 JSONs to tracks/A2_REGEN/.

Grammar arc per topic: L1 past simple + present perfect, L2 future forms +
comparatives, L3 modals / first conditional + review.

Usage: python3 scripts/gen_a2_regen.py
"""

import json
import random
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

import a2_content_business
import a2_content_exam
import a2_content_listening
import a2_content_speaking
import a2_content_study
import a2_content_travel
import a2_content_work

SOURCE = Path("/home/aziz/Documents/startup/eng/tracks/application files_COMPLATE_a1/application files/A2")
OUT_DIR = Path(__file__).resolve().parent.parent / "tracks" / "A2_REGEN"

MODULES = {
    a2_content_business, a2_content_exam, a2_content_listening,
    a2_content_speaking, a2_content_study, a2_content_travel, a2_content_work,
}

STEP_SECONDS = [30, 20, 30, 25, 30, 35, 60, 40, 30, 30, 25, 30, 30]
STEP_SUFFIXES = ["MATCH_PAIRS", "QUIZ", "TRANSLATE", "FILL_BLANK", "TAP_WORDS",
                 "LISTENING", "LISTENING_SHADOWING", "STORY", "CHOOSE_DEFINITION",
                 "LISTEN_CHOOSE_WORD", "MISSING_WORD", "MATCH_PAIRS_VOICE",
                 "COMPLETE_CHAT"]
STEP_TITLES = {
    "MATCH_PAIRS": ({"ru": "Соедините пары", "en": "Match the pairs"}),
    "QUIZ": ({"ru": "Проверьте себя", "en": "Check yourself"}),
    "TRANSLATE": ({"ru": "Переведите", "en": "Translate"}),
    "FILL_BLANK": ({"ru": "Заполните пропуск", "en": "Fill the blank"}),
    "TAP_WORDS": ({"ru": "Соберите фразу", "en": "Build the phrase"}),
    "LISTENING": ({"ru": "Послушайте", "en": "Listen"}),
    "LISTENING_SHADOWING": ({"ru": "Повторите", "en": "Repeat"}),
    "STORY": ({"ru": "История", "en": "Story"}),
    "CHOOSE_DEFINITION": ({"ru": "Определение", "en": "Definition"}),
    "LISTEN_CHOOSE_WORD": ({"ru": "Слово", "en": "Word"}),
    "MISSING_WORD": ({"ru": "Впишите", "en": "Type"}),
    "MATCH_PAIRS_VOICE": ({"ru": "Звук", "en": "Sound"}),
    "COMPLETE_CHAT": ({"ru": "Диалог", "en": "Chat"}),
}


def opts(ids_prefix, correct, wrongs):
    items = [(correct, True)] + [(w, False) for w in wrongs]
    return [{"id": f"{ids_prefix}_{chr(ord('A') + i)}", "text": t, "is_correct": c}
            for i, (t, c) in enumerate(items)]


def words(sentence):
    return [w for w in sentence.split() if w.strip()]


def build_step(lesson_code, i, suffix, data):
    return {
        "id": f"{lesson_code}_{suffix}",
        "order": i,
        "type": suffix.lower(),
        "title": STEP_TITLES[suffix],
        "instructions": step_instructions(suffix),
        "estimated_seconds": STEP_SECONDS[i - 1],
        "data": data,
    }


def step_instructions(suffix):
    instr = {
        "MATCH_PAIRS": "Соедините английские слова и фразы с переводом.",
        "QUIZ": "Выберите правильный ответ.",
        "TRANSLATE": "Составьте перевод из слов.",
        "FILL_BLANK": "Выберите подходящее слово.",
        "TAP_WORDS": "Расставьте слова в правильном порядке.",
        "LISTENING": "Прослушайте предложение и напишите, что услышали.",
        "LISTENING_SHADOWING": "Прослушайте фразу, запишите повтор и получите оценку произношения.",
        "STORY": "Прочитайте историю и выберите ответ.",
        "CHOOSE_DEFINITION": "Выберите правильное значение слова.",
        "LISTEN_CHOOSE_WORD": "Прослушайте предложение и выберите пропущенное слово.",
        "MISSING_WORD": "Впишите пропущенное слово по подсказке.",
        "MATCH_PAIRS_VOICE": "Прослушайте каждое слово и выберите его написание.",
        "COMPLETE_CHAT": "Выберите подходящую реплику.",
    }
    return {"ru": instr[suffix], "en": instr[suffix]}


def build_lesson(source_lesson, content, rng):
    code = source_lesson["code"]
    ln = source_lesson["order"]

    # match_pairs
    pairs = [{"id": f"P{i + 1}", "left": en, "right": ru}
             for i, (en, ru) in enumerate(content["v"])]
    # quiz
    q = content["q"]
    quiz_opts = opts("Q", q[1], q[2])
    quiz = {"question": q[0], "options": quiz_opts,
            "explanation": f"The correct answer is “{q[1]}”."}
    # translate
    ru_s, en_s, distr = content["tr"]
    bank = words(en_s) + list(distr)
    rng.shuffle(bank)
    translate = {"source_text": ru_s, "source_language": "ru", "target_language": "en",
                 "correct_translation": en_s, "word_bank": bank}
    # fill_blank
    tpl, ans, wrongs, hint = content["fill"]
    fill = {"sentence_template": tpl, "correct_answer": ans, "options": [ans] + list(wrongs),
            "translation_hint": hint}
    # tap_words
    tap_s, tap_d = content["tap"]
    correct_w = words(tap_s)
    tap_bank = correct_w + list(tap_d)
    rng.shuffle(tap_bank)
    tap = {"word_bank": tap_bank, "correct_words": correct_w}
    # listening + shadowing share the sentence
    shadow_s, shadow_hint = content["sh"]
    listening = {"audio_text": shadow_s, "language": "en"}
    shadowing = {"audio_text": shadow_s, "language": "en", "min_accuracy": 0.7,
                 "translation_hint": shadow_hint}
    # story
    st_title, scenes_src = content["st"]
    scenes = []
    for sc in scenes_src:
        if len(sc) == 3 and isinstance(sc[0], str) and isinstance(sc[1], str):
            char, text, translation = sc
            scenes.append({"type": "dialogue", "character": char, "text": text,
                           "translation": translation})
        else:
            choice_text, options_src = sc
            scenes.append({"type": "choice", "text": choice_text,
                           "options": [{"text": t, "is_correct": c}
                                       for t, c in options_src]})
    story = {"title": st_title, "scenes": scenes}
    # choose_definition
    d = content["d"]
    defin = {"word": d[0], "language": "en", "options": opts("D", d[1], d[2]),
             "explanation": f"“{d[0]}” matches the correct definition."}
    # listen_choose_word
    lw_tpl, lw_audio, lw_ans, lw_wrongs = content["lw"]
    lw = {"sentence_template": lw_tpl, "audio_text": lw_audio, "language": "en",
          "options": [{"id": f"LW_{chr(ord('A') + i)}", "audio_text": t, "is_correct": c}
                      for i, (t, c) in enumerate([(lw_ans, True)] + [(w, False) for w in lw_wrongs])],
          "explanation": f"The missing word is “{lw_ans}”."}
    # missing_word
    mw_tpl, mw_ans, mw_prefix = content["mw"]
    full = mw_tpl.replace("___", mw_ans)
    mw = {"sentence_template": mw_tpl, "correct_answer": mw_ans,
          "hint_prefix": mw_prefix, "explanation": f"The complete sentence is “{full}”."}
    # match_pairs_voice: first 5 vocab items
    voice = {"language": "en",
             "pairs": [{"id": f"V{i + 1}", "audio_text": en, "text": en}
                       for i, (en, _) in enumerate(content["v"][:5])],
             "explanation": "Match each English phrase you hear with the same written phrase."}
    # complete_chat
    ch_dialogue, ch_speaker, ch_correct, ch_wrongs = content["ch"]
    chat = {"dialogue": [{"speaker": sp, "text": tx} for sp, tx in ch_dialogue],
            "answer_speaker": ch_speaker,
            "options": opts("C", ch_correct, ch_wrongs),
            "explanation": f"“{ch_correct}” is the natural reply in this situation."}

    data_map = {
        "MATCH_PAIRS": pairs and {"pairs": pairs},
        "QUIZ": quiz, "TRANSLATE": translate, "FILL_BLANK": fill,
        "TAP_WORDS": tap, "LISTENING": listening, "LISTENING_SHADOWING": shadowing,
        "STORY": story, "CHOOSE_DEFINITION": defin, "LISTEN_CHOOSE_WORD": lw,
        "MISSING_WORD": mw, "MATCH_PAIRS_VOICE": voice, "COMPLETE_CHAT": chat,
    }
    steps = [build_step(code, i, sfx, data_map[sfx])
             for i, sfx in enumerate(STEP_SUFFIXES, start=1)]

    return {
        "code": code,
        "order": ln,
        "title": {"ru": content["t"][0], "en": content["t"][1]},
        "objective": {"ru": content["o"][0], "en": content["o"][1]},
        "estimated_seconds": sum(STEP_SECONDS),
        "steps": steps,
    }


def validate(doc, code):
    assert doc["schema_version"] == "lingoiq.track.v2"
    for lesson in doc["lessons"]:
        steps = lesson["steps"]
        assert len(steps) == 13, f"{lesson['code']}: {len(steps)} steps"
        assert [s["type"] for s in steps] == [s.lower() for s in STEP_SUFFIXES]
        ids = [s["id"] for s in steps]
        assert len(ids) == len(set(ids))
        pairs = steps[0]["data"]["pairs"]
        assert len(pairs) == 7 and len({p["left"] for p in pairs}) == 7
        for st in (steps[1], steps[8], steps[12]):
            corr = [o for o in st["data"]["options"] if o["is_correct"]]
            assert len(corr) == 1, f"{lesson['code']}/{st['type']}: bad options"
        choice = [sc for sc in steps[7]["data"]["scenes"] if sc["type"] == "choice"]
        assert len(choice) == 1 and sum(
            1 for o in choice[0]["options"] if o["is_correct"]) == 1
        bank = steps[2]["data"]["word_bank"]
        for w in words(steps[2]["data"]["correct_translation"]):
            assert w in bank, f"{lesson['code']}: missing word {w!r} in bank"
        assert len(steps[2]["data"]["correct_translation"].split()) >= 7, \
            f"{lesson['code']}: translation too short for A2"
    return True


def main():
    content = {}
    for m in MODULES:
        for code, lessons in m.TRACKS.items():
            content[code] = lessons

    source_files = sorted(SOURCE.glob("**/*.json"))
    assert len(source_files) == 70, f"expected 70 source files, got {len(source_files)}"
    missing = set(content) - {json.loads(f.read_text())["track"]["code"] for f in source_files}
    assert not missing, f"content missing for: {sorted(missing)[:5]}"

    OUT_DIR.mkdir(parents=True, exist_ok=True)
    for f in source_files:
        doc = json.loads(f.read_text(encoding="utf-8"))
        code = doc["track"]["code"]
        rng = random.Random(hash(code) & 0xFFFF)
        new_lessons = [build_lesson(sl, cl, rng)
                       for sl, cl in zip(doc["lessons"], content[code])]
        assert len(new_lessons) == 3
        out_doc = {"schema_version": "lingoiq.track.v2", "track": doc["track"],
                   "lessons": new_lessons}
        validate(out_doc, code)
        out = OUT_DIR / f"{code}.json"
        out.write_text(json.dumps(out_doc, ensure_ascii=False, indent=1), encoding="utf-8")
        print(f"OK {code}")
    print(f"\nDone: 70 tracks -> {OUT_DIR}")


if __name__ == "__main__":
    main()
