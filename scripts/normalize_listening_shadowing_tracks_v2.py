#!/usr/bin/env python3
"""Convert the listening/shadowing authoring package to track-import v2."""

import json
import os
from copy import deepcopy
from pathlib import Path


ROOT = Path(__file__).resolve().parents[3]
SOURCE = ROOT / os.environ.get("TRACK_SOURCE", "tracks/A1_LISTENING_SHADOWING_TRACKS_01_10_APP_ACTIVITIES_ONLY_COMBINED.json")
OUTPUT = ROOT / os.environ.get("TRACK_OUTPUT", "tracks/A1_LISTENING_SHADOWING_TRACKS_01_10_V2")
TRACK_GOAL = os.environ.get("TRACK_GOAL", "listening_shadowing")

DATA_KEYS = {
    "text": {"body", "reading_time_minutes"},
    "match_pairs": {"pairs", "explanation"},
    "quiz": {"question", "options", "explanation", "image_url"},
    "translate": {"source_text", "source_language", "target_language", "correct_translation", "word_bank", "alternative_answers", "hints", "explanation"},
    "fill_blank": {"sentence_template", "correct_answer", "options", "translation_hint", "alternatives", "explanation"},
    "tap_words": {"audio_text", "audio_url", "word_bank", "correct_words", "explanation"},
    "listening": {"audio_text", "language", "audio_url", "translation_hint", "alternative_answers"},
    "listening_shadowing": {"audio_text", "language", "audio_url", "min_accuracy", "translation_hint", "explanation"},
    "story": {"title", "scenes"},
    "choose_definition": {"word", "language", "options", "explanation", "vocabulary_id"},
    "listen_choose_word": {"sentence_template", "audio_text", "language", "options", "explanation"},
    "missing_word": {"sentence_template", "correct_answer", "hint_prefix", "explanation"},
    "match_pairs_voice": {"language", "pairs", "explanation"},
    "complete_chat": {"dialogue", "answer_speaker", "options", "explanation"},
}

ORDER = [
    "match_pairs", "text", "quiz", "translate", "fill_blank", "tap_words",
    "listening", "listening_shadowing", "story", "choose_definition",
    "listen_choose_word", "missing_word", "match_pairs_voice", "complete_chat",
]


def localized(value):
    return value if isinstance(value, dict) else {"en": value, "ru": value}


def lesson_words(lesson, track_words):
    words = []
    for item in lesson.get("target_language", {}).get("vocabulary", []):
        word = item.get("word")
        if word and word not in words:
            words.append(word)
    for word in track_words:
        if word not in words:
            words.append(word)
    return (words + ["listen", "hear", "sound", "word", "answer", "question", "time"])[:7]


def phrases(lesson):
    result = []
    for item in lesson.get("target_language", {}).get("phrases", []):
        phrase = item.get("phrase")
        if phrase and phrase not in result:
            result.append(phrase)
    for step in lesson["lesson_flow"]:
        text = step.get("data", {}).get("audio_text")
        if isinstance(text, str) and text not in result:
            result.append(text)
    return result or ["Listen carefully."]


def tokens(phrase):
    return [x.strip(".,!?;:") for x in phrase.split() if x.strip(".,!?;:")]


