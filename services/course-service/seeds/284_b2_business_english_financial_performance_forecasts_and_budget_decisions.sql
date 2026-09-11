-- Track: B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('37b89511-35a5-559a-92d6-556dbf456f2f', 'B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS', 'Финансовые результаты, прогнозы и бюджетные решения', 'Развивайте точный деловой английский уровня B2 по теме «Финансовые результаты, прогнозы и бюджетные решения», анализируя коммерческие последствия и согласовывая обоснованные решения.', '{"en":"Financial Performance, Forecasts and Budget Decisions","ru":"Финансовые результаты, прогнозы и бюджетные решения"}'::jsonb, '{"en":"Develop precise B2 business English for financial performance, forecasts and budget decisions by analysing commercial implications and negotiating well-supported decisions.","ru":"Развивайте точный деловой английский уровня B2 по теме «Финансовые результаты, прогнозы и бюджетные решения», анализируя коммерческие последствия и согласовывая обоснованные решения."}'::jsonb, 'en', 'B2', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('fde76628-a270-5937-988c-f3c1c1eede64', NULL, 'Деловой контекст и ключевые понятия', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Interpreting Performance Indicators","ru":"Деловой контекст и ключевые понятия"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('56a2dd1b-9945-5c3c-aed4-6203bf2d4713', 'fde76628-a270-5937-988c-f3c1c1eede64', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L1_D01","left":"revenue growth","right":"рост выручки"},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L1_D02","left":"profit margin","right":"маржа прибыли"},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L1_D03","left":"budget variance","right":"отклонение от бюджета"},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L1_D04","left":"cash-flow pressure","right":"давление на денежный поток"},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L1_D05","left":"forecast assumption","right":"допущение прогноза"},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L1_D06","left":"cost overrun","right":"превышение затрат"},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L1_D07","left":"return on investment","right":"окупаемость инвестиций"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f70919ba-2c43-5b33-8d59-d33e96a61dc5', 'fde76628-a270-5937-988c-f3c1c1eede64', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L1_D08","is_correct":true,"text":"Revenue growth exceeded expectations, although the profit margin narrowed because fulfilment and acquisition costs increased."},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L1_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L1_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a4ec5425-45b6-510c-89ef-22cf2f1700de', 'fde76628-a270-5937-988c-f3c1c1eede64', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Revenue growth exceeded expectations, although the profit margin narrowed because fulfilment and acquisition costs increased.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Рост выручки превысил ожидания, хотя маржа прибыли сократилась из-за увеличения затрат на исполнение заказов и привлечение клиентов.","target_language":"en","word_bank":["Revenue","growth","exceeded","expectations",",","although","the","profit","margin","narrowed","because","fulfilment","and","acquisition","costs","increased","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4038c0c7-252f-5ee8-a0f3-6aae00a079c3', 'fde76628-a270-5937-988c-f3c1c1eede64', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"revenue growth","instruction":"Выберите подходящее слово.","options":["revenue growth","cash-flow pressure","cost overrun"],"sentence_template":"___ exceeded expectations, although the profit margin narrowed because fulfilment and acquisition costs increased."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('825b2741-091d-5f87-8147-d60f064ce02b', 'fde76628-a270-5937-988c-f3c1c1eede64', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Revenue","growth","exceeded","expectations",",","although","the","profit","margin","narrowed","because","fulfilment","and","acquisition","costs","increased","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","increased","costs","acquisition","and","fulfilment","because","narrowed","margin","profit","the","although",",","expectations","exceeded","growth","Revenue"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae19b097-7764-58f5-b8b6-328abd741261', 'fde76628-a270-5937-988c-f3c1c1eede64', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Revenue growth exceeded expectations, although the profit margin narrowed because fulfilment and acquisition costs increased. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1799325a-6eb8-5857-9e0b-1c708830ac8f', 'fde76628-a270-5937-988c-f3c1c1eede64', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Revenue growth exceeded expectations, although the profit margin narrowed because fulfilment and acquisition costs increased. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Рост выручки превысил ожидания, хотя маржа прибыли сократилась из-за увеличения затрат на исполнение заказов и привлечение клиентов. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1341d78-444c-54c0-a242-08b0ce233feb', 'fde76628-a270-5937-988c-f3c1c1eede64', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"Revenue growth exceeded expectations, although the profit margin narrowed because fulfilment and acquisition costs increased.","translation":"Рост выручки превысил ожидания, хотя маржа прибыли сократилась из-за увеличения затрат на исполнение заказов и привлечение клиентов.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Interpreting Performance Indicators"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('37a7df04-f61b-5b5a-b9bb-2adb82c225a5', 'fde76628-a270-5937-988c-f3c1c1eede64', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“revenue growth” means an increase in income from business activity.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L1_D11","is_correct":true,"text":"an increase in income from business activity"},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L1_D12","is_correct":false,"text":"profit expressed as a proportion of revenue"},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L1_D13","is_correct":false,"text":"the difference between planned and actual figures"}],"word":"revenue growth"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a3f84e99-ff7d-5290-80ec-8dc82702076a', 'fde76628-a270-5937-988c-f3c1c1eede64', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Revenue growth exceeded expectations, although the profit margin narrowed because fulfilment and acquisition costs increased.","explanation":"The missing business expression is “revenue growth”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"revenue growth","id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L1_D14","is_correct":true},{"audio_text":"budget variance","id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L1_D15","is_correct":false},{"audio_text":"forecast assumption","id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L1_D16","is_correct":false}],"sentence_template":"___ exceeded expectations, although the profit margin narrowed because fulfilment and acquisition costs increased."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c4cfe854-6d5f-5005-a77e-0d3821871765', 'fde76628-a270-5937-988c-f3c1c1eede64', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"revenue growth","explanation":"The complete business statement uses “revenue growth” precisely.","hint_prefix":"reve","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ exceeded expectations, although the profit margin narrowed because fulfilment and acquisition costs increased."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7a5b6ec-a3e6-5212-81c4-fb5bb01d0678', 'fde76628-a270-5937-988c-f3c1c1eede64', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"revenue growth","id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L1_D17","text":"revenue growth"},{"audio_text":"profit margin","id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L1_D18","text":"profit margin"},{"audio_text":"budget variance","id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L1_D19","text":"budget variance"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('04d74efd-7f88-5147-ad1f-bfea9380f18f', 'fde76628-a270-5937-988c-f3c1c1eede64', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Interpreting Performance Indicators”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L1_D20","is_correct":true,"text":"Revenue growth exceeded expectations, although the profit margin narrowed because fulfilment and acquisition costs increased."},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L1_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L1_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('37b89511-35a5-559a-92d6-556dbf456f2f', 'fde76628-a270-5937-988c-f3c1c1eede64', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0ece96e3-e48d-5d76-a049-1df267293315', NULL, 'Анализ и профессиональное взаимодействие', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Explaining Variance and Forecasts","ru":"Анализ и профессиональное взаимодействие"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('64838e2c-c6ef-5cb5-921c-bfaa85b047c3', '0ece96e3-e48d-5d76-a049-1df267293315', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L2_D01","left":"revenue growth","right":"рост выручки"},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L2_D02","left":"profit margin","right":"маржа прибыли"},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L2_D03","left":"budget variance","right":"отклонение от бюджета"},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L2_D04","left":"cash-flow pressure","right":"давление на денежный поток"},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L2_D05","left":"forecast assumption","right":"допущение прогноза"},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L2_D06","left":"cost overrun","right":"превышение затрат"},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L2_D07","left":"return on investment","right":"окупаемость инвестиций"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d1221720-ff30-50d8-b112-71f6d1e977e8', '0ece96e3-e48d-5d76-a049-1df267293315', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L2_D08","is_correct":true,"text":"The negative budget variance reflects a temporary cost overrun, but it may create cash-flow pressure during the next quarter."},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L2_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L2_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('79e28d5e-590e-5751-91c0-180588d5d070', '0ece96e3-e48d-5d76-a049-1df267293315', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The negative budget variance reflects a temporary cost overrun, but it may create cash-flow pressure during the next quarter.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Отрицательное отклонение от бюджета отражает временное превышение затрат, но может создать давление на денежный поток в следующем квартале.","target_language":"en","word_bank":["The","negative","budget","variance","reflects","a","temporary","cost","overrun",",","but","it","may","create","cash-flow","pressure","during","the","next","quarter","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3edf3abf-e19f-50cf-9d7b-95ab886b2470', '0ece96e3-e48d-5d76-a049-1df267293315', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"profit margin","instruction":"Выберите подходящее слово.","options":["profit margin","forecast assumption","return on investment"],"sentence_template":"The negative budget variance reflects a temporary cost overrun, but it may create cash-flow pressure during the next quarter."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('393278e4-12e7-542a-bd39-1680452174cb', '0ece96e3-e48d-5d76-a049-1df267293315', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","negative","budget","variance","reflects","a","temporary","cost","overrun",",","but","it","may","create","cash-flow","pressure","during","the","next","quarter","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","quarter","next","the","during","pressure","cash-flow","create","may","it","but",",","overrun","cost","temporary","a","reflects","variance","budget","negative","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2d82cba4-240a-5c1a-a612-194aef0adf6f', '0ece96e3-e48d-5d76-a049-1df267293315', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The negative budget variance reflects a temporary cost overrun, but it may create cash-flow pressure during the next quarter. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fa658d9d-a7ff-561d-870a-270b2b7b28b3', '0ece96e3-e48d-5d76-a049-1df267293315', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The negative budget variance reflects a temporary cost overrun, but it may create cash-flow pressure during the next quarter. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Отрицательное отклонение от бюджета отражает временное превышение затрат, но может создать давление на денежный поток в следующем квартале. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bdce3501-3d03-5bf3-8fe7-1f6a96aa20b5', '0ece96e3-e48d-5d76-a049-1df267293315', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"The negative budget variance reflects a temporary cost overrun, but it may create cash-flow pressure during the next quarter.","translation":"Отрицательное отклонение от бюджета отражает временное превышение затрат, но может создать давление на денежный поток в следующем квартале.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Explaining Variance and Forecasts"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('96b23c2e-9a83-5c09-b949-30beed3b70a4', '0ece96e3-e48d-5d76-a049-1df267293315', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“profit margin” means profit expressed as a proportion of revenue.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L2_D11","is_correct":true,"text":"profit expressed as a proportion of revenue"},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L2_D12","is_correct":false,"text":"the difference between planned and actual figures"},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L2_D13","is_correct":false,"text":"difficulty maintaining sufficient available cash"}],"word":"profit margin"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5633d97-ed92-56a5-bd43-0c97787edede', '0ece96e3-e48d-5d76-a049-1df267293315', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The negative budget variance reflects a temporary cost overrun, but it may create cash-flow pressure during the next quarter.","explanation":"The missing business expression is “profit margin”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"profit margin","id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L2_D14","is_correct":true},{"audio_text":"cash-flow pressure","id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L2_D15","is_correct":false},{"audio_text":"cost overrun","id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L2_D16","is_correct":false}],"sentence_template":"The negative budget variance reflects a temporary cost overrun, but it may create cash-flow pressure during the next quarter."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7a3c06e-a1e9-5146-8207-175f3aadfeee', '0ece96e3-e48d-5d76-a049-1df267293315', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"profit margin","explanation":"The complete business statement uses “profit margin” precisely.","hint_prefix":"prof","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The negative budget variance reflects a temporary cost overrun, but it may create cash-flow pressure during the next quarter."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2dfbc0de-a89f-54cf-9b34-e5cc3063a8a5', '0ece96e3-e48d-5d76-a049-1df267293315', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"revenue growth","id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L2_D17","text":"revenue growth"},{"audio_text":"profit margin","id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L2_D18","text":"profit margin"},{"audio_text":"budget variance","id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L2_D19","text":"budget variance"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08135095-65de-5c00-b909-df952831327d', '0ece96e3-e48d-5d76-a049-1df267293315', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Explaining Variance and Forecasts”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L2_D20","is_correct":true,"text":"The negative budget variance reflects a temporary cost overrun, but it may create cash-flow pressure during the next quarter."},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L2_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L2_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('37b89511-35a5-559a-92d6-556dbf456f2f', '0ece96e3-e48d-5d76-a049-1df267293315', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f932453c-9440-5636-8c4a-c3fd59187bd6', NULL, 'Решение и последующие действия', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Recommending Budget Priorities","ru":"Решение и последующие действия"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('96f85fe6-32c7-536c-b328-f907e4fa385f', 'f932453c-9440-5636-8c4a-c3fd59187bd6', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L3_D01","left":"revenue growth","right":"рост выручки"},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L3_D02","left":"profit margin","right":"маржа прибыли"},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L3_D03","left":"budget variance","right":"отклонение от бюджета"},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L3_D04","left":"cash-flow pressure","right":"давление на денежный поток"},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L3_D05","left":"forecast assumption","right":"допущение прогноза"},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L3_D06","left":"cost overrun","right":"превышение затрат"},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L3_D07","left":"return on investment","right":"окупаемость инвестиций"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('392e8848-652b-584f-b3d8-bc3381373b99', 'f932453c-9440-5636-8c4a-c3fd59187bd6', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L3_D08","is_correct":true,"text":"The forecast assumption is reasonable only if demand remains stable and the projected return on investment includes implementation costs."},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L3_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L3_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cadb820e-b606-5d75-ae76-8c820a88ebcf', 'f932453c-9440-5636-8c4a-c3fd59187bd6', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The forecast assumption is reasonable only if demand remains stable and the projected return on investment includes implementation costs.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Допущение прогноза обоснованно лишь при стабильном спросе и учёте затрат на внедрение в предполагаемой окупаемости инвестиций.","target_language":"en","word_bank":["The","forecast","assumption","is","reasonable","only","if","demand","remains","stable","and","the","projected","return","on","investment","includes","implementation","costs","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e5eab07-f40c-563d-ac43-324d93cecdec', 'f932453c-9440-5636-8c4a-c3fd59187bd6', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"budget variance","instruction":"Выберите подходящее слово.","options":["budget variance","cost overrun","revenue growth"],"sentence_template":"The forecast assumption is reasonable only if demand remains stable and the projected return on investment includes implementation costs."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('77c14d02-b86c-5200-91ed-17535df84bf9', 'f932453c-9440-5636-8c4a-c3fd59187bd6', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","forecast","assumption","is","reasonable","only","if","demand","remains","stable","and","the","projected","return","on","investment","includes","implementation","costs","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","costs","implementation","includes","investment","on","return","projected","the","and","stable","remains","demand","if","only","reasonable","is","assumption","forecast","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('928b6990-e3f8-563b-a15f-e8a1604d56db', 'f932453c-9440-5636-8c4a-c3fd59187bd6', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The forecast assumption is reasonable only if demand remains stable and the projected return on investment includes implementation costs. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ba8af93a-c088-525d-913b-869b027d4a10', 'f932453c-9440-5636-8c4a-c3fd59187bd6', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The forecast assumption is reasonable only if demand remains stable and the projected return on investment includes implementation costs. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Допущение прогноза обоснованно лишь при стабильном спросе и учёте затрат на внедрение в предполагаемой окупаемости инвестиций. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0867a44-6f39-5816-9c5e-959ce1f3f33c', 'f932453c-9440-5636-8c4a-c3fd59187bd6', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"The forecast assumption is reasonable only if demand remains stable and the projected return on investment includes implementation costs.","translation":"Допущение прогноза обоснованно лишь при стабильном спросе и учёте затрат на внедрение в предполагаемой окупаемости инвестиций.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Recommending Budget Priorities"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0f11f1d9-5ac9-5ef4-8195-7adefd6d1260', 'f932453c-9440-5636-8c4a-c3fd59187bd6', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“budget variance” means the difference between planned and actual figures.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L3_D11","is_correct":true,"text":"the difference between planned and actual figures"},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L3_D12","is_correct":false,"text":"difficulty maintaining sufficient available cash"},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L3_D13","is_correct":false,"text":"a condition treated as true in a prediction"}],"word":"budget variance"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5bccbf66-f110-5811-9685-96df410e2087', 'f932453c-9440-5636-8c4a-c3fd59187bd6', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The forecast assumption is reasonable only if demand remains stable and the projected return on investment includes implementation costs.","explanation":"The missing business expression is “budget variance”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"budget variance","id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L3_D14","is_correct":true},{"audio_text":"forecast assumption","id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L3_D15","is_correct":false},{"audio_text":"return on investment","id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L3_D16","is_correct":false}],"sentence_template":"The forecast assumption is reasonable only if demand remains stable and the projected return on investment includes implementation costs."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0105760b-21b8-5f4f-acc8-62217e733f97', 'f932453c-9440-5636-8c4a-c3fd59187bd6', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"budget variance","explanation":"The complete business statement uses “budget variance” precisely.","hint_prefix":"budg","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The forecast assumption is reasonable only if demand remains stable and the projected return on investment includes implementation costs."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6e01520f-0603-576f-abb4-1248fa9c4fc1', 'f932453c-9440-5636-8c4a-c3fd59187bd6', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"revenue growth","id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L3_D17","text":"revenue growth"},{"audio_text":"profit margin","id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L3_D18","text":"profit margin"},{"audio_text":"budget variance","id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L3_D19","text":"budget variance"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3188ed12-316b-5d0c-8cd8-33d3c9a651b7', 'f932453c-9440-5636-8c4a-c3fd59187bd6', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Recommending Budget Priorities”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L3_D20","is_correct":true,"text":"The forecast assumption is reasonable only if demand remains stable and the projected return on investment includes implementation costs."},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L3_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_FINANCIAL_PERFORMANCE_FORECASTS_AND_BUDGET_DECISIONS_L3_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('37b89511-35a5-559a-92d6-556dbf456f2f', 'f932453c-9440-5636-8c4a-c3fd59187bd6', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('84771541-796a-5711-a167-04a77278ef96', 'en', 'revenue growth', 'рост выручки', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('40a62e3b-2a1b-5d2d-91db-ccceec22c7e3', 'en', 'profit margin', 'маржа прибыли', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1643b08d-c909-50f6-a945-0fd791b13c1d', 'en', 'budget variance', 'отклонение от бюджета', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f36590d1-975c-59d7-bc22-6d6410633983', 'en', 'cash-flow pressure', 'давление на денежный поток', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c54a7a6e-ef32-53bf-9d4c-d75430cc5f55', 'en', 'forecast assumption', 'допущение прогноза', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('78cc87f8-4021-5db2-9902-f23ae7034772', 'en', 'cost overrun', 'превышение затрат', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('241b17ff-4fc9-58c7-bf78-d4163561129f', 'en', 'return on investment', 'окупаемость инвестиций', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('84771541-796a-5711-a167-04a77278ef96', 'en', 'revenue growth', 'рост выручки', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('40a62e3b-2a1b-5d2d-91db-ccceec22c7e3', 'en', 'profit margin', 'маржа прибыли', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1643b08d-c909-50f6-a945-0fd791b13c1d', 'en', 'budget variance', 'отклонение от бюджета', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f36590d1-975c-59d7-bc22-6d6410633983', 'en', 'cash-flow pressure', 'давление на денежный поток', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c54a7a6e-ef32-53bf-9d4c-d75430cc5f55', 'en', 'forecast assumption', 'допущение прогноза', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('78cc87f8-4021-5db2-9902-f23ae7034772', 'en', 'cost overrun', 'превышение затрат', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('241b17ff-4fc9-58c7-bf78-d4163561129f', 'en', 'return on investment', 'окупаемость инвестиций', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('84771541-796a-5711-a167-04a77278ef96', 'en', 'revenue growth', 'рост выручки', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('40a62e3b-2a1b-5d2d-91db-ccceec22c7e3', 'en', 'profit margin', 'маржа прибыли', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1643b08d-c909-50f6-a945-0fd791b13c1d', 'en', 'budget variance', 'отклонение от бюджета', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f36590d1-975c-59d7-bc22-6d6410633983', 'en', 'cash-flow pressure', 'давление на денежный поток', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c54a7a6e-ef32-53bf-9d4c-d75430cc5f55', 'en', 'forecast assumption', 'допущение прогноза', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('78cc87f8-4021-5db2-9902-f23ae7034772', 'en', 'cost overrun', 'превышение затрат', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('241b17ff-4fc9-58c7-bf78-d4163561129f', 'en', 'return on investment', 'окупаемость инвестиций', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37b89511-35a5-559a-92d6-556dbf456f2f', id, 'fde76628-a270-5937-988c-f3c1c1eede64', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'revenue growth' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37b89511-35a5-559a-92d6-556dbf456f2f', id, 'fde76628-a270-5937-988c-f3c1c1eede64', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'profit margin' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37b89511-35a5-559a-92d6-556dbf456f2f', id, 'fde76628-a270-5937-988c-f3c1c1eede64', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'budget variance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37b89511-35a5-559a-92d6-556dbf456f2f', id, 'fde76628-a270-5937-988c-f3c1c1eede64', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'cash-flow pressure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37b89511-35a5-559a-92d6-556dbf456f2f', id, 'fde76628-a270-5937-988c-f3c1c1eede64', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'forecast assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37b89511-35a5-559a-92d6-556dbf456f2f', id, 'fde76628-a270-5937-988c-f3c1c1eede64', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'cost overrun' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37b89511-35a5-559a-92d6-556dbf456f2f', id, 'fde76628-a270-5937-988c-f3c1c1eede64', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'return on investment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37b89511-35a5-559a-92d6-556dbf456f2f', id, '0ece96e3-e48d-5d76-a049-1df267293315', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'revenue growth' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37b89511-35a5-559a-92d6-556dbf456f2f', id, '0ece96e3-e48d-5d76-a049-1df267293315', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'profit margin' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37b89511-35a5-559a-92d6-556dbf456f2f', id, '0ece96e3-e48d-5d76-a049-1df267293315', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'budget variance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37b89511-35a5-559a-92d6-556dbf456f2f', id, '0ece96e3-e48d-5d76-a049-1df267293315', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'cash-flow pressure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37b89511-35a5-559a-92d6-556dbf456f2f', id, '0ece96e3-e48d-5d76-a049-1df267293315', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'forecast assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37b89511-35a5-559a-92d6-556dbf456f2f', id, '0ece96e3-e48d-5d76-a049-1df267293315', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'cost overrun' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37b89511-35a5-559a-92d6-556dbf456f2f', id, '0ece96e3-e48d-5d76-a049-1df267293315', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'return on investment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37b89511-35a5-559a-92d6-556dbf456f2f', id, 'f932453c-9440-5636-8c4a-c3fd59187bd6', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'revenue growth' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37b89511-35a5-559a-92d6-556dbf456f2f', id, 'f932453c-9440-5636-8c4a-c3fd59187bd6', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'profit margin' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37b89511-35a5-559a-92d6-556dbf456f2f', id, 'f932453c-9440-5636-8c4a-c3fd59187bd6', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'budget variance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37b89511-35a5-559a-92d6-556dbf456f2f', id, 'f932453c-9440-5636-8c4a-c3fd59187bd6', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'cash-flow pressure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37b89511-35a5-559a-92d6-556dbf456f2f', id, 'f932453c-9440-5636-8c4a-c3fd59187bd6', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'forecast assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37b89511-35a5-559a-92d6-556dbf456f2f', id, 'f932453c-9440-5636-8c4a-c3fd59187bd6', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'cost overrun' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37b89511-35a5-559a-92d6-556dbf456f2f', id, 'f932453c-9440-5636-8c4a-c3fd59187bd6', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'return on investment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
