#!/usr/bin/env python3
"""Replace generated match-pair explanations with stable en->ru translations.

The track packages contain placeholder English explanations in `right`. This
script builds a shared word map, preferring real translations already present
in track packages and then querying MyMemory for the remaining single words.
It only changes pairs whose right side matches the known placeholder pattern.
"""

import argparse
import json
import re
import time
import urllib.parse
import urllib.request
from pathlib import Path

PLACEHOLDER = re.compile(
    r"^(?:The term ['\"].+['\"] as it is used|Listening word:)", re.IGNORECASE
)
CYRILLIC = re.compile(r"[А-Яа-яЁё]")
TRACK_GLOB = "tracks/*_V2/*.json"

MANUAL_TRANSLATIONS = {
    "am": "являюсь",
    "did": "делал",
    "do": "делать",
    "feedback": "обратная связь",
    "file": "файл",
    "get": "получать",
    "he": "он",
    "i": "я",
    "id": "идентификатор",
    "item": "элемент",
    "key": "ключ",
    "kind": "вид; добрый",
    "language": "язык",
    "live": "жить",
    "location": "местоположение",
    "long": "длинный",
    "main": "главный",
    "match": "соответствие",
    "meal": "приём пищи",
    "notes": "заметки",
    "o'clock": "часов",
    "out": "наружу",
    "owner": "владелец",
    "papers": "документы",
    "return": "возвращаться",
    "sit": "сидеть",
    "size": "размер",
    "state": "состояние",
    "success": "успех",
    "target": "цель",
    "text": "текст",
    "title": "заголовок",
    "try": "пытаться",
}


def normalize(value):
    return " ".join(str(value).strip().casefold().split())


def collect(paths):
    bad = set()
    good = {}
    documents = []
    for path in paths:
        document = json.loads(path.read_text(encoding="utf-8"))
        documents.append((path, document))
        for lesson in document.get("lessons", []):
            for step in lesson.get("steps", []):
                if step.get("type") != "match_pairs":
                    continue
                for pair in step.get("data", {}).get("pairs", []):
                    word = normalize(pair.get("left", ""))
                    right = str(pair.get("right", "")).strip()
                    if not word:
                        continue
                    if PLACEHOLDER.match(right) or not CYRILLIC.search(right):
                        bad.add(word)
                    elif right:
                        good.setdefault(word, right)
    return documents, bad, good


def translate_batch(words):
    query = "\n".join(words)
    url = "https://api.mymemory.translated.net/get?" + urllib.parse.urlencode(
        {"q": query, "langpair": "en|ru"}
    )
    request = urllib.request.Request(url, headers={"User-Agent": "LingoIQ-track-backfill/1.0"})
    with urllib.request.urlopen(request, timeout=30) as response:
        payload = json.load(response)
    translated = payload.get("responseData", {}).get("translatedText", "")
    lines = translated.splitlines()
    if len(lines) != len(words):
        raise RuntimeError(f"translation line count mismatch: {len(lines)} != {len(words)}")
    return dict(zip(words, lines))


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--apply", action="store_true")
    parser.add_argument("--map", default="docs/track_match_pair_translations.json")
    args = parser.parse_args()

    paths = [Path(p) for p in sorted(Path("tracks").glob("*_V2/*.json"))]
    documents, bad, good = collect(paths)
    mapping = {word: good[word] for word in sorted(bad) if word in good}
    missing = sorted(bad - set(mapping))
    for start in range(0, len(missing), 20):
        batch = missing[start : start + 20]
        mapping.update(translate_batch(batch))
        print(f"translated {min(start + len(batch), len(missing))}/{len(missing)}")
        time.sleep(0.25)

    mapping.update(MANUAL_TRANSLATIONS)

    output = Path(args.map)
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(mapping, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    changed = 0
    if args.apply:
        for path, document in documents:
            dirty = False
            for lesson in document.get("lessons", []):
                for step in lesson.get("steps", []):
                    if step.get("type") != "match_pairs":
                        continue
                    for pair in step.get("data", {}).get("pairs", []):
                        right = str(pair.get("right", "")).strip()
                        if PLACEHOLDER.match(right) or not CYRILLIC.search(right):
                            word = normalize(pair.get("left", ""))
                            translation = mapping.get(word)
                            if not translation:
                                raise RuntimeError(f"no translation for {word!r} in {path}")
                            pair["right"] = translation.strip()
                            dirty = True
                            changed += 1
            if dirty:
                path.write_text(json.dumps(document, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    print(f"placeholder_pairs={sum(1 for _ in bad)} unique_words={len(bad)} mapping={len(mapping)} changed={changed}")


if __name__ == "__main__":
    main()
