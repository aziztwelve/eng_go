-- Track: C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('181af460-68c1-54e8-83c4-bc6bcf2b8a22', 'C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK', 'Выход на международные рынки и геополитические риски', 'Освойте продвинутый деловой английский уровня C1 по теме «Выход на международные рынки и геополитические риски» через реалистичные рабочие ситуации, требующие точного анализа, дипломатичной аргументации и ответственных решений.', '{"en":"International Market Entry and Geopolitical Risk","ru":"Выход на международные рынки и геополитические риски"}'::jsonb, '{"en":"Master advanced C1 business English for international market entry and geopolitical risk through realistic workplace situations requiring precise analysis, diplomatic argument, and accountable decisions.","ru":"Освойте продвинутый деловой английский уровня C1 по теме «Выход на международные рынки и геополитические риски» через реалистичные рабочие ситуации, требующие точного анализа, дипломатичной аргументации и ответственных решений."}'::jsonb, 'en', 'C1', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('1aa1778b-b4e0-5e25-be84-6850b37755a5', NULL, 'Реальная деловая ситуация и ключевые понятия', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Evaluating a Foreign Market","ru":"Реальная деловая ситуация и ключевые понятия"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b13ae35b-6a93-5994-916a-99068e86b563', '1aa1778b-b4e0-5e25-be84-6850b37755a5', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L1_D01","left":"market-entry vehicle","right":"форма выхода на рынок"},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L1_D02","left":"localisation strategy","right":"стратегия локализации"},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L1_D03","left":"political risk","right":"политический риск"},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L1_D04","left":"regulatory divergence","right":"расхождение регулирования"},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L1_D05","left":"foreign-exchange exposure","right":"валютный риск"},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L1_D06","left":"local partner","right":"местный партнёр"},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L1_D07","left":"scenario planning","right":"сценарное планирование"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('11746427-f315-5648-bb4b-6616e1a489c3', '1aa1778b-b4e0-5e25-be84-6850b37755a5', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L1_D08","is_correct":true,"text":"The market-entry vehicle should reflect ownership restrictions, tax exposure, operational control, and the practical value of a local partner."},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L1_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L1_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a021e0c1-aac8-5556-a66f-9af174f37412', '1aa1778b-b4e0-5e25-be84-6850b37755a5', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The market-entry vehicle should reflect ownership restrictions, tax exposure, operational control, and the practical value of a local partner.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Форма выхода на рынок должна учитывать ограничения собственности, налоговые риски, операционный контроль и практическую ценность местного партнёра.","target_language":"en","word_bank":["The","market-entry","vehicle","should","reflect","ownership","restrictions",",","tax","exposure",",","operational","control",",","and","the","practical","value","of","a","local","partner","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7cbc8abe-c694-51a3-be38-3dd0ae9486e8', '1aa1778b-b4e0-5e25-be84-6850b37755a5', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"market-entry vehicle","instruction":"Выберите подходящее слово.","options":["market-entry vehicle","regulatory divergence","local partner"],"sentence_template":"The ___ should reflect ownership restrictions, tax exposure, operational control, and the practical value of a local partner."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e4fc4ec9-49ea-524a-8a9f-a1731608642f', '1aa1778b-b4e0-5e25-be84-6850b37755a5', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","market-entry","vehicle","should","reflect","ownership","restrictions",",","tax","exposure",",","operational","control",",","and","the","practical","value","of","a","local","partner","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","partner","local","a","of","value","practical","the","and",",","control","operational",",","exposure","tax",",","restrictions","ownership","reflect","should","vehicle","market-entry","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0d967a81-ce94-5fc0-9693-b3b132709539', '1aa1778b-b4e0-5e25-be84-6850b37755a5', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The market-entry vehicle should reflect ownership restrictions, tax exposure, operational control, and the practical value of a local partner. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e774540-39b1-50bf-8fbf-50a1ddd7b2dc', '1aa1778b-b4e0-5e25-be84-6850b37755a5', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The market-entry vehicle should reflect ownership restrictions, tax exposure, operational control, and the practical value of a local partner. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Форма выхода на рынок должна учитывать ограничения собственности, налоговые риски, операционный контроль и практическую ценность местного партнёра. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4235cfc6-e020-5769-84ed-ce930c50fa67', '1aa1778b-b4e0-5e25-be84-6850b37755a5', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"The market-entry vehicle should reflect ownership restrictions, tax exposure, operational control, and the practical value of a local partner.","translation":"Форма выхода на рынок должна учитывать ограничения собственности, налоговые риски, операционный контроль и практическую ценность местного партнёра.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Evaluating a Foreign Market"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('576ae21b-0143-5f9a-bdcf-398730ebf5cf', '1aa1778b-b4e0-5e25-be84-6850b37755a5', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“market-entry vehicle” means the legal or commercial structure used to enter a market.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L1_D11","is_correct":true,"text":"the legal or commercial structure used to enter a market"},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L1_D12","is_correct":false,"text":"adaptation of an offering to local language, culture, and practice"},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L1_D13","is_correct":false,"text":"potential loss caused by political decisions or instability"}],"word":"market-entry vehicle"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('23b1e156-69af-5692-9a46-4ef94dba12d6', '1aa1778b-b4e0-5e25-be84-6850b37755a5', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The market-entry vehicle should reflect ownership restrictions, tax exposure, operational control, and the practical value of a local partner.","explanation":"The missing C1 business expression is “market-entry vehicle”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"market-entry vehicle","id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L1_D14","is_correct":true},{"audio_text":"political risk","id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L1_D15","is_correct":false},{"audio_text":"foreign-exchange exposure","id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L1_D16","is_correct":false}],"sentence_template":"The ___ should reflect ownership restrictions, tax exposure, operational control, and the practical value of a local partner."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6539cb0b-c774-53c4-a5dc-769d8de27fc4', '1aa1778b-b4e0-5e25-be84-6850b37755a5', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"market-entry vehicle","explanation":"The complete business statement uses “market-entry vehicle” accurately in context.","hint_prefix":"mark","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ should reflect ownership restrictions, tax exposure, operational control, and the practical value of a local partner."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21da8789-efdd-5d3f-bd98-ede995b475d7', '1aa1778b-b4e0-5e25-be84-6850b37755a5', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"market-entry vehicle","id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L1_D17","text":"market-entry vehicle"},{"audio_text":"localisation strategy","id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L1_D18","text":"localisation strategy"},{"audio_text":"political risk","id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L1_D19","text":"political risk"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bdbaa9cb-c44b-54d6-9d0c-23566ebce6b6', '1aa1778b-b4e0-5e25-be84-6850b37755a5', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Evaluating a Foreign Market”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L1_D20","is_correct":true,"text":"The market-entry vehicle should reflect ownership restrictions, tax exposure, operational control, and the practical value of a local partner."},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L1_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L1_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('181af460-68c1-54e8-83c4-bc6bcf2b8a22', '1aa1778b-b4e0-5e25-be84-6850b37755a5', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('36142c3c-262a-5a8a-a51b-7d5c4b2130ea', NULL, 'Анализ, аргументация и взаимодействие', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Adapting the Commercial Model","ru":"Анализ, аргументация и взаимодействие"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f87172b-38fa-5bce-8ff5-c8087742b7c2', '36142c3c-262a-5a8a-a51b-7d5c4b2130ea', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L2_D01","left":"market-entry vehicle","right":"форма выхода на рынок"},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L2_D02","left":"localisation strategy","right":"стратегия локализации"},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L2_D03","left":"political risk","right":"политический риск"},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L2_D04","left":"regulatory divergence","right":"расхождение регулирования"},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L2_D05","left":"foreign-exchange exposure","right":"валютный риск"},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L2_D06","left":"local partner","right":"местный партнёр"},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L2_D07","left":"scenario planning","right":"сценарное планирование"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4847069e-5826-52d5-a1ae-1a0a775c8c1f', '36142c3c-262a-5a8a-a51b-7d5c4b2130ea', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L2_D08","is_correct":true,"text":"A credible localisation strategy adapts the customer proposition without compromising the capabilities that create the firm’s competitive advantage."},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L2_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L2_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7205629-52e1-5a84-ba43-c2c0dc4f4c0b', '36142c3c-262a-5a8a-a51b-7d5c4b2130ea', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A credible localisation strategy adapts the customer proposition without compromising the capabilities that create the firm’s competitive advantage.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Убедительная стратегия локализации адаптирует клиентское предложение, не ослабляя возможности, создающие конкурентное преимущество компании.","target_language":"en","word_bank":["A","credible","localisation","strategy","adapts","the","customer","proposition","without","compromising","the","capabilities","that","create","the","firm’s","competitive","advantage","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e069548b-af70-54bc-899a-9494442c565e', '36142c3c-262a-5a8a-a51b-7d5c4b2130ea', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"localisation strategy","instruction":"Выберите подходящее слово.","options":["localisation strategy","foreign-exchange exposure","scenario planning"],"sentence_template":"A credible ___ adapts the customer proposition without compromising the capabilities that create the firm’s competitive advantage."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f14258f9-8e53-5cde-a785-6abd1735e29b', '36142c3c-262a-5a8a-a51b-7d5c4b2130ea', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","credible","localisation","strategy","adapts","the","customer","proposition","without","compromising","the","capabilities","that","create","the","firm’s","competitive","advantage","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","advantage","competitive","firm’s","the","create","that","capabilities","the","compromising","without","proposition","customer","the","adapts","strategy","localisation","credible","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('268c3cc9-f7b9-5bfe-adc9-e129332a774a', '36142c3c-262a-5a8a-a51b-7d5c4b2130ea', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A credible localisation strategy adapts the customer proposition without compromising the capabilities that create the firm’s competitive advantage. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('22a208f7-21ab-5c25-94c3-b261418d2628', '36142c3c-262a-5a8a-a51b-7d5c4b2130ea', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A credible localisation strategy adapts the customer proposition without compromising the capabilities that create the firm’s competitive advantage. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Убедительная стратегия локализации адаптирует клиентское предложение, не ослабляя возможности, создающие конкурентное преимущество компании. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c04bb82a-38ce-5571-b72a-69fb1e21fff7', '36142c3c-262a-5a8a-a51b-7d5c4b2130ea', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"A credible localisation strategy adapts the customer proposition without compromising the capabilities that create the firm’s competitive advantage.","translation":"Убедительная стратегия локализации адаптирует клиентское предложение, не ослабляя возможности, создающие конкурентное преимущество компании.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Adapting the Commercial Model"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('52c5e7bd-9725-55e1-98a7-5999290402dc', '36142c3c-262a-5a8a-a51b-7d5c4b2130ea', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“localisation strategy” means adaptation of an offering to local language, culture, and practice.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L2_D11","is_correct":true,"text":"adaptation of an offering to local language, culture, and practice"},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L2_D12","is_correct":false,"text":"potential loss caused by political decisions or instability"},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L2_D13","is_correct":false,"text":"differences between legal requirements across markets"}],"word":"localisation strategy"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6af67057-6215-5a0f-a009-b16ed8d92218', '36142c3c-262a-5a8a-a51b-7d5c4b2130ea', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A credible localisation strategy adapts the customer proposition without compromising the capabilities that create the firm’s competitive advantage.","explanation":"The missing C1 business expression is “localisation strategy”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"localisation strategy","id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L2_D14","is_correct":true},{"audio_text":"regulatory divergence","id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L2_D15","is_correct":false},{"audio_text":"local partner","id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L2_D16","is_correct":false}],"sentence_template":"A credible ___ adapts the customer proposition without compromising the capabilities that create the firm’s competitive advantage."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('62626e85-4af1-51ed-8d7f-f9205bfa557c', '36142c3c-262a-5a8a-a51b-7d5c4b2130ea', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"localisation strategy","explanation":"The complete business statement uses “localisation strategy” accurately in context.","hint_prefix":"loca","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A credible ___ adapts the customer proposition without compromising the capabilities that create the firm’s competitive advantage."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4327648d-8044-58f1-a93b-41c02daf0bd9', '36142c3c-262a-5a8a-a51b-7d5c4b2130ea', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"market-entry vehicle","id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L2_D17","text":"market-entry vehicle"},{"audio_text":"localisation strategy","id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L2_D18","text":"localisation strategy"},{"audio_text":"political risk","id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L2_D19","text":"political risk"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f64fbfc9-1f6a-52f2-b5ed-cda4d5254564', '36142c3c-262a-5a8a-a51b-7d5c4b2130ea', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Adapting the Commercial Model”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L2_D20","is_correct":true,"text":"A credible localisation strategy adapts the customer proposition without compromising the capabilities that create the firm’s competitive advantage."},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L2_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L2_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('181af460-68c1-54e8-83c4-bc6bcf2b8a22', '36142c3c-262a-5a8a-a51b-7d5c4b2130ea', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('eb787026-b85d-59c9-b728-7024832a80a5', NULL, 'Решение, ответственность и последующие действия', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Managing Political and Regulatory Exposure","ru":"Решение, ответственность и последующие действия"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7ba941cb-ab06-5d27-8fa4-c68a42849241', 'eb787026-b85d-59c9-b728-7024832a80a5', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L3_D01","left":"market-entry vehicle","right":"форма выхода на рынок"},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L3_D02","left":"localisation strategy","right":"стратегия локализации"},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L3_D03","left":"political risk","right":"политический риск"},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L3_D04","left":"regulatory divergence","right":"расхождение регулирования"},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L3_D05","left":"foreign-exchange exposure","right":"валютный риск"},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L3_D06","left":"local partner","right":"местный партнёр"},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L3_D07","left":"scenario planning","right":"сценарное планирование"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('379c65bd-07e2-5e4d-9ffe-7251cffa6a70', 'eb787026-b85d-59c9-b728-7024832a80a5', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L3_D08","is_correct":true,"text":"Scenario planning should quantify foreign-exchange exposure and identify trigger points for responding to political risk or regulatory divergence."},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L3_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L3_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('403bbce0-fec7-50c4-8808-a0417014f04f', 'eb787026-b85d-59c9-b728-7024832a80a5', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Scenario planning should quantify foreign-exchange exposure and identify trigger points for responding to political risk or regulatory divergence.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Сценарное планирование должно количественно оценивать валютный риск и определять пороговые условия реагирования на политические риски или расхождение регулирования.","target_language":"en","word_bank":["Scenario","planning","should","quantify","foreign-exchange","exposure","and","identify","trigger","points","for","responding","to","political","risk","or","regulatory","divergence","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da65c325-da2d-5d00-b6bf-cba5ada19e19', 'eb787026-b85d-59c9-b728-7024832a80a5', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"political risk","instruction":"Выберите подходящее слово.","options":["political risk","local partner","market-entry vehicle"],"sentence_template":"Scenario planning should quantify foreign-exchange exposure and identify trigger points for responding to ___ or regulatory divergence."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7c2febe3-bc23-57ca-9329-a1cd5f1b580e', 'eb787026-b85d-59c9-b728-7024832a80a5', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Scenario","planning","should","quantify","foreign-exchange","exposure","and","identify","trigger","points","for","responding","to","political","risk","or","regulatory","divergence","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","divergence","regulatory","or","risk","political","to","responding","for","points","trigger","identify","and","exposure","foreign-exchange","quantify","should","planning","Scenario"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b18f6263-0e99-5305-9472-4b6a299568d6', 'eb787026-b85d-59c9-b728-7024832a80a5', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Scenario planning should quantify foreign-exchange exposure and identify trigger points for responding to political risk or regulatory divergence. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e05dbda0-a267-5a2f-aba0-6c4fdd21f631', 'eb787026-b85d-59c9-b728-7024832a80a5', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Scenario planning should quantify foreign-exchange exposure and identify trigger points for responding to political risk or regulatory divergence. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Сценарное планирование должно количественно оценивать валютный риск и определять пороговые условия реагирования на политические риски или расхождение регулирования. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('03474cc5-c1ed-5ee0-b4b7-7795fd84b46f', 'eb787026-b85d-59c9-b728-7024832a80a5', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"Scenario planning should quantify foreign-exchange exposure and identify trigger points for responding to political risk or regulatory divergence.","translation":"Сценарное планирование должно количественно оценивать валютный риск и определять пороговые условия реагирования на политические риски или расхождение регулирования.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Managing Political and Regulatory Exposure"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b64acbac-1527-57ff-9508-16f54d41df4e', 'eb787026-b85d-59c9-b728-7024832a80a5', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“political risk” means potential loss caused by political decisions or instability.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L3_D11","is_correct":true,"text":"potential loss caused by political decisions or instability"},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L3_D12","is_correct":false,"text":"differences between legal requirements across markets"},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L3_D13","is_correct":false,"text":"potential financial impact of currency movements"}],"word":"political risk"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d72c1d92-1ecf-5216-bd42-4ba3ddd7ee8c', 'eb787026-b85d-59c9-b728-7024832a80a5', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Scenario planning should quantify foreign-exchange exposure and identify trigger points for responding to political risk or regulatory divergence.","explanation":"The missing C1 business expression is “political risk”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"political risk","id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L3_D14","is_correct":true},{"audio_text":"foreign-exchange exposure","id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L3_D15","is_correct":false},{"audio_text":"scenario planning","id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L3_D16","is_correct":false}],"sentence_template":"Scenario planning should quantify foreign-exchange exposure and identify trigger points for responding to ___ or regulatory divergence."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('307e51fd-dc8a-5e2f-8eee-4f9e579073bb', 'eb787026-b85d-59c9-b728-7024832a80a5', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"political risk","explanation":"The complete business statement uses “political risk” accurately in context.","hint_prefix":"poli","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Scenario planning should quantify foreign-exchange exposure and identify trigger points for responding to ___ or regulatory divergence."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('74de4e19-67f2-54aa-b48b-94d1e3e92e72', 'eb787026-b85d-59c9-b728-7024832a80a5', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"market-entry vehicle","id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L3_D17","text":"market-entry vehicle"},{"audio_text":"localisation strategy","id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L3_D18","text":"localisation strategy"},{"audio_text":"political risk","id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L3_D19","text":"political risk"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a163a2ad-370d-5266-ad6f-ccb16be9f692', 'eb787026-b85d-59c9-b728-7024832a80a5', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Managing Political and Regulatory Exposure”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L3_D20","is_correct":true,"text":"Scenario planning should quantify foreign-exchange exposure and identify trigger points for responding to political risk or regulatory divergence."},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L3_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_INTERNATIONAL_MARKET_ENTRY_AND_GEOPOLITICAL_RISK_L3_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('181af460-68c1-54e8-83c4-bc6bcf2b8a22', 'eb787026-b85d-59c9-b728-7024832a80a5', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('83ed30f5-8c39-5769-9858-ce1be4c4ba58', 'en', 'market-entry vehicle', 'форма выхода на рынок', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8b49fc1a-8f02-5b41-b99d-c768e15850fb', 'en', 'localisation strategy', 'стратегия локализации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2ffa0200-30a9-5241-9037-e1c80cff2bd6', 'en', 'political risk', 'политический риск', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('364ae0e9-c6c5-560a-acbe-b0aa76ec1c36', 'en', 'regulatory divergence', 'расхождение регулирования', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1b23a9c0-8f94-59ec-824d-d489529cb5ec', 'en', 'foreign-exchange exposure', 'валютный риск', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('836bdaa4-bf62-5881-a8d5-0d7dafc5256c', 'en', 'local partner', 'местный партнёр', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5428fdf-30e8-5c32-ab81-cb68592946a7', 'en', 'scenario planning', 'сценарное планирование', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('83ed30f5-8c39-5769-9858-ce1be4c4ba58', 'en', 'market-entry vehicle', 'форма выхода на рынок', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8b49fc1a-8f02-5b41-b99d-c768e15850fb', 'en', 'localisation strategy', 'стратегия локализации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2ffa0200-30a9-5241-9037-e1c80cff2bd6', 'en', 'political risk', 'политический риск', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('364ae0e9-c6c5-560a-acbe-b0aa76ec1c36', 'en', 'regulatory divergence', 'расхождение регулирования', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1b23a9c0-8f94-59ec-824d-d489529cb5ec', 'en', 'foreign-exchange exposure', 'валютный риск', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('836bdaa4-bf62-5881-a8d5-0d7dafc5256c', 'en', 'local partner', 'местный партнёр', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5428fdf-30e8-5c32-ab81-cb68592946a7', 'en', 'scenario planning', 'сценарное планирование', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('83ed30f5-8c39-5769-9858-ce1be4c4ba58', 'en', 'market-entry vehicle', 'форма выхода на рынок', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8b49fc1a-8f02-5b41-b99d-c768e15850fb', 'en', 'localisation strategy', 'стратегия локализации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2ffa0200-30a9-5241-9037-e1c80cff2bd6', 'en', 'political risk', 'политический риск', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('364ae0e9-c6c5-560a-acbe-b0aa76ec1c36', 'en', 'regulatory divergence', 'расхождение регулирования', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1b23a9c0-8f94-59ec-824d-d489529cb5ec', 'en', 'foreign-exchange exposure', 'валютный риск', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('836bdaa4-bf62-5881-a8d5-0d7dafc5256c', 'en', 'local partner', 'местный партнёр', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5428fdf-30e8-5c32-ab81-cb68592946a7', 'en', 'scenario planning', 'сценарное планирование', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '181af460-68c1-54e8-83c4-bc6bcf2b8a22', id, '1aa1778b-b4e0-5e25-be84-6850b37755a5', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'market-entry vehicle' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '181af460-68c1-54e8-83c4-bc6bcf2b8a22', id, '1aa1778b-b4e0-5e25-be84-6850b37755a5', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'localisation strategy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '181af460-68c1-54e8-83c4-bc6bcf2b8a22', id, '1aa1778b-b4e0-5e25-be84-6850b37755a5', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'political risk' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '181af460-68c1-54e8-83c4-bc6bcf2b8a22', id, '1aa1778b-b4e0-5e25-be84-6850b37755a5', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'regulatory divergence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '181af460-68c1-54e8-83c4-bc6bcf2b8a22', id, '1aa1778b-b4e0-5e25-be84-6850b37755a5', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'foreign-exchange exposure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '181af460-68c1-54e8-83c4-bc6bcf2b8a22', id, '1aa1778b-b4e0-5e25-be84-6850b37755a5', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'local partner' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '181af460-68c1-54e8-83c4-bc6bcf2b8a22', id, '1aa1778b-b4e0-5e25-be84-6850b37755a5', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'scenario planning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '181af460-68c1-54e8-83c4-bc6bcf2b8a22', id, '36142c3c-262a-5a8a-a51b-7d5c4b2130ea', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'market-entry vehicle' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '181af460-68c1-54e8-83c4-bc6bcf2b8a22', id, '36142c3c-262a-5a8a-a51b-7d5c4b2130ea', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'localisation strategy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '181af460-68c1-54e8-83c4-bc6bcf2b8a22', id, '36142c3c-262a-5a8a-a51b-7d5c4b2130ea', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'political risk' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '181af460-68c1-54e8-83c4-bc6bcf2b8a22', id, '36142c3c-262a-5a8a-a51b-7d5c4b2130ea', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'regulatory divergence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '181af460-68c1-54e8-83c4-bc6bcf2b8a22', id, '36142c3c-262a-5a8a-a51b-7d5c4b2130ea', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'foreign-exchange exposure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '181af460-68c1-54e8-83c4-bc6bcf2b8a22', id, '36142c3c-262a-5a8a-a51b-7d5c4b2130ea', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'local partner' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '181af460-68c1-54e8-83c4-bc6bcf2b8a22', id, '36142c3c-262a-5a8a-a51b-7d5c4b2130ea', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'scenario planning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '181af460-68c1-54e8-83c4-bc6bcf2b8a22', id, 'eb787026-b85d-59c9-b728-7024832a80a5', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'market-entry vehicle' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '181af460-68c1-54e8-83c4-bc6bcf2b8a22', id, 'eb787026-b85d-59c9-b728-7024832a80a5', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'localisation strategy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '181af460-68c1-54e8-83c4-bc6bcf2b8a22', id, 'eb787026-b85d-59c9-b728-7024832a80a5', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'political risk' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '181af460-68c1-54e8-83c4-bc6bcf2b8a22', id, 'eb787026-b85d-59c9-b728-7024832a80a5', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'regulatory divergence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '181af460-68c1-54e8-83c4-bc6bcf2b8a22', id, 'eb787026-b85d-59c9-b728-7024832a80a5', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'foreign-exchange exposure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '181af460-68c1-54e8-83c4-bc6bcf2b8a22', id, 'eb787026-b85d-59c9-b728-7024832a80a5', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'local partner' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '181af460-68c1-54e8-83c4-bc6bcf2b8a22', id, 'eb787026-b85d-59c9-b728-7024832a80a5', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'scenario planning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
