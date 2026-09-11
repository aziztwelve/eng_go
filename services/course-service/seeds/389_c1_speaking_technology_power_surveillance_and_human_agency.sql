-- Track: C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('1b3fb36a-5736-5083-87a3-2b7835c4b855', 'C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY', 'Технологии, власть, наблюдение и свобода выбора', 'Развивайте свободную и нюансированную устную речь уровня C1 по теме «Технологии, власть, наблюдение и свобода выбора», управляя абстрактными аргументами, импликациями и регистром.', '{"en":"Technology, Power, Surveillance and Human Agency","ru":"Технологии, власть, наблюдение и свобода выбора"}'::jsonb, '{"en":"Develop fluent, nuanced C1 spoken English for technology, power, surveillance and human agency by controlling abstract argument, implication, and register.","ru":"Развивайте свободную и нюансированную устную речь уровня C1 по теме «Технологии, власть, наблюдение и свобода выбора», управляя абстрактными аргументами, импликациями и регистром."}'::jsonb, 'en', 'C1', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9fb37250-0b47-5a46-9743-cd055424e70b', NULL, 'Концептуальная точность и позиция', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Technology and Institutional Power","ru":"Концептуальная точность и позиция"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9a02097-5f66-52e0-ab78-21a7d4297d76', '9fb37250-0b47-5a46-9743-cd055424e70b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L1_D01","left":"algorithmic governance","right":"алгоритмическое управление"},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L1_D02","left":"surveillance infrastructure","right":"инфраструктура наблюдения"},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L1_D03","left":"meaningful consent","right":"осознанное согласие"},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L1_D04","left":"power asymmetry","right":"асимметрия власти"},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L1_D05","left":"human agency","right":"человеческая свобода действия"},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L1_D06","left":"function creep","right":"расширение функции"},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L1_D07","left":"democratic oversight","right":"демократический контроль"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('416a8592-679b-513f-9201-f58356c48efc', '9fb37250-0b47-5a46-9743-cd055424e70b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L1_D08","is_correct":true,"text":"Algorithmic governance may appear neutral while embedding a power asymmetry between those who design systems and those classified by them."},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L1_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L1_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bcf0303a-f546-50ad-aff4-cbb42e05a445', '9fb37250-0b47-5a46-9743-cd055424e70b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Algorithmic governance may appear neutral while embedding a power asymmetry between those who design systems and those classified by them.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Алгоритмическое управление может казаться нейтральным, одновременно закрепляя асимметрию власти между создателями систем и теми, кого они классифицируют.","target_language":"en","word_bank":["Algorithmic","governance","may","appear","neutral","while","embedding","a","power","asymmetry","between","those","who","design","systems","and","those","classified","by","them","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b35eec73-bc99-5358-83a6-549570544ede', '9fb37250-0b47-5a46-9743-cd055424e70b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"algorithmic governance","instruction":"Выберите подходящее слово.","options":["algorithmic governance","power asymmetry","function creep"],"sentence_template":"___ may appear neutral while embedding a power asymmetry between those who design systems and those classified by them."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('95782da4-a9c4-54c2-ba7d-ad1af8769931', '9fb37250-0b47-5a46-9743-cd055424e70b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Algorithmic","governance","may","appear","neutral","while","embedding","a","power","asymmetry","between","those","who","design","systems","and","those","classified","by","them","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","them","by","classified","those","and","systems","design","who","those","between","asymmetry","power","a","embedding","while","neutral","appear","may","governance","Algorithmic"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('85498ba0-a489-5968-9a66-b7bf08edacde', '9fb37250-0b47-5a46-9743-cd055424e70b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Algorithmic governance may appear neutral while embedding a power asymmetry between those who design systems and those classified by them. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a45d3db-15da-52f1-8295-e0c167132d8f', '9fb37250-0b47-5a46-9743-cd055424e70b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Algorithmic governance may appear neutral while embedding a power asymmetry between those who design systems and those classified by them. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Алгоритмическое управление может казаться нейтральным, одновременно закрепляя асимметрию власти между создателями систем и теми, кого они классифицируют. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1dbfea4c-0d41-5083-bde7-056d7a5c90c4', '9fb37250-0b47-5a46-9743-cd055424e70b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Algorithmic governance may appear neutral while embedding a power asymmetry between those who design systems and those classified by them.","translation":"Алгоритмическое управление может казаться нейтральным, одновременно закрепляя асимметрию власти между создателями систем и теми, кого они классифицируют.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Technology and Institutional Power"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8780ba72-55b0-5d1c-96ed-8c94878661c5', '9fb37250-0b47-5a46-9743-cd055424e70b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“algorithmic governance” means the use of automated systems to shape decisions and behaviour.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L1_D11","is_correct":true,"text":"the use of automated systems to shape decisions and behaviour"},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L1_D12","is_correct":false,"text":"technical systems enabling systematic monitoring"},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L1_D13","is_correct":false,"text":"freely given agreement based on genuine understanding"}],"word":"algorithmic governance"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78c34160-785a-59ea-bcc9-da8d9ef49e35', '9fb37250-0b47-5a46-9743-cd055424e70b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Algorithmic governance may appear neutral while embedding a power asymmetry between those who design systems and those classified by them.","explanation":"The missing C1 expression is “algorithmic governance”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"algorithmic governance","id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L1_D14","is_correct":true},{"audio_text":"meaningful consent","id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L1_D15","is_correct":false},{"audio_text":"human agency","id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L1_D16","is_correct":false}],"sentence_template":"___ may appear neutral while embedding a power asymmetry between those who design systems and those classified by them."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cf694be3-30b7-5343-8bfc-d233b9938280', '9fb37250-0b47-5a46-9743-cd055424e70b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"algorithmic governance","explanation":"The complete argument uses “algorithmic governance” with conceptual precision.","hint_prefix":"algo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ may appear neutral while embedding a power asymmetry between those who design systems and those classified by them."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('559dfb9d-5eb9-5ddd-bc2b-cffa0289aaef', '9fb37250-0b47-5a46-9743-cd055424e70b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"algorithmic governance","id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L1_D17","text":"algorithmic governance"},{"audio_text":"surveillance infrastructure","id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L1_D18","text":"surveillance infrastructure"},{"audio_text":"meaningful consent","id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L1_D19","text":"meaningful consent"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('91aa9178-8f28-59da-a7d6-d48a24679143', '9fb37250-0b47-5a46-9743-cd055424e70b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Technology and Institutional Power”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L1_D20","is_correct":true,"text":"Algorithmic governance may appear neutral while embedding a power asymmetry between those who design systems and those classified by them."},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L1_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L1_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1b3fb36a-5736-5083-87a3-2b7835c4b855', '9fb37250-0b47-5a46-9743-cd055424e70b', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('13ee3cdf-5250-500b-a168-0c733fd57b42', NULL, 'Критический анализ и взаимодействие', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Convenience Versus Surveillance","ru":"Критический анализ и взаимодействие"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4600f3d6-d803-55c8-b2f3-2bde0a6a0f4e', '13ee3cdf-5250-500b-a168-0c733fd57b42', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L2_D01","left":"algorithmic governance","right":"алгоритмическое управление"},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L2_D02","left":"surveillance infrastructure","right":"инфраструктура наблюдения"},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L2_D03","left":"meaningful consent","right":"осознанное согласие"},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L2_D04","left":"power asymmetry","right":"асимметрия власти"},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L2_D05","left":"human agency","right":"человеческая свобода действия"},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L2_D06","left":"function creep","right":"расширение функции"},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L2_D07","left":"democratic oversight","right":"демократический контроль"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9de690d4-c157-5291-9954-949f25780c10', '13ee3cdf-5250-500b-a168-0c733fd57b42', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L2_D08","is_correct":true,"text":"Meaningful consent is difficult when participation is effectively compulsory and surveillance infrastructure remains largely invisible."},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L2_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L2_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0cee547c-652a-5c6b-9e6d-f26779fbb296', '13ee3cdf-5250-500b-a168-0c733fd57b42', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Meaningful consent is difficult when participation is effectively compulsory and surveillance infrastructure remains largely invisible.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Осознанное согласие затруднено, когда участие фактически обязательно, а инфраструктура наблюдения остаётся в основном невидимой.","target_language":"en","word_bank":["Meaningful","consent","is","difficult","when","participation","is","effectively","compulsory","and","surveillance","infrastructure","remains","largely","invisible","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d3bc2c9-26d8-5d56-ad10-c1c4108a7733', '13ee3cdf-5250-500b-a168-0c733fd57b42', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"surveillance infrastructure","instruction":"Выберите подходящее слово.","options":["surveillance infrastructure","human agency","democratic oversight"],"sentence_template":"Meaningful consent is difficult when participation is effectively compulsory and ___ remains largely invisible."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b150b29-91ef-5b23-954f-a7c5f92f6c7a', '13ee3cdf-5250-500b-a168-0c733fd57b42', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Meaningful","consent","is","difficult","when","participation","is","effectively","compulsory","and","surveillance","infrastructure","remains","largely","invisible","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","invisible","largely","remains","infrastructure","surveillance","and","compulsory","effectively","is","participation","when","difficult","is","consent","Meaningful"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('abca6ba0-eb0b-59b3-9905-30de80d7a5ce', '13ee3cdf-5250-500b-a168-0c733fd57b42', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Meaningful consent is difficult when participation is effectively compulsory and surveillance infrastructure remains largely invisible. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('775a7602-81c5-561b-bd05-d1e6f4cbf080', '13ee3cdf-5250-500b-a168-0c733fd57b42', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Meaningful consent is difficult when participation is effectively compulsory and surveillance infrastructure remains largely invisible. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Осознанное согласие затруднено, когда участие фактически обязательно, а инфраструктура наблюдения остаётся в основном невидимой. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7c3d7ce-4b2a-5d7b-b362-8615e821f7b3', '13ee3cdf-5250-500b-a168-0c733fd57b42', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Meaningful consent is difficult when participation is effectively compulsory and surveillance infrastructure remains largely invisible.","translation":"Осознанное согласие затруднено, когда участие фактически обязательно, а инфраструктура наблюдения остаётся в основном невидимой.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Convenience Versus Surveillance"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('995af3de-44d1-5ea5-963c-46f17de09b04', '13ee3cdf-5250-500b-a168-0c733fd57b42', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“surveillance infrastructure” means technical systems enabling systematic monitoring.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L2_D11","is_correct":true,"text":"technical systems enabling systematic monitoring"},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L2_D12","is_correct":false,"text":"freely given agreement based on genuine understanding"},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L2_D13","is_correct":false,"text":"an unequal capacity to influence decisions"}],"word":"surveillance infrastructure"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('47d4cf6a-4c64-546e-8738-7c16de3c9563', '13ee3cdf-5250-500b-a168-0c733fd57b42', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Meaningful consent is difficult when participation is effectively compulsory and surveillance infrastructure remains largely invisible.","explanation":"The missing C1 expression is “surveillance infrastructure”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"surveillance infrastructure","id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L2_D14","is_correct":true},{"audio_text":"power asymmetry","id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L2_D15","is_correct":false},{"audio_text":"function creep","id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L2_D16","is_correct":false}],"sentence_template":"Meaningful consent is difficult when participation is effectively compulsory and ___ remains largely invisible."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5314d211-98d9-5dc5-8ec8-e51bbeaad696', '13ee3cdf-5250-500b-a168-0c733fd57b42', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"surveillance infrastructure","explanation":"The complete argument uses “surveillance infrastructure” with conceptual precision.","hint_prefix":"surv","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Meaningful consent is difficult when participation is effectively compulsory and ___ remains largely invisible."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('53a7f9ae-2c3d-52a5-b3e0-1aaa0d30839c', '13ee3cdf-5250-500b-a168-0c733fd57b42', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"algorithmic governance","id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L2_D17","text":"algorithmic governance"},{"audio_text":"surveillance infrastructure","id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L2_D18","text":"surveillance infrastructure"},{"audio_text":"meaningful consent","id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L2_D19","text":"meaningful consent"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f040185e-1c74-5825-a6e9-a86da37b2a67', '13ee3cdf-5250-500b-a168-0c733fd57b42', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Convenience Versus Surveillance”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L2_D20","is_correct":true,"text":"Meaningful consent is difficult when participation is effectively compulsory and surveillance infrastructure remains largely invisible."},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L2_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L2_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1b3fb36a-5736-5083-87a3-2b7835c4b855', '13ee3cdf-5250-500b-a168-0c733fd57b42', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f6037bb8-2f83-541e-bcaf-a3092ecc59b8', NULL, 'Нюансированный вывод и свободная речь', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Protecting Human Agency","ru":"Нюансированный вывод и свободная речь"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f7d4b31e-7f6d-5c2b-ba6d-bbb4c5367ef8', 'f6037bb8-2f83-541e-bcaf-a3092ecc59b8', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L3_D01","left":"algorithmic governance","right":"алгоритмическое управление"},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L3_D02","left":"surveillance infrastructure","right":"инфраструктура наблюдения"},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L3_D03","left":"meaningful consent","right":"осознанное согласие"},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L3_D04","left":"power asymmetry","right":"асимметрия власти"},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L3_D05","left":"human agency","right":"человеческая свобода действия"},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L3_D06","left":"function creep","right":"расширение функции"},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L3_D07","left":"democratic oversight","right":"демократический контроль"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5b310c03-f293-5bac-8c41-c7bc5b324e5a', 'f6037bb8-2f83-541e-bcaf-a3092ecc59b8', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L3_D08","is_correct":true,"text":"Protecting human agency requires democratic oversight capable of preventing function creep and challenging automated decisions."},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L3_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L3_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90f1c6da-7721-5ea6-b134-d5d3c510888a', 'f6037bb8-2f83-541e-bcaf-a3092ecc59b8', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Protecting human agency requires democratic oversight capable of preventing function creep and challenging automated decisions.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Защита человеческой свободы действия требует демократического контроля, способного предотвращать расширение функций и оспаривать автоматизированные решения.","target_language":"en","word_bank":["Protecting","human","agency","requires","democratic","oversight","capable","of","preventing","function","creep","and","challenging","automated","decisions","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76703b79-d0ba-5c40-9838-8ac204ebf191', 'f6037bb8-2f83-541e-bcaf-a3092ecc59b8', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"meaningful consent","instruction":"Выберите подходящее слово.","options":["meaningful consent","function creep","algorithmic governance"],"sentence_template":"Protecting human agency requires democratic oversight capable of preventing function creep and challenging automated decisions."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('50a365e3-6674-5215-8c76-90b47bca81da', 'f6037bb8-2f83-541e-bcaf-a3092ecc59b8', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Protecting","human","agency","requires","democratic","oversight","capable","of","preventing","function","creep","and","challenging","automated","decisions","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","decisions","automated","challenging","and","creep","function","preventing","of","capable","oversight","democratic","requires","agency","human","Protecting"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('51a48371-f56c-5dfb-89a4-c99720064a78', 'f6037bb8-2f83-541e-bcaf-a3092ecc59b8', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Protecting human agency requires democratic oversight capable of preventing function creep and challenging automated decisions. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d6af6460-c3b8-5229-9391-ee58159a3f53', 'f6037bb8-2f83-541e-bcaf-a3092ecc59b8', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Protecting human agency requires democratic oversight capable of preventing function creep and challenging automated decisions. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Защита человеческой свободы действия требует демократического контроля, способного предотвращать расширение функций и оспаривать автоматизированные решения. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ec8324b0-87f2-59ee-af83-0e9c6c46719e', 'f6037bb8-2f83-541e-bcaf-a3092ecc59b8', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Protecting human agency requires democratic oversight capable of preventing function creep and challenging automated decisions.","translation":"Защита человеческой свободы действия требует демократического контроля, способного предотвращать расширение функций и оспаривать автоматизированные решения.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Protecting Human Agency"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1f8ad7b4-e7ea-5c1d-b529-1e158a4af763', 'f6037bb8-2f83-541e-bcaf-a3092ecc59b8', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“meaningful consent” means freely given agreement based on genuine understanding.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L3_D11","is_correct":true,"text":"freely given agreement based on genuine understanding"},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L3_D12","is_correct":false,"text":"an unequal capacity to influence decisions"},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L3_D13","is_correct":false,"text":"the capacity to make and act on choices"}],"word":"meaningful consent"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('828de3a2-58be-5dd8-997d-9985c0615144', 'f6037bb8-2f83-541e-bcaf-a3092ecc59b8', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Protecting human agency requires democratic oversight capable of preventing function creep and challenging automated decisions.","explanation":"The missing C1 expression is “meaningful consent”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"meaningful consent","id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L3_D14","is_correct":true},{"audio_text":"human agency","id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L3_D15","is_correct":false},{"audio_text":"democratic oversight","id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L3_D16","is_correct":false}],"sentence_template":"Protecting human agency requires democratic oversight capable of preventing function creep and challenging automated decisions."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fada9ea5-4348-5092-ab85-fd0f27b04071', 'f6037bb8-2f83-541e-bcaf-a3092ecc59b8', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"meaningful consent","explanation":"The complete argument uses “meaningful consent” with conceptual precision.","hint_prefix":"mean","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Protecting human agency requires democratic oversight capable of preventing function creep and challenging automated decisions."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a3386e7b-5155-5089-814e-a00b6abb389a', 'f6037bb8-2f83-541e-bcaf-a3092ecc59b8', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"algorithmic governance","id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L3_D17","text":"algorithmic governance"},{"audio_text":"surveillance infrastructure","id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L3_D18","text":"surveillance infrastructure"},{"audio_text":"meaningful consent","id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L3_D19","text":"meaningful consent"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('808cd6fc-a7f7-5354-a958-4cfe7194e639', 'f6037bb8-2f83-541e-bcaf-a3092ecc59b8', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Protecting Human Agency”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L3_D20","is_correct":true,"text":"Protecting human agency requires democratic oversight capable of preventing function creep and challenging automated decisions."},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L3_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_TECHNOLOGY_POWER_SURVEILLANCE_AND_HUMAN_AGENCY_L3_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1b3fb36a-5736-5083-87a3-2b7835c4b855', 'f6037bb8-2f83-541e-bcaf-a3092ecc59b8', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('594ff984-803c-5fef-8c1d-579f2926e82e', 'en', 'algorithmic governance', 'алгоритмическое управление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e048fc26-d01f-515e-bafb-1dc472e49d38', 'en', 'surveillance infrastructure', 'инфраструктура наблюдения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c65de8c7-916e-563e-adfe-02494e00418a', 'en', 'meaningful consent', 'осознанное согласие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9476e05d-eb82-5771-864e-f618cbd56b9c', 'en', 'power asymmetry', 'асимметрия власти', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('32c4f621-1002-5bb0-87ed-6be275343c3c', 'en', 'human agency', 'человеческая свобода действия', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7771ec36-67aa-548b-bd56-ef16593d0808', 'en', 'function creep', 'расширение функции', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('40baa21c-29a7-59ca-ba37-6498247082ff', 'en', 'democratic oversight', 'демократический контроль', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('594ff984-803c-5fef-8c1d-579f2926e82e', 'en', 'algorithmic governance', 'алгоритмическое управление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e048fc26-d01f-515e-bafb-1dc472e49d38', 'en', 'surveillance infrastructure', 'инфраструктура наблюдения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c65de8c7-916e-563e-adfe-02494e00418a', 'en', 'meaningful consent', 'осознанное согласие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9476e05d-eb82-5771-864e-f618cbd56b9c', 'en', 'power asymmetry', 'асимметрия власти', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('32c4f621-1002-5bb0-87ed-6be275343c3c', 'en', 'human agency', 'человеческая свобода действия', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7771ec36-67aa-548b-bd56-ef16593d0808', 'en', 'function creep', 'расширение функции', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('40baa21c-29a7-59ca-ba37-6498247082ff', 'en', 'democratic oversight', 'демократический контроль', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('594ff984-803c-5fef-8c1d-579f2926e82e', 'en', 'algorithmic governance', 'алгоритмическое управление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e048fc26-d01f-515e-bafb-1dc472e49d38', 'en', 'surveillance infrastructure', 'инфраструктура наблюдения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c65de8c7-916e-563e-adfe-02494e00418a', 'en', 'meaningful consent', 'осознанное согласие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9476e05d-eb82-5771-864e-f618cbd56b9c', 'en', 'power asymmetry', 'асимметрия власти', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('32c4f621-1002-5bb0-87ed-6be275343c3c', 'en', 'human agency', 'человеческая свобода действия', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7771ec36-67aa-548b-bd56-ef16593d0808', 'en', 'function creep', 'расширение функции', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('40baa21c-29a7-59ca-ba37-6498247082ff', 'en', 'democratic oversight', 'демократический контроль', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b3fb36a-5736-5083-87a3-2b7835c4b855', id, '9fb37250-0b47-5a46-9743-cd055424e70b', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'algorithmic governance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b3fb36a-5736-5083-87a3-2b7835c4b855', id, '9fb37250-0b47-5a46-9743-cd055424e70b', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'surveillance infrastructure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b3fb36a-5736-5083-87a3-2b7835c4b855', id, '9fb37250-0b47-5a46-9743-cd055424e70b', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'meaningful consent' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b3fb36a-5736-5083-87a3-2b7835c4b855', id, '9fb37250-0b47-5a46-9743-cd055424e70b', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'power asymmetry' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b3fb36a-5736-5083-87a3-2b7835c4b855', id, '9fb37250-0b47-5a46-9743-cd055424e70b', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'human agency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b3fb36a-5736-5083-87a3-2b7835c4b855', id, '9fb37250-0b47-5a46-9743-cd055424e70b', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'function creep' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b3fb36a-5736-5083-87a3-2b7835c4b855', id, '9fb37250-0b47-5a46-9743-cd055424e70b', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'democratic oversight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b3fb36a-5736-5083-87a3-2b7835c4b855', id, '13ee3cdf-5250-500b-a168-0c733fd57b42', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'algorithmic governance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b3fb36a-5736-5083-87a3-2b7835c4b855', id, '13ee3cdf-5250-500b-a168-0c733fd57b42', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'surveillance infrastructure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b3fb36a-5736-5083-87a3-2b7835c4b855', id, '13ee3cdf-5250-500b-a168-0c733fd57b42', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'meaningful consent' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b3fb36a-5736-5083-87a3-2b7835c4b855', id, '13ee3cdf-5250-500b-a168-0c733fd57b42', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'power asymmetry' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b3fb36a-5736-5083-87a3-2b7835c4b855', id, '13ee3cdf-5250-500b-a168-0c733fd57b42', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'human agency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b3fb36a-5736-5083-87a3-2b7835c4b855', id, '13ee3cdf-5250-500b-a168-0c733fd57b42', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'function creep' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b3fb36a-5736-5083-87a3-2b7835c4b855', id, '13ee3cdf-5250-500b-a168-0c733fd57b42', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'democratic oversight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b3fb36a-5736-5083-87a3-2b7835c4b855', id, 'f6037bb8-2f83-541e-bcaf-a3092ecc59b8', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'algorithmic governance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b3fb36a-5736-5083-87a3-2b7835c4b855', id, 'f6037bb8-2f83-541e-bcaf-a3092ecc59b8', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'surveillance infrastructure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b3fb36a-5736-5083-87a3-2b7835c4b855', id, 'f6037bb8-2f83-541e-bcaf-a3092ecc59b8', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'meaningful consent' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b3fb36a-5736-5083-87a3-2b7835c4b855', id, 'f6037bb8-2f83-541e-bcaf-a3092ecc59b8', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'power asymmetry' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b3fb36a-5736-5083-87a3-2b7835c4b855', id, 'f6037bb8-2f83-541e-bcaf-a3092ecc59b8', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'human agency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b3fb36a-5736-5083-87a3-2b7835c4b855', id, 'f6037bb8-2f83-541e-bcaf-a3092ecc59b8', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'function creep' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b3fb36a-5736-5083-87a3-2b7835c4b855', id, 'f6037bb8-2f83-541e-bcaf-a3092ecc59b8', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'democratic oversight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
