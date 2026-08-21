#!/usr/bin/env python3
"""Convert the A1 Study authoring package to canonical ``lingoiq.track.v2`` files.

The authoring package describes a broader curriculum and has a variable number
of ``lesson_flow`` activities.  This converter keeps its lesson vocabulary,
phrases, missions and descriptions, and creates the standard 13-step import
flow required for production track packages.
"""

import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[3]
SOURCE = ROOT / "tracks" / "A1_STUDY_TRACKS_01_10_APP_ACTIVITIES_ONLY_COMBINED.json"
OUTPUT = Path(__file__).resolve().parents[1] / "tracks" / "A1_STUDY_TRACKS_01_10_V2"

STEP_TYPES = (
    "match_pairs", "text", "quiz", "translate", "fill_blank", "tap_words",
    "listening", "listening_shadowing", "story", "choose_definition",
    "listen_choose_word", "missing_word", "match_pairs_voice",
)


def localized(value):
    """Provide both app locales while retaining any source translations."""
    if isinstance(value, dict):
        return value
    return {"en": value, "ru": value}


def clean_tokens(text):
    return [word.strip(".,!?;:'\"()[]") for word in text.split() if word.strip(".,!?;:'\"()[]")]


def lesson_words(lesson, track_words):
    words = []
    for item in lesson.get("target_language", {}).get("vocabulary", []):
        word = item.get("word", "").strip()
        if word and word not in words:
            words.append(word)
    for word in track_words:
        if word not in words:
            words.append(word)
    fallback = ["learn", "class", "teacher", "student", "English", "listen", "answer"]
    for word in fallback:
        if word not in words:
            words.append(word)
    return words[:7]


def lesson_phrases(lesson):
    phrases = []
    for item in lesson.get("target_language", {}).get("phrases", []):
        phrase = item.get("phrase", "").strip()
        if phrase and phrase not in phrases:
            phrases.append(phrase)
    for activity in lesson.get("lesson_flow", []):
        phrase = activity.get("data", {}).get("audio_text")
        if isinstance(phrase, str) and phrase and phrase not in phrases:
            phrases.append(phrase)
        phrase = activity.get("content", {}).get("script")
        if isinstance(phrase, str) and phrase and phrase not in phrases:
            phrases.append(phrase)
    return phrases or ["I am ready to learn."]


def definition(word, lesson):
    for item in lesson.get("target_language", {}).get("vocabulary", []):
        if item.get("word") == word:
            return item.get("simple_definition") or item.get("meaning") or f"A study word: {word}."
    return f"A study word: {word}."


def option_set(correct, alternatives):
    values = [correct] + [value for value in alternatives if value != correct]
    return [
        {"id": chr(65 + index), "text": value, "is_correct": index == 0}
        for index, value in enumerate(values[:4])
    ]


