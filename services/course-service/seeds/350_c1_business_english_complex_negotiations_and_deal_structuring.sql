-- Track: C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('8af46f56-c592-5fd7-ae2d-8d65a5000be8', 'C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING', 'Сложные переговоры и структурирование сделок', 'Освойте продвинутый деловой английский уровня C1 по теме «Сложные переговоры и структурирование сделок» через реалистичные рабочие ситуации, требующие точного анализа, дипломатичной аргументации и ответственных решений.', '{"en":"Complex Negotiations and Deal Structuring","ru":"Сложные переговоры и структурирование сделок"}'::jsonb, '{"en":"Master advanced C1 business English for complex negotiations and deal structuring through realistic workplace situations requiring precise analysis, diplomatic argument, and accountable decisions.","ru":"Освойте продвинутый деловой английский уровня C1 по теме «Сложные переговоры и структурирование сделок» через реалистичные рабочие ситуации, требующие точного анализа, дипломатичной аргументации и ответственных решений."}'::jsonb, 'en', 'C1', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b3a27527-0b0f-5d1b-b74b-97323672d74a', NULL, 'Реальная деловая ситуация и ключевые понятия', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Establishing Leverage and Priorities","ru":"Реальная деловая ситуация и ключевые понятия"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78331281-9872-571a-9969-8815890fba15', 'b3a27527-0b0f-5d1b-b74b-97323672d74a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L1_D01","left":"negotiating leverage","right":"переговорное преимущество"},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L1_D02","left":"walk-away point","right":"предел допустимых условий"},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L1_D03","left":"contingent clause","right":"условная оговорка"},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L1_D04","left":"value exchange","right":"обмен ценностями"},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L1_D05","left":"due diligence condition","right":"условие комплексной проверки"},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L1_D06","left":"representations and warranties","right":"заявления и гарантии"},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L1_D07","left":"binding term sheet","right":"обязательное соглашение об основных условиях"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e03111ac-b085-5e8a-becc-7a975afa36ac', 'b3a27527-0b0f-5d1b-b74b-97323672d74a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L1_D08","is_correct":true,"text":"Before disclosing our walk-away point, we should test the other party’s priorities and determine where our negotiating leverage is strongest."},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L1_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L1_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3c8b1d29-cf59-5c7e-92aa-c8bb8c21b5ce', 'b3a27527-0b0f-5d1b-b74b-97323672d74a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Before disclosing our walk-away point, we should test the other party’s priorities and determine where our negotiating leverage is strongest.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Прежде чем раскрывать предел допустимых условий, следует проверить приоритеты другой стороны и определить, где наше переговорное преимущество наиболее сильное.","target_language":"en","word_bank":["Before","disclosing","our","walk-away","point",",","we","should","test","the","other","party’s","priorities","and","determine","where","our","negotiating","leverage","is","strongest","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('44f3838f-c6a4-52f1-acd2-8151e78eb675', 'b3a27527-0b0f-5d1b-b74b-97323672d74a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"negotiating leverage","instruction":"Выберите подходящее слово.","options":["negotiating leverage","value exchange","representations and warranties"],"sentence_template":"Before disclosing our walk-away point, we should test the other party’s priorities and determine where our ___ is strongest."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e8f281c1-64d6-53d7-be26-2ccba4434c98', 'b3a27527-0b0f-5d1b-b74b-97323672d74a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Before","disclosing","our","walk-away","point",",","we","should","test","the","other","party’s","priorities","and","determine","where","our","negotiating","leverage","is","strongest","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","strongest","is","leverage","negotiating","our","where","determine","and","priorities","party’s","other","the","test","should","we",",","point","walk-away","our","disclosing","Before"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f2870a86-0397-57cd-a1cc-9cb8567a68fb', 'b3a27527-0b0f-5d1b-b74b-97323672d74a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Before disclosing our walk-away point, we should test the other party’s priorities and determine where our negotiating leverage is strongest. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('81a0f551-8319-53a3-9628-9de3f9a4905c', 'b3a27527-0b0f-5d1b-b74b-97323672d74a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Before disclosing our walk-away point, we should test the other party’s priorities and determine where our negotiating leverage is strongest. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Прежде чем раскрывать предел допустимых условий, следует проверить приоритеты другой стороны и определить, где наше переговорное преимущество наиболее сильное. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('500bda03-951c-5bf9-9a40-ec6ef0156572', 'b3a27527-0b0f-5d1b-b74b-97323672d74a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"Before disclosing our walk-away point, we should test the other party’s priorities and determine where our negotiating leverage is strongest.","translation":"Прежде чем раскрывать предел допустимых условий, следует проверить приоритеты другой стороны и определить, где наше переговорное преимущество наиболее сильное.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Establishing Leverage and Priorities"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4f35d366-6d1d-5c84-8c56-b3915ea8b553', 'b3a27527-0b0f-5d1b-b74b-97323672d74a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“negotiating leverage” means an advantage that strengthens one party’s bargaining position.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L1_D11","is_correct":true,"text":"an advantage that strengthens one party’s bargaining position"},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L1_D12","is_correct":false,"text":"the least favourable terms a party will accept"},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L1_D13","is_correct":false,"text":"a contract term activated by a specified future event"}],"word":"negotiating leverage"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8f0fad8e-0430-5727-acf4-c379c4f8fd49', 'b3a27527-0b0f-5d1b-b74b-97323672d74a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Before disclosing our walk-away point, we should test the other party’s priorities and determine where our negotiating leverage is strongest.","explanation":"The missing C1 business expression is “negotiating leverage”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"negotiating leverage","id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L1_D14","is_correct":true},{"audio_text":"contingent clause","id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L1_D15","is_correct":false},{"audio_text":"due diligence condition","id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L1_D16","is_correct":false}],"sentence_template":"Before disclosing our walk-away point, we should test the other party’s priorities and determine where our ___ is strongest."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6f6c4e54-722e-5c49-85dc-1a1164b287cc', 'b3a27527-0b0f-5d1b-b74b-97323672d74a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"negotiating leverage","explanation":"The complete business statement uses “negotiating leverage” accurately in context.","hint_prefix":"nego","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Before disclosing our walk-away point, we should test the other party’s priorities and determine where our ___ is strongest."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d6685ae8-3745-5c6e-b79b-0026f05c397c', 'b3a27527-0b0f-5d1b-b74b-97323672d74a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"negotiating leverage","id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L1_D17","text":"negotiating leverage"},{"audio_text":"walk-away point","id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L1_D18","text":"walk-away point"},{"audio_text":"contingent clause","id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L1_D19","text":"contingent clause"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b6ef179-ad0f-5051-84f8-a2f4a17ab926', 'b3a27527-0b0f-5d1b-b74b-97323672d74a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Establishing Leverage and Priorities”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L1_D20","is_correct":true,"text":"Before disclosing our walk-away point, we should test the other party’s priorities and determine where our negotiating leverage is strongest."},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L1_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L1_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8af46f56-c592-5fd7-ae2d-8d65a5000be8', 'b3a27527-0b0f-5d1b-b74b-97323672d74a', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c0f53246-cf11-5c88-8241-08705d2c590e', NULL, 'Анализ, аргументация и взаимодействие', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Trading Concessions Without Losing Value","ru":"Анализ, аргументация и взаимодействие"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4f5e05cd-c4ae-5c9c-aa87-e4065e317622', 'c0f53246-cf11-5c88-8241-08705d2c590e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L2_D01","left":"negotiating leverage","right":"переговорное преимущество"},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L2_D02","left":"walk-away point","right":"предел допустимых условий"},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L2_D03","left":"contingent clause","right":"условная оговорка"},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L2_D04","left":"value exchange","right":"обмен ценностями"},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L2_D05","left":"due diligence condition","right":"условие комплексной проверки"},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L2_D06","left":"representations and warranties","right":"заявления и гарантии"},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L2_D07","left":"binding term sheet","right":"обязательное соглашение об основных условиях"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e0af744f-d316-52c0-b79a-a2647642d390', 'c0f53246-cf11-5c88-8241-08705d2c590e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L2_D08","is_correct":true,"text":"We can accept the revised payment schedule provided that the value exchange includes a longer commitment and a contingent clause protecting volume."},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L2_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L2_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fa21248d-ae44-50e6-88c8-c7f8f4655931', 'c0f53246-cf11-5c88-8241-08705d2c590e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We can accept the revised payment schedule provided that the value exchange includes a longer commitment and a contingent clause protecting volume.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мы можем принять пересмотренный график платежей при условии, что обмен ценностями включает более длительное обязательство и условную оговорку, защищающую объём.","target_language":"en","word_bank":["We","can","accept","the","revised","payment","schedule","provided","that","the","value","exchange","includes","a","longer","commitment","and","a","contingent","clause","protecting","volume","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da797254-f3aa-5876-a41c-507d9fe187ab', 'c0f53246-cf11-5c88-8241-08705d2c590e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"walk-away point","instruction":"Выберите подходящее слово.","options":["walk-away point","due diligence condition","binding term sheet"],"sentence_template":"We can accept the revised payment schedule provided that the value exchange includes a longer commitment and a contingent clause protecting volume."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc19e669-ef26-5f6a-b34f-7acf3d2d5dd6', 'c0f53246-cf11-5c88-8241-08705d2c590e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","can","accept","the","revised","payment","schedule","provided","that","the","value","exchange","includes","a","longer","commitment","and","a","contingent","clause","protecting","volume","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","volume","protecting","clause","contingent","a","and","commitment","longer","a","includes","exchange","value","the","that","provided","schedule","payment","revised","the","accept","can","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2984aeef-cc61-5331-81ff-a7cc78e757e9', 'c0f53246-cf11-5c88-8241-08705d2c590e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We can accept the revised payment schedule provided that the value exchange includes a longer commitment and a contingent clause protecting volume. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f3d250d1-39d2-57e4-81eb-84d095977ac6', 'c0f53246-cf11-5c88-8241-08705d2c590e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We can accept the revised payment schedule provided that the value exchange includes a longer commitment and a contingent clause protecting volume. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Мы можем принять пересмотренный график платежей при условии, что обмен ценностями включает более длительное обязательство и условную оговорку, защищающую объём. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('feb99bbf-f320-5747-8168-7587b6ef8b93', 'c0f53246-cf11-5c88-8241-08705d2c590e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"We can accept the revised payment schedule provided that the value exchange includes a longer commitment and a contingent clause protecting volume.","translation":"Мы можем принять пересмотренный график платежей при условии, что обмен ценностями включает более длительное обязательство и условную оговорку, защищающую объём.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Trading Concessions Without Losing Value"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3808f217-eccf-5397-a781-94ffbb3449c3', 'c0f53246-cf11-5c88-8241-08705d2c590e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“walk-away point” means the least favourable terms a party will accept.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L2_D11","is_correct":true,"text":"the least favourable terms a party will accept"},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L2_D12","is_correct":false,"text":"a contract term activated by a specified future event"},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L2_D13","is_correct":false,"text":"a negotiated trade in which each side receives a valued benefit"}],"word":"walk-away point"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9fa7acb6-23b2-5af2-b7a1-d7dc10ea4f43', 'c0f53246-cf11-5c88-8241-08705d2c590e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We can accept the revised payment schedule provided that the value exchange includes a longer commitment and a contingent clause protecting volume.","explanation":"The missing C1 business expression is “walk-away point”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"walk-away point","id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L2_D14","is_correct":true},{"audio_text":"value exchange","id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L2_D15","is_correct":false},{"audio_text":"representations and warranties","id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L2_D16","is_correct":false}],"sentence_template":"We can accept the revised payment schedule provided that the value exchange includes a longer commitment and a contingent clause protecting volume."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('92be8020-90af-50fd-b96e-c47cc4239338', 'c0f53246-cf11-5c88-8241-08705d2c590e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"walk-away point","explanation":"The complete business statement uses “walk-away point” accurately in context.","hint_prefix":"walk","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We can accept the revised payment schedule provided that the value exchange includes a longer commitment and a contingent clause protecting volume."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ade37dfd-1a45-5571-8d7b-7890875b951d', 'c0f53246-cf11-5c88-8241-08705d2c590e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"negotiating leverage","id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L2_D17","text":"negotiating leverage"},{"audio_text":"walk-away point","id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L2_D18","text":"walk-away point"},{"audio_text":"contingent clause","id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L2_D19","text":"contingent clause"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('272f04ce-b6dc-55be-8a77-2645223b40c6', 'c0f53246-cf11-5c88-8241-08705d2c590e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Trading Concessions Without Losing Value”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L2_D20","is_correct":true,"text":"We can accept the revised payment schedule provided that the value exchange includes a longer commitment and a contingent clause protecting volume."},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L2_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L2_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8af46f56-c592-5fd7-ae2d-8d65a5000be8', 'c0f53246-cf11-5c88-8241-08705d2c590e', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('919b8008-0ef7-541b-9548-580175e97283', NULL, 'Решение, ответственность и последующие действия', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Closing and Documenting the Deal","ru":"Решение, ответственность и последующие действия"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f51ab256-b8fc-5387-b3c7-4535566e80a9', '919b8008-0ef7-541b-9548-580175e97283', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L3_D01","left":"negotiating leverage","right":"переговорное преимущество"},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L3_D02","left":"walk-away point","right":"предел допустимых условий"},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L3_D03","left":"contingent clause","right":"условная оговорка"},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L3_D04","left":"value exchange","right":"обмен ценностями"},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L3_D05","left":"due diligence condition","right":"условие комплексной проверки"},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L3_D06","left":"representations and warranties","right":"заявления и гарантии"},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L3_D07","left":"binding term sheet","right":"обязательное соглашение об основных условиях"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('38ccdb02-d907-5767-aff2-011018746386', '919b8008-0ef7-541b-9548-580175e97283', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L3_D08","is_correct":true,"text":"The binding term sheet must state which provisions take immediate effect and which remain subject to due diligence and definitive documentation."},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L3_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L3_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b6fedbc-d755-5327-8cea-3cd0d5204e50', '919b8008-0ef7-541b-9548-580175e97283', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The binding term sheet must state which provisions take immediate effect and which remain subject to due diligence and definitive documentation.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Обязательное соглашение об основных условиях должно указывать, какие положения вступают в силу немедленно, а какие зависят от комплексной проверки и окончательной документации.","target_language":"en","word_bank":["The","binding","term","sheet","must","state","which","provisions","take","immediate","effect","and","which","remain","subject","to","due","diligence","and","definitive","documentation","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('20f8eb24-cb44-544b-9bd6-90d97652c795', '919b8008-0ef7-541b-9548-580175e97283', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"contingent clause","instruction":"Выберите подходящее слово.","options":["contingent clause","representations and warranties","negotiating leverage"],"sentence_template":"The binding term sheet must state which provisions take immediate effect and which remain subject to due diligence and definitive documentation."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('26859633-5c24-5bdc-ab8c-b7dbaae2b78c', '919b8008-0ef7-541b-9548-580175e97283', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","binding","term","sheet","must","state","which","provisions","take","immediate","effect","and","which","remain","subject","to","due","diligence","and","definitive","documentation","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","documentation","definitive","and","diligence","due","to","subject","remain","which","and","effect","immediate","take","provisions","which","state","must","sheet","term","binding","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a371a5c6-2167-56ab-b7d9-96898a8e842c', '919b8008-0ef7-541b-9548-580175e97283', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The binding term sheet must state which provisions take immediate effect and which remain subject to due diligence and definitive documentation. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f897e2fb-d350-5504-bb73-e51bed53a889', '919b8008-0ef7-541b-9548-580175e97283', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The binding term sheet must state which provisions take immediate effect and which remain subject to due diligence and definitive documentation. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Обязательное соглашение об основных условиях должно указывать, какие положения вступают в силу немедленно, а какие зависят от комплексной проверки и окончательной документации. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('72c0ee4b-0f43-53ad-8026-3a951d9bd204', '919b8008-0ef7-541b-9548-580175e97283', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"The binding term sheet must state which provisions take immediate effect and which remain subject to due diligence and definitive documentation.","translation":"Обязательное соглашение об основных условиях должно указывать, какие положения вступают в силу немедленно, а какие зависят от комплексной проверки и окончательной документации.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Closing and Documenting the Deal"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a3cb81bd-4d4e-5fac-8ea0-0668073198dd', '919b8008-0ef7-541b-9548-580175e97283', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“contingent clause” means a contract term activated by a specified future event.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L3_D11","is_correct":true,"text":"a contract term activated by a specified future event"},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L3_D12","is_correct":false,"text":"a negotiated trade in which each side receives a valued benefit"},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L3_D13","is_correct":false,"text":"a requirement making completion dependent on satisfactory investigation"}],"word":"contingent clause"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c34291d6-2741-5265-84f8-2f125043bdda', '919b8008-0ef7-541b-9548-580175e97283', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The binding term sheet must state which provisions take immediate effect and which remain subject to due diligence and definitive documentation.","explanation":"The missing C1 business expression is “contingent clause”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"contingent clause","id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L3_D14","is_correct":true},{"audio_text":"due diligence condition","id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L3_D15","is_correct":false},{"audio_text":"binding term sheet","id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L3_D16","is_correct":false}],"sentence_template":"The binding term sheet must state which provisions take immediate effect and which remain subject to due diligence and definitive documentation."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8dfd27b4-fdcd-5268-822f-95132bbe64af', '919b8008-0ef7-541b-9548-580175e97283', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"contingent clause","explanation":"The complete business statement uses “contingent clause” accurately in context.","hint_prefix":"cont","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The binding term sheet must state which provisions take immediate effect and which remain subject to due diligence and definitive documentation."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1a325ae2-bfec-52da-ba91-d4fcdebeaa79', '919b8008-0ef7-541b-9548-580175e97283', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"negotiating leverage","id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L3_D17","text":"negotiating leverage"},{"audio_text":"walk-away point","id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L3_D18","text":"walk-away point"},{"audio_text":"contingent clause","id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L3_D19","text":"contingent clause"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5beb5734-e8dd-55e1-b479-42cc8bb3b111', '919b8008-0ef7-541b-9548-580175e97283', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Closing and Documenting the Deal”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L3_D20","is_correct":true,"text":"The binding term sheet must state which provisions take immediate effect and which remain subject to due diligence and definitive documentation."},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L3_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_COMPLEX_NEGOTIATIONS_AND_DEAL_STRUCTURING_L3_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8af46f56-c592-5fd7-ae2d-8d65a5000be8', '919b8008-0ef7-541b-9548-580175e97283', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a8ffe721-b9a7-541f-a225-5b16f8b3158b', 'en', 'negotiating leverage', 'переговорное преимущество', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6faeb86d-a910-5ee5-9528-31d3084e5e83', 'en', 'walk-away point', 'предел допустимых условий', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1e9db402-3c9d-5cde-ab47-5c816fd04140', 'en', 'contingent clause', 'условная оговорка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c1b2e665-74fe-5850-9b5c-df981baff6b7', 'en', 'value exchange', 'обмен ценностями', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('448bd60a-a69d-504a-9868-932df3475260', 'en', 'due diligence condition', 'условие комплексной проверки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7fd8bbf9-8e03-5953-849d-d84aca47a78d', 'en', 'representations and warranties', 'заявления и гарантии', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('108ee983-62ff-57e9-8403-37c2f8208ac2', 'en', 'binding term sheet', 'обязательное соглашение об основных условиях', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a8ffe721-b9a7-541f-a225-5b16f8b3158b', 'en', 'negotiating leverage', 'переговорное преимущество', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6faeb86d-a910-5ee5-9528-31d3084e5e83', 'en', 'walk-away point', 'предел допустимых условий', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1e9db402-3c9d-5cde-ab47-5c816fd04140', 'en', 'contingent clause', 'условная оговорка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c1b2e665-74fe-5850-9b5c-df981baff6b7', 'en', 'value exchange', 'обмен ценностями', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('448bd60a-a69d-504a-9868-932df3475260', 'en', 'due diligence condition', 'условие комплексной проверки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7fd8bbf9-8e03-5953-849d-d84aca47a78d', 'en', 'representations and warranties', 'заявления и гарантии', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('108ee983-62ff-57e9-8403-37c2f8208ac2', 'en', 'binding term sheet', 'обязательное соглашение об основных условиях', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a8ffe721-b9a7-541f-a225-5b16f8b3158b', 'en', 'negotiating leverage', 'переговорное преимущество', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6faeb86d-a910-5ee5-9528-31d3084e5e83', 'en', 'walk-away point', 'предел допустимых условий', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1e9db402-3c9d-5cde-ab47-5c816fd04140', 'en', 'contingent clause', 'условная оговорка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c1b2e665-74fe-5850-9b5c-df981baff6b7', 'en', 'value exchange', 'обмен ценностями', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('448bd60a-a69d-504a-9868-932df3475260', 'en', 'due diligence condition', 'условие комплексной проверки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7fd8bbf9-8e03-5953-849d-d84aca47a78d', 'en', 'representations and warranties', 'заявления и гарантии', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('108ee983-62ff-57e9-8403-37c2f8208ac2', 'en', 'binding term sheet', 'обязательное соглашение об основных условиях', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8af46f56-c592-5fd7-ae2d-8d65a5000be8', id, 'b3a27527-0b0f-5d1b-b74b-97323672d74a', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'negotiating leverage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8af46f56-c592-5fd7-ae2d-8d65a5000be8', id, 'b3a27527-0b0f-5d1b-b74b-97323672d74a', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'walk-away point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8af46f56-c592-5fd7-ae2d-8d65a5000be8', id, 'b3a27527-0b0f-5d1b-b74b-97323672d74a', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'contingent clause' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8af46f56-c592-5fd7-ae2d-8d65a5000be8', id, 'b3a27527-0b0f-5d1b-b74b-97323672d74a', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'value exchange' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8af46f56-c592-5fd7-ae2d-8d65a5000be8', id, 'b3a27527-0b0f-5d1b-b74b-97323672d74a', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'due diligence condition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8af46f56-c592-5fd7-ae2d-8d65a5000be8', id, 'b3a27527-0b0f-5d1b-b74b-97323672d74a', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'representations and warranties' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8af46f56-c592-5fd7-ae2d-8d65a5000be8', id, 'b3a27527-0b0f-5d1b-b74b-97323672d74a', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'binding term sheet' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8af46f56-c592-5fd7-ae2d-8d65a5000be8', id, 'c0f53246-cf11-5c88-8241-08705d2c590e', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'negotiating leverage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8af46f56-c592-5fd7-ae2d-8d65a5000be8', id, 'c0f53246-cf11-5c88-8241-08705d2c590e', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'walk-away point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8af46f56-c592-5fd7-ae2d-8d65a5000be8', id, 'c0f53246-cf11-5c88-8241-08705d2c590e', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'contingent clause' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8af46f56-c592-5fd7-ae2d-8d65a5000be8', id, 'c0f53246-cf11-5c88-8241-08705d2c590e', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'value exchange' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8af46f56-c592-5fd7-ae2d-8d65a5000be8', id, 'c0f53246-cf11-5c88-8241-08705d2c590e', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'due diligence condition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8af46f56-c592-5fd7-ae2d-8d65a5000be8', id, 'c0f53246-cf11-5c88-8241-08705d2c590e', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'representations and warranties' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8af46f56-c592-5fd7-ae2d-8d65a5000be8', id, 'c0f53246-cf11-5c88-8241-08705d2c590e', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'binding term sheet' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8af46f56-c592-5fd7-ae2d-8d65a5000be8', id, '919b8008-0ef7-541b-9548-580175e97283', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'negotiating leverage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8af46f56-c592-5fd7-ae2d-8d65a5000be8', id, '919b8008-0ef7-541b-9548-580175e97283', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'walk-away point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8af46f56-c592-5fd7-ae2d-8d65a5000be8', id, '919b8008-0ef7-541b-9548-580175e97283', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'contingent clause' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8af46f56-c592-5fd7-ae2d-8d65a5000be8', id, '919b8008-0ef7-541b-9548-580175e97283', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'value exchange' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8af46f56-c592-5fd7-ae2d-8d65a5000be8', id, '919b8008-0ef7-541b-9548-580175e97283', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'due diligence condition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8af46f56-c592-5fd7-ae2d-8d65a5000be8', id, '919b8008-0ef7-541b-9548-580175e97283', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'representations and warranties' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8af46f56-c592-5fd7-ae2d-8d65a5000be8', id, '919b8008-0ef7-541b-9548-580175e97283', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'binding term sheet' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
