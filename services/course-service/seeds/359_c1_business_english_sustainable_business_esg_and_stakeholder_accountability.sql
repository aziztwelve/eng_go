-- Track: C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('81f92e67-a816-5701-884e-683c7e7601b8', 'C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY', 'Устойчивый бизнес, ESG и ответственность перед заинтересованными сторонами', 'Освойте продвинутый деловой английский уровня C1 по теме «Устойчивый бизнес, ESG и ответственность перед заинтересованными сторонами» через реалистичные рабочие ситуации, требующие точного анализа, дипломатичной аргументации и ответственных решений.', '{"en":"Sustainable Business, ESG and Stakeholder Accountability","ru":"Устойчивый бизнес, ESG и ответственность перед заинтересованными сторонами"}'::jsonb, '{"en":"Master advanced C1 business English for sustainable business, esg and stakeholder accountability through realistic workplace situations requiring precise analysis, diplomatic argument, and accountable decisions.","ru":"Освойте продвинутый деловой английский уровня C1 по теме «Устойчивый бизнес, ESG и ответственность перед заинтересованными сторонами» через реалистичные рабочие ситуации, требующие точного анализа, дипломатичной аргументации и ответственных решений."}'::jsonb, 'en', 'C1', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('485261e2-7dea-5e9a-9509-ceb550792445', NULL, 'Реальная деловая ситуация и ключевые понятия', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Setting Credible Sustainability Priorities","ru":"Реальная деловая ситуация и ключевые понятия"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8bd053a-e6ae-50c2-939e-fb2dd7adff5c', '485261e2-7dea-5e9a-9509-ceb550792445', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L1_D01","left":"materiality assessment","right":"оценка существенности"},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L1_D02","left":"scope-three emissions","right":"косвенные выбросы категории три"},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L1_D03","left":"transition plan","right":"план перехода"},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L1_D04","left":"greenwashing","right":"гринвошинг"},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L1_D05","left":"stakeholder accountability","right":"подотчётность заинтересованным сторонам"},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L1_D06","left":"assurance standard","right":"стандарт подтверждения достоверности"},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L1_D07","left":"just transition","right":"справедливый переход"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('55e2bb6e-3199-5451-9a44-92e40a199013', '485261e2-7dea-5e9a-9509-ceb550792445', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L1_D08","is_correct":true,"text":"The materiality assessment should connect environmental and social impacts to enterprise risk rather than treating sustainability as a separate reporting exercise."},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L1_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L1_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f17d12cf-d349-51b5-98d0-7e6f69033f9e', '485261e2-7dea-5e9a-9509-ceb550792445', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The materiality assessment should connect environmental and social impacts to enterprise risk rather than treating sustainability as a separate reporting exercise.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Оценка существенности должна связывать экологические и социальные последствия с рисками предприятия, а не рассматривать устойчивость как отдельную отчётную процедуру.","target_language":"en","word_bank":["The","materiality","assessment","should","connect","environmental","and","social","impacts","to","enterprise","risk","rather","than","treating","sustainability","as","a","separate","reporting","exercise","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('57b0cc1c-79e4-5b1f-967c-12fc73e8bc31', '485261e2-7dea-5e9a-9509-ceb550792445', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"materiality assessment","instruction":"Выберите подходящее слово.","options":["materiality assessment","greenwashing","assurance standard"],"sentence_template":"The ___ should connect environmental and social impacts to enterprise risk rather than treating sustainability as a separate reporting exercise."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12df5199-ecd4-5c82-ae94-d9f7fb049c24', '485261e2-7dea-5e9a-9509-ceb550792445', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","materiality","assessment","should","connect","environmental","and","social","impacts","to","enterprise","risk","rather","than","treating","sustainability","as","a","separate","reporting","exercise","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","exercise","reporting","separate","a","as","sustainability","treating","than","rather","risk","enterprise","to","impacts","social","and","environmental","connect","should","assessment","materiality","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ba85c851-9551-567d-b13a-d0b6ebcd522d', '485261e2-7dea-5e9a-9509-ceb550792445', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The materiality assessment should connect environmental and social impacts to enterprise risk rather than treating sustainability as a separate reporting exercise. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('75ae50f9-d3cd-528b-826e-d64a2d78f138', '485261e2-7dea-5e9a-9509-ceb550792445', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The materiality assessment should connect environmental and social impacts to enterprise risk rather than treating sustainability as a separate reporting exercise. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Оценка существенности должна связывать экологические и социальные последствия с рисками предприятия, а не рассматривать устойчивость как отдельную отчётную процедуру. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('74c34a8d-6e73-551e-9ca0-559448339749', '485261e2-7dea-5e9a-9509-ceb550792445', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"The materiality assessment should connect environmental and social impacts to enterprise risk rather than treating sustainability as a separate reporting exercise.","translation":"Оценка существенности должна связывать экологические и социальные последствия с рисками предприятия, а не рассматривать устойчивость как отдельную отчётную процедуру.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Setting Credible Sustainability Priorities"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac46c3fd-54af-5363-9b9d-af131164ac56', '485261e2-7dea-5e9a-9509-ceb550792445', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“materiality assessment” means a process identifying sustainability issues important to decisions.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L1_D11","is_correct":true,"text":"a process identifying sustainability issues important to decisions"},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L1_D12","is_correct":false,"text":"indirect value-chain emissions outside a company’s direct control"},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L1_D13","is_correct":false,"text":"a time-bound strategy for moving to a lower-impact business model"}],"word":"materiality assessment"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f8fc22e9-a39a-5004-9a95-3340adc59a13', '485261e2-7dea-5e9a-9509-ceb550792445', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The materiality assessment should connect environmental and social impacts to enterprise risk rather than treating sustainability as a separate reporting exercise.","explanation":"The missing C1 business expression is “materiality assessment”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"materiality assessment","id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L1_D14","is_correct":true},{"audio_text":"transition plan","id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L1_D15","is_correct":false},{"audio_text":"stakeholder accountability","id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L1_D16","is_correct":false}],"sentence_template":"The ___ should connect environmental and social impacts to enterprise risk rather than treating sustainability as a separate reporting exercise."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('983ad6d1-6adc-5d49-a69f-ba465f15c185', '485261e2-7dea-5e9a-9509-ceb550792445', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"materiality assessment","explanation":"The complete business statement uses “materiality assessment” accurately in context.","hint_prefix":"mate","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ should connect environmental and social impacts to enterprise risk rather than treating sustainability as a separate reporting exercise."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('efbd3217-8329-5166-9520-e8e65c6d9cd0', '485261e2-7dea-5e9a-9509-ceb550792445', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"materiality assessment","id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L1_D17","text":"materiality assessment"},{"audio_text":"scope-three emissions","id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L1_D18","text":"scope-three emissions"},{"audio_text":"transition plan","id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L1_D19","text":"transition plan"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9dcc3987-d7d0-536a-b5c1-acd1cc34b560', '485261e2-7dea-5e9a-9509-ceb550792445', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Setting Credible Sustainability Priorities”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L1_D20","is_correct":true,"text":"The materiality assessment should connect environmental and social impacts to enterprise risk rather than treating sustainability as a separate reporting exercise."},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L1_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L1_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('81f92e67-a816-5701-884e-683c7e7601b8', '485261e2-7dea-5e9a-9509-ceb550792445', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('66ad564b-d466-5783-a5eb-b839a24daf44', NULL, 'Анализ, аргументация и взаимодействие', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Testing Claims and Avoiding Greenwashing","ru":"Анализ, аргументация и взаимодействие"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a14bf250-cf23-5fbf-ae61-86c0008f6878', '66ad564b-d466-5783-a5eb-b839a24daf44', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L2_D01","left":"materiality assessment","right":"оценка существенности"},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L2_D02","left":"scope-three emissions","right":"косвенные выбросы категории три"},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L2_D03","left":"transition plan","right":"план перехода"},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L2_D04","left":"greenwashing","right":"гринвошинг"},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L2_D05","left":"stakeholder accountability","right":"подотчётность заинтересованным сторонам"},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L2_D06","left":"assurance standard","right":"стандарт подтверждения достоверности"},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L2_D07","left":"just transition","right":"справедливый переход"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aad888bb-80a3-5fd7-8636-2bd1cec1d8fd', '66ad564b-d466-5783-a5eb-b839a24daf44', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L2_D08","is_correct":true,"text":"To avoid greenwashing, every public claim should have a defined baseline, measurable boundary, credible methodology, and appropriate assurance."},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L2_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L2_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('60adc378-0864-516e-882a-4502b5ae118e', '66ad564b-d466-5783-a5eb-b839a24daf44', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"To avoid greenwashing, every public claim should have a defined baseline, measurable boundary, credible methodology, and appropriate assurance.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Чтобы избежать гринвошинга, каждое публичное заявление должно иметь определённую базовую линию, измеримые границы, надёжную методологию и соответствующее подтверждение.","target_language":"en","word_bank":["To","avoid","greenwashing",",","every","public","claim","should","have","a","defined","baseline",",","measurable","boundary",",","credible","methodology",",","and","appropriate","assurance","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('09309ce9-4933-5574-9e2a-e4a1ae2f6fca', '66ad564b-d466-5783-a5eb-b839a24daf44', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"scope-three emissions","instruction":"Выберите подходящее слово.","options":["scope-three emissions","stakeholder accountability","just transition"],"sentence_template":"To avoid greenwashing, every public claim should have a defined baseline, measurable boundary, credible methodology, and appropriate assurance."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('28862e23-c7b6-5df1-b7a3-490d78c6126b', '66ad564b-d466-5783-a5eb-b839a24daf44', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["To","avoid","greenwashing",",","every","public","claim","should","have","a","defined","baseline",",","measurable","boundary",",","credible","methodology",",","and","appropriate","assurance","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","assurance","appropriate","and",",","methodology","credible",",","boundary","measurable",",","baseline","defined","a","have","should","claim","public","every",",","greenwashing","avoid","To"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7dc2efb3-59c3-5069-b23e-a213d59215ec', '66ad564b-d466-5783-a5eb-b839a24daf44', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"To avoid greenwashing, every public claim should have a defined baseline, measurable boundary, credible methodology, and appropriate assurance. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b79e1e3-fc1f-5609-9f2c-9a4d69dd2665', '66ad564b-d466-5783-a5eb-b839a24daf44', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"To avoid greenwashing, every public claim should have a defined baseline, measurable boundary, credible methodology, and appropriate assurance. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Чтобы избежать гринвошинга, каждое публичное заявление должно иметь определённую базовую линию, измеримые границы, надёжную методологию и соответствующее подтверждение. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b20ed7db-ffd9-5dbc-812b-56bfc5746b12', '66ad564b-d466-5783-a5eb-b839a24daf44', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"To avoid greenwashing, every public claim should have a defined baseline, measurable boundary, credible methodology, and appropriate assurance.","translation":"Чтобы избежать гринвошинга, каждое публичное заявление должно иметь определённую базовую линию, измеримые границы, надёжную методологию и соответствующее подтверждение.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Testing Claims and Avoiding Greenwashing"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('45802f03-18f7-5599-aa6d-776e5f3d71a3', '66ad564b-d466-5783-a5eb-b839a24daf44', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“scope-three emissions” means indirect value-chain emissions outside a company’s direct control.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L2_D11","is_correct":true,"text":"indirect value-chain emissions outside a company’s direct control"},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L2_D12","is_correct":false,"text":"a time-bound strategy for moving to a lower-impact business model"},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L2_D13","is_correct":false,"text":"misleading communication that exaggerates environmental performance"}],"word":"scope-three emissions"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5431548-aa27-515f-9690-b8f14f4b504f', '66ad564b-d466-5783-a5eb-b839a24daf44', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"To avoid greenwashing, every public claim should have a defined baseline, measurable boundary, credible methodology, and appropriate assurance.","explanation":"The missing C1 business expression is “scope-three emissions”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"scope-three emissions","id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L2_D14","is_correct":true},{"audio_text":"greenwashing","id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L2_D15","is_correct":false},{"audio_text":"assurance standard","id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L2_D16","is_correct":false}],"sentence_template":"To avoid greenwashing, every public claim should have a defined baseline, measurable boundary, credible methodology, and appropriate assurance."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a1a06a4-b78b-5309-ade6-e3a7b9076c15', '66ad564b-d466-5783-a5eb-b839a24daf44', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"scope-three emissions","explanation":"The complete business statement uses “scope-three emissions” accurately in context.","hint_prefix":"scop","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"To avoid greenwashing, every public claim should have a defined baseline, measurable boundary, credible methodology, and appropriate assurance."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4f04765b-bc8f-57d4-b918-7a13c564c01a', '66ad564b-d466-5783-a5eb-b839a24daf44', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"materiality assessment","id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L2_D17","text":"materiality assessment"},{"audio_text":"scope-three emissions","id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L2_D18","text":"scope-three emissions"},{"audio_text":"transition plan","id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L2_D19","text":"transition plan"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb54e29a-c448-5f76-8bff-d2e6ba8c1574', '66ad564b-d466-5783-a5eb-b839a24daf44', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Testing Claims and Avoiding Greenwashing”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L2_D20","is_correct":true,"text":"To avoid greenwashing, every public claim should have a defined baseline, measurable boundary, credible methodology, and appropriate assurance."},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L2_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L2_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('81f92e67-a816-5701-884e-683c7e7601b8', '66ad564b-d466-5783-a5eb-b839a24daf44', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('86395669-09d4-5fdb-968b-286eee69c01d', NULL, 'Решение, ответственность и последующие действия', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Reporting Progress and Remaining Gaps","ru":"Решение, ответственность и последующие действия"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0bab8650-1594-5013-9948-d10f4ccb042f', '86395669-09d4-5fdb-968b-286eee69c01d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L3_D01","left":"materiality assessment","right":"оценка существенности"},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L3_D02","left":"scope-three emissions","right":"косвенные выбросы категории три"},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L3_D03","left":"transition plan","right":"план перехода"},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L3_D04","left":"greenwashing","right":"гринвошинг"},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L3_D05","left":"stakeholder accountability","right":"подотчётность заинтересованным сторонам"},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L3_D06","left":"assurance standard","right":"стандарт подтверждения достоверности"},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L3_D07","left":"just transition","right":"справедливый переход"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fd7473b5-9088-57aa-beac-e11f976b295f', '86395669-09d4-5fdb-968b-286eee69c01d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L3_D08","is_correct":true,"text":"A credible transition plan reports both progress and remaining gaps, including scope-three emissions and the implications of a just transition."},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L3_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L3_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('33e7d163-cd2e-500c-815a-d36ebedf3b0a', '86395669-09d4-5fdb-968b-286eee69c01d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A credible transition plan reports both progress and remaining gaps, including scope-three emissions and the implications of a just transition.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Убедительный план перехода отражает как прогресс, так и оставшиеся пробелы, включая косвенные выбросы категории три и последствия справедливого перехода.","target_language":"en","word_bank":["A","credible","transition","plan","reports","both","progress","and","remaining","gaps",",","including","scope-three","emissions","and","the","implications","of","a","just","transition","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2d8a0145-7044-5337-84a0-70e4dfddb8c2', '86395669-09d4-5fdb-968b-286eee69c01d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"transition plan","instruction":"Выберите подходящее слово.","options":["transition plan","assurance standard","materiality assessment"],"sentence_template":"A credible ___ reports both progress and remaining gaps, including scope-three emissions and the implications of a just transition."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('174429d2-d518-530d-9aa0-9ea7b77b8a42', '86395669-09d4-5fdb-968b-286eee69c01d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","credible","transition","plan","reports","both","progress","and","remaining","gaps",",","including","scope-three","emissions","and","the","implications","of","a","just","transition","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","transition","just","a","of","implications","the","and","emissions","scope-three","including",",","gaps","remaining","and","progress","both","reports","plan","transition","credible","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5bf61e4-e021-5768-a46c-dc2f6f52c7f0', '86395669-09d4-5fdb-968b-286eee69c01d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A credible transition plan reports both progress and remaining gaps, including scope-three emissions and the implications of a just transition. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('33e24013-481e-5ef2-9985-d6703d0fb858', '86395669-09d4-5fdb-968b-286eee69c01d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A credible transition plan reports both progress and remaining gaps, including scope-three emissions and the implications of a just transition. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Убедительный план перехода отражает как прогресс, так и оставшиеся пробелы, включая косвенные выбросы категории три и последствия справедливого перехода. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d6a88574-0a26-5005-984e-1626952112af', '86395669-09d4-5fdb-968b-286eee69c01d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"A credible transition plan reports both progress and remaining gaps, including scope-three emissions and the implications of a just transition.","translation":"Убедительный план перехода отражает как прогресс, так и оставшиеся пробелы, включая косвенные выбросы категории три и последствия справедливого перехода.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Reporting Progress and Remaining Gaps"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('51f166db-581e-59a6-966f-ff85fcd85fb9', '86395669-09d4-5fdb-968b-286eee69c01d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“transition plan” means a time-bound strategy for moving to a lower-impact business model.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L3_D11","is_correct":true,"text":"a time-bound strategy for moving to a lower-impact business model"},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L3_D12","is_correct":false,"text":"misleading communication that exaggerates environmental performance"},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L3_D13","is_correct":false,"text":"responsibility to explain impacts and respond to affected groups"}],"word":"transition plan"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf002d1a-cf46-5789-9cbf-bdaf9f016784', '86395669-09d4-5fdb-968b-286eee69c01d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A credible transition plan reports both progress and remaining gaps, including scope-three emissions and the implications of a just transition.","explanation":"The missing C1 business expression is “transition plan”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"transition plan","id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L3_D14","is_correct":true},{"audio_text":"stakeholder accountability","id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L3_D15","is_correct":false},{"audio_text":"just transition","id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L3_D16","is_correct":false}],"sentence_template":"A credible ___ reports both progress and remaining gaps, including scope-three emissions and the implications of a just transition."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc26ccdd-1c38-55b7-92d7-07596df5d049', '86395669-09d4-5fdb-968b-286eee69c01d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"transition plan","explanation":"The complete business statement uses “transition plan” accurately in context.","hint_prefix":"tran","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A credible ___ reports both progress and remaining gaps, including scope-three emissions and the implications of a just transition."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e0d7cf2-91c0-57aa-83a6-01c30e582d8a', '86395669-09d4-5fdb-968b-286eee69c01d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"materiality assessment","id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L3_D17","text":"materiality assessment"},{"audio_text":"scope-three emissions","id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L3_D18","text":"scope-three emissions"},{"audio_text":"transition plan","id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L3_D19","text":"transition plan"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce6eb0da-0a83-56ca-bd11-1c1cc2d0c680', '86395669-09d4-5fdb-968b-286eee69c01d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Reporting Progress and Remaining Gaps”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L3_D20","is_correct":true,"text":"A credible transition plan reports both progress and remaining gaps, including scope-three emissions and the implications of a just transition."},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L3_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_SUSTAINABLE_BUSINESS_ESG_AND_STAKEHOLDER_ACCOUNTABILITY_L3_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('81f92e67-a816-5701-884e-683c7e7601b8', '86395669-09d4-5fdb-968b-286eee69c01d', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('509ad70b-96da-5731-ad06-523343af9e28', 'en', 'materiality assessment', 'оценка существенности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('45bf6ab7-6bd6-5d83-9d6c-a7c443df4e85', 'en', 'scope-three emissions', 'косвенные выбросы категории три', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bf71605a-9b97-5e53-bb75-ad334ac6bb12', 'en', 'transition plan', 'план перехода', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('283b8d2a-82f9-5acc-94c2-17e16a00fe7a', 'en', 'greenwashing', 'гринвошинг', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c8e22022-7753-5739-b143-828355b1c209', 'en', 'stakeholder accountability', 'подотчётность заинтересованным сторонам', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('84b96a97-c29f-516d-b5f4-de6e073432f4', 'en', 'assurance standard', 'стандарт подтверждения достоверности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7d9d29d9-f5e3-52f5-9659-423036e07272', 'en', 'just transition', 'справедливый переход', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('509ad70b-96da-5731-ad06-523343af9e28', 'en', 'materiality assessment', 'оценка существенности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('45bf6ab7-6bd6-5d83-9d6c-a7c443df4e85', 'en', 'scope-three emissions', 'косвенные выбросы категории три', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bf71605a-9b97-5e53-bb75-ad334ac6bb12', 'en', 'transition plan', 'план перехода', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('283b8d2a-82f9-5acc-94c2-17e16a00fe7a', 'en', 'greenwashing', 'гринвошинг', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c8e22022-7753-5739-b143-828355b1c209', 'en', 'stakeholder accountability', 'подотчётность заинтересованным сторонам', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('84b96a97-c29f-516d-b5f4-de6e073432f4', 'en', 'assurance standard', 'стандарт подтверждения достоверности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7d9d29d9-f5e3-52f5-9659-423036e07272', 'en', 'just transition', 'справедливый переход', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('509ad70b-96da-5731-ad06-523343af9e28', 'en', 'materiality assessment', 'оценка существенности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('45bf6ab7-6bd6-5d83-9d6c-a7c443df4e85', 'en', 'scope-three emissions', 'косвенные выбросы категории три', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bf71605a-9b97-5e53-bb75-ad334ac6bb12', 'en', 'transition plan', 'план перехода', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('283b8d2a-82f9-5acc-94c2-17e16a00fe7a', 'en', 'greenwashing', 'гринвошинг', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c8e22022-7753-5739-b143-828355b1c209', 'en', 'stakeholder accountability', 'подотчётность заинтересованным сторонам', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('84b96a97-c29f-516d-b5f4-de6e073432f4', 'en', 'assurance standard', 'стандарт подтверждения достоверности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7d9d29d9-f5e3-52f5-9659-423036e07272', 'en', 'just transition', 'справедливый переход', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81f92e67-a816-5701-884e-683c7e7601b8', id, '485261e2-7dea-5e9a-9509-ceb550792445', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'materiality assessment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81f92e67-a816-5701-884e-683c7e7601b8', id, '485261e2-7dea-5e9a-9509-ceb550792445', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'scope-three emissions' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81f92e67-a816-5701-884e-683c7e7601b8', id, '485261e2-7dea-5e9a-9509-ceb550792445', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'transition plan' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81f92e67-a816-5701-884e-683c7e7601b8', id, '485261e2-7dea-5e9a-9509-ceb550792445', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'greenwashing' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81f92e67-a816-5701-884e-683c7e7601b8', id, '485261e2-7dea-5e9a-9509-ceb550792445', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'stakeholder accountability' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81f92e67-a816-5701-884e-683c7e7601b8', id, '485261e2-7dea-5e9a-9509-ceb550792445', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'assurance standard' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81f92e67-a816-5701-884e-683c7e7601b8', id, '485261e2-7dea-5e9a-9509-ceb550792445', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'just transition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81f92e67-a816-5701-884e-683c7e7601b8', id, '66ad564b-d466-5783-a5eb-b839a24daf44', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'materiality assessment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81f92e67-a816-5701-884e-683c7e7601b8', id, '66ad564b-d466-5783-a5eb-b839a24daf44', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'scope-three emissions' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81f92e67-a816-5701-884e-683c7e7601b8', id, '66ad564b-d466-5783-a5eb-b839a24daf44', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'transition plan' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81f92e67-a816-5701-884e-683c7e7601b8', id, '66ad564b-d466-5783-a5eb-b839a24daf44', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'greenwashing' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81f92e67-a816-5701-884e-683c7e7601b8', id, '66ad564b-d466-5783-a5eb-b839a24daf44', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'stakeholder accountability' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81f92e67-a816-5701-884e-683c7e7601b8', id, '66ad564b-d466-5783-a5eb-b839a24daf44', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'assurance standard' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81f92e67-a816-5701-884e-683c7e7601b8', id, '66ad564b-d466-5783-a5eb-b839a24daf44', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'just transition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81f92e67-a816-5701-884e-683c7e7601b8', id, '86395669-09d4-5fdb-968b-286eee69c01d', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'materiality assessment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81f92e67-a816-5701-884e-683c7e7601b8', id, '86395669-09d4-5fdb-968b-286eee69c01d', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'scope-three emissions' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81f92e67-a816-5701-884e-683c7e7601b8', id, '86395669-09d4-5fdb-968b-286eee69c01d', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'transition plan' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81f92e67-a816-5701-884e-683c7e7601b8', id, '86395669-09d4-5fdb-968b-286eee69c01d', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'greenwashing' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81f92e67-a816-5701-884e-683c7e7601b8', id, '86395669-09d4-5fdb-968b-286eee69c01d', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'stakeholder accountability' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81f92e67-a816-5701-884e-683c7e7601b8', id, '86395669-09d4-5fdb-968b-286eee69c01d', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'assurance standard' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81f92e67-a816-5701-884e-683c7e7601b8', id, '86395669-09d4-5fdb-968b-286eee69c01d', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'just transition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