def make_step(step_type, lesson, words, phrases, index):
    phrase = phrases[index % len(phrases)]
    phrase_tokens = clean_tokens(phrase) or words[:2]
    answer = phrase_tokens[0]
    title = {"en": "Practice the study language", "ru": "Практика учебного языка"}
    instructions = {
        "en": "Complete the activity using the lesson target language.",
        "ru": "Выполните задание, используя язык урока.",
    }
    step = {
        "id": f'{lesson["lesson_id"]}_{step_type.upper()}_V2',
        "order": index + 1,
        "type": step_type,
        "title": title,
        "instructions": instructions,
        "estimated_seconds": 35,
    }
    if step_type == "match_pairs":
        step["title"] = {"en": "Match the pairs", "ru": "Соедините пары"}
        step["instructions"] = {"en": "Match each study word with its meaning.", "ru": "Соедините учебные слова с их значениями."}
        data = {"pairs": [{"id": f"P{i + 1}", "left": word, "right": definition(word, lesson)} for i, word in enumerate(words)]}
    elif step_type == "text":
        data = {"body": f'{lesson["title"]}. {lesson["mission"]} Useful language: {" ".join(phrases[:3])}', "reading_time_minutes": 1}
    elif step_type == "quiz":
        data = {"question": lesson["mission"], "options": option_set(phrases[0], phrases[1:] + words[:3]), "explanation": "The correct option best supports the lesson mission."}
    elif step_type == "translate":
        data = {"source_text": "Составьте английскую фразу.", "source_language": "ru", "target_language": "en", "correct_translation": phrase, "word_bank": phrase_tokens}
    elif step_type == "fill_blank":
        rest = " ".join(phrase_tokens[1:]) or "English"
        data = {"sentence_template": f"___ {rest}", "correct_answer": answer, "options": [answer, *[word for word in words if word.lower() != answer.lower()][:2]]}
    elif step_type == "tap_words":
        data = {"audio_text": phrase, "word_bank": list(reversed(phrase_tokens)), "correct_words": phrase_tokens}
    elif step_type == "listening":
        data = {"audio_text": phrase, "language": "en", "translation_hint": lesson["mission"]}
    elif step_type == "listening_shadowing":
        step["title"] = {"en": "Repeat after the speaker", "ru": "Повторите за диктором"}
        step["estimated_seconds"] = 60
        data = {"audio_text": phrase, "language": "en", "min_accuracy": 0.7, "translation_hint": lesson["mission"]}
    elif step_type == "story":
        data = {"title": lesson["title"], "scenes": [{"type": "dialogue", "character": "Teacher / Classmate", "text": phrase}, {"type": "choice", "text": "What should you say next?", "options": [{"text": phrases[1] if len(phrases) > 1 else phrase, "is_correct": True}, {"text": words[0], "is_correct": False}]}]}
    elif step_type == "choose_definition":
        data = {"word": words[0], "language": "en", "options": option_set(definition(words[0], lesson), [definition(word, lesson) for word in words[1:]]), "explanation": f"{words[0]}: {definition(words[0], lesson)}"}
    elif step_type == "listen_choose_word":
        rest = " ".join(phrase_tokens[1:]) or "English"
        data = {"sentence_template": f"___ {rest}", "audio_text": phrase, "language": "en", "options": [{"id": "A", "audio_text": answer, "is_correct": True}, {"id": "B", "audio_text": words[1], "is_correct": False}], "explanation": "Choose the word you hear."}
    elif step_type == "missing_word":
        missing_index = next((i for i, token in enumerate(phrase_tokens) if len(token) >= 2), 0)
        missing_answer = phrase_tokens[missing_index]
        masked = phrase_tokens.copy()
        masked[missing_index] = "___"
        data = {"sentence_template": " ".join(masked), "correct_answer": missing_answer, "hint_prefix": missing_answer[:2].lower(), "explanation": "Type the missing word."}
    elif step_type == "match_pairs_voice":
        data = {"language": "en", "pairs": [{"id": f"V{i + 1}", "audio_text": word, "text": word} for i, word in enumerate(words[:4])], "explanation": "Listen carefully before matching."}
    else:
        raise ValueError(f"Unsupported step type: {step_type}")
    step["data"] = data
    return step


def convert_track(source_track):
    track_words = [item["word"] for lesson in source_track["lessons"] for item in lesson.get("target_language", {}).get("vocabulary", []) if item.get("word")]
    lessons = []
    for source_lesson in source_track["lessons"]:
        words = lesson_words(source_lesson, track_words)
        phrases = lesson_phrases(source_lesson)
        steps = [make_step(step_type, source_lesson, words, phrases, index) for index, step_type in enumerate(STEP_TYPES)]
        lessons.append({"code": source_lesson["lesson_id"], "order": source_lesson["lesson_number"], "title": localized(source_lesson["title"]), "objective": localized(source_lesson["mission"]), "estimated_seconds": source_lesson["duration_minutes"] * 60, "steps": steps})
    return {"schema_version": "lingoiq.track.v2", "track": {"code": source_track["track_id"], "title": localized(source_track["title"]), "description": localized(source_track["description"]), "target_language": "en", "native_language": "ru", "level": source_track["level"], "goal": source_track["goal"], "track_type": "thematic"}, "lessons": lessons}


def main():
    package = json.loads(SOURCE.read_text(encoding="utf-8"))
    OUTPUT.mkdir(parents=True, exist_ok=True)
    for source_track in package["tracks"]:
        target = OUTPUT / f'{source_track["track_id"]}.json'
        target.write_text(json.dumps(convert_track(source_track), ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


if __name__ == "__main__":
    main()