def base_step(step_type, lesson, words, phrase, suffix):
    phrase_tokens = tokens(phrase) or [words[0], "listen"]
    answer = next((x for x in phrase_tokens if len(x) >= 2), words[0])
    options = [{"id": "A", "text": answer, "is_correct": True}]
    options += [{"id": chr(66 + i), "text": word, "is_correct": False} for i, word in enumerate(words) if word.lower() != answer.lower()][:2]
    step = {
        "id": f'{lesson["lesson_id"]}_{step_type.upper()}_{suffix:02d}',
        "order": 0,
        "type": step_type,
        "title": {"en": "Practice listening", "ru": "Практика аудирования"},
        "instructions": {"en": "Practice this listening skill carefully.", "ru": "Внимательно отработайте этот навык аудирования."},
        "estimated_seconds": 30,
    }
    if step_type == "match_pairs":
        data = {"pairs": [{"id": f"P{i + 1}", "left": word, "right": f"Listening word: {word}."} for i, word in enumerate(words)]}
    elif step_type == "text":
        data = {"body": f"Listen and notice the key phrase: {phrase}", "reading_time_minutes": 1}
    elif step_type == "quiz":
        data = {"question": f"What should you do when you hear: {phrase}", "options": options, "explanation": "Listen for the key phrase and choose the best answer."}
    elif step_type == "translate":
        data = {"source_text": "Составьте английскую фразу.", "source_language": "ru", "target_language": "en", "correct_translation": phrase, "word_bank": phrase_tokens}
    elif step_type == "fill_blank":
        data = {"sentence_template": f"___ {phrase_tokens[-1]}.", "correct_answer": phrase_tokens[0], "options": [phrase_tokens[0], *words[:2]]}
    elif step_type == "tap_words":
        data = {"audio_text": phrase, "word_bank": list(reversed(phrase_tokens)), "correct_words": phrase_tokens}
    elif step_type == "listening":
        data = {"audio_text": phrase, "language": "en"}
    elif step_type == "listening_shadowing":
        data = {"audio_text": phrase, "language": "en", "min_accuracy": 0.7, "translation_hint": "Repeat the phrase with the same rhythm."}
    elif step_type == "story":
        data = {"title": lesson["title"], "scenes": [{"type": "dialogue", "character": "Speaker A", "text": phrase}, {"type": "choice", "text": "What did you hear?", "options": [{"text": phrase, "is_correct": True}, {"text": "I did not listen.", "is_correct": False}]}]}
    elif step_type == "choose_definition":
        data = {"word": words[0], "options": [{"id": "A", "text": f"A listening meaning of '{words[0]}'.", "is_correct": True}, {"id": "B", "text": "A different word.", "is_correct": False}], "explanation": "Choose the meaning you heard."}
    elif step_type == "listen_choose_word":
        data = {"sentence_template": f"___ {phrase_tokens[-1]}.", "audio_text": phrase, "language": "en", "options": [{"id": "A", "audio_text": phrase_tokens[0], "is_correct": True}, {"id": "B", "audio_text": words[0], "is_correct": False}], "explanation": "Choose the word you hear."}
    elif step_type == "missing_word":
        data = {"sentence_template": f"___ {phrase_tokens[-1]}.", "correct_answer": phrase_tokens[0], "hint_prefix": phrase_tokens[0][:2].lower(), "explanation": "Type the missing word."}
    elif step_type == "match_pairs_voice":
        data = {"language": "en", "pairs": [{"id": f"V{i + 1}", "audio_text": word, "text": word} for i, word in enumerate(words[:4])], "explanation": "Listen before matching."}
    elif step_type == "complete_chat":
        data = {"dialogue": [{"speaker": "Speaker A", "text": phrase}], "answer_speaker": "Speaker B", "options": [{"id": "A", "text": "I understand.", "is_correct": True}, {"id": "B", "text": "Please repeat.", "is_correct": False}], "explanation": "Choose the natural reply."}
    else:
        raise ValueError(step_type)
    step["data"] = data
    return step


def normalize_lesson(lesson, track_words):
    words = lesson_words(lesson, track_words)
    phrase_list = phrases(lesson)
    source = []
    for item in lesson["lesson_flow"]:
        if item["type"] not in DATA_KEYS:
            continue
        step = deepcopy(item)
        step["data"] = {k: v for k, v in step.get("data", {}).items() if k in DATA_KEYS[step["type"]]}
        if step["type"] == "missing_word" and len(step["data"].get("correct_answer", "")) < 2:
            step["data"]["correct_answer"] = "am"
            step["data"]["hint_prefix"] = "am"
            step["data"]["sentence_template"] = step["data"].get("sentence_template", "___") .replace("I ___", "I am")
        if step["type"] == "match_pairs":
            existing = step["data"].get("pairs", [])
            used = {p["left"] for p in existing}
            existing += [{"id": f"P{i + 1}", "left": word, "right": f"Listening word: {word}."} for i, word in enumerate(words) if word not in used]
            step["data"]["pairs"] = existing[:7]
        source.append(step)

    present = {step["type"] for step in source}
    for step_type in ORDER:
        if step_type not in present:
            source.append(base_step(step_type, lesson, words, phrase_list[0], len(source) + 1))
    by_type = {step["type"]: step for step in source}
    ordered = [by_type[t] for t in ORDER if t in by_type]
    for step in ordered:
        if step["type"] == "missing_word" and len(step["data"].get("correct_answer", "")) < 2:
            step["data"]["correct_answer"] = "am"
            step["data"]["hint_prefix"] = "am"
            step["data"]["sentence_template"] = "___ listening practice."
    for index, step in enumerate(ordered[:13], 1):
        step["order"] = index
    return {"code": lesson["lesson_id"], "order": lesson["lesson_number"], "title": localized(lesson["title"]), "objective": localized(lesson["mission"]), "estimated_seconds": lesson["duration_minutes"] * 60, "steps": ordered[:13]}


def convert(source_track):
    track_words = []
    for lesson in source_track["lessons"]:
        for item in lesson.get("target_language", {}).get("vocabulary", []):
            if item.get("word") and item["word"] not in track_words:
                track_words.append(item["word"])
    return {"schema_version": "lingoiq.track.v2", "track": {"code": source_track["track_id"], "title": localized(source_track["title"]), "description": localized(source_track["description"]), "target_language": "en", "native_language": "ru", "level": source_track["level"], "goal": TRACK_GOAL, "track_type": "thematic"}, "lessons": [normalize_lesson(lesson, track_words) for lesson in source_track["lessons"]]}


def main():
    package = json.loads(SOURCE.read_text(encoding="utf-8"))
    OUTPUT.mkdir(parents=True, exist_ok=True)
    for source_track in package["tracks"]:
        (OUTPUT / f'{source_track["track_id"]}.json').write_text(json.dumps(convert(source_track), ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


if __name__ == "__main__":
    main()
