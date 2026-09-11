-- Track: C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('ec39b084-52f3-5322-b344-654d27f75189', 'C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION', 'Культура, интерпретация и присвоение', 'Развивайте свободную и нюансированную устную речь уровня C1 по теме «Культура, интерпретация и присвоение», управляя абстрактными аргументами, импликациями и регистром.', '{"en":"Culture, Interpretation and Appropriation","ru":"Культура, интерпретация и присвоение"}'::jsonb, '{"en":"Develop fluent, nuanced C1 spoken English for culture, interpretation and appropriation by controlling abstract argument, implication, and register.","ru":"Развивайте свободную и нюансированную устную речь уровня C1 по теме «Культура, интерпретация и присвоение», управляя абстрактными аргументами, импликациями и регистром."}'::jsonb, 'en', 'C1', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('68ae5435-6b57-5da4-8c77-8672c9ac94e1', NULL, 'Концептуальная точность и позиция', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Interpreting Cultural Meaning","ru":"Концептуальная точность и позиция"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('07485b5f-344e-558b-b646-facb1e9707be', '68ae5435-6b57-5da4-8c77-8672c9ac94e1', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L1_D01","left":"cultural appropriation","right":"культурное присвоение"},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L1_D02","left":"cultural exchange","right":"культурный обмен"},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L1_D03","left":"power imbalance","right":"дисбаланс власти"},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L1_D04","left":"historical context","right":"исторический контекст"},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L1_D05","left":"commodification","right":"коммерциализация"},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L1_D06","left":"authenticity claim","right":"претензия на аутентичность"},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L1_D07","left":"interpretive humility","right":"интерпретационная скромность"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a01b4f8-a968-5580-9828-5656090daead', '68ae5435-6b57-5da4-8c77-8672c9ac94e1', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L1_D08","is_correct":true,"text":"The distinction between cultural exchange and cultural appropriation depends less on borrowing itself than on context, reciprocity, and power imbalance."},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L1_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L1_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('780135f1-4891-5f58-b0ed-f2b5ffb6811a', '68ae5435-6b57-5da4-8c77-8672c9ac94e1', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The distinction between cultural exchange and cultural appropriation depends less on borrowing itself than on context, reciprocity, and power imbalance.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Различие между культурным обменом и культурным присвоением зависит не столько от заимствования, сколько от контекста, взаимности и дисбаланса власти.","target_language":"en","word_bank":["The","distinction","between","cultural","exchange","and","cultural","appropriation","depends","less","on","borrowing","itself","than","on","context",",","reciprocity",",","and","power","imbalance","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71763a6d-a583-5f73-9325-8e1bb10ff560', '68ae5435-6b57-5da4-8c77-8672c9ac94e1', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"cultural appropriation","instruction":"Выберите подходящее слово.","options":["cultural appropriation","historical context","authenticity claim"],"sentence_template":"The distinction between cultural exchange and ___ depends less on borrowing itself than on context, reciprocity, and power imbalance."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d6d22219-6533-5358-9a25-2cd8b0872c72', '68ae5435-6b57-5da4-8c77-8672c9ac94e1', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","distinction","between","cultural","exchange","and","cultural","appropriation","depends","less","on","borrowing","itself","than","on","context",",","reciprocity",",","and","power","imbalance","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","imbalance","power","and",",","reciprocity",",","context","on","than","itself","borrowing","on","less","depends","appropriation","cultural","and","exchange","cultural","between","distinction","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2cd824ca-d358-5b02-84e7-8a3a10544207', '68ae5435-6b57-5da4-8c77-8672c9ac94e1', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The distinction between cultural exchange and cultural appropriation depends less on borrowing itself than on context, reciprocity, and power imbalance. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4063f50-015e-59d5-af55-c5a2074277a6', '68ae5435-6b57-5da4-8c77-8672c9ac94e1', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The distinction between cultural exchange and cultural appropriation depends less on borrowing itself than on context, reciprocity, and power imbalance. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Различие между культурным обменом и культурным присвоением зависит не столько от заимствования, сколько от контекста, взаимности и дисбаланса власти. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e3797c9-f689-5cf3-b97e-420107850dd3', '68ae5435-6b57-5da4-8c77-8672c9ac94e1', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"The distinction between cultural exchange and cultural appropriation depends less on borrowing itself than on context, reciprocity, and power imbalance.","translation":"Различие между культурным обменом и культурным присвоением зависит не столько от заимствования, сколько от контекста, взаимности и дисбаланса власти.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Interpreting Cultural Meaning"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6db8a1cd-b40b-5202-a1b8-d4891c5b403d', '68ae5435-6b57-5da4-8c77-8672c9ac94e1', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“cultural appropriation” means use of cultural elements without sufficient respect or context.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L1_D11","is_correct":true,"text":"use of cultural elements without sufficient respect or context"},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L1_D12","is_correct":false,"text":"reciprocal sharing between cultures"},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L1_D13","is_correct":false,"text":"an unequal ability to control meaning or benefit"}],"word":"cultural appropriation"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e4e05a3a-603e-586c-a560-91b4bae8776b', '68ae5435-6b57-5da4-8c77-8672c9ac94e1', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The distinction between cultural exchange and cultural appropriation depends less on borrowing itself than on context, reciprocity, and power imbalance.","explanation":"The missing C1 expression is “cultural appropriation”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"cultural appropriation","id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L1_D14","is_correct":true},{"audio_text":"power imbalance","id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L1_D15","is_correct":false},{"audio_text":"commodification","id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L1_D16","is_correct":false}],"sentence_template":"The distinction between cultural exchange and ___ depends less on borrowing itself than on context, reciprocity, and power imbalance."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e042a7f8-ed81-54b6-8e09-4f3c434014c3', '68ae5435-6b57-5da4-8c77-8672c9ac94e1', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"cultural appropriation","explanation":"The complete argument uses “cultural appropriation” with conceptual precision.","hint_prefix":"cult","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The distinction between cultural exchange and ___ depends less on borrowing itself than on context, reciprocity, and power imbalance."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cdcaba12-112d-526a-817d-2c96ea11a3bd', '68ae5435-6b57-5da4-8c77-8672c9ac94e1', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"cultural appropriation","id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L1_D17","text":"cultural appropriation"},{"audio_text":"cultural exchange","id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L1_D18","text":"cultural exchange"},{"audio_text":"power imbalance","id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L1_D19","text":"power imbalance"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd6983e0-a67b-5c75-afdf-d46286b07e23', '68ae5435-6b57-5da4-8c77-8672c9ac94e1', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Interpreting Cultural Meaning”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L1_D20","is_correct":true,"text":"The distinction between cultural exchange and cultural appropriation depends less on borrowing itself than on context, reciprocity, and power imbalance."},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L1_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L1_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ec39b084-52f3-5322-b344-654d27f75189', '68ae5435-6b57-5da4-8c77-8672c9ac94e1', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e738b6ce-1a27-5314-9d6e-757162d18d87', NULL, 'Критический анализ и взаимодействие', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Exchange or Appropriation","ru":"Критический анализ и взаимодействие"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf8388f7-1ec7-5425-a530-8c15def47211', 'e738b6ce-1a27-5314-9d6e-757162d18d87', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L2_D01","left":"cultural appropriation","right":"культурное присвоение"},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L2_D02","left":"cultural exchange","right":"культурный обмен"},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L2_D03","left":"power imbalance","right":"дисбаланс власти"},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L2_D04","left":"historical context","right":"исторический контекст"},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L2_D05","left":"commodification","right":"коммерциализация"},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L2_D06","left":"authenticity claim","right":"претензия на аутентичность"},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L2_D07","left":"interpretive humility","right":"интерпретационная скромность"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd1d0b00-84fa-5a7b-8d84-b0ebf68e8cca', 'e738b6ce-1a27-5314-9d6e-757162d18d87', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L2_D08","is_correct":true,"text":"Commodification can detach a symbol from its historical context while allowing outsiders to profit from an authenticity claim."},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L2_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L2_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f284de86-bf47-534e-b26f-843fa3a12440', 'e738b6ce-1a27-5314-9d6e-757162d18d87', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Commodification can detach a symbol from its historical context while allowing outsiders to profit from an authenticity claim.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Коммерциализация может отделить символ от его исторического контекста, позволяя посторонним извлекать прибыль из претензии на аутентичность.","target_language":"en","word_bank":["Commodification","can","detach","a","symbol","from","its","historical","context","while","allowing","outsiders","to","profit","from","an","authenticity","claim","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76ec8bbb-b7db-5a00-aa75-89709c95bdf2', 'e738b6ce-1a27-5314-9d6e-757162d18d87', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"cultural exchange","instruction":"Выберите подходящее слово.","options":["cultural exchange","commodification","interpretive humility"],"sentence_template":"Commodification can detach a symbol from its historical context while allowing outsiders to profit from an authenticity claim."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('85aecd3d-a375-5b73-a1c9-f24710080289', 'e738b6ce-1a27-5314-9d6e-757162d18d87', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Commodification","can","detach","a","symbol","from","its","historical","context","while","allowing","outsiders","to","profit","from","an","authenticity","claim","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","claim","authenticity","an","from","profit","to","outsiders","allowing","while","context","historical","its","from","symbol","a","detach","can","Commodification"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('37f59891-fb99-5e11-92b4-1899ba46119d', 'e738b6ce-1a27-5314-9d6e-757162d18d87', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Commodification can detach a symbol from its historical context while allowing outsiders to profit from an authenticity claim. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fe552886-02d4-5cfb-a4e8-2afc85e8ce9f', 'e738b6ce-1a27-5314-9d6e-757162d18d87', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Commodification can detach a symbol from its historical context while allowing outsiders to profit from an authenticity claim. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Коммерциализация может отделить символ от его исторического контекста, позволяя посторонним извлекать прибыль из претензии на аутентичность. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('559230bb-e8ee-54b4-ba48-c8e896493a7c', 'e738b6ce-1a27-5314-9d6e-757162d18d87', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Commodification can detach a symbol from its historical context while allowing outsiders to profit from an authenticity claim.","translation":"Коммерциализация может отделить символ от его исторического контекста, позволяя посторонним извлекать прибыль из претензии на аутентичность.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Exchange or Appropriation"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('861b7d79-6323-5a6a-8423-4d01065ed7dc', 'e738b6ce-1a27-5314-9d6e-757162d18d87', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“cultural exchange” means reciprocal sharing between cultures.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L2_D11","is_correct":true,"text":"reciprocal sharing between cultures"},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L2_D12","is_correct":false,"text":"an unequal ability to control meaning or benefit"},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L2_D13","is_correct":false,"text":"past conditions shaping present significance"}],"word":"cultural exchange"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6a5b2430-585e-5ad8-9c11-394086618801', 'e738b6ce-1a27-5314-9d6e-757162d18d87', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Commodification can detach a symbol from its historical context while allowing outsiders to profit from an authenticity claim.","explanation":"The missing C1 expression is “cultural exchange”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"cultural exchange","id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L2_D14","is_correct":true},{"audio_text":"historical context","id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L2_D15","is_correct":false},{"audio_text":"authenticity claim","id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L2_D16","is_correct":false}],"sentence_template":"Commodification can detach a symbol from its historical context while allowing outsiders to profit from an authenticity claim."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2c14d3d9-02f3-52ff-874e-f71d19464f5e', 'e738b6ce-1a27-5314-9d6e-757162d18d87', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"cultural exchange","explanation":"The complete argument uses “cultural exchange” with conceptual precision.","hint_prefix":"cult","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Commodification can detach a symbol from its historical context while allowing outsiders to profit from an authenticity claim."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4164b1e8-e04c-5508-bbb6-35fdec564111', 'e738b6ce-1a27-5314-9d6e-757162d18d87', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"cultural appropriation","id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L2_D17","text":"cultural appropriation"},{"audio_text":"cultural exchange","id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L2_D18","text":"cultural exchange"},{"audio_text":"power imbalance","id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L2_D19","text":"power imbalance"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2080512f-aa91-57e7-b906-466f037b733a', 'e738b6ce-1a27-5314-9d6e-757162d18d87', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Exchange or Appropriation”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L2_D20","is_correct":true,"text":"Commodification can detach a symbol from its historical context while allowing outsiders to profit from an authenticity claim."},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L2_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L2_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ec39b084-52f3-5322-b344-654d27f75189', 'e738b6ce-1a27-5314-9d6e-757162d18d87', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('af76c739-9725-5b4f-97eb-febfbb66115c', NULL, 'Нюансированный вывод и свободная речь', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Representing Culture Responsibly","ru":"Нюансированный вывод и свободная речь"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('98838bb6-c22b-5662-8fff-3f81f177dffd', 'af76c739-9725-5b4f-97eb-febfbb66115c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L3_D01","left":"cultural appropriation","right":"культурное присвоение"},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L3_D02","left":"cultural exchange","right":"культурный обмен"},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L3_D03","left":"power imbalance","right":"дисбаланс власти"},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L3_D04","left":"historical context","right":"исторический контекст"},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L3_D05","left":"commodification","right":"коммерциализация"},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L3_D06","left":"authenticity claim","right":"претензия на аутентичность"},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L3_D07","left":"interpretive humility","right":"интерпретационная скромность"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fbe0f544-b804-53f0-b7d2-4439220a3380', 'af76c739-9725-5b4f-97eb-febfbb66115c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L3_D08","is_correct":true,"text":"Interpretive humility does not prohibit cross-cultural engagement; it requires listening, attribution, and readiness to revise one’s understanding."},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L3_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L3_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4861a44-f4b0-51df-bfdb-ac043a0c38a6', 'af76c739-9725-5b4f-97eb-febfbb66115c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Interpretive humility does not prohibit cross-cultural engagement; it requires listening, attribution, and readiness to revise one’s understanding.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Интерпретационная скромность не запрещает межкультурное взаимодействие; она требует слушать, указывать происхождение и быть готовым пересмотреть понимание.","target_language":"en","word_bank":["Interpretive","humility","does","not","prohibit","cross-cultural","engagement",";","it","requires","listening",",","attribution",",","and","readiness","to","revise","one’s","understanding","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('401abb71-207a-5eb5-b015-bbcd5cabc050', 'af76c739-9725-5b4f-97eb-febfbb66115c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"power imbalance","instruction":"Выберите подходящее слово.","options":["power imbalance","authenticity claim","cultural appropriation"],"sentence_template":"Interpretive humility does not prohibit cross-cultural engagement; it requires listening, attribution, and readiness to revise one’s understanding."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('79606da8-2a4a-5e4d-855c-7d3e2c465634', 'af76c739-9725-5b4f-97eb-febfbb66115c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Interpretive","humility","does","not","prohibit","cross-cultural","engagement",";","it","requires","listening",",","attribution",",","and","readiness","to","revise","one’s","understanding","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","understanding","one’s","revise","to","readiness","and",",","attribution",",","listening","requires","it",";","engagement","cross-cultural","prohibit","not","does","humility","Interpretive"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('538d373b-00d2-5c1f-95c9-d821ad498052', 'af76c739-9725-5b4f-97eb-febfbb66115c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Interpretive humility does not prohibit cross-cultural engagement; it requires listening, attribution, and readiness to revise one’s understanding. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ae7116c-02bd-5f23-8289-fc0d5f5f0b88', 'af76c739-9725-5b4f-97eb-febfbb66115c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Interpretive humility does not prohibit cross-cultural engagement; it requires listening, attribution, and readiness to revise one’s understanding. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Интерпретационная скромность не запрещает межкультурное взаимодействие; она требует слушать, указывать происхождение и быть готовым пересмотреть понимание. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('68b8bc7b-953e-50d0-b022-72de1021e876', 'af76c739-9725-5b4f-97eb-febfbb66115c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Interpretive humility does not prohibit cross-cultural engagement; it requires listening, attribution, and readiness to revise one’s understanding.","translation":"Интерпретационная скромность не запрещает межкультурное взаимодействие; она требует слушать, указывать происхождение и быть готовым пересмотреть понимание.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Representing Culture Responsibly"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b544048-fb84-5876-a8f8-b50c130ed84f', 'af76c739-9725-5b4f-97eb-febfbb66115c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“power imbalance” means an unequal ability to control meaning or benefit.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L3_D11","is_correct":true,"text":"an unequal ability to control meaning or benefit"},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L3_D12","is_correct":false,"text":"past conditions shaping present significance"},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L3_D13","is_correct":false,"text":"turning cultural meaning into a product"}],"word":"power imbalance"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('deca3434-fbb8-51a7-a3e8-0ecd4bf70e12', 'af76c739-9725-5b4f-97eb-febfbb66115c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Interpretive humility does not prohibit cross-cultural engagement; it requires listening, attribution, and readiness to revise one’s understanding.","explanation":"The missing C1 expression is “power imbalance”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"power imbalance","id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L3_D14","is_correct":true},{"audio_text":"commodification","id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L3_D15","is_correct":false},{"audio_text":"interpretive humility","id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L3_D16","is_correct":false}],"sentence_template":"Interpretive humility does not prohibit cross-cultural engagement; it requires listening, attribution, and readiness to revise one’s understanding."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6bdd38d8-ee1d-50fc-9522-e6cdddcaf07a', 'af76c739-9725-5b4f-97eb-febfbb66115c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"power imbalance","explanation":"The complete argument uses “power imbalance” with conceptual precision.","hint_prefix":"powe","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Interpretive humility does not prohibit cross-cultural engagement; it requires listening, attribution, and readiness to revise one’s understanding."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12ea1fbb-629b-51f1-84bb-67f6b4d5c8a2', 'af76c739-9725-5b4f-97eb-febfbb66115c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"cultural appropriation","id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L3_D17","text":"cultural appropriation"},{"audio_text":"cultural exchange","id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L3_D18","text":"cultural exchange"},{"audio_text":"power imbalance","id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L3_D19","text":"power imbalance"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae807d20-ff00-5755-abae-9573e4dbb3d2', 'af76c739-9725-5b4f-97eb-febfbb66115c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Representing Culture Responsibly”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L3_D20","is_correct":true,"text":"Interpretive humility does not prohibit cross-cultural engagement; it requires listening, attribution, and readiness to revise one’s understanding."},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L3_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_CULTURE_INTERPRETATION_AND_APPROPRIATION_L3_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ec39b084-52f3-5322-b344-654d27f75189', 'af76c739-9725-5b4f-97eb-febfbb66115c', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ccc5cf2c-b14d-58c8-bc59-0b472f012065', 'en', 'cultural appropriation', 'культурное присвоение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('95bce3be-988b-5c25-b0ef-854da05dd501', 'en', 'cultural exchange', 'культурный обмен', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9787fdec-8021-5bd7-9972-5ee99aa73caa', 'en', 'power imbalance', 'дисбаланс власти', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('05faad18-0111-59e6-8439-c385da5e5a89', 'en', 'historical context', 'исторический контекст', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('197c242f-59c2-56f8-b265-8cf2d51a8ad8', 'en', 'commodification', 'коммерциализация', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2537f0bd-5566-51a2-bc9d-01ced1e1befe', 'en', 'authenticity claim', 'претензия на аутентичность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5b47dc70-f6eb-5fe4-899b-c0f0bedabc10', 'en', 'interpretive humility', 'интерпретационная скромность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ccc5cf2c-b14d-58c8-bc59-0b472f012065', 'en', 'cultural appropriation', 'культурное присвоение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('95bce3be-988b-5c25-b0ef-854da05dd501', 'en', 'cultural exchange', 'культурный обмен', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9787fdec-8021-5bd7-9972-5ee99aa73caa', 'en', 'power imbalance', 'дисбаланс власти', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('05faad18-0111-59e6-8439-c385da5e5a89', 'en', 'historical context', 'исторический контекст', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('197c242f-59c2-56f8-b265-8cf2d51a8ad8', 'en', 'commodification', 'коммерциализация', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2537f0bd-5566-51a2-bc9d-01ced1e1befe', 'en', 'authenticity claim', 'претензия на аутентичность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5b47dc70-f6eb-5fe4-899b-c0f0bedabc10', 'en', 'interpretive humility', 'интерпретационная скромность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ccc5cf2c-b14d-58c8-bc59-0b472f012065', 'en', 'cultural appropriation', 'культурное присвоение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('95bce3be-988b-5c25-b0ef-854da05dd501', 'en', 'cultural exchange', 'культурный обмен', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9787fdec-8021-5bd7-9972-5ee99aa73caa', 'en', 'power imbalance', 'дисбаланс власти', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('05faad18-0111-59e6-8439-c385da5e5a89', 'en', 'historical context', 'исторический контекст', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('197c242f-59c2-56f8-b265-8cf2d51a8ad8', 'en', 'commodification', 'коммерциализация', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2537f0bd-5566-51a2-bc9d-01ced1e1befe', 'en', 'authenticity claim', 'претензия на аутентичность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5b47dc70-f6eb-5fe4-899b-c0f0bedabc10', 'en', 'interpretive humility', 'интерпретационная скромность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ec39b084-52f3-5322-b344-654d27f75189', id, '68ae5435-6b57-5da4-8c77-8672c9ac94e1', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'cultural appropriation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ec39b084-52f3-5322-b344-654d27f75189', id, '68ae5435-6b57-5da4-8c77-8672c9ac94e1', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'cultural exchange' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ec39b084-52f3-5322-b344-654d27f75189', id, '68ae5435-6b57-5da4-8c77-8672c9ac94e1', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'power imbalance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ec39b084-52f3-5322-b344-654d27f75189', id, '68ae5435-6b57-5da4-8c77-8672c9ac94e1', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'historical context' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ec39b084-52f3-5322-b344-654d27f75189', id, '68ae5435-6b57-5da4-8c77-8672c9ac94e1', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'commodification' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ec39b084-52f3-5322-b344-654d27f75189', id, '68ae5435-6b57-5da4-8c77-8672c9ac94e1', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'authenticity claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ec39b084-52f3-5322-b344-654d27f75189', id, '68ae5435-6b57-5da4-8c77-8672c9ac94e1', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'interpretive humility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ec39b084-52f3-5322-b344-654d27f75189', id, 'e738b6ce-1a27-5314-9d6e-757162d18d87', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'cultural appropriation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ec39b084-52f3-5322-b344-654d27f75189', id, 'e738b6ce-1a27-5314-9d6e-757162d18d87', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'cultural exchange' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ec39b084-52f3-5322-b344-654d27f75189', id, 'e738b6ce-1a27-5314-9d6e-757162d18d87', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'power imbalance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ec39b084-52f3-5322-b344-654d27f75189', id, 'e738b6ce-1a27-5314-9d6e-757162d18d87', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'historical context' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ec39b084-52f3-5322-b344-654d27f75189', id, 'e738b6ce-1a27-5314-9d6e-757162d18d87', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'commodification' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ec39b084-52f3-5322-b344-654d27f75189', id, 'e738b6ce-1a27-5314-9d6e-757162d18d87', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'authenticity claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ec39b084-52f3-5322-b344-654d27f75189', id, 'e738b6ce-1a27-5314-9d6e-757162d18d87', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'interpretive humility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ec39b084-52f3-5322-b344-654d27f75189', id, 'af76c739-9725-5b4f-97eb-febfbb66115c', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'cultural appropriation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ec39b084-52f3-5322-b344-654d27f75189', id, 'af76c739-9725-5b4f-97eb-febfbb66115c', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'cultural exchange' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ec39b084-52f3-5322-b344-654d27f75189', id, 'af76c739-9725-5b4f-97eb-febfbb66115c', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'power imbalance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ec39b084-52f3-5322-b344-654d27f75189', id, 'af76c739-9725-5b4f-97eb-febfbb66115c', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'historical context' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ec39b084-52f3-5322-b344-654d27f75189', id, 'af76c739-9725-5b4f-97eb-febfbb66115c', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'commodification' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ec39b084-52f3-5322-b344-654d27f75189', id, 'af76c739-9725-5b4f-97eb-febfbb66115c', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'authenticity claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ec39b084-52f3-5322-b344-654d27f75189', id, 'af76c739-9725-5b4f-97eb-febfbb66115c', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'interpretive humility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
