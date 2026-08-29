# Shared scene builders for A1 classic content parts.


def dlg(character, text, translation):
    return {"type": "dialogue", "character": character, "text": text,
            "translation": translation}


def narr(text, translation):
    return {"type": "narration", "text": text, "translation": translation}


def choice(text, options):
    return {"type": "choice", "text": text,
            "options": [{"text": t, "is_correct": c} for t, c in options]}
