-- Track: C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('f0184994-f56f-5199-92ab-407550a8f668', 'C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS', 'Будущее общества, сценарии и сложные компромиссы', 'Развивайте свободную и нюансированную устную речь уровня C1 по теме «Будущее общества, сценарии и сложные компромиссы», управляя абстрактными аргументами, импликациями и регистром.', '{"en":"Future Society, Scenarios and Complex Trade-Offs","ru":"Будущее общества, сценарии и сложные компромиссы"}'::jsonb, '{"en":"Develop fluent, nuanced C1 spoken English for future society, scenarios and complex trade-offs by controlling abstract argument, implication, and register.","ru":"Развивайте свободную и нюансированную устную речь уровня C1 по теме «Будущее общества, сценарии и сложные компромиссы», управляя абстрактными аргументами, импликациями и регистром."}'::jsonb, 'en', 'C1', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c3928968-dc83-5f97-85f8-af849dc80fea', NULL, 'Концептуальная точность и позиция', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Constructing Plausible Scenarios","ru":"Концептуальная точность и позиция"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0581c91a-771d-5383-a71d-a7bab884b431', 'c3928968-dc83-5f97-85f8-af849dc80fea', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L1_D01","left":"scenario planning","right":"сценарное планирование"},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L1_D02","left":"systemic consequence","right":"системное последствие"},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L1_D03","left":"path dependency","right":"зависимость от траектории"},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L1_D04","left":"second-order effect","right":"эффект второго порядка"},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L1_D05","left":"intergenerational trade-off","right":"межпоколенческий компромисс"},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L1_D06","left":"robust strategy","right":"устойчивая стратегия"},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L1_D07","left":"contingent forecast","right":"условный прогноз"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71df218a-0196-524e-8401-ee8ec99861b6', 'c3928968-dc83-5f97-85f8-af849dc80fea', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L1_D08","is_correct":true,"text":"Scenario planning is valuable precisely because a contingent forecast can fail when its hidden assumptions no longer hold."},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L1_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L1_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bbafe05d-a5d5-53a9-b612-5e927990ea8f', 'c3928968-dc83-5f97-85f8-af849dc80fea', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Scenario planning is valuable precisely because a contingent forecast can fail when its hidden assumptions no longer hold.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Сценарное планирование ценно именно потому, что условный прогноз может не сбыться, когда его скрытые предположения перестают действовать.","target_language":"en","word_bank":["Scenario","planning","is","valuable","precisely","because","a","contingent","forecast","can","fail","when","its","hidden","assumptions","no","longer","hold","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c253ee57-f14e-54ba-831c-e9c45d84cd7b', 'c3928968-dc83-5f97-85f8-af849dc80fea', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"scenario planning","instruction":"Выберите подходящее слово.","options":["scenario planning","second-order effect","robust strategy"],"sentence_template":"___ is valuable precisely because a contingent forecast can fail when its hidden assumptions no longer hold."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('edf6e0b7-bf1b-59bd-b808-8b597b63699a', 'c3928968-dc83-5f97-85f8-af849dc80fea', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Scenario","planning","is","valuable","precisely","because","a","contingent","forecast","can","fail","when","its","hidden","assumptions","no","longer","hold","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","hold","longer","no","assumptions","hidden","its","when","fail","can","forecast","contingent","a","because","precisely","valuable","is","planning","Scenario"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9afe05df-b72e-5057-bdf7-641ba46a39e3', 'c3928968-dc83-5f97-85f8-af849dc80fea', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Scenario planning is valuable precisely because a contingent forecast can fail when its hidden assumptions no longer hold. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c520dc79-d23e-51f1-b4bb-1c77cc465350', 'c3928968-dc83-5f97-85f8-af849dc80fea', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Scenario planning is valuable precisely because a contingent forecast can fail when its hidden assumptions no longer hold. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Сценарное планирование ценно именно потому, что условный прогноз может не сбыться, когда его скрытые предположения перестают действовать. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd564eea-82dd-53ca-8ca7-1d516132a8ab', 'c3928968-dc83-5f97-85f8-af849dc80fea', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Scenario planning is valuable precisely because a contingent forecast can fail when its hidden assumptions no longer hold.","translation":"Сценарное планирование ценно именно потому, что условный прогноз может не сбыться, когда его скрытые предположения перестают действовать.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Constructing Plausible Scenarios"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e62bed0-4540-526e-84e8-5828f6e24787', 'c3928968-dc83-5f97-85f8-af849dc80fea', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“scenario planning” means exploration of several plausible futures.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L1_D11","is_correct":true,"text":"exploration of several plausible futures"},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L1_D12","is_correct":false,"text":"an effect spreading through an interconnected system"},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L1_D13","is_correct":false,"text":"the way earlier choices constrain later options"}],"word":"scenario planning"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('973d15fa-b783-590f-8d5b-f3d7da30113c', 'c3928968-dc83-5f97-85f8-af849dc80fea', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Scenario planning is valuable precisely because a contingent forecast can fail when its hidden assumptions no longer hold.","explanation":"The missing C1 expression is “scenario planning”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"scenario planning","id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L1_D14","is_correct":true},{"audio_text":"path dependency","id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L1_D15","is_correct":false},{"audio_text":"intergenerational trade-off","id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L1_D16","is_correct":false}],"sentence_template":"___ is valuable precisely because a contingent forecast can fail when its hidden assumptions no longer hold."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('50082b79-1f37-5c01-856a-21f955ec7b7a', 'c3928968-dc83-5f97-85f8-af849dc80fea', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"scenario planning","explanation":"The complete argument uses “scenario planning” with conceptual precision.","hint_prefix":"scen","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ is valuable precisely because a contingent forecast can fail when its hidden assumptions no longer hold."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('df490722-1ea4-5eb7-bb21-a0eaeb1ff15e', 'c3928968-dc83-5f97-85f8-af849dc80fea', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"scenario planning","id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L1_D17","text":"scenario planning"},{"audio_text":"systemic consequence","id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L1_D18","text":"systemic consequence"},{"audio_text":"path dependency","id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L1_D19","text":"path dependency"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c450e8ad-dd5d-57af-a483-5cc3eae29a88', 'c3928968-dc83-5f97-85f8-af849dc80fea', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Constructing Plausible Scenarios”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L1_D20","is_correct":true,"text":"Scenario planning is valuable precisely because a contingent forecast can fail when its hidden assumptions no longer hold."},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L1_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L1_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f0184994-f56f-5199-92ab-407550a8f668', 'c3928968-dc83-5f97-85f8-af849dc80fea', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('78218c43-27a8-5296-9eef-15cb857e83e8', NULL, 'Критический анализ и взаимодействие', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Examining Systemic Trade-Offs","ru":"Критический анализ и взаимодействие"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('54d8d57c-55f2-51b3-ba3e-84c7d2c3bd7c', '78218c43-27a8-5296-9eef-15cb857e83e8', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L2_D01","left":"scenario planning","right":"сценарное планирование"},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L2_D02","left":"systemic consequence","right":"системное последствие"},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L2_D03","left":"path dependency","right":"зависимость от траектории"},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L2_D04","left":"second-order effect","right":"эффект второго порядка"},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L2_D05","left":"intergenerational trade-off","right":"межпоколенческий компромисс"},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L2_D06","left":"robust strategy","right":"устойчивая стратегия"},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L2_D07","left":"contingent forecast","right":"условный прогноз"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65b28762-839c-55e8-9401-9d9983fb3a82', '78218c43-27a8-5296-9eef-15cb857e83e8', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L2_D08","is_correct":true,"text":"A policy’s second-order effects may create path dependency, narrowing future options even if the immediate outcome appears beneficial."},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L2_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L2_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a2f33fa-4c90-5c4b-be4e-92b29e5c6377', '78218c43-27a8-5296-9eef-15cb857e83e8', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A policy’s second-order effects may create path dependency, narrowing future options even if the immediate outcome appears beneficial.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Эффекты второго порядка могут создать зависимость от траектории, сужая будущие возможности, даже если непосредственный результат кажется полезным.","target_language":"en","word_bank":["A","policy’s","second-order","effects","may","create","path","dependency",",","narrowing","future","options","even","if","the","immediate","outcome","appears","beneficial","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('686fc736-adf7-5896-a104-d0971f636338', '78218c43-27a8-5296-9eef-15cb857e83e8', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"systemic consequence","instruction":"Выберите подходящее слово.","options":["systemic consequence","intergenerational trade-off","contingent forecast"],"sentence_template":"A policy’s second-order effects may create path dependency, narrowing future options even if the immediate outcome appears beneficial."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c1f4fb1b-b4d3-52f3-9ffa-80abf1ebf8e3', '78218c43-27a8-5296-9eef-15cb857e83e8', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","policy’s","second-order","effects","may","create","path","dependency",",","narrowing","future","options","even","if","the","immediate","outcome","appears","beneficial","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","beneficial","appears","outcome","immediate","the","if","even","options","future","narrowing",",","dependency","path","create","may","effects","second-order","policy’s","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e4d4957d-6211-545b-9e88-e22032d7f8ff', '78218c43-27a8-5296-9eef-15cb857e83e8', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A policy’s second-order effects may create path dependency, narrowing future options even if the immediate outcome appears beneficial. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('00956ed2-8e80-5075-b345-12c75e99283b', '78218c43-27a8-5296-9eef-15cb857e83e8', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A policy’s second-order effects may create path dependency, narrowing future options even if the immediate outcome appears beneficial. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Эффекты второго порядка могут создать зависимость от траектории, сужая будущие возможности, даже если непосредственный результат кажется полезным. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('19d1ad62-d2e6-5243-a43c-33043b1e32d7', '78218c43-27a8-5296-9eef-15cb857e83e8', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"A policy’s second-order effects may create path dependency, narrowing future options even if the immediate outcome appears beneficial.","translation":"Эффекты второго порядка могут создать зависимость от траектории, сужая будущие возможности, даже если непосредственный результат кажется полезным.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Examining Systemic Trade-Offs"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1092197c-7e6f-5a28-8715-21a9c372cd0b', '78218c43-27a8-5296-9eef-15cb857e83e8', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“systemic consequence” means an effect spreading through an interconnected system.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L2_D11","is_correct":true,"text":"an effect spreading through an interconnected system"},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L2_D12","is_correct":false,"text":"the way earlier choices constrain later options"},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L2_D13","is_correct":false,"text":"an indirect consequence of an initial change"}],"word":"systemic consequence"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b7807052-52b5-5ce9-80f5-9c47001dbcaf', '78218c43-27a8-5296-9eef-15cb857e83e8', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A policy’s second-order effects may create path dependency, narrowing future options even if the immediate outcome appears beneficial.","explanation":"The missing C1 expression is “systemic consequence”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"systemic consequence","id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L2_D14","is_correct":true},{"audio_text":"second-order effect","id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L2_D15","is_correct":false},{"audio_text":"robust strategy","id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L2_D16","is_correct":false}],"sentence_template":"A policy’s second-order effects may create path dependency, narrowing future options even if the immediate outcome appears beneficial."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5ab17b2-9c7f-5d9f-aa03-ae13716bafaa', '78218c43-27a8-5296-9eef-15cb857e83e8', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"systemic consequence","explanation":"The complete argument uses “systemic consequence” with conceptual precision.","hint_prefix":"syst","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A policy’s second-order effects may create path dependency, narrowing future options even if the immediate outcome appears beneficial."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e3757bc7-9581-5c08-bdbf-065fa5e32832', '78218c43-27a8-5296-9eef-15cb857e83e8', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"scenario planning","id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L2_D17","text":"scenario planning"},{"audio_text":"systemic consequence","id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L2_D18","text":"systemic consequence"},{"audio_text":"path dependency","id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L2_D19","text":"path dependency"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3bdd9f8c-6446-5602-9f8f-1a06254db980', '78218c43-27a8-5296-9eef-15cb857e83e8', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Examining Systemic Trade-Offs”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L2_D20","is_correct":true,"text":"A policy’s second-order effects may create path dependency, narrowing future options even if the immediate outcome appears beneficial."},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L2_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L2_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f0184994-f56f-5199-92ab-407550a8f668', '78218c43-27a8-5296-9eef-15cb857e83e8', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('cf3d4e0a-c126-5e19-9977-2a6ec5f2b9ee', NULL, 'Нюансированный вывод и свободная речь', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Formulating a Nuanced Forecast","ru":"Нюансированный вывод и свободная речь"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9942f05b-3b6c-5095-a1b7-ec73adaded50', 'cf3d4e0a-c126-5e19-9977-2a6ec5f2b9ee', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L3_D01","left":"scenario planning","right":"сценарное планирование"},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L3_D02","left":"systemic consequence","right":"системное последствие"},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L3_D03","left":"path dependency","right":"зависимость от траектории"},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L3_D04","left":"second-order effect","right":"эффект второго порядка"},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L3_D05","left":"intergenerational trade-off","right":"межпоколенческий компромисс"},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L3_D06","left":"robust strategy","right":"устойчивая стратегия"},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L3_D07","left":"contingent forecast","right":"условный прогноз"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('62145339-26d6-5116-bdd7-a17746aaec9e', 'cf3d4e0a-c126-5e19-9977-2a6ec5f2b9ee', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L3_D08","is_correct":true,"text":"A robust strategy acknowledges intergenerational trade-offs and performs tolerably across several plausible futures rather than optimally in only one."},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L3_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L3_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('43878b25-cd5a-51f6-bcf6-9b89833672bf', 'cf3d4e0a-c126-5e19-9977-2a6ec5f2b9ee', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A robust strategy acknowledges intergenerational trade-offs and performs tolerably across several plausible futures rather than optimally in only one.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Устойчивая стратегия признаёт межпоколенческие компромиссы и работает приемлемо в нескольких вероятных будущих, а не идеально лишь в одном.","target_language":"en","word_bank":["A","robust","strategy","acknowledges","intergenerational","trade-offs","and","performs","tolerably","across","several","plausible","futures","rather","than","optimally","in","only","one","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('46a35805-262b-5a91-bded-94a45b40f041', 'cf3d4e0a-c126-5e19-9977-2a6ec5f2b9ee', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"path dependency","instruction":"Выберите подходящее слово.","options":["path dependency","robust strategy","scenario planning"],"sentence_template":"A robust strategy acknowledges intergenerational trade-offs and performs tolerably across several plausible futures rather than optimally in only one."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9d4ae113-4896-5711-91ae-ac0b603d4743', 'cf3d4e0a-c126-5e19-9977-2a6ec5f2b9ee', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","robust","strategy","acknowledges","intergenerational","trade-offs","and","performs","tolerably","across","several","plausible","futures","rather","than","optimally","in","only","one","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","one","only","in","optimally","than","rather","futures","plausible","several","across","tolerably","performs","and","trade-offs","intergenerational","acknowledges","strategy","robust","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e7c57e1-043f-5eae-b981-5a2122ed75bd', 'cf3d4e0a-c126-5e19-9977-2a6ec5f2b9ee', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A robust strategy acknowledges intergenerational trade-offs and performs tolerably across several plausible futures rather than optimally in only one. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d740f062-b486-54ce-b271-eef613f3d241', 'cf3d4e0a-c126-5e19-9977-2a6ec5f2b9ee', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A robust strategy acknowledges intergenerational trade-offs and performs tolerably across several plausible futures rather than optimally in only one. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Устойчивая стратегия признаёт межпоколенческие компромиссы и работает приемлемо в нескольких вероятных будущих, а не идеально лишь в одном. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('99dc9ce2-3f09-5410-b64e-3b1949664e6c', 'cf3d4e0a-c126-5e19-9977-2a6ec5f2b9ee', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"A robust strategy acknowledges intergenerational trade-offs and performs tolerably across several plausible futures rather than optimally in only one.","translation":"Устойчивая стратегия признаёт межпоколенческие компромиссы и работает приемлемо в нескольких вероятных будущих, а не идеально лишь в одном.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Formulating a Nuanced Forecast"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e180e63-a5b5-5579-b096-69066dd370a5', 'cf3d4e0a-c126-5e19-9977-2a6ec5f2b9ee', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“path dependency” means the way earlier choices constrain later options.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L3_D11","is_correct":true,"text":"the way earlier choices constrain later options"},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L3_D12","is_correct":false,"text":"an indirect consequence of an initial change"},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L3_D13","is_correct":false,"text":"a balance of costs and benefits across generations"}],"word":"path dependency"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b4c29cc8-5323-5b19-b223-04a2d9e10372', 'cf3d4e0a-c126-5e19-9977-2a6ec5f2b9ee', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A robust strategy acknowledges intergenerational trade-offs and performs tolerably across several plausible futures rather than optimally in only one.","explanation":"The missing C1 expression is “path dependency”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"path dependency","id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L3_D14","is_correct":true},{"audio_text":"intergenerational trade-off","id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L3_D15","is_correct":false},{"audio_text":"contingent forecast","id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L3_D16","is_correct":false}],"sentence_template":"A robust strategy acknowledges intergenerational trade-offs and performs tolerably across several plausible futures rather than optimally in only one."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9de37cc4-1592-5470-9ff9-39cead333f81', 'cf3d4e0a-c126-5e19-9977-2a6ec5f2b9ee', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"path dependency","explanation":"The complete argument uses “path dependency” with conceptual precision.","hint_prefix":"path","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A robust strategy acknowledges intergenerational trade-offs and performs tolerably across several plausible futures rather than optimally in only one."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('869f712a-713a-5b99-b6dd-4211a567477b', 'cf3d4e0a-c126-5e19-9977-2a6ec5f2b9ee', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"scenario planning","id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L3_D17","text":"scenario planning"},{"audio_text":"systemic consequence","id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L3_D18","text":"systemic consequence"},{"audio_text":"path dependency","id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L3_D19","text":"path dependency"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b85a2af-7ee1-5df6-85b1-65ad52efaf73', 'cf3d4e0a-c126-5e19-9977-2a6ec5f2b9ee', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Formulating a Nuanced Forecast”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L3_D20","is_correct":true,"text":"A robust strategy acknowledges intergenerational trade-offs and performs tolerably across several plausible futures rather than optimally in only one."},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L3_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_FUTURE_SOCIETY_SCENARIOS_AND_COMPLEX_TRADE_OFFS_L3_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f0184994-f56f-5199-92ab-407550a8f668', 'cf3d4e0a-c126-5e19-9977-2a6ec5f2b9ee', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5428fdf-30e8-5c32-ab81-cb68592946a7', 'en', 'scenario planning', 'сценарное планирование', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b966ffd7-105f-5599-bb2b-9973338adc4b', 'en', 'systemic consequence', 'системное последствие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e13d12c5-339b-5bf8-944b-9dee6e9f88ff', 'en', 'path dependency', 'зависимость от траектории', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('39094d14-04be-5435-881f-2c816b6bf779', 'en', 'second-order effect', 'эффект второго порядка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c2294e31-cc96-51ea-ad5e-51e9d1f9659d', 'en', 'intergenerational trade-off', 'межпоколенческий компромисс', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ef066057-3a5b-59bc-b877-0bccd6b00cfc', 'en', 'robust strategy', 'устойчивая стратегия', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b8fae9ad-de92-520d-8ad9-c19cea3e9504', 'en', 'contingent forecast', 'условный прогноз', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5428fdf-30e8-5c32-ab81-cb68592946a7', 'en', 'scenario planning', 'сценарное планирование', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b966ffd7-105f-5599-bb2b-9973338adc4b', 'en', 'systemic consequence', 'системное последствие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e13d12c5-339b-5bf8-944b-9dee6e9f88ff', 'en', 'path dependency', 'зависимость от траектории', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('39094d14-04be-5435-881f-2c816b6bf779', 'en', 'second-order effect', 'эффект второго порядка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c2294e31-cc96-51ea-ad5e-51e9d1f9659d', 'en', 'intergenerational trade-off', 'межпоколенческий компромисс', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ef066057-3a5b-59bc-b877-0bccd6b00cfc', 'en', 'robust strategy', 'устойчивая стратегия', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b8fae9ad-de92-520d-8ad9-c19cea3e9504', 'en', 'contingent forecast', 'условный прогноз', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5428fdf-30e8-5c32-ab81-cb68592946a7', 'en', 'scenario planning', 'сценарное планирование', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b966ffd7-105f-5599-bb2b-9973338adc4b', 'en', 'systemic consequence', 'системное последствие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e13d12c5-339b-5bf8-944b-9dee6e9f88ff', 'en', 'path dependency', 'зависимость от траектории', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('39094d14-04be-5435-881f-2c816b6bf779', 'en', 'second-order effect', 'эффект второго порядка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c2294e31-cc96-51ea-ad5e-51e9d1f9659d', 'en', 'intergenerational trade-off', 'межпоколенческий компромисс', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ef066057-3a5b-59bc-b877-0bccd6b00cfc', 'en', 'robust strategy', 'устойчивая стратегия', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b8fae9ad-de92-520d-8ad9-c19cea3e9504', 'en', 'contingent forecast', 'условный прогноз', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0184994-f56f-5199-92ab-407550a8f668', id, 'c3928968-dc83-5f97-85f8-af849dc80fea', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'scenario planning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0184994-f56f-5199-92ab-407550a8f668', id, 'c3928968-dc83-5f97-85f8-af849dc80fea', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'systemic consequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0184994-f56f-5199-92ab-407550a8f668', id, 'c3928968-dc83-5f97-85f8-af849dc80fea', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'path dependency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0184994-f56f-5199-92ab-407550a8f668', id, 'c3928968-dc83-5f97-85f8-af849dc80fea', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'second-order effect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0184994-f56f-5199-92ab-407550a8f668', id, 'c3928968-dc83-5f97-85f8-af849dc80fea', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'intergenerational trade-off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0184994-f56f-5199-92ab-407550a8f668', id, 'c3928968-dc83-5f97-85f8-af849dc80fea', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'robust strategy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0184994-f56f-5199-92ab-407550a8f668', id, 'c3928968-dc83-5f97-85f8-af849dc80fea', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'contingent forecast' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0184994-f56f-5199-92ab-407550a8f668', id, '78218c43-27a8-5296-9eef-15cb857e83e8', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'scenario planning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0184994-f56f-5199-92ab-407550a8f668', id, '78218c43-27a8-5296-9eef-15cb857e83e8', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'systemic consequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0184994-f56f-5199-92ab-407550a8f668', id, '78218c43-27a8-5296-9eef-15cb857e83e8', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'path dependency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0184994-f56f-5199-92ab-407550a8f668', id, '78218c43-27a8-5296-9eef-15cb857e83e8', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'second-order effect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0184994-f56f-5199-92ab-407550a8f668', id, '78218c43-27a8-5296-9eef-15cb857e83e8', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'intergenerational trade-off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0184994-f56f-5199-92ab-407550a8f668', id, '78218c43-27a8-5296-9eef-15cb857e83e8', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'robust strategy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0184994-f56f-5199-92ab-407550a8f668', id, '78218c43-27a8-5296-9eef-15cb857e83e8', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'contingent forecast' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0184994-f56f-5199-92ab-407550a8f668', id, 'cf3d4e0a-c126-5e19-9977-2a6ec5f2b9ee', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'scenario planning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0184994-f56f-5199-92ab-407550a8f668', id, 'cf3d4e0a-c126-5e19-9977-2a6ec5f2b9ee', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'systemic consequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0184994-f56f-5199-92ab-407550a8f668', id, 'cf3d4e0a-c126-5e19-9977-2a6ec5f2b9ee', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'path dependency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0184994-f56f-5199-92ab-407550a8f668', id, 'cf3d4e0a-c126-5e19-9977-2a6ec5f2b9ee', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'second-order effect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0184994-f56f-5199-92ab-407550a8f668', id, 'cf3d4e0a-c126-5e19-9977-2a6ec5f2b9ee', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'intergenerational trade-off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0184994-f56f-5199-92ab-407550a8f668', id, 'cf3d4e0a-c126-5e19-9977-2a6ec5f2b9ee', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'robust strategy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f0184994-f56f-5199-92ab-407550a8f668', id, 'cf3d4e0a-c126-5e19-9977-2a6ec5f2b9ee', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'contingent forecast' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
