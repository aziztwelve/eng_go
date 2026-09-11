-- Track: C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('f15bf1a1-9d27-5ff7-9b3c-f180561a2248', 'C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION', 'Цифровая трансформация, управление ИИ и инновации', 'Освойте продвинутый деловой английский уровня C1 по теме «Цифровая трансформация, управление ИИ и инновации» через реалистичные рабочие ситуации, требующие точного анализа, дипломатичной аргументации и ответственных решений.', '{"en":"Digital Transformation, AI Governance and Innovation","ru":"Цифровая трансформация, управление ИИ и инновации"}'::jsonb, '{"en":"Master advanced C1 business English for digital transformation, ai governance and innovation through realistic workplace situations requiring precise analysis, diplomatic argument, and accountable decisions.","ru":"Освойте продвинутый деловой английский уровня C1 по теме «Цифровая трансформация, управление ИИ и инновации» через реалистичные рабочие ситуации, требующие точного анализа, дипломатичной аргументации и ответственных решений."}'::jsonb, 'en', 'C1', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('993a0100-1e36-53da-b4c1-a04d26a38de3', NULL, 'Реальная деловая ситуация и ключевые понятия', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Building the Transformation Business Case","ru":"Реальная деловая ситуация и ключевые понятия"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fadd1a86-080c-5676-8691-08b81996f7a7', '993a0100-1e36-53da-b4c1-a04d26a38de3', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L1_D01","left":"digital operating model","right":"цифровая операционная модель"},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L1_D02","left":"automation opportunity","right":"возможность автоматизации"},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L1_D03","left":"algorithmic bias","right":"алгоритмическая предвзятость"},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L1_D04","left":"human oversight","right":"человеческий контроль"},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L1_D05","left":"model governance","right":"управление моделями"},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L1_D06","left":"innovation portfolio","right":"портфель инноваций"},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L1_D07","left":"technology debt","right":"технологический долг"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b1826758-c01e-5516-85c6-9491cf80399b', '993a0100-1e36-53da-b4c1-a04d26a38de3', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L1_D08","is_correct":true,"text":"The transformation business case should quantify customer value and productivity gains while acknowledging technology debt and adoption costs."},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L1_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L1_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('693f43cd-a2fb-5821-810a-e5e92d54dff5', '993a0100-1e36-53da-b4c1-a04d26a38de3', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The transformation business case should quantify customer value and productivity gains while acknowledging technology debt and adoption costs.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Экономическое обоснование трансформации должно количественно оценивать ценность для клиента и рост производительности, одновременно учитывая технологический долг и затраты на внедрение.","target_language":"en","word_bank":["The","transformation","business","case","should","quantify","customer","value","and","productivity","gains","while","acknowledging","technology","debt","and","adoption","costs","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('82136d62-3349-5ff8-8d15-b337611fe55c', '993a0100-1e36-53da-b4c1-a04d26a38de3', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"digital operating model","instruction":"Выберите подходящее слово.","options":["digital operating model","human oversight","innovation portfolio"],"sentence_template":"The transformation business case should quantify customer value and productivity gains while acknowledging technology debt and adoption costs."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e08bd9c0-615f-5c75-b15b-2dcb91801c0e', '993a0100-1e36-53da-b4c1-a04d26a38de3', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","transformation","business","case","should","quantify","customer","value","and","productivity","gains","while","acknowledging","technology","debt","and","adoption","costs","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","costs","adoption","and","debt","technology","acknowledging","while","gains","productivity","and","value","customer","quantify","should","case","business","transformation","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6f9ef1fa-7533-5e4f-a184-289e23f1441a', '993a0100-1e36-53da-b4c1-a04d26a38de3', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The transformation business case should quantify customer value and productivity gains while acknowledging technology debt and adoption costs. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('29433be7-fcba-59d3-bf36-190da1d21fb6', '993a0100-1e36-53da-b4c1-a04d26a38de3', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The transformation business case should quantify customer value and productivity gains while acknowledging technology debt and adoption costs. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Экономическое обоснование трансформации должно количественно оценивать ценность для клиента и рост производительности, одновременно учитывая технологический долг и затраты на внедрение. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2c556b56-6e57-5272-8d7a-8b85ddb41299', '993a0100-1e36-53da-b4c1-a04d26a38de3', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"The transformation business case should quantify customer value and productivity gains while acknowledging technology debt and adoption costs.","translation":"Экономическое обоснование трансформации должно количественно оценивать ценность для клиента и рост производительности, одновременно учитывая технологический долг и затраты на внедрение.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Building the Transformation Business Case"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef015bf1-203a-56ef-8ec5-339825516407', '993a0100-1e36-53da-b4c1-a04d26a38de3', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“digital operating model” means the way technology, people, and processes combine to deliver value.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L1_D11","is_correct":true,"text":"the way technology, people, and processes combine to deliver value"},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L1_D12","is_correct":false,"text":"a task or process that technology could perform efficiently"},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L1_D13","is_correct":false,"text":"systematic unfairness produced or reinforced by an algorithm"}],"word":"digital operating model"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6f1d37fb-718b-5887-891c-8927d78e7eef', '993a0100-1e36-53da-b4c1-a04d26a38de3', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The transformation business case should quantify customer value and productivity gains while acknowledging technology debt and adoption costs.","explanation":"The missing C1 business expression is “digital operating model”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"digital operating model","id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L1_D14","is_correct":true},{"audio_text":"algorithmic bias","id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L1_D15","is_correct":false},{"audio_text":"model governance","id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L1_D16","is_correct":false}],"sentence_template":"The transformation business case should quantify customer value and productivity gains while acknowledging technology debt and adoption costs."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1c8e481-6cb7-5a29-8cf6-4d1b500a8a57', '993a0100-1e36-53da-b4c1-a04d26a38de3', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"digital operating model","explanation":"The complete business statement uses “digital operating model” accurately in context.","hint_prefix":"digi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The transformation business case should quantify customer value and productivity gains while acknowledging technology debt and adoption costs."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8fb3e7e7-fec3-5116-b53c-e43c60d7ddcf', '993a0100-1e36-53da-b4c1-a04d26a38de3', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"digital operating model","id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L1_D17","text":"digital operating model"},{"audio_text":"automation opportunity","id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L1_D18","text":"automation opportunity"},{"audio_text":"algorithmic bias","id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L1_D19","text":"algorithmic bias"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('304c3b00-ab26-5815-8c2b-84f0c30082e8', '993a0100-1e36-53da-b4c1-a04d26a38de3', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Building the Transformation Business Case”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L1_D20","is_correct":true,"text":"The transformation business case should quantify customer value and productivity gains while acknowledging technology debt and adoption costs."},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L1_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L1_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f15bf1a1-9d27-5ff7-9b3c-f180561a2248', '993a0100-1e36-53da-b4c1-a04d26a38de3', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('174e328e-6ca7-5440-b63a-2d0320c7f205', NULL, 'Анализ, аргументация и взаимодействие', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Governing AI Risk and Accountability","ru":"Анализ, аргументация и взаимодействие"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3fbda84b-969e-5302-889d-5e9eba0a1d0f', '174e328e-6ca7-5440-b63a-2d0320c7f205', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L2_D01","left":"digital operating model","right":"цифровая операционная модель"},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L2_D02","left":"automation opportunity","right":"возможность автоматизации"},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L2_D03","left":"algorithmic bias","right":"алгоритмическая предвзятость"},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L2_D04","left":"human oversight","right":"человеческий контроль"},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L2_D05","left":"model governance","right":"управление моделями"},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L2_D06","left":"innovation portfolio","right":"портфель инноваций"},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L2_D07","left":"technology debt","right":"технологический долг"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('63e2bdf9-b921-51be-b4d3-ac17c7d42171', '174e328e-6ca7-5440-b63a-2d0320c7f205', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L2_D08","is_correct":true,"text":"Model governance must define human oversight, acceptable error thresholds, and accountability when algorithmic bias produces harmful outcomes."},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L2_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L2_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2202d490-ba6b-556b-b81f-d216cd24592e', '174e328e-6ca7-5440-b63a-2d0320c7f205', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Model governance must define human oversight, acceptable error thresholds, and accountability when algorithmic bias produces harmful outcomes.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Управление моделями должно определять человеческий контроль, допустимые пороги ошибок и ответственность, когда алгоритмическая предвзятость приводит к вредным результатам.","target_language":"en","word_bank":["Model","governance","must","define","human","oversight",",","acceptable","error","thresholds",",","and","accountability","when","algorithmic","bias","produces","harmful","outcomes","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8c75f46d-bad5-5f5a-92e2-583e81710905', '174e328e-6ca7-5440-b63a-2d0320c7f205', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"automation opportunity","instruction":"Выберите подходящее слово.","options":["automation opportunity","model governance","technology debt"],"sentence_template":"Model governance must define human oversight, acceptable error thresholds, and accountability when algorithmic bias produces harmful outcomes."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9d07b2bd-34f3-5c0d-a452-40ee2693e753', '174e328e-6ca7-5440-b63a-2d0320c7f205', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Model","governance","must","define","human","oversight",",","acceptable","error","thresholds",",","and","accountability","when","algorithmic","bias","produces","harmful","outcomes","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","outcomes","harmful","produces","bias","algorithmic","when","accountability","and",",","thresholds","error","acceptable",",","oversight","human","define","must","governance","Model"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4c19a33e-e08c-5444-8d55-f593c3623daf', '174e328e-6ca7-5440-b63a-2d0320c7f205', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Model governance must define human oversight, acceptable error thresholds, and accountability when algorithmic bias produces harmful outcomes. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e076dc56-fb8d-5969-b2d4-a389606e23ce', '174e328e-6ca7-5440-b63a-2d0320c7f205', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Model governance must define human oversight, acceptable error thresholds, and accountability when algorithmic bias produces harmful outcomes. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Управление моделями должно определять человеческий контроль, допустимые пороги ошибок и ответственность, когда алгоритмическая предвзятость приводит к вредным результатам. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('07de6676-4d9f-5e20-b24e-3d7bb522e90f', '174e328e-6ca7-5440-b63a-2d0320c7f205', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"Model governance must define human oversight, acceptable error thresholds, and accountability when algorithmic bias produces harmful outcomes.","translation":"Управление моделями должно определять человеческий контроль, допустимые пороги ошибок и ответственность, когда алгоритмическая предвзятость приводит к вредным результатам.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Governing AI Risk and Accountability"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('29a23355-0c80-599f-ac29-8eb1a62824fa', '174e328e-6ca7-5440-b63a-2d0320c7f205', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“automation opportunity” means a task or process that technology could perform efficiently.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L2_D11","is_correct":true,"text":"a task or process that technology could perform efficiently"},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L2_D12","is_correct":false,"text":"systematic unfairness produced or reinforced by an algorithm"},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L2_D13","is_correct":false,"text":"meaningful review and authority retained by people"}],"word":"automation opportunity"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a4322fe4-10d9-569a-9fc9-f3e7d0bbb929', '174e328e-6ca7-5440-b63a-2d0320c7f205', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Model governance must define human oversight, acceptable error thresholds, and accountability when algorithmic bias produces harmful outcomes.","explanation":"The missing C1 business expression is “automation opportunity”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"automation opportunity","id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L2_D14","is_correct":true},{"audio_text":"human oversight","id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L2_D15","is_correct":false},{"audio_text":"innovation portfolio","id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L2_D16","is_correct":false}],"sentence_template":"Model governance must define human oversight, acceptable error thresholds, and accountability when algorithmic bias produces harmful outcomes."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2cfef2c0-52af-5a5c-b7a4-ae62f0d1912a', '174e328e-6ca7-5440-b63a-2d0320c7f205', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"automation opportunity","explanation":"The complete business statement uses “automation opportunity” accurately in context.","hint_prefix":"auto","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Model governance must define human oversight, acceptable error thresholds, and accountability when algorithmic bias produces harmful outcomes."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc5dc1f6-1812-55f7-a161-edd1a5f1acc3', '174e328e-6ca7-5440-b63a-2d0320c7f205', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"digital operating model","id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L2_D17","text":"digital operating model"},{"audio_text":"automation opportunity","id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L2_D18","text":"automation opportunity"},{"audio_text":"algorithmic bias","id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L2_D19","text":"algorithmic bias"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('657eb49f-2c15-5b91-af28-6d84d4a4dedd', '174e328e-6ca7-5440-b63a-2d0320c7f205', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Governing AI Risk and Accountability”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L2_D20","is_correct":true,"text":"Model governance must define human oversight, acceptable error thresholds, and accountability when algorithmic bias produces harmful outcomes."},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L2_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L2_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f15bf1a1-9d27-5ff7-9b3c-f180561a2248', '174e328e-6ca7-5440-b63a-2d0320c7f205', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b2676201-5cbc-54e7-aa1c-c6b605d17b2c', NULL, 'Решение, ответственность и последующие действия', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Scaling Innovation Across the Organisation","ru":"Решение, ответственность и последующие действия"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4e1ffb98-ea43-50e8-8361-5ed6ba944057', 'b2676201-5cbc-54e7-aa1c-c6b605d17b2c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L3_D01","left":"digital operating model","right":"цифровая операционная модель"},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L3_D02","left":"automation opportunity","right":"возможность автоматизации"},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L3_D03","left":"algorithmic bias","right":"алгоритмическая предвзятость"},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L3_D04","left":"human oversight","right":"человеческий контроль"},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L3_D05","left":"model governance","right":"управление моделями"},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L3_D06","left":"innovation portfolio","right":"портфель инноваций"},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L3_D07","left":"technology debt","right":"технологический долг"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d2bdd13-c116-509b-87df-a08c0dfd3b8a', 'b2676201-5cbc-54e7-aa1c-c6b605d17b2c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L3_D08","is_correct":true,"text":"An innovation portfolio should fund exploration selectively, terminate weak experiments early, and scale only solutions supported by operational evidence."},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L3_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L3_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a92b5d55-558f-5f47-8b1a-db0cc70aa754', 'b2676201-5cbc-54e7-aa1c-c6b605d17b2c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"An innovation portfolio should fund exploration selectively, terminate weak experiments early, and scale only solutions supported by operational evidence.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Портфель инноваций должен избирательно финансировать исследования, рано прекращать слабые эксперименты и масштабировать только решения, подкреплённые операционными данными.","target_language":"en","word_bank":["An","innovation","portfolio","should","fund","exploration","selectively",",","terminate","weak","experiments","early",",","and","scale","only","solutions","supported","by","operational","evidence","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9988e49-8ac7-5408-8415-9d7c04192eaf', 'b2676201-5cbc-54e7-aa1c-c6b605d17b2c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"algorithmic bias","instruction":"Выберите подходящее слово.","options":["algorithmic bias","innovation portfolio","digital operating model"],"sentence_template":"An innovation portfolio should fund exploration selectively, terminate weak experiments early, and scale only solutions supported by operational evidence."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c07339e0-c1b0-50bd-88aa-2b7d5bd378ae', 'b2676201-5cbc-54e7-aa1c-c6b605d17b2c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["An","innovation","portfolio","should","fund","exploration","selectively",",","terminate","weak","experiments","early",",","and","scale","only","solutions","supported","by","operational","evidence","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","evidence","operational","by","supported","solutions","only","scale","and",",","early","experiments","weak","terminate",",","selectively","exploration","fund","should","portfolio","innovation","An"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41031f74-4881-5042-ac8a-78e22c0d872f', 'b2676201-5cbc-54e7-aa1c-c6b605d17b2c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"An innovation portfolio should fund exploration selectively, terminate weak experiments early, and scale only solutions supported by operational evidence. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e165391-bc92-5145-b2dc-515d8ed64ec4', 'b2676201-5cbc-54e7-aa1c-c6b605d17b2c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"An innovation portfolio should fund exploration selectively, terminate weak experiments early, and scale only solutions supported by operational evidence. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Портфель инноваций должен избирательно финансировать исследования, рано прекращать слабые эксперименты и масштабировать только решения, подкреплённые операционными данными. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('863adc62-5a5a-5256-ae92-0274de291df1', 'b2676201-5cbc-54e7-aa1c-c6b605d17b2c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"An innovation portfolio should fund exploration selectively, terminate weak experiments early, and scale only solutions supported by operational evidence.","translation":"Портфель инноваций должен избирательно финансировать исследования, рано прекращать слабые эксперименты и масштабировать только решения, подкреплённые операционными данными.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Scaling Innovation Across the Organisation"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2014ca43-21d4-55cb-ab63-9c091ad7efc9', 'b2676201-5cbc-54e7-aa1c-c6b605d17b2c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“algorithmic bias” means systematic unfairness produced or reinforced by an algorithm.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L3_D11","is_correct":true,"text":"systematic unfairness produced or reinforced by an algorithm"},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L3_D12","is_correct":false,"text":"meaningful review and authority retained by people"},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L3_D13","is_correct":false,"text":"controls governing the development, deployment, and monitoring of analytical models"}],"word":"algorithmic bias"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('49e34cc8-216b-5bd0-8af6-43b6adfced10', 'b2676201-5cbc-54e7-aa1c-c6b605d17b2c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"An innovation portfolio should fund exploration selectively, terminate weak experiments early, and scale only solutions supported by operational evidence.","explanation":"The missing C1 business expression is “algorithmic bias”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"algorithmic bias","id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L3_D14","is_correct":true},{"audio_text":"model governance","id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L3_D15","is_correct":false},{"audio_text":"technology debt","id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L3_D16","is_correct":false}],"sentence_template":"An innovation portfolio should fund exploration selectively, terminate weak experiments early, and scale only solutions supported by operational evidence."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('99f28d84-59c5-52c1-9355-c1e83dd60160', 'b2676201-5cbc-54e7-aa1c-c6b605d17b2c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"algorithmic bias","explanation":"The complete business statement uses “algorithmic bias” accurately in context.","hint_prefix":"algo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"An innovation portfolio should fund exploration selectively, terminate weak experiments early, and scale only solutions supported by operational evidence."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('133bb3d2-500e-5900-83d9-8963faa2a0c3', 'b2676201-5cbc-54e7-aa1c-c6b605d17b2c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"digital operating model","id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L3_D17","text":"digital operating model"},{"audio_text":"automation opportunity","id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L3_D18","text":"automation opportunity"},{"audio_text":"algorithmic bias","id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L3_D19","text":"algorithmic bias"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('77be5f32-36ae-5349-9526-725d9d3624ab', 'b2676201-5cbc-54e7-aa1c-c6b605d17b2c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Scaling Innovation Across the Organisation”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L3_D20","is_correct":true,"text":"An innovation portfolio should fund exploration selectively, terminate weak experiments early, and scale only solutions supported by operational evidence."},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L3_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_DIGITAL_TRANSFORMATION_AI_GOVERNANCE_AND_INNOVATION_L3_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f15bf1a1-9d27-5ff7-9b3c-f180561a2248', 'b2676201-5cbc-54e7-aa1c-c6b605d17b2c', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('60c253e8-3939-55c7-8863-4bd635b081da', 'en', 'digital operating model', 'цифровая операционная модель', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e48bfc4b-d2b8-5ea0-93d1-d257ec28a7c2', 'en', 'automation opportunity', 'возможность автоматизации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a9aceeea-1445-5b0b-bd70-f04dc2c85e11', 'en', 'algorithmic bias', 'алгоритмическая предвзятость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dd254a86-8596-5e53-a240-6b121292ac02', 'en', 'human oversight', 'человеческий контроль', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('21b9070a-d9ec-5c47-8486-84a6472bca9b', 'en', 'model governance', 'управление моделями', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b30639b2-cafe-5c2a-a118-508f0eab4c27', 'en', 'innovation portfolio', 'портфель инноваций', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bdf03cea-9c08-538a-b3da-9c8ee9e84927', 'en', 'technology debt', 'технологический долг', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('60c253e8-3939-55c7-8863-4bd635b081da', 'en', 'digital operating model', 'цифровая операционная модель', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e48bfc4b-d2b8-5ea0-93d1-d257ec28a7c2', 'en', 'automation opportunity', 'возможность автоматизации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a9aceeea-1445-5b0b-bd70-f04dc2c85e11', 'en', 'algorithmic bias', 'алгоритмическая предвзятость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dd254a86-8596-5e53-a240-6b121292ac02', 'en', 'human oversight', 'человеческий контроль', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('21b9070a-d9ec-5c47-8486-84a6472bca9b', 'en', 'model governance', 'управление моделями', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b30639b2-cafe-5c2a-a118-508f0eab4c27', 'en', 'innovation portfolio', 'портфель инноваций', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bdf03cea-9c08-538a-b3da-9c8ee9e84927', 'en', 'technology debt', 'технологический долг', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('60c253e8-3939-55c7-8863-4bd635b081da', 'en', 'digital operating model', 'цифровая операционная модель', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e48bfc4b-d2b8-5ea0-93d1-d257ec28a7c2', 'en', 'automation opportunity', 'возможность автоматизации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a9aceeea-1445-5b0b-bd70-f04dc2c85e11', 'en', 'algorithmic bias', 'алгоритмическая предвзятость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dd254a86-8596-5e53-a240-6b121292ac02', 'en', 'human oversight', 'человеческий контроль', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('21b9070a-d9ec-5c47-8486-84a6472bca9b', 'en', 'model governance', 'управление моделями', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b30639b2-cafe-5c2a-a118-508f0eab4c27', 'en', 'innovation portfolio', 'портфель инноваций', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bdf03cea-9c08-538a-b3da-9c8ee9e84927', 'en', 'technology debt', 'технологический долг', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f15bf1a1-9d27-5ff7-9b3c-f180561a2248', id, '993a0100-1e36-53da-b4c1-a04d26a38de3', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'digital operating model' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f15bf1a1-9d27-5ff7-9b3c-f180561a2248', id, '993a0100-1e36-53da-b4c1-a04d26a38de3', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'automation opportunity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f15bf1a1-9d27-5ff7-9b3c-f180561a2248', id, '993a0100-1e36-53da-b4c1-a04d26a38de3', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'algorithmic bias' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f15bf1a1-9d27-5ff7-9b3c-f180561a2248', id, '993a0100-1e36-53da-b4c1-a04d26a38de3', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'human oversight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f15bf1a1-9d27-5ff7-9b3c-f180561a2248', id, '993a0100-1e36-53da-b4c1-a04d26a38de3', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'model governance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f15bf1a1-9d27-5ff7-9b3c-f180561a2248', id, '993a0100-1e36-53da-b4c1-a04d26a38de3', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'innovation portfolio' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f15bf1a1-9d27-5ff7-9b3c-f180561a2248', id, '993a0100-1e36-53da-b4c1-a04d26a38de3', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'technology debt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f15bf1a1-9d27-5ff7-9b3c-f180561a2248', id, '174e328e-6ca7-5440-b63a-2d0320c7f205', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'digital operating model' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f15bf1a1-9d27-5ff7-9b3c-f180561a2248', id, '174e328e-6ca7-5440-b63a-2d0320c7f205', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'automation opportunity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f15bf1a1-9d27-5ff7-9b3c-f180561a2248', id, '174e328e-6ca7-5440-b63a-2d0320c7f205', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'algorithmic bias' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f15bf1a1-9d27-5ff7-9b3c-f180561a2248', id, '174e328e-6ca7-5440-b63a-2d0320c7f205', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'human oversight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f15bf1a1-9d27-5ff7-9b3c-f180561a2248', id, '174e328e-6ca7-5440-b63a-2d0320c7f205', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'model governance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f15bf1a1-9d27-5ff7-9b3c-f180561a2248', id, '174e328e-6ca7-5440-b63a-2d0320c7f205', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'innovation portfolio' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f15bf1a1-9d27-5ff7-9b3c-f180561a2248', id, '174e328e-6ca7-5440-b63a-2d0320c7f205', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'technology debt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f15bf1a1-9d27-5ff7-9b3c-f180561a2248', id, 'b2676201-5cbc-54e7-aa1c-c6b605d17b2c', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'digital operating model' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f15bf1a1-9d27-5ff7-9b3c-f180561a2248', id, 'b2676201-5cbc-54e7-aa1c-c6b605d17b2c', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'automation opportunity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f15bf1a1-9d27-5ff7-9b3c-f180561a2248', id, 'b2676201-5cbc-54e7-aa1c-c6b605d17b2c', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'algorithmic bias' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f15bf1a1-9d27-5ff7-9b3c-f180561a2248', id, 'b2676201-5cbc-54e7-aa1c-c6b605d17b2c', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'human oversight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f15bf1a1-9d27-5ff7-9b3c-f180561a2248', id, 'b2676201-5cbc-54e7-aa1c-c6b605d17b2c', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'model governance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f15bf1a1-9d27-5ff7-9b3c-f180561a2248', id, 'b2676201-5cbc-54e7-aa1c-c6b605d17b2c', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'innovation portfolio' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f15bf1a1-9d27-5ff7-9b3c-f180561a2248', id, 'b2676201-5cbc-54e7-aa1c-c6b605d17b2c', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'technology debt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
