#!/usr/bin/env python3
"""Backfill Google TTS MP3 files and audio_url fields for a track package."""

import base64
import hashlib
import json
import os
import pathlib
import time
import urllib.parse
import urllib.request


PACKAGE = pathlib.Path(os.environ.get("TRACK_PACKAGE", "tracks/A1_EXAM_PREP_TRACKS_01_10_V2"))
OUTPUT = pathlib.Path(os.environ.get("AUDIO_OUTPUT", "/var/www/html/eng_next2/public/audio/a1-exam-prep"))
PUBLIC_BASE = os.environ.get("PUBLIC_AUDIO_BASE", "https://lingoiq.online/audio/a1-exam-prep")
API_KEY = os.environ["GOOGLE_TTS_API_KEY"]


def language_code(language):
    return {"en": "en-US", "ru": "ru-RU"}.get(language.lower(), language)


def audio_name(language, text):
    digest = hashlib.sha256((language + "|" + text).encode()).hexdigest()[:24]
    return f"{language}-{digest}.mp3"


def synthesize(language, text):
    payload = {
        "input": {"text": text},
        "voice": {"languageCode": language_code(language)},
        "audioConfig": {"audioEncoding": "MP3"},
    }
    request = urllib.request.Request(
        "https://texttospeech.googleapis.com/v1/text:synthesize?key=" + urllib.parse.quote(API_KEY),
        data=json.dumps(payload).encode(),
        headers={"Content-Type": "application/json"},
        method="POST",
    )
    with urllib.request.urlopen(request, timeout=45) as response:
        result = json.load(response)
    return base64.b64decode(result["audioContent"])


def main():
    OUTPUT.mkdir(parents=True, exist_ok=True)
    texts = {}
    documents = []
    for path in sorted(PACKAGE.glob("*.json")):
        document = json.loads(path.read_text(encoding="utf-8"))
        documents.append((path, document))

        def collect(value, inherited_language="en"):
            if isinstance(value, dict):
                language = value.get("language", inherited_language)
                text = value.get("audio_text")
                if isinstance(text, str) and text.strip():
                    texts[(language, text.strip())] = None
                for child in list(value.values()):
                    collect(child, language)
            elif isinstance(value, list):
                for child in value:
                    collect(child, inherited_language)

        collect(document)

    print(f"unique_phrases={len(texts)}")
    for index, (key, _) in enumerate(sorted(texts.items()), 1):
        language, text = key
        name = audio_name(language, text)
        target = OUTPUT / name
        if not target.exists():
            target.write_bytes(synthesize(language, text))
            time.sleep(0.05)
        texts[key] = f"{PUBLIC_BASE}/{name}"
        print(f"audio {index}/{len(texts)} {language} {name}")

    for path, document in documents:
        def patch(value, inherited_language="en", step_type=""):
            if isinstance(value, dict):
                language = value.get("language", inherited_language)
                text = value.get("audio_text")
                can_store_url = step_type != "listen_choose_word"
                if isinstance(text, str) and text.strip() and can_store_url:
                    value["audio_url"] = texts[(language, text.strip())]
                elif step_type == "listen_choose_word":
                    value.pop("audio_url", None)
                for key, child in list(value.items()):
                    child_type = value.get("type", step_type) if key == "data" else step_type
                    patch(child, language, child_type)
            elif isinstance(value, list):
                for child in value:
                    patch(child, inherited_language, step_type)

        patch(document)
        path.write_text(json.dumps(document, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        print(f"updated {path}")


if __name__ == "__main__":
    main()
