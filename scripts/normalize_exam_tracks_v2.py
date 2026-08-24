#!/usr/bin/env python3
"""Convert the A1 Exams authoring package into canonical v2 track files."""

import json
from copy import deepcopy
from pathlib import Path


ROOT = Path(__file__).resolve().parents[3]
SOURCE = ROOT / "tracks" / "A1_EXAMS_TRACKS_01_10_APP_ACTIVITIES_ONLY_COMBINED.json"
OUTPUT = ROOT / "tracks" / "A1_EXAMS_TRACKS_01_10_V2"

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


def words_for(lesson, track_words):
    words = []
    for item in lesson.get("target_language", {}).get("vocabulary", []):
        word = item.get("word")
        if word and word not in words:
            words.append(word)
    for word in track_words:
        if word not in words:
            words.append(word)
    return (words + ["answer", "question", "study", "work", "time", "word", "text"])[:7]


def phrases_for(lesson):
    phrases = []
    for item in lesson.get("target_language", {}).get("phrases", []):
        phrase = item.get("phrase")
        if phrase and phrase not in phrases:
            phrases.append(phrase)
    for step in lesson["lesson_flow"]:
        data = step.get("data", {})
        for value in (data.get("audio_text"), data.get("question")):
            if isinstance(value, str) and value not in phrases:
                phrases.append(value)
    return phrases or ["Choose the correct answer.", "Read the question carefully."]


def tokens(phrase):
    return [token.strip(".,!?;:") for token in phrase.split() if token.strip(".,!?;:")]


def added_step(step_type, code, lesson, words, phrases):
    phrase = phrases[0]
    phrase_tokens = tokens(phrase) or [words[0], "answer"]
    answer = next((word for word in phrase_tokens if len(word) >= 2), words[0])
    distractors = [word for word in words if word.lower() != answer.lower()][:2]
    options = [{"id": "A", "text": answer, "is_correct": True}]
    options += [{"id": chr(66 + i), "text": word, "is_correct": False} for i, word in enumerate(distractors)]
    base = {
        "id": code,
        "order": 0,
        "type": step_type,
        "title": {"en": "Practice the exam skill", "ru": "Отработайте экзаменационный навык"},
        "instructions": {"en": "Practice this A1 study skill carefully.", "ru": "Внимательно отработайте этот навык A1."},
        "estimated_seconds": 30,
    }
    if step_type == "translate":
        data = {"source_text": words[0], "source_language": "en", "target_language": "en", "correct_translation": words[0], "word_bank": [words[0]]}
    elif step_type == "fill_blank":
        data = {"sentence_template": f"I study the ___.", "correct_answer": "answer", "options": ["answer", "question", "text"]}
    elif step_type == "tap_words":
        data = {"word_bank": list(reversed(phrase_tokens)), "correct_words": phrase_tokens}
    elif step_type == "listen_choose_word":
        audio_options = [
            {"id": option["id"], "audio_text": option["text"], "is_correct": option["is_correct"]}
            for option in options
        ]
        data = {"sentence_template": f"___ {phrase_tokens[-1]}.", "audio_text": phrase, "language": "en", "options": audio_options, "explanation": f"The missing word is {answer}."}
    elif step_type == "missing_word":
        data = {"sentence_template": f"I study the ___.", "correct_answer": "question", "hint_prefix": "qu", "explanation": "The missing word is question."}
    elif step_type == "match_pairs_voice":
        data = {"language": "en", "pairs": [{"id": f"V{i + 1}", "audio_text": word, "text": word} for i, word in enumerate(words[:4])], "explanation": "Listen carefully before matching."}
    elif step_type == "story":
        data = {"title": lesson["title"], "scenes": [{"type": "dialogue", "character": "Examiner", "text": phrase}, {"type": "choice", "text": "What should the learner do?", "options": [{"text": "Read the question carefully.", "is_correct": True}, {"text": "Ignore the task.", "is_correct": False}]}]}
    else:
        raise ValueError(step_type)
    base["data"] = data
    return base


