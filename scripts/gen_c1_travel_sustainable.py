#!/usr/bin/env python3
"""Generate the missing 10th C1 TRAVEL track in lingoiq.track.v2 format.

Follows the exact structure of the other 69 C1 tracks from the application
files: 3 lessons x 13 steps, core-sentence reuse, D01-D22 item ids per lesson,
min_accuracy 0.84, lesson estimated_seconds 415.

Usage: python3 scripts/gen_c1_travel_sustainable.py
"""

import json
import random
from pathlib import Path

OUT = Path(__file__).resolve().parent.parent / "tracks" / "C1" / (
    "C1_travel_sustainable_tourism_overtourism_and_responsible_choices_3_lessons.json")

CODE = "C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES"

STEP_SUFFIXES = ["MATCH_PAIRS", "QUIZ", "TRANSLATE", "FILL_BLANK", "TAP_WORDS",
                 "LISTENING", "LISTENING_SHADOWING", "STORY", "CHOOSE_DEFINITION",
                 "LISTEN_CHOOSE_WORD", "MISSING_WORD", "MATCH_PAIRS_VOICE",
                 "COMPLETE_CHAT"]
STEP_SECONDS = [30, 20, 30, 25, 30, 35, 60, 40, 30, 30, 25, 30, 30]

TITLES = {
    "MATCH_PAIRS": ({"ru": "Соедините пары", "en": "Match the pairs"},
                    {"ru": "Соедините английские слова с переводом.", "en": "Match the English words with their translations."}),
    "QUIZ": ({"ru": "Проверьте себя", "en": "Check yourself"},
             {"ru": "Выберите правильный ответ.", "en": "Choose the correct answer."}),
    "TRANSLATE": ({"ru": "Переведите", "en": "Translate"},
                  {"ru": "Соберите перевод.", "en": "Build the translation."}),
    "FILL_BLANK": ({"ru": "Заполните пропуск", "en": "Fill the blank"},
                   {"ru": "Выберите подходящее слово.", "en": "Choose the word that fits."}),
    "TAP_WORDS": ({"ru": "Соберите фразу", "en": "Build the phrase"},
                  {"ru": "Расставьте слова в правильном порядке.", "en": "Put the words in the correct order."}),
    "LISTENING": ({"ru": "Послушайте", "en": "Listen"},
                  {"ru": "Напишите услышанное.", "en": "Type what you hear."}),
    "LISTENING_SHADOWING": ({"ru": "Повторите", "en": "Repeat"},
                            {"ru": "Запишите повтор.", "en": "Record your repetition."}),
    "STORY": ({"ru": "История", "en": "Story"},
              {"ru": "Прочитайте историю.", "en": "Read the story."}),
    "CHOOSE_DEFINITION": ({"ru": "Определение", "en": "Definition"},
                           {"ru": "Выберите значение.", "en": "Choose the meaning."}),
    "LISTEN_CHOOSE_WORD": ({"ru": "Слово", "en": "Word"},
                           {"ru": "Слушайте.", "en": "Listen."}),
    "MISSING_WORD": ({"ru": "Впишите", "en": "Type"},
                     {"ru": "Впишите пропущенное слово по подсказке.", "en": "Type the missing word using the hint."}),
    "MATCH_PAIRS_VOICE": ({"ru": "Звук", "en": "Sound"},
                          {"ru": "Соедините звук.", "en": "Match the sound."}),
    "COMPLETE_CHAT": ({"ru": "Диалог", "en": "Chat"},
                      {"ru": "Ответьте.", "en": "Reply."}),
}

OBJECTIVE = {
    "ru": "Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.",
    "en": "Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.",
}
LESSON_TITLES_RU = [
    "Практический контекст и ключевые понятия",
    "Сложное взаимодействие и решение проблемы",
    "Ответственное действие и последующие шаги",
]

QUIZ_QUESTION = "Which response handles this complex travel situation most effectively?"
QUIZ_WRONGS = [
    "I will accept the first answer without checking the conditions, evidence, or alternatives.",
    "The practical consequences do not matter, so no written confirmation is necessary.",
]
QUIZ_EXPLANATION = ("The correct response is precise, calm, evidence-aware, "
                    "and focused on a workable real-world solution.")
