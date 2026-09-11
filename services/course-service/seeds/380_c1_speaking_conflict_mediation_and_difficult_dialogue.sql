-- Track: C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('11f69dec-6c53-520e-8ffe-05abdde3f346', 'C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE', 'Медиация конфликтов и трудный диалог', 'Развивайте свободную и нюансированную устную речь уровня C1 по теме «Медиация конфликтов и трудный диалог», управляя абстрактными аргументами, импликациями и регистром.', '{"en":"Conflict Mediation and Difficult Dialogue","ru":"Медиация конфликтов и трудный диалог"}'::jsonb, '{"en":"Develop fluent, nuanced C1 spoken English for conflict mediation and difficult dialogue by controlling abstract argument, implication, and register.","ru":"Развивайте свободную и нюансированную устную речь уровня C1 по теме «Медиация конфликтов и трудный диалог», управляя абстрактными аргументами, импликациями и регистром."}'::jsonb, 'en', 'C1', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f69d8401-05b0-591c-8e42-f076236705b3', NULL, 'Концептуальная точность и позиция', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Diagnosing Escalation","ru":"Концептуальная точность и позиция"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a0a4dd8d-d8a6-537e-a618-dd2a9b36ff37', 'f69d8401-05b0-591c-8e42-f076236705b3', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L1_D01","left":"conflict dynamic","right":"динамика конфликта"},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L1_D02","left":"attribution error","right":"ошибка атрибуции"},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L1_D03","left":"procedural fairness","right":"процедурная справедливость"},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L1_D04","left":"reframe a position","right":"переформулировать позицию"},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L1_D05","left":"acknowledge harm","right":"признать вред"},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L1_D06","left":"durable resolution","right":"устойчивое решение"},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L1_D07","left":"shuttle diplomacy","right":"челночная дипломатия"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('af5252ba-723e-51d7-b9c0-dedd7154e4bc', 'f69d8401-05b0-591c-8e42-f076236705b3', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L1_D08","is_correct":true,"text":"The conflict dynamic intensified because each side treated a situational problem as evidence of the other’s character."},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L1_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L1_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6def71c3-5845-5ea6-a99c-f1d82bca135a', 'f69d8401-05b0-591c-8e42-f076236705b3', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The conflict dynamic intensified because each side treated a situational problem as evidence of the other’s character.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Динамика конфликта усилилась, потому что каждая сторона воспринимала ситуативную проблему как доказательство характера другой.","target_language":"en","word_bank":["The","conflict","dynamic","intensified","because","each","side","treated","a","situational","problem","as","evidence","of","the","other’s","character","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b45223fc-3378-58ac-9137-6729481b19de', 'f69d8401-05b0-591c-8e42-f076236705b3', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"conflict dynamic","instruction":"Выберите подходящее слово.","options":["conflict dynamic","reframe a position","durable resolution"],"sentence_template":"The ___ intensified because each side treated a situational problem as evidence of the other’s character."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ed66822-dfff-5c21-9aad-96df7cb43754', 'f69d8401-05b0-591c-8e42-f076236705b3', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","conflict","dynamic","intensified","because","each","side","treated","a","situational","problem","as","evidence","of","the","other’s","character","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","character","other’s","the","of","evidence","as","problem","situational","a","treated","side","each","because","intensified","dynamic","conflict","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f9263ec1-b033-558a-a8fa-984da585855c', 'f69d8401-05b0-591c-8e42-f076236705b3', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The conflict dynamic intensified because each side treated a situational problem as evidence of the other’s character. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('62678e0d-7cb8-568b-a715-3b7a2636a3c0', 'f69d8401-05b0-591c-8e42-f076236705b3', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The conflict dynamic intensified because each side treated a situational problem as evidence of the other’s character. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Динамика конфликта усилилась, потому что каждая сторона воспринимала ситуативную проблему как доказательство характера другой. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5ed46e08-539d-5454-b059-ee0e673d9454', 'f69d8401-05b0-591c-8e42-f076236705b3', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"The conflict dynamic intensified because each side treated a situational problem as evidence of the other’s character.","translation":"Динамика конфликта усилилась, потому что каждая сторона воспринимала ситуативную проблему как доказательство характера другой.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Diagnosing Escalation"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('611ddb5d-c39b-543c-86d6-21b76fff097a', 'f69d8401-05b0-591c-8e42-f076236705b3', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“conflict dynamic” means the pattern through which disagreement develops.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L1_D11","is_correct":true,"text":"the pattern through which disagreement develops"},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L1_D12","is_correct":false,"text":"incorrectly explaining behaviour through character rather than context"},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L1_D13","is_correct":false,"text":"fairness in how a decision is reached"}],"word":"conflict dynamic"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a9f2d86-0105-553d-9597-b43b5dde5a13', 'f69d8401-05b0-591c-8e42-f076236705b3', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The conflict dynamic intensified because each side treated a situational problem as evidence of the other’s character.","explanation":"The missing C1 expression is “conflict dynamic”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"conflict dynamic","id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L1_D14","is_correct":true},{"audio_text":"procedural fairness","id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L1_D15","is_correct":false},{"audio_text":"acknowledge harm","id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L1_D16","is_correct":false}],"sentence_template":"The ___ intensified because each side treated a situational problem as evidence of the other’s character."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bdc8a38c-6cb3-55b7-91b0-f4ee4bf62ed7', 'f69d8401-05b0-591c-8e42-f076236705b3', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"conflict dynamic","explanation":"The complete argument uses “conflict dynamic” with conceptual precision.","hint_prefix":"conf","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ intensified because each side treated a situational problem as evidence of the other’s character."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ecc5195e-fc5a-5cc3-ba8b-c976cc233a84', 'f69d8401-05b0-591c-8e42-f076236705b3', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"conflict dynamic","id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L1_D17","text":"conflict dynamic"},{"audio_text":"attribution error","id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L1_D18","text":"attribution error"},{"audio_text":"procedural fairness","id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L1_D19","text":"procedural fairness"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e25aa969-5825-5c35-8e29-3145d9815e4f', 'f69d8401-05b0-591c-8e42-f076236705b3', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Diagnosing Escalation”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L1_D20","is_correct":true,"text":"The conflict dynamic intensified because each side treated a situational problem as evidence of the other’s character."},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L1_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L1_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('11f69dec-6c53-520e-8ffe-05abdde3f346', 'f69d8401-05b0-591c-8e42-f076236705b3', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('667020aa-6365-51f1-b6b1-f5e87db3dd1d', NULL, 'Критический анализ и взаимодействие', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Mediating Competing Accounts","ru":"Критический анализ и взаимодействие"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eaf149dd-ac52-5140-871d-72762ea02ef4', '667020aa-6365-51f1-b6b1-f5e87db3dd1d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L2_D01","left":"conflict dynamic","right":"динамика конфликта"},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L2_D02","left":"attribution error","right":"ошибка атрибуции"},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L2_D03","left":"procedural fairness","right":"процедурная справедливость"},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L2_D04","left":"reframe a position","right":"переформулировать позицию"},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L2_D05","left":"acknowledge harm","right":"признать вред"},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L2_D06","left":"durable resolution","right":"устойчивое решение"},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L2_D07","left":"shuttle diplomacy","right":"челночная дипломатия"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7fe1960-1ad1-5ce4-bd1d-f71fb536f23a', '667020aa-6365-51f1-b6b1-f5e87db3dd1d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L2_D08","is_correct":true,"text":"A mediator may reframe a position in terms of underlying needs while preserving procedural fairness and each party’s voice."},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L2_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L2_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('711f5ebe-58de-5988-81f3-c8757d0cf600', '667020aa-6365-51f1-b6b1-f5e87db3dd1d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A mediator may reframe a position in terms of underlying needs while preserving procedural fairness and each party’s voice.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Посредник может переформулировать позицию через глубинные потребности, сохраняя процедурную справедливость и право каждой стороны быть услышанной.","target_language":"en","word_bank":["A","mediator","may","reframe","a","position","in","terms","of","underlying","needs","while","preserving","procedural","fairness","and","each","party’s","voice","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('05356146-4d6d-576c-bfcd-cb3abbbcfa11', '667020aa-6365-51f1-b6b1-f5e87db3dd1d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"attribution error","instruction":"Выберите подходящее слово.","options":["attribution error","acknowledge harm","shuttle diplomacy"],"sentence_template":"A mediator may reframe a position in terms of underlying needs while preserving procedural fairness and each party’s voice."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('19871f34-ae61-522a-8572-21beef1737fa', '667020aa-6365-51f1-b6b1-f5e87db3dd1d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","mediator","may","reframe","a","position","in","terms","of","underlying","needs","while","preserving","procedural","fairness","and","each","party’s","voice","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","voice","party’s","each","and","fairness","procedural","preserving","while","needs","underlying","of","terms","in","position","a","reframe","may","mediator","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f48d97e3-af63-57f8-9a89-ab48041a2d74', '667020aa-6365-51f1-b6b1-f5e87db3dd1d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A mediator may reframe a position in terms of underlying needs while preserving procedural fairness and each party’s voice. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('50468c50-5668-5b03-8bf5-3f0146c04204', '667020aa-6365-51f1-b6b1-f5e87db3dd1d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A mediator may reframe a position in terms of underlying needs while preserving procedural fairness and each party’s voice. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Посредник может переформулировать позицию через глубинные потребности, сохраняя процедурную справедливость и право каждой стороны быть услышанной. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('34e60207-6226-5445-ac5a-d1e61ddca7ea', '667020aa-6365-51f1-b6b1-f5e87db3dd1d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"A mediator may reframe a position in terms of underlying needs while preserving procedural fairness and each party’s voice.","translation":"Посредник может переформулировать позицию через глубинные потребности, сохраняя процедурную справедливость и право каждой стороны быть услышанной.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Mediating Competing Accounts"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f209ac1b-0a4c-51cb-b36d-92c9c17bf007', '667020aa-6365-51f1-b6b1-f5e87db3dd1d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“attribution error” means incorrectly explaining behaviour through character rather than context.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L2_D11","is_correct":true,"text":"incorrectly explaining behaviour through character rather than context"},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L2_D12","is_correct":false,"text":"fairness in how a decision is reached"},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L2_D13","is_correct":false,"text":"express a demand in terms of underlying interests"}],"word":"attribution error"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('343781d4-ff06-54fd-87ed-f81a2c30ae85', '667020aa-6365-51f1-b6b1-f5e87db3dd1d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A mediator may reframe a position in terms of underlying needs while preserving procedural fairness and each party’s voice.","explanation":"The missing C1 expression is “attribution error”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"attribution error","id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L2_D14","is_correct":true},{"audio_text":"reframe a position","id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L2_D15","is_correct":false},{"audio_text":"durable resolution","id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L2_D16","is_correct":false}],"sentence_template":"A mediator may reframe a position in terms of underlying needs while preserving procedural fairness and each party’s voice."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1188b8f3-9c84-5359-8b33-84257d3b5b85', '667020aa-6365-51f1-b6b1-f5e87db3dd1d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"attribution error","explanation":"The complete argument uses “attribution error” with conceptual precision.","hint_prefix":"attr","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A mediator may reframe a position in terms of underlying needs while preserving procedural fairness and each party’s voice."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f7f6b15e-c705-5d17-b377-9d7c80b988c9', '667020aa-6365-51f1-b6b1-f5e87db3dd1d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"conflict dynamic","id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L2_D17","text":"conflict dynamic"},{"audio_text":"attribution error","id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L2_D18","text":"attribution error"},{"audio_text":"procedural fairness","id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L2_D19","text":"procedural fairness"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b3d1958-370a-5885-8074-ae7778420bbd', '667020aa-6365-51f1-b6b1-f5e87db3dd1d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Mediating Competing Accounts”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L2_D20","is_correct":true,"text":"A mediator may reframe a position in terms of underlying needs while preserving procedural fairness and each party’s voice."},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L2_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L2_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('11f69dec-6c53-520e-8ffe-05abdde3f346', '667020aa-6365-51f1-b6b1-f5e87db3dd1d', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('fa3e0f6c-c1fa-53a0-8215-e159745f5b0c', NULL, 'Нюансированный вывод и свободная речь', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Building a Durable Resolution","ru":"Нюансированный вывод и свободная речь"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ffe6f7d6-d389-510e-9f59-38fa4efadf70', 'fa3e0f6c-c1fa-53a0-8215-e159745f5b0c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L3_D01","left":"conflict dynamic","right":"динамика конфликта"},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L3_D02","left":"attribution error","right":"ошибка атрибуции"},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L3_D03","left":"procedural fairness","right":"процедурная справедливость"},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L3_D04","left":"reframe a position","right":"переформулировать позицию"},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L3_D05","left":"acknowledge harm","right":"признать вред"},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L3_D06","left":"durable resolution","right":"устойчивое решение"},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L3_D07","left":"shuttle diplomacy","right":"челночная дипломатия"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0f49db22-3ade-5b65-aea9-581120d2e9a0', 'fa3e0f6c-c1fa-53a0-8215-e159745f5b0c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L3_D08","is_correct":true,"text":"A durable resolution requires acknowledgement of harm, credible future safeguards, and a mechanism for addressing renewed disagreement."},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L3_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L3_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1cd07cb-6fdb-58a2-acd8-9d2b99066e4f', 'fa3e0f6c-c1fa-53a0-8215-e159745f5b0c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A durable resolution requires acknowledgement of harm, credible future safeguards, and a mechanism for addressing renewed disagreement.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Устойчивое решение требует признания вреда, убедительных будущих гарантий и механизма разрешения повторных разногласий.","target_language":"en","word_bank":["A","durable","resolution","requires","acknowledgement","of","harm",",","credible","future","safeguards",",","and","a","mechanism","for","addressing","renewed","disagreement","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a9dbef3e-04a0-5662-b01d-3e3122d4f739', 'fa3e0f6c-c1fa-53a0-8215-e159745f5b0c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"procedural fairness","instruction":"Выберите подходящее слово.","options":["procedural fairness","durable resolution","conflict dynamic"],"sentence_template":"A durable resolution requires acknowledgement of harm, credible future safeguards, and a mechanism for addressing renewed disagreement."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dfe15382-17f0-5a05-a0a3-ddf04dd24929', 'fa3e0f6c-c1fa-53a0-8215-e159745f5b0c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","durable","resolution","requires","acknowledgement","of","harm",",","credible","future","safeguards",",","and","a","mechanism","for","addressing","renewed","disagreement","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","disagreement","renewed","addressing","for","mechanism","a","and",",","safeguards","future","credible",",","harm","of","acknowledgement","requires","resolution","durable","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5bb6c8b3-d627-565e-a485-e0eb0d11c2d5', 'fa3e0f6c-c1fa-53a0-8215-e159745f5b0c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A durable resolution requires acknowledgement of harm, credible future safeguards, and a mechanism for addressing renewed disagreement. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb6f6787-cfe3-5c7f-8b56-fafb0fd5c1d9', 'fa3e0f6c-c1fa-53a0-8215-e159745f5b0c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A durable resolution requires acknowledgement of harm, credible future safeguards, and a mechanism for addressing renewed disagreement. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Устойчивое решение требует признания вреда, убедительных будущих гарантий и механизма разрешения повторных разногласий. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('36b6839b-bb33-549b-bf2d-f24fbe4b9af9', 'fa3e0f6c-c1fa-53a0-8215-e159745f5b0c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"A durable resolution requires acknowledgement of harm, credible future safeguards, and a mechanism for addressing renewed disagreement.","translation":"Устойчивое решение требует признания вреда, убедительных будущих гарантий и механизма разрешения повторных разногласий.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Building a Durable Resolution"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08eb323d-94ff-56f8-908c-31554025d35f', 'fa3e0f6c-c1fa-53a0-8215-e159745f5b0c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“procedural fairness” means fairness in how a decision is reached.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L3_D11","is_correct":true,"text":"fairness in how a decision is reached"},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L3_D12","is_correct":false,"text":"express a demand in terms of underlying interests"},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L3_D13","is_correct":false,"text":"recognise damage experienced by another party"}],"word":"procedural fairness"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f7a9b5f9-556a-5144-bbcc-09f12d844e66', 'fa3e0f6c-c1fa-53a0-8215-e159745f5b0c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A durable resolution requires acknowledgement of harm, credible future safeguards, and a mechanism for addressing renewed disagreement.","explanation":"The missing C1 expression is “procedural fairness”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"procedural fairness","id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L3_D14","is_correct":true},{"audio_text":"acknowledge harm","id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L3_D15","is_correct":false},{"audio_text":"shuttle diplomacy","id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L3_D16","is_correct":false}],"sentence_template":"A durable resolution requires acknowledgement of harm, credible future safeguards, and a mechanism for addressing renewed disagreement."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5626fc48-58bc-5467-9f2d-875df736715e', 'fa3e0f6c-c1fa-53a0-8215-e159745f5b0c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"procedural fairness","explanation":"The complete argument uses “procedural fairness” with conceptual precision.","hint_prefix":"proc","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A durable resolution requires acknowledgement of harm, credible future safeguards, and a mechanism for addressing renewed disagreement."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('366ebe3c-793e-5179-93c1-f82d6bb01dc8', 'fa3e0f6c-c1fa-53a0-8215-e159745f5b0c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"conflict dynamic","id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L3_D17","text":"conflict dynamic"},{"audio_text":"attribution error","id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L3_D18","text":"attribution error"},{"audio_text":"procedural fairness","id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L3_D19","text":"procedural fairness"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('450ae583-6e47-5c66-807b-331696f9f7ac', 'fa3e0f6c-c1fa-53a0-8215-e159745f5b0c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Building a Durable Resolution”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L3_D20","is_correct":true,"text":"A durable resolution requires acknowledgement of harm, credible future safeguards, and a mechanism for addressing renewed disagreement."},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L3_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_CONFLICT_MEDIATION_AND_DIFFICULT_DIALOGUE_L3_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('11f69dec-6c53-520e-8ffe-05abdde3f346', 'fa3e0f6c-c1fa-53a0-8215-e159745f5b0c', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9c8a11cd-066f-5ce6-8c2a-f19ffdc53cf0', 'en', 'conflict dynamic', 'динамика конфликта', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f0dbfc1c-56ea-5ad4-bdf3-1147dcdb5bd3', 'en', 'attribution error', 'ошибка атрибуции', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3fb56f40-f18f-5988-b7d3-86f610738f03', 'en', 'procedural fairness', 'процедурная справедливость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ace3bc62-6b8c-55eb-9225-5ac5f95429b2', 'en', 'reframe a position', 'переформулировать позицию', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('43f8b130-8eb6-5bb9-9bef-86fce8222d54', 'en', 'acknowledge harm', 'признать вред', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('afac01b1-762b-50fb-b8fc-2f346134d7a8', 'en', 'durable resolution', 'устойчивое решение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e55e6531-9248-5ace-b7ea-91a1bdcd34fc', 'en', 'shuttle diplomacy', 'челночная дипломатия', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9c8a11cd-066f-5ce6-8c2a-f19ffdc53cf0', 'en', 'conflict dynamic', 'динамика конфликта', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f0dbfc1c-56ea-5ad4-bdf3-1147dcdb5bd3', 'en', 'attribution error', 'ошибка атрибуции', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3fb56f40-f18f-5988-b7d3-86f610738f03', 'en', 'procedural fairness', 'процедурная справедливость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ace3bc62-6b8c-55eb-9225-5ac5f95429b2', 'en', 'reframe a position', 'переформулировать позицию', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('43f8b130-8eb6-5bb9-9bef-86fce8222d54', 'en', 'acknowledge harm', 'признать вред', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('afac01b1-762b-50fb-b8fc-2f346134d7a8', 'en', 'durable resolution', 'устойчивое решение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e55e6531-9248-5ace-b7ea-91a1bdcd34fc', 'en', 'shuttle diplomacy', 'челночная дипломатия', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9c8a11cd-066f-5ce6-8c2a-f19ffdc53cf0', 'en', 'conflict dynamic', 'динамика конфликта', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f0dbfc1c-56ea-5ad4-bdf3-1147dcdb5bd3', 'en', 'attribution error', 'ошибка атрибуции', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3fb56f40-f18f-5988-b7d3-86f610738f03', 'en', 'procedural fairness', 'процедурная справедливость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ace3bc62-6b8c-55eb-9225-5ac5f95429b2', 'en', 'reframe a position', 'переформулировать позицию', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('43f8b130-8eb6-5bb9-9bef-86fce8222d54', 'en', 'acknowledge harm', 'признать вред', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('afac01b1-762b-50fb-b8fc-2f346134d7a8', 'en', 'durable resolution', 'устойчивое решение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e55e6531-9248-5ace-b7ea-91a1bdcd34fc', 'en', 'shuttle diplomacy', 'челночная дипломатия', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '11f69dec-6c53-520e-8ffe-05abdde3f346', id, 'f69d8401-05b0-591c-8e42-f076236705b3', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'conflict dynamic' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '11f69dec-6c53-520e-8ffe-05abdde3f346', id, 'f69d8401-05b0-591c-8e42-f076236705b3', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'attribution error' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '11f69dec-6c53-520e-8ffe-05abdde3f346', id, 'f69d8401-05b0-591c-8e42-f076236705b3', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'procedural fairness' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '11f69dec-6c53-520e-8ffe-05abdde3f346', id, 'f69d8401-05b0-591c-8e42-f076236705b3', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'reframe a position' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '11f69dec-6c53-520e-8ffe-05abdde3f346', id, 'f69d8401-05b0-591c-8e42-f076236705b3', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'acknowledge harm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '11f69dec-6c53-520e-8ffe-05abdde3f346', id, 'f69d8401-05b0-591c-8e42-f076236705b3', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'durable resolution' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '11f69dec-6c53-520e-8ffe-05abdde3f346', id, 'f69d8401-05b0-591c-8e42-f076236705b3', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'shuttle diplomacy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '11f69dec-6c53-520e-8ffe-05abdde3f346', id, '667020aa-6365-51f1-b6b1-f5e87db3dd1d', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'conflict dynamic' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '11f69dec-6c53-520e-8ffe-05abdde3f346', id, '667020aa-6365-51f1-b6b1-f5e87db3dd1d', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'attribution error' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '11f69dec-6c53-520e-8ffe-05abdde3f346', id, '667020aa-6365-51f1-b6b1-f5e87db3dd1d', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'procedural fairness' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '11f69dec-6c53-520e-8ffe-05abdde3f346', id, '667020aa-6365-51f1-b6b1-f5e87db3dd1d', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'reframe a position' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '11f69dec-6c53-520e-8ffe-05abdde3f346', id, '667020aa-6365-51f1-b6b1-f5e87db3dd1d', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'acknowledge harm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '11f69dec-6c53-520e-8ffe-05abdde3f346', id, '667020aa-6365-51f1-b6b1-f5e87db3dd1d', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'durable resolution' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '11f69dec-6c53-520e-8ffe-05abdde3f346', id, '667020aa-6365-51f1-b6b1-f5e87db3dd1d', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'shuttle diplomacy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '11f69dec-6c53-520e-8ffe-05abdde3f346', id, 'fa3e0f6c-c1fa-53a0-8215-e159745f5b0c', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'conflict dynamic' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '11f69dec-6c53-520e-8ffe-05abdde3f346', id, 'fa3e0f6c-c1fa-53a0-8215-e159745f5b0c', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'attribution error' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '11f69dec-6c53-520e-8ffe-05abdde3f346', id, 'fa3e0f6c-c1fa-53a0-8215-e159745f5b0c', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'procedural fairness' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '11f69dec-6c53-520e-8ffe-05abdde3f346', id, 'fa3e0f6c-c1fa-53a0-8215-e159745f5b0c', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'reframe a position' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '11f69dec-6c53-520e-8ffe-05abdde3f346', id, 'fa3e0f6c-c1fa-53a0-8215-e159745f5b0c', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'acknowledge harm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '11f69dec-6c53-520e-8ffe-05abdde3f346', id, 'fa3e0f6c-c1fa-53a0-8215-e159745f5b0c', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'durable resolution' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '11f69dec-6c53-520e-8ffe-05abdde3f346', id, 'fa3e0f6c-c1fa-53a0-8215-e159745f5b0c', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'shuttle diplomacy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