def normalize_lesson(lesson, track_words):
    words = words_for(lesson, track_words)
    phrases = phrases_for(lesson)
    steps = []
    for source_step in lesson["lesson_flow"]:
        step = dict(source_step)
        step["data"] = {key: value for key, value in step.get("data", {}).items() if key in DATA_KEYS[step["type"]]}
        if step["type"] == "listen_choose_word":
            step["data"]["options"] = [
                {"id": option["id"], "audio_text": option.get("audio_text", option.get("text", "")), "is_correct": option["is_correct"]}
                for option in step["data"].get("options", [])
            ]
        if step["type"] == "match_pairs":
            pairs = step["data"].get("pairs", [])
            pairs = pairs + [{"id": f"P{i + 1}", "left": word, "right": f"Exam word: {word}."} for i, word in enumerate(words) if word not in {p["left"] for p in pairs}]
            step["data"]["pairs"] = pairs[:7]
        steps.append(step)
    present = {step["type"] for step in steps}
    if "match_pairs" not in present:
        steps.append({
            "id": f'{lesson["lesson_id"]}_MATCH_01',
            "order": 0,
            "type": "match_pairs",
            "title": {"en": "Match exam words", "ru": "Соедините экзаменационные слова"},
            "instructions": {"en": "Match each key word with its meaning.", "ru": "Соедините ключевые слова с их значениями."},
            "estimated_seconds": 30,
            "data": {"pairs": [{"id": f"P{i + 1}", "left": word, "right": f"Exam word: {word}."} for i, word in enumerate(words)]},
        })
        present.add("match_pairs")
    for step_type in ("translate", "fill_blank", "tap_words", "story", "listen_choose_word", "missing_word", "match_pairs_voice"):
        if step_type not in present:
            steps.append(added_step(step_type, f'{lesson["lesson_id"]}_{step_type.upper()}_01', lesson, words, phrases))
    by_type = {step["type"]: step for step in steps}
    ordered = [by_type[step_type] for step_type in ORDER if step_type in by_type]
    extra_number = 1
    while len(ordered) < 13:
        extra = deepcopy(by_type.get("quiz") or by_type["match_pairs"])
        extra["id"] = f'{lesson["lesson_id"]}_QUIZ_EXTRA_{extra_number:02d}'
        extra["type"] = "quiz" if extra["type"] == "quiz" else "match_pairs"
        ordered.append(extra)
        extra_number += 1
    for index, step in enumerate(ordered, 1):
        step["order"] = index
    return {
        "code": lesson["lesson_id"],
        "order": lesson["lesson_number"],
        "title": localized(lesson["title"]),
        "objective": localized(lesson["mission"]),
        "estimated_seconds": lesson["duration_minutes"] * 60,
        "steps": ordered,
    }


def convert(source_track):
    track_words = []
    for lesson in source_track["lessons"]:
        for item in lesson.get("target_language", {}).get("vocabulary", []):
            if item.get("word") and item["word"] not in track_words:
                track_words.append(item["word"])
    return {
        "schema_version": "lingoiq.track.v2",
        "track": {
            "code": source_track["track_id"],
            "title": localized(source_track["title"]),
            "description": localized(source_track["description"]),
            "target_language": "en",
            "native_language": "ru",
            "level": source_track["level"],
            "goal": "study",
            "track_type": "thematic",
        },
        "lessons": [normalize_lesson(lesson, track_words) for lesson in source_track["lessons"]],
    }


def main():
    package = json.loads(SOURCE.read_text(encoding="utf-8"))
    OUTPUT.mkdir(parents=True, exist_ok=True)
    for source_track in package["tracks"]:
        target = OUTPUT / f'{source_track["track_id"]}.json'
        target.write_text(json.dumps(convert(source_track), ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


if __name__ == "__main__":
    main()