ADD1_EN = ("Before agreeing, confirm the practical consequences, the available "
           "alternatives, and the next responsible action.")
ADD1_RU = ("Перед согласием уточните практические последствия, доступные "
           "альтернативы и следующее ответственное действие.")
ADD2_EN = ("If the initial solution is inadequate, explain why and request a "
           "proportionate alternative without becoming confrontational.")
ADD2_RU = ("Если первоначальное решение неудовлетворительно, объясните почему и "
           "попросите соразмерную альтернативу, не переходя к конфронтации.")
STORY_REP_EN = "What outcome are you requesting, and what information supports your position?"
STORY_REP_RU = "Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?"
STORY_CHOICE = {
    "text": "Which response moves the situation forward?",
    "options": [
        {"text": "I would state the facts, explain the practical impact, and request a specific solution with written confirmation.", "is_correct": True},
        {"text": "I would make a vague complaint without identifying any workable outcome.", "is_correct": False},
    ],
}
CHAT_WRONGS = [
    "I would avoid asking for evidence and accept any outcome immediately.",
    "I would escalate aggressively before explaining the facts or requested solution.",
]
CHAT_EXPLANATION = "The correct response uses precise, diplomatic, and practical C1 travel English."
VOICE_EXPLANATION = "Match each advanced travel expression you hear."

LESSONS = [
    {
        "scenario": "Assessing Overtourism Pressure",
        "vocab": [
            ("overtourism", "перегруженность направления туристами"),
            ("carrying capacity", "пропускная способность"),
            ("visitor footprint", "след от посещений"),
            ("low season", "низкий сезон"),
            ("dispersal strategy", "стратегия рассредоточения потоков"),
            ("heritage designation", "статус объекта наследия"),
            ("carbon-intensive journey", "углеродоёмкая поездка"),
        ],
        "core_en": ("Overtourism pushes the destination beyond its carrying "
                    "capacity, so the visitor footprint should be eased through "
                    "low-season travel and a thoughtful dispersal strategy."),
        "core_ru": ("Перегруженность туристами выводит направление за пределы "
                    "пропускной способности, поэтому след от посещений следует "
                    "снижать за счёт поездок в низкий сезон и продуманной "
                    "стратегии рассредоточения."),
        "key": "carrying capacity",
        "fill_options": ["heritage designation", "visitor footprint"],
        "def_word": "overtourism",
        "def_correct": "more visitors than a destination can absorb without harm",
        "def_wrong": ["the maximum volume of visitors a place can support sustainably",
                      "an approach that spreads visitors across sites and seasons"],
    },
    {
        "scenario": "Distinguishing Genuine Sustainability from Greenwashing",
        "vocab": [
            ("greenwashing", "ложная экологичность (гринвошинг)"),
            ("verifiable claim", "проверяемое утверждение"),
            ("certified operator", "сертифицированный оператор"),
            ("accreditation scheme", "схема аккредитации"),
            ("community-based tourism", "туризм на базе местных сообществ"),
            ("lower-impact alternative", "альтернатива с меньшим воздействием"),
            ("off-the-beaten-path stay", "размещение вдали от туристических троп"),
        ],
        "core_en": ("Greenwashing relies on vague impressions, so scrutinise the "
                    "accreditation scheme and insist on a verifiable claim before "
                    "booking community-based tourism."),
        "core_ru": ("Гринвошинг опирается на расплывчатые впечатления, поэтому "
                    "изучите схему аккредитации и настаивайте на проверяемом "
                    "утверждении, прежде чем бронировать туризм на базе местных "
                    "сообществ."),
        "key": "accreditation scheme",
        "fill_options": ["verifiable claim", "lower-impact alternative"],
        "def_word": "greenwashing",
        "def_correct": "misleading claims that exaggerate environmental commitment",
        "def_wrong": ["an independent standard an operator has been assessed against",
                      "tourism owned and run by local residents"],
    },
    {
        "scenario": "Ensuring Revenue Reaches Local Communities",
        "vocab": [
            ("local supply chain", "местная цепочка поставок"),
            ("fair share of revenue", "справедливая доля дохода"),
            ("cultural commodification", "коммерциализация культуры"),
            ("regenerative travel", "регенеративный туризм"),
            ("stakeholder consultation", "консультация заинтересованных сторон"),
            ("environmental levy", "экологический сбор"),
            ("long-term stewardship", "долговременное ответственное управление"),
        ],
        "core_en": ("Responsible choices keep a fair share of revenue within the "
                    "local supply chain and resist cultural commodification "
                    "through genuine stakeholder consultation."),
        "core_ru": ("Ответственный выбор сохраняет справедливую долю дохода внутри "
                    "местной цепочки поставок и противостоит коммерциализации "
                    "культуры благодаря подлинной консультации заинтересованных "
                    "сторон."),
        "key": "local supply chain",
        "fill_options": ["cultural commodification", "environmental levy"],
        "def_word": "cultural commodification",
        "def_correct": "packaging local traditions as products for visitors",
        "def_wrong": ["tourism that leaves a place better than it found it",
                      "a charge funding conservation and local infrastructure"],
    },
]


