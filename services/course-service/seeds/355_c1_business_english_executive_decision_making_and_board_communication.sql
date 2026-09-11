-- Track: C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('3525a5eb-14cf-5bb2-a52c-960c922b6331', 'C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION', 'Принятие руководящих решений и коммуникация с советом директоров', 'Освойте продвинутый деловой английский уровня C1 по теме «Принятие руководящих решений и коммуникация с советом директоров» через реалистичные рабочие ситуации, требующие точного анализа, дипломатичной аргументации и ответственных решений.', '{"en":"Executive Decision-Making and Board Communication","ru":"Принятие руководящих решений и коммуникация с советом директоров"}'::jsonb, '{"en":"Master advanced C1 business English for executive decision-making and board communication through realistic workplace situations requiring precise analysis, diplomatic argument, and accountable decisions.","ru":"Освойте продвинутый деловой английский уровня C1 по теме «Принятие руководящих решений и коммуникация с советом директоров» через реалистичные рабочие ситуации, требующие точного анализа, дипломатичной аргументации и ответственных решений."}'::jsonb, 'en', 'C1', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e86b4b24-a085-5880-b803-86f736d332e6', NULL, 'Реальная деловая ситуация и ключевые понятия', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Framing a Board-Level Decision","ru":"Реальная деловая ситуация и ключевые понятия"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dfbf2890-af84-5a4b-a005-68aabeb929da', 'e86b4b24-a085-5880-b803-86f736d332e6', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L1_D01","left":"fiduciary duty","right":"фидуциарная обязанность"},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L1_D02","left":"decision rationale","right":"обоснование решения"},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L1_D03","left":"strategic trade-off","right":"стратегический компромисс"},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L1_D04","left":"material concern","right":"существенная проблема"},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L1_D05","left":"dissenting view","right":"особое мнение"},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L1_D06","left":"governance oversight","right":"управленческий надзор"},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L1_D07","left":"accountability mechanism","right":"механизм подотчётности"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d9e37c5-7e23-5d8c-a945-9c7dcb9df2dd', 'e86b4b24-a085-5880-b803-86f736d332e6', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L1_D08","is_correct":true,"text":"The decision rationale should distinguish verified evidence from management assumptions and explain the strategic trade-off in terms the board can scrutinise."},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L1_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L1_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aef53031-2d55-525d-a897-bcebca52c2ec', 'e86b4b24-a085-5880-b803-86f736d332e6', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The decision rationale should distinguish verified evidence from management assumptions and explain the strategic trade-off in terms the board can scrutinise.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Обоснование решения должно отделять проверенные данные от предположений руководства и объяснять стратегический компромисс в форме, доступной для проверки советом директоров.","target_language":"en","word_bank":["The","decision","rationale","should","distinguish","verified","evidence","from","management","assumptions","and","explain","the","strategic","trade-off","in","terms","the","board","can","scrutinise","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('56afb93b-6432-5cd8-9d24-e5f511b9e1f8', 'e86b4b24-a085-5880-b803-86f736d332e6', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"fiduciary duty","instruction":"Выберите подходящее слово.","options":["fiduciary duty","material concern","governance oversight"],"sentence_template":"The decision rationale should distinguish verified evidence from management assumptions and explain the strategic trade-off in terms the board can scrutinise."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21573d63-c579-5462-8220-d23b0d977158', 'e86b4b24-a085-5880-b803-86f736d332e6', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","decision","rationale","should","distinguish","verified","evidence","from","management","assumptions","and","explain","the","strategic","trade-off","in","terms","the","board","can","scrutinise","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","scrutinise","can","board","the","terms","in","trade-off","strategic","the","explain","and","assumptions","management","from","evidence","verified","distinguish","should","rationale","decision","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b7c3a894-2e6d-5956-9f76-1fe765a03105', 'e86b4b24-a085-5880-b803-86f736d332e6', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The decision rationale should distinguish verified evidence from management assumptions and explain the strategic trade-off in terms the board can scrutinise. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2ea04691-7eea-5f3d-bc71-b0126baa009b', 'e86b4b24-a085-5880-b803-86f736d332e6', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The decision rationale should distinguish verified evidence from management assumptions and explain the strategic trade-off in terms the board can scrutinise. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Обоснование решения должно отделять проверенные данные от предположений руководства и объяснять стратегический компромисс в форме, доступной для проверки советом директоров. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d593258f-3803-56da-82ef-0dde254a0b1d', 'e86b4b24-a085-5880-b803-86f736d332e6', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"The decision rationale should distinguish verified evidence from management assumptions and explain the strategic trade-off in terms the board can scrutinise.","translation":"Обоснование решения должно отделять проверенные данные от предположений руководства и объяснять стратегический компромисс в форме, доступной для проверки советом директоров.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Framing a Board-Level Decision"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('07ba57ae-5694-51c8-8cde-9e1dbe15c316', 'e86b4b24-a085-5880-b803-86f736d332e6', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“fiduciary duty” means a senior decision-maker’s duty to act in the organisation’s best interests.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L1_D11","is_correct":true,"text":"a senior decision-maker’s duty to act in the organisation’s best interests"},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L1_D12","is_correct":false,"text":"the evidence and reasoning supporting a decision"},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L1_D13","is_correct":false,"text":"a choice that sacrifices one strategic benefit to secure another"}],"word":"fiduciary duty"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21481abb-08eb-5bd0-9f8d-04dbdf7e1bdf', 'e86b4b24-a085-5880-b803-86f736d332e6', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The decision rationale should distinguish verified evidence from management assumptions and explain the strategic trade-off in terms the board can scrutinise.","explanation":"The missing C1 business expression is “fiduciary duty”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"fiduciary duty","id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L1_D14","is_correct":true},{"audio_text":"strategic trade-off","id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L1_D15","is_correct":false},{"audio_text":"dissenting view","id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L1_D16","is_correct":false}],"sentence_template":"The decision rationale should distinguish verified evidence from management assumptions and explain the strategic trade-off in terms the board can scrutinise."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c33b3b96-8221-52c7-9c6b-d1170fafdf4f', 'e86b4b24-a085-5880-b803-86f736d332e6', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"fiduciary duty","explanation":"The complete business statement uses “fiduciary duty” accurately in context.","hint_prefix":"fidu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The decision rationale should distinguish verified evidence from management assumptions and explain the strategic trade-off in terms the board can scrutinise."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5018e5a6-5842-53ad-b0bd-6313a5c29954', 'e86b4b24-a085-5880-b803-86f736d332e6', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"fiduciary duty","id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L1_D17","text":"fiduciary duty"},{"audio_text":"decision rationale","id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L1_D18","text":"decision rationale"},{"audio_text":"strategic trade-off","id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L1_D19","text":"strategic trade-off"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('951a8a10-4ab7-513d-892b-ca7efdbda144', 'e86b4b24-a085-5880-b803-86f736d332e6', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Framing a Board-Level Decision”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L1_D20","is_correct":true,"text":"The decision rationale should distinguish verified evidence from management assumptions and explain the strategic trade-off in terms the board can scrutinise."},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L1_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L1_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3525a5eb-14cf-5bb2-a52c-960c922b6331', 'e86b4b24-a085-5880-b803-86f736d332e6', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b0072f8a-b592-58f4-a494-18bedb3b8487', NULL, 'Анализ, аргументация и взаимодействие', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Challenging Assumptions Constructively","ru":"Анализ, аргументация и взаимодействие"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5fae5aeb-7ee9-5143-9a32-e26842c432ae', 'b0072f8a-b592-58f4-a494-18bedb3b8487', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L2_D01","left":"fiduciary duty","right":"фидуциарная обязанность"},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L2_D02","left":"decision rationale","right":"обоснование решения"},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L2_D03","left":"strategic trade-off","right":"стратегический компромисс"},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L2_D04","left":"material concern","right":"существенная проблема"},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L2_D05","left":"dissenting view","right":"особое мнение"},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L2_D06","left":"governance oversight","right":"управленческий надзор"},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L2_D07","left":"accountability mechanism","right":"механизм подотчётности"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5b82b1a2-fe47-50fd-a677-999b11b63365', 'b0072f8a-b592-58f4-a494-18bedb3b8487', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L2_D08","is_correct":true,"text":"I support the direction in principle; nevertheless, the unresolved regulatory exposure constitutes a material concern that should be addressed before approval."},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L2_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L2_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('caec72e1-31cf-53c3-840a-6084cfc7b9bc', 'b0072f8a-b592-58f4-a494-18bedb3b8487', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I support the direction in principle; nevertheless, the unresolved regulatory exposure constitutes a material concern that should be addressed before approval.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я в принципе поддерживаю это направление; тем не менее нерешённый регуляторный риск представляет собой существенную проблему, которую следует устранить до утверждения.","target_language":"en","word_bank":["I","support","the","direction","in","principle",";","nevertheless",",","the","unresolved","regulatory","exposure","constitutes","a","material","concern","that","should","be","addressed","before","approval","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2fc15f08-f5e0-50a3-b9fa-1ae558824d08', 'b0072f8a-b592-58f4-a494-18bedb3b8487', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"decision rationale","instruction":"Выберите подходящее слово.","options":["decision rationale","dissenting view","accountability mechanism"],"sentence_template":"I support the direction in principle; nevertheless, the unresolved regulatory exposure constitutes a material concern that should be addressed before approval."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e0409c1c-6f5f-5296-812f-17b417ea980d', 'b0072f8a-b592-58f4-a494-18bedb3b8487', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","support","the","direction","in","principle",";","nevertheless",",","the","unresolved","regulatory","exposure","constitutes","a","material","concern","that","should","be","addressed","before","approval","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","approval","before","addressed","be","should","that","concern","material","a","constitutes","exposure","regulatory","unresolved","the",",","nevertheless",";","principle","in","direction","the","support","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6379c98b-7126-5b08-8ff1-c9d817783ab1', 'b0072f8a-b592-58f4-a494-18bedb3b8487', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I support the direction in principle; nevertheless, the unresolved regulatory exposure constitutes a material concern that should be addressed before approval. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5b145fde-ad68-5a2b-b499-e7a10560a426', 'b0072f8a-b592-58f4-a494-18bedb3b8487', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I support the direction in principle; nevertheless, the unresolved regulatory exposure constitutes a material concern that should be addressed before approval. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Я в принципе поддерживаю это направление; тем не менее нерешённый регуляторный риск представляет собой существенную проблему, которую следует устранить до утверждения. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a72c8760-231c-536e-aea6-6a6929ba5924', 'b0072f8a-b592-58f4-a494-18bedb3b8487', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"I support the direction in principle; nevertheless, the unresolved regulatory exposure constitutes a material concern that should be addressed before approval.","translation":"Я в принципе поддерживаю это направление; тем не менее нерешённый регуляторный риск представляет собой существенную проблему, которую следует устранить до утверждения.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Challenging Assumptions Constructively"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('93a38569-9080-54be-bdd6-6fd7fa682773', 'b0072f8a-b592-58f4-a494-18bedb3b8487', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“decision rationale” means the evidence and reasoning supporting a decision.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L2_D11","is_correct":true,"text":"the evidence and reasoning supporting a decision"},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L2_D12","is_correct":false,"text":"a choice that sacrifices one strategic benefit to secure another"},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L2_D13","is_correct":false,"text":"an issue serious enough to affect a decision"}],"word":"decision rationale"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a2b1c76-4bf5-574d-b452-ce9166ec5ab1', 'b0072f8a-b592-58f4-a494-18bedb3b8487', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I support the direction in principle; nevertheless, the unresolved regulatory exposure constitutes a material concern that should be addressed before approval.","explanation":"The missing C1 business expression is “decision rationale”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"decision rationale","id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L2_D14","is_correct":true},{"audio_text":"material concern","id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L2_D15","is_correct":false},{"audio_text":"governance oversight","id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L2_D16","is_correct":false}],"sentence_template":"I support the direction in principle; nevertheless, the unresolved regulatory exposure constitutes a material concern that should be addressed before approval."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2d3ae738-e4dc-5d79-be53-7a39f38c814f', 'b0072f8a-b592-58f4-a494-18bedb3b8487', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"decision rationale","explanation":"The complete business statement uses “decision rationale” accurately in context.","hint_prefix":"deci","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I support the direction in principle; nevertheless, the unresolved regulatory exposure constitutes a material concern that should be addressed before approval."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c658e250-2921-5700-b0c1-88813523df9b', 'b0072f8a-b592-58f4-a494-18bedb3b8487', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"fiduciary duty","id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L2_D17","text":"fiduciary duty"},{"audio_text":"decision rationale","id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L2_D18","text":"decision rationale"},{"audio_text":"strategic trade-off","id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L2_D19","text":"strategic trade-off"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cda96b8b-ee17-5bac-8427-f10a7b58cb6b', 'b0072f8a-b592-58f4-a494-18bedb3b8487', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Challenging Assumptions Constructively”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L2_D20","is_correct":true,"text":"I support the direction in principle; nevertheless, the unresolved regulatory exposure constitutes a material concern that should be addressed before approval."},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L2_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L2_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3525a5eb-14cf-5bb2-a52c-960c922b6331', 'b0072f8a-b592-58f4-a494-18bedb3b8487', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9c2a66a1-aa21-52b8-b40f-4cfa2a0bbe73', NULL, 'Решение, ответственность и последующие действия', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Recording Decisions and Accountability","ru":"Решение, ответственность и последующие действия"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b929c584-7539-5ae0-936e-6f4d5798fe60', '9c2a66a1-aa21-52b8-b40f-4cfa2a0bbe73', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L3_D01","left":"fiduciary duty","right":"фидуциарная обязанность"},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L3_D02","left":"decision rationale","right":"обоснование решения"},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L3_D03","left":"strategic trade-off","right":"стратегический компромисс"},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L3_D04","left":"material concern","right":"существенная проблема"},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L3_D05","left":"dissenting view","right":"особое мнение"},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L3_D06","left":"governance oversight","right":"управленческий надзор"},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L3_D07","left":"accountability mechanism","right":"механизм подотчётности"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f50a4048-cb3c-5557-88b3-accc9bf85ea3', '9c2a66a1-aa21-52b8-b40f-4cfa2a0bbe73', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L3_D08","is_correct":true,"text":"The minutes should capture the dissenting view, the final decision rationale, and the accountability mechanism governing implementation and review."},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L3_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L3_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('99a49848-7075-577c-82d8-3b7445b94af3', '9c2a66a1-aa21-52b8-b40f-4cfa2a0bbe73', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The minutes should capture the dissenting view, the final decision rationale, and the accountability mechanism governing implementation and review.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Протокол должен зафиксировать особое мнение, окончательное обоснование решения и механизм подотчётности, регулирующий реализацию и пересмотр.","target_language":"en","word_bank":["The","minutes","should","capture","the","dissenting","view",",","the","final","decision","rationale",",","and","the","accountability","mechanism","governing","implementation","and","review","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d1dc2ad6-02df-593f-bc2b-0a0cc7541b52', '9c2a66a1-aa21-52b8-b40f-4cfa2a0bbe73', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"strategic trade-off","instruction":"Выберите подходящее слово.","options":["strategic trade-off","governance oversight","fiduciary duty"],"sentence_template":"The minutes should capture the dissenting view, the final decision rationale, and the accountability mechanism governing implementation and review."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('07337e40-adc5-54e9-93e7-1d6ae21a86be', '9c2a66a1-aa21-52b8-b40f-4cfa2a0bbe73', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","minutes","should","capture","the","dissenting","view",",","the","final","decision","rationale",",","and","the","accountability","mechanism","governing","implementation","and","review","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","review","and","implementation","governing","mechanism","accountability","the","and",",","rationale","decision","final","the",",","view","dissenting","the","capture","should","minutes","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c696e9e6-648e-57e7-99a9-73001cc88ee8', '9c2a66a1-aa21-52b8-b40f-4cfa2a0bbe73', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The minutes should capture the dissenting view, the final decision rationale, and the accountability mechanism governing implementation and review. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eca3d143-29ea-5099-aa0d-d7240f344184', '9c2a66a1-aa21-52b8-b40f-4cfa2a0bbe73', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The minutes should capture the dissenting view, the final decision rationale, and the accountability mechanism governing implementation and review. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Протокол должен зафиксировать особое мнение, окончательное обоснование решения и механизм подотчётности, регулирующий реализацию и пересмотр. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('46371acf-bf4e-537c-8645-f879ec31236c', '9c2a66a1-aa21-52b8-b40f-4cfa2a0bbe73', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"The minutes should capture the dissenting view, the final decision rationale, and the accountability mechanism governing implementation and review.","translation":"Протокол должен зафиксировать особое мнение, окончательное обоснование решения и механизм подотчётности, регулирующий реализацию и пересмотр.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Recording Decisions and Accountability"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dfe9b00b-bbbd-5226-9b93-5d8359ff601e', '9c2a66a1-aa21-52b8-b40f-4cfa2a0bbe73', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“strategic trade-off” means a choice that sacrifices one strategic benefit to secure another.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L3_D11","is_correct":true,"text":"a choice that sacrifices one strategic benefit to secure another"},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L3_D12","is_correct":false,"text":"an issue serious enough to affect a decision"},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L3_D13","is_correct":false,"text":"a reasoned opinion that differs from the majority position"}],"word":"strategic trade-off"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('75d7044c-5d69-5414-91da-c813d0b8427e', '9c2a66a1-aa21-52b8-b40f-4cfa2a0bbe73', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The minutes should capture the dissenting view, the final decision rationale, and the accountability mechanism governing implementation and review.","explanation":"The missing C1 business expression is “strategic trade-off”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"strategic trade-off","id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L3_D14","is_correct":true},{"audio_text":"dissenting view","id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L3_D15","is_correct":false},{"audio_text":"accountability mechanism","id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L3_D16","is_correct":false}],"sentence_template":"The minutes should capture the dissenting view, the final decision rationale, and the accountability mechanism governing implementation and review."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9b64f8f-e634-5d04-86a0-271f2c9efdbc', '9c2a66a1-aa21-52b8-b40f-4cfa2a0bbe73', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"strategic trade-off","explanation":"The complete business statement uses “strategic trade-off” accurately in context.","hint_prefix":"stra","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The minutes should capture the dissenting view, the final decision rationale, and the accountability mechanism governing implementation and review."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a0644936-c365-5643-a1d2-27e6cad34bfe', '9c2a66a1-aa21-52b8-b40f-4cfa2a0bbe73', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"fiduciary duty","id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L3_D17","text":"fiduciary duty"},{"audio_text":"decision rationale","id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L3_D18","text":"decision rationale"},{"audio_text":"strategic trade-off","id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L3_D19","text":"strategic trade-off"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90ead68e-3be0-5d9b-8a6c-e2596d9e8413', '9c2a66a1-aa21-52b8-b40f-4cfa2a0bbe73', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Recording Decisions and Accountability”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L3_D20","is_correct":true,"text":"The minutes should capture the dissenting view, the final decision rationale, and the accountability mechanism governing implementation and review."},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L3_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_EXECUTIVE_DECISION_MAKING_AND_BOARD_COMMUNICATION_L3_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3525a5eb-14cf-5bb2-a52c-960c922b6331', '9c2a66a1-aa21-52b8-b40f-4cfa2a0bbe73', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('60b7afb5-a1b8-57f7-b982-0d9114bd59eb', 'en', 'fiduciary duty', 'фидуциарная обязанность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('28899217-4bd1-5932-b5d3-dff15fe40596', 'en', 'decision rationale', 'обоснование решения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('89f82061-7cfe-596e-816f-615a93d38f52', 'en', 'strategic trade-off', 'стратегический компромисс', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('109b40ff-3705-52ef-a794-bbf907db5012', 'en', 'material concern', 'существенная проблема', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1dcae13b-4f44-5272-ac9b-095b2eacc9a7', 'en', 'dissenting view', 'особое мнение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('08d0fcb5-5c0a-5ce8-90ca-9fbfb57eb699', 'en', 'governance oversight', 'управленческий надзор', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('192503c3-5cde-55aa-8330-6a579b3bceb3', 'en', 'accountability mechanism', 'механизм подотчётности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('60b7afb5-a1b8-57f7-b982-0d9114bd59eb', 'en', 'fiduciary duty', 'фидуциарная обязанность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('28899217-4bd1-5932-b5d3-dff15fe40596', 'en', 'decision rationale', 'обоснование решения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('89f82061-7cfe-596e-816f-615a93d38f52', 'en', 'strategic trade-off', 'стратегический компромисс', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('109b40ff-3705-52ef-a794-bbf907db5012', 'en', 'material concern', 'существенная проблема', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1dcae13b-4f44-5272-ac9b-095b2eacc9a7', 'en', 'dissenting view', 'особое мнение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('08d0fcb5-5c0a-5ce8-90ca-9fbfb57eb699', 'en', 'governance oversight', 'управленческий надзор', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('192503c3-5cde-55aa-8330-6a579b3bceb3', 'en', 'accountability mechanism', 'механизм подотчётности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('60b7afb5-a1b8-57f7-b982-0d9114bd59eb', 'en', 'fiduciary duty', 'фидуциарная обязанность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('28899217-4bd1-5932-b5d3-dff15fe40596', 'en', 'decision rationale', 'обоснование решения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('89f82061-7cfe-596e-816f-615a93d38f52', 'en', 'strategic trade-off', 'стратегический компромисс', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('109b40ff-3705-52ef-a794-bbf907db5012', 'en', 'material concern', 'существенная проблема', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1dcae13b-4f44-5272-ac9b-095b2eacc9a7', 'en', 'dissenting view', 'особое мнение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('08d0fcb5-5c0a-5ce8-90ca-9fbfb57eb699', 'en', 'governance oversight', 'управленческий надзор', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('192503c3-5cde-55aa-8330-6a579b3bceb3', 'en', 'accountability mechanism', 'механизм подотчётности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3525a5eb-14cf-5bb2-a52c-960c922b6331', id, 'e86b4b24-a085-5880-b803-86f736d332e6', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'fiduciary duty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3525a5eb-14cf-5bb2-a52c-960c922b6331', id, 'e86b4b24-a085-5880-b803-86f736d332e6', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'decision rationale' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3525a5eb-14cf-5bb2-a52c-960c922b6331', id, 'e86b4b24-a085-5880-b803-86f736d332e6', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'strategic trade-off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3525a5eb-14cf-5bb2-a52c-960c922b6331', id, 'e86b4b24-a085-5880-b803-86f736d332e6', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'material concern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3525a5eb-14cf-5bb2-a52c-960c922b6331', id, 'e86b4b24-a085-5880-b803-86f736d332e6', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'dissenting view' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3525a5eb-14cf-5bb2-a52c-960c922b6331', id, 'e86b4b24-a085-5880-b803-86f736d332e6', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'governance oversight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3525a5eb-14cf-5bb2-a52c-960c922b6331', id, 'e86b4b24-a085-5880-b803-86f736d332e6', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'accountability mechanism' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3525a5eb-14cf-5bb2-a52c-960c922b6331', id, 'b0072f8a-b592-58f4-a494-18bedb3b8487', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'fiduciary duty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3525a5eb-14cf-5bb2-a52c-960c922b6331', id, 'b0072f8a-b592-58f4-a494-18bedb3b8487', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'decision rationale' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3525a5eb-14cf-5bb2-a52c-960c922b6331', id, 'b0072f8a-b592-58f4-a494-18bedb3b8487', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'strategic trade-off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3525a5eb-14cf-5bb2-a52c-960c922b6331', id, 'b0072f8a-b592-58f4-a494-18bedb3b8487', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'material concern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3525a5eb-14cf-5bb2-a52c-960c922b6331', id, 'b0072f8a-b592-58f4-a494-18bedb3b8487', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'dissenting view' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3525a5eb-14cf-5bb2-a52c-960c922b6331', id, 'b0072f8a-b592-58f4-a494-18bedb3b8487', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'governance oversight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3525a5eb-14cf-5bb2-a52c-960c922b6331', id, 'b0072f8a-b592-58f4-a494-18bedb3b8487', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'accountability mechanism' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3525a5eb-14cf-5bb2-a52c-960c922b6331', id, '9c2a66a1-aa21-52b8-b40f-4cfa2a0bbe73', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'fiduciary duty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3525a5eb-14cf-5bb2-a52c-960c922b6331', id, '9c2a66a1-aa21-52b8-b40f-4cfa2a0bbe73', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'decision rationale' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3525a5eb-14cf-5bb2-a52c-960c922b6331', id, '9c2a66a1-aa21-52b8-b40f-4cfa2a0bbe73', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'strategic trade-off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3525a5eb-14cf-5bb2-a52c-960c922b6331', id, '9c2a66a1-aa21-52b8-b40f-4cfa2a0bbe73', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'material concern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3525a5eb-14cf-5bb2-a52c-960c922b6331', id, '9c2a66a1-aa21-52b8-b40f-4cfa2a0bbe73', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'dissenting view' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3525a5eb-14cf-5bb2-a52c-960c922b6331', id, '9c2a66a1-aa21-52b8-b40f-4cfa2a0bbe73', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'governance oversight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3525a5eb-14cf-5bb2-a52c-960c922b6331', id, '9c2a66a1-aa21-52b8-b40f-4cfa2a0bbe73', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'accountability mechanism' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