def did(lesson_code, n):
    return f"{lesson_code}_D{n:02d}"


def build_lesson(ls, ln):
    code = f"{CODE}_L{ln}"
    rng = random.Random(f"{code}:tap")

    def step(i, suffix, data):
        t = TITLES[suffix]
        return {"id": f"{code}_{suffix}", "order": i, "type": suffix.lower(),
                "title": t[0], "instructions": t[1],
                "estimated_seconds": STEP_SECONDS[i - 1], "data": data}

    core = ls["core_en"]
    tokens = core.rstrip(".").split() + ["."]
    template = core.replace(ls["key"], "___", 1)

    pairs = [{"id": did(code, i + 1), "left": en, "right": ru}
             for i, (en, ru) in enumerate(ls["vocab"])]
    quiz = {"question": QUIZ_QUESTION,
            "options": ([{"id": did(code, 8), "text": core, "is_correct": True}] +
                        [{"id": did(code, 9 + j), "text": w, "is_correct": False}
                         for j, w in enumerate(QUIZ_WRONGS)]),
            "explanation": QUIZ_EXPLANATION}
    translate = {"source_text": ls["core_ru"], "source_language": "ru",
                 "target_language": "en", "correct_translation": core,
                 "word_bank": tokens}
    fill = {"sentence_template": template, "correct_answer": ls["key"],
            "options": [ls["key"]] + ls["fill_options"]}
    tap = {"word_bank": rng.sample(tokens, len(tokens)), "correct_words": tokens}
    listening = {"audio_text": f"{core} {ADD1_EN}", "language": "en"}
    shadow_text = f"{core} {ADD1_EN} {ADD2_EN}"
    shadowing = {"audio_text": shadow_text, "language": "en",
                 "min_accuracy": 0.84,
                 "translation_hint": f"{ls['core_ru']} {ADD1_RU} {ADD2_RU}"}
    story = {"title": ls["scenario"], "scenes": [
        {"type": "dialogue", "character": "Traveller", "text": core,
         "translation": ls["core_ru"]},
        {"type": "dialogue", "character": "Tourism officer",
         "text": STORY_REP_EN, "translation": STORY_REP_RU},
        {"type": "choice", "text": STORY_CHOICE["text"],
         "options": STORY_CHOICE["options"]},
    ]}
    defin = {"word": ls["def_word"], "language": "en",
             "options": ([{"id": did(code, 11), "text": ls["def_correct"], "is_correct": True}] +
                         [{"id": did(code, 12 + j), "text": w, "is_correct": False}
                          for j, w in enumerate(ls["def_wrong"])]),
             "explanation": f"“{ls['def_word']}” means {ls['def_correct']}."}
    lw = {"sentence_template": template, "audio_text": core, "language": "en",
          "options": ([{"id": did(code, 14), "audio_text": ls["key"], "is_correct": True}] +
                      [{"id": did(code, 15 + j), "audio_text": o, "is_correct": False}
                       for j, o in enumerate(ls["fill_options"])]),
          "explanation": f"The missing phrase is “{ls['key']}”."}
    mw = {"sentence_template": template, "correct_answer": ls["key"],
          "hint_prefix": ls["key"][:4],
          "explanation": f"The complete statement uses “{ls['key']}” accurately."}
    voice = {"language": "en",
             "pairs": [{"id": did(code, 17 + i), "audio_text": en, "text": en}
                       for i, (en, _) in enumerate(ls["vocab"][:3])],
             "explanation": VOICE_EXPLANATION}
    chat = {"dialogue": [{"speaker": "Travel adviser",
                          "text": f"How would you handle “{ls['scenario']}”?"}],
            "answer_speaker": "You",
            "options": ([{"id": did(code, 20), "text": core, "is_correct": True}] +
                        [{"id": did(code, 21 + j), "text": w, "is_correct": False}
                         for j, w in enumerate(CHAT_WRONGS)]),
            "explanation": CHAT_EXPLANATION}

    data_map = {"MATCH_PAIRS": {"pairs": pairs}, "QUIZ": quiz, "TRANSLATE": translate,
                "FILL_BLANK": fill, "TAP_WORDS": tap, "LISTENING": listening,
                "LISTENING_SHADOWING": shadowing, "STORY": story,
                "CHOOSE_DEFINITION": defin, "LISTEN_CHOOSE_WORD": lw,
                "MISSING_WORD": mw, "MATCH_PAIRS_VOICE": voice,
                "COMPLETE_CHAT": chat}
    steps = [step(i, sfx, data_map[sfx])
             for i, sfx in enumerate(STEP_SUFFIXES, start=1)]
    return {"code": code, "order": ln,
            "title": {"ru": LESSON_TITLES_RU[ln - 1], "en": ls["scenario"]},
            "objective": OBJECTIVE,
            "estimated_seconds": sum(STEP_SECONDS),
            "steps": steps}


def validate(doc):
    assert doc["schema_version"] == "lingoiq.track.v2"
    for les in doc["lessons"]:
        steps = les["steps"]
        assert len(steps) == 13
        assert [s["type"] for s in steps] == [s.lower() for s in STEP_SUFFIXES]
        assert [s["order"] for s in steps] == list(range(1, 14))
        assert les["estimated_seconds"] == 415
        ids = [it["id"] for s in steps
               for k in ("pairs", "options") for it in s["data"].get(k, []) if "id" in it]
        nums = sorted(int(i.split("_D")[1]) for i in ids)
        assert nums == list(range(1, 23)), f"D-ids: {nums}"
        for st in (steps[1], steps[8], steps[9], steps[12]):
            assert sum(1 for o in st["data"]["options"] if o["is_correct"]) == 1
        assert len(steps[0]["data"]["pairs"]) == 7
        assert steps[6]["data"]["min_accuracy"] == 0.84
        tr = steps[2]["data"]
        assert tr["correct_translation"].rstrip(".").split() + ["."] == tr["word_bank"]
        assert tr["word_bank"][-1] == "." and tr["word_bank"][-2][-1] != "."
    return True


def main():
    doc = {
        "schema_version": "lingoiq.track.v2",
        "track": {
            "code": CODE,
            "title": {"ru": "Устойчивый туризм, перегруженность и ответственный выбор",
                      "en": "Sustainable Tourism, Overtourism and Responsible Choices"},
            "description": {
                "ru": "Освойте практический английский C1 по теме «Устойчивый туризм, перегруженность и ответственный выбор», оценивая воздействие поездок и принимая взвешенные решения.",
                "en": "Master practical C1 English for sustainable tourism, overtourism and responsible choices by assessing travel impact and making well-reasoned decisions."},
            "target_language": "en", "native_language": "ru", "level": "C1",
            "goal": "travel", "track_type": "thematic",
            "tags": ["C1", "travel", "real-life",
                     "sustainable-tourism-overtourism-and-responsible-choices"],
        },
        "lessons": [build_lesson(ls, i) for i, ls in enumerate(LESSONS, start=1)],
    }
    validate(doc)
    OUT.parent.mkdir(parents=True, exist_ok=True)
    OUT.write_text(json.dumps(doc, ensure_ascii=False, indent=1), encoding="utf-8")
    print(f"OK {OUT.name}: 3 lessons x 13 steps, validated")


if __name__ == "__main__":
    main()
