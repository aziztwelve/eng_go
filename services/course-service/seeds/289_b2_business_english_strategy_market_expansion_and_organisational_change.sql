-- Track: B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('b65e1ff7-336a-51e4-9669-62dd121cbf99', 'B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE', 'Стратегия, расширение рынка и организационные изменения', 'Развивайте точный деловой английский уровня B2 по теме «Стратегия, расширение рынка и организационные изменения», анализируя коммерческие последствия и согласовывая обоснованные решения.', '{"en":"Strategy, Market Expansion and Organisational Change","ru":"Стратегия, расширение рынка и организационные изменения"}'::jsonb, '{"en":"Develop precise B2 business English for strategy, market expansion and organisational change by analysing commercial implications and negotiating well-supported decisions.","ru":"Развивайте точный деловой английский уровня B2 по теме «Стратегия, расширение рынка и организационные изменения», анализируя коммерческие последствия и согласовывая обоснованные решения."}'::jsonb, 'en', 'B2', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('4a40189c-0d5f-5e9c-b5f2-0a6b36cdb3a4', NULL, 'Деловой контекст и ключевые понятия', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Evaluating Market Opportunity","ru":"Деловой контекст и ключевые понятия"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('25672034-bd86-5280-8873-217df9763ea6', '4a40189c-0d5f-5e9c-b5f2-0a6b36cdb3a4', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L1_D01","left":"market entry","right":"выход на рынок"},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L1_D02","left":"competitive advantage","right":"конкурентное преимущество"},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L1_D03","left":"customer segment","right":"сегмент клиентов"},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L1_D04","left":"strategic capability","right":"стратегическая способность"},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L1_D05","left":"regulatory barrier","right":"нормативный барьер"},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L1_D06","left":"change initiative","right":"инициатива по изменениям"},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L1_D07","left":"stakeholder buy-in","right":"поддержка заинтересованных сторон"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('80055b08-441d-52d7-8d13-aa7896e0daac', '4a40189c-0d5f-5e9c-b5f2-0a6b36cdb3a4', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L1_D08","is_correct":true,"text":"A market entry decision should identify the target customer segment, likely regulatory barriers, and a defensible competitive advantage."},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L1_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L1_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6af4bf5f-ab2e-5871-a135-6ab6eb7a438e', '4a40189c-0d5f-5e9c-b5f2-0a6b36cdb3a4', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A market entry decision should identify the target customer segment, likely regulatory barriers, and a defensible competitive advantage.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Решение о выходе на рынок должно определять целевой сегмент клиентов, вероятные нормативные барьеры и устойчивое конкурентное преимущество.","target_language":"en","word_bank":["A","market","entry","decision","should","identify","the","target","customer","segment",",","likely","regulatory","barriers",",","and","a","defensible","competitive","advantage","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6153be94-7a0c-54f0-9ea0-76220bebf415', '4a40189c-0d5f-5e9c-b5f2-0a6b36cdb3a4', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"market entry","instruction":"Выберите подходящее слово.","options":["market entry","strategic capability","change initiative"],"sentence_template":"A ___ decision should identify the target customer segment, likely regulatory barriers, and a defensible competitive advantage."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b7ddca8c-842b-5e14-ada0-98943f8c0243', '4a40189c-0d5f-5e9c-b5f2-0a6b36cdb3a4', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","market","entry","decision","should","identify","the","target","customer","segment",",","likely","regulatory","barriers",",","and","a","defensible","competitive","advantage","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","advantage","competitive","defensible","a","and",",","barriers","regulatory","likely",",","segment","customer","target","the","identify","should","decision","entry","market","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e4871b39-a62f-5e5a-99a8-a5f47842b329', '4a40189c-0d5f-5e9c-b5f2-0a6b36cdb3a4', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A market entry decision should identify the target customer segment, likely regulatory barriers, and a defensible competitive advantage. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78aed1e2-232d-5475-98c4-dccfc2658bb0', '4a40189c-0d5f-5e9c-b5f2-0a6b36cdb3a4', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A market entry decision should identify the target customer segment, likely regulatory barriers, and a defensible competitive advantage. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Решение о выходе на рынок должно определять целевой сегмент клиентов, вероятные нормативные барьеры и устойчивое конкурентное преимущество. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f4b4d0bd-e41d-596f-8fce-35710ee30a53', '4a40189c-0d5f-5e9c-b5f2-0a6b36cdb3a4', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"A market entry decision should identify the target customer segment, likely regulatory barriers, and a defensible competitive advantage.","translation":"Решение о выходе на рынок должно определять целевой сегмент клиентов, вероятные нормативные барьеры и устойчивое конкурентное преимущество.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Evaluating Market Opportunity"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5baebfe5-526b-596f-a741-38f1183f3c74', '4a40189c-0d5f-5e9c-b5f2-0a6b36cdb3a4', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“market entry” means the process of beginning business in a new market.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L1_D11","is_correct":true,"text":"the process of beginning business in a new market"},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L1_D12","is_correct":false,"text":"a capability allowing stronger performance than rivals"},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L1_D13","is_correct":false,"text":"a group sharing relevant needs or characteristics"}],"word":"market entry"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5baaca2c-894a-53ef-b316-b58fbd9e3946', '4a40189c-0d5f-5e9c-b5f2-0a6b36cdb3a4', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A market entry decision should identify the target customer segment, likely regulatory barriers, and a defensible competitive advantage.","explanation":"The missing business expression is “market entry”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"market entry","id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L1_D14","is_correct":true},{"audio_text":"customer segment","id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L1_D15","is_correct":false},{"audio_text":"regulatory barrier","id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L1_D16","is_correct":false}],"sentence_template":"A ___ decision should identify the target customer segment, likely regulatory barriers, and a defensible competitive advantage."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9feb1ba9-9a9f-5a8b-9d20-5c5d95b46af0', '4a40189c-0d5f-5e9c-b5f2-0a6b36cdb3a4', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"market entry","explanation":"The complete business statement uses “market entry” precisely.","hint_prefix":"mark","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ decision should identify the target customer segment, likely regulatory barriers, and a defensible competitive advantage."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('319ea149-eb37-5fb1-9a27-fe00cca9db03', '4a40189c-0d5f-5e9c-b5f2-0a6b36cdb3a4', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"market entry","id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L1_D17","text":"market entry"},{"audio_text":"competitive advantage","id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L1_D18","text":"competitive advantage"},{"audio_text":"customer segment","id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L1_D19","text":"customer segment"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8a093165-9a4d-5702-89b6-70f936241b6e', '4a40189c-0d5f-5e9c-b5f2-0a6b36cdb3a4', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Evaluating Market Opportunity”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L1_D20","is_correct":true,"text":"A market entry decision should identify the target customer segment, likely regulatory barriers, and a defensible competitive advantage."},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L1_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L1_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b65e1ff7-336a-51e4-9669-62dd121cbf99', '4a40189c-0d5f-5e9c-b5f2-0a6b36cdb3a4', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('3e311d7a-1b5c-5951-9d6b-22d8d7acd18c', NULL, 'Анализ и профессиональное взаимодействие', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Aligning Strategy and Capability","ru":"Анализ и профессиональное взаимодействие"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('74f5e3d3-bba6-5d0e-8d8d-aa540556b592', '3e311d7a-1b5c-5951-9d6b-22d8d7acd18c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L2_D01","left":"market entry","right":"выход на рынок"},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L2_D02","left":"competitive advantage","right":"конкурентное преимущество"},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L2_D03","left":"customer segment","right":"сегмент клиентов"},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L2_D04","left":"strategic capability","right":"стратегическая способность"},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L2_D05","left":"regulatory barrier","right":"нормативный барьер"},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L2_D06","left":"change initiative","right":"инициатива по изменениям"},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L2_D07","left":"stakeholder buy-in","right":"поддержка заинтересованных сторон"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('48442d66-774c-5660-accd-5f2fd4b27de6', '3e311d7a-1b5c-5951-9d6b-22d8d7acd18c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L2_D08","is_correct":true,"text":"The strategy is attractive, but the organisation currently lacks the digital and operational capabilities required to execute it at scale."},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L2_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L2_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7966eefb-b4f1-5b27-87d2-5b2c940da1a0', '3e311d7a-1b5c-5951-9d6b-22d8d7acd18c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The strategy is attractive, but the organisation currently lacks the digital and operational capabilities required to execute it at scale.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Стратегия привлекательна, но организации сейчас не хватает цифровых и операционных способностей, необходимых для её масштабной реализации.","target_language":"en","word_bank":["The","strategy","is","attractive",",","but","the","organisation","currently","lacks","the","digital","and","operational","capabilities","required","to","execute","it","at","scale","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('38b2941d-1c30-5e49-ac3c-8b4291e61bd6', '3e311d7a-1b5c-5951-9d6b-22d8d7acd18c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"competitive advantage","instruction":"Выберите подходящее слово.","options":["competitive advantage","regulatory barrier","stakeholder buy-in"],"sentence_template":"The strategy is attractive, but the organisation currently lacks the digital and operational capabilities required to execute it at scale."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4614c5db-41f1-56a2-8b16-f4757a7119fa', '3e311d7a-1b5c-5951-9d6b-22d8d7acd18c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","strategy","is","attractive",",","but","the","organisation","currently","lacks","the","digital","and","operational","capabilities","required","to","execute","it","at","scale","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","scale","at","it","execute","to","required","capabilities","operational","and","digital","the","lacks","currently","organisation","the","but",",","attractive","is","strategy","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4c784562-f4e0-5d09-9227-deee67352afe', '3e311d7a-1b5c-5951-9d6b-22d8d7acd18c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The strategy is attractive, but the organisation currently lacks the digital and operational capabilities required to execute it at scale. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b3990106-8a5c-5625-b937-ab95cca13d88', '3e311d7a-1b5c-5951-9d6b-22d8d7acd18c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The strategy is attractive, but the organisation currently lacks the digital and operational capabilities required to execute it at scale. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Стратегия привлекательна, но организации сейчас не хватает цифровых и операционных способностей, необходимых для её масштабной реализации. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('424377f8-6ed1-57f7-b9a5-045477ee85b5', '3e311d7a-1b5c-5951-9d6b-22d8d7acd18c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"The strategy is attractive, but the organisation currently lacks the digital and operational capabilities required to execute it at scale.","translation":"Стратегия привлекательна, но организации сейчас не хватает цифровых и операционных способностей, необходимых для её масштабной реализации.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Aligning Strategy and Capability"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18001c91-d8e7-53eb-8422-0e3638f7add3', '3e311d7a-1b5c-5951-9d6b-22d8d7acd18c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“competitive advantage” means a capability allowing stronger performance than rivals.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L2_D11","is_correct":true,"text":"a capability allowing stronger performance than rivals"},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L2_D12","is_correct":false,"text":"a group sharing relevant needs or characteristics"},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L2_D13","is_correct":false,"text":"an organisational strength needed to execute strategy"}],"word":"competitive advantage"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3f7215e4-c4d1-5800-985e-6bc487790b17', '3e311d7a-1b5c-5951-9d6b-22d8d7acd18c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The strategy is attractive, but the organisation currently lacks the digital and operational capabilities required to execute it at scale.","explanation":"The missing business expression is “competitive advantage”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"competitive advantage","id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L2_D14","is_correct":true},{"audio_text":"strategic capability","id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L2_D15","is_correct":false},{"audio_text":"change initiative","id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L2_D16","is_correct":false}],"sentence_template":"The strategy is attractive, but the organisation currently lacks the digital and operational capabilities required to execute it at scale."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a5cb6c9a-84e0-59bb-854a-5564c219cc56', '3e311d7a-1b5c-5951-9d6b-22d8d7acd18c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"competitive advantage","explanation":"The complete business statement uses “competitive advantage” precisely.","hint_prefix":"comp","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The strategy is attractive, but the organisation currently lacks the digital and operational capabilities required to execute it at scale."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0da93b3a-c75f-5d27-905e-e3896cdd61a8', '3e311d7a-1b5c-5951-9d6b-22d8d7acd18c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"market entry","id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L2_D17","text":"market entry"},{"audio_text":"competitive advantage","id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L2_D18","text":"competitive advantage"},{"audio_text":"customer segment","id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L2_D19","text":"customer segment"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a850bf0-00ea-5666-a157-8cb300fc33de', '3e311d7a-1b5c-5951-9d6b-22d8d7acd18c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Aligning Strategy and Capability”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L2_D20","is_correct":true,"text":"The strategy is attractive, but the organisation currently lacks the digital and operational capabilities required to execute it at scale."},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L2_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L2_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b65e1ff7-336a-51e4-9669-62dd121cbf99', '3e311d7a-1b5c-5951-9d6b-22d8d7acd18c', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('aae0b6c3-7109-52f3-bf70-bc9414d7d948', NULL, 'Решение и последующие действия', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Communicating Organisational Change","ru":"Решение и последующие действия"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b5abba3a-e19e-5e61-9fba-5c530e5dd93b', 'aae0b6c3-7109-52f3-bf70-bc9414d7d948', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L3_D01","left":"market entry","right":"выход на рынок"},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L3_D02","left":"competitive advantage","right":"конкурентное преимущество"},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L3_D03","left":"customer segment","right":"сегмент клиентов"},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L3_D04","left":"strategic capability","right":"стратегическая способность"},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L3_D05","left":"regulatory barrier","right":"нормативный барьер"},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L3_D06","left":"change initiative","right":"инициатива по изменениям"},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L3_D07","left":"stakeholder buy-in","right":"поддержка заинтересованных сторон"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('84a23fde-53a7-5545-a57e-c3fa589b0946', 'aae0b6c3-7109-52f3-bf70-bc9414d7d948', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L3_D08","is_correct":true,"text":"A change initiative gains stakeholder buy-in when leaders explain the business rationale, acknowledge disruption, and provide credible implementation support."},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L3_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L3_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08ccb26a-9257-5e6d-833e-f8c448496b81', 'aae0b6c3-7109-52f3-bf70-bc9414d7d948', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A change initiative gains stakeholder buy-in when leaders explain the business rationale, acknowledge disruption, and provide credible implementation support.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Инициатива по изменениям получает поддержку заинтересованных сторон, когда руководители объясняют деловое обоснование, признают сложности и обеспечивают убедительную поддержку внедрения.","target_language":"en","word_bank":["A","change","initiative","gains","stakeholder","buy-in","when","leaders","explain","the","business","rationale",",","acknowledge","disruption",",","and","provide","credible","implementation","support","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16b32bfa-470d-50c9-8f66-d58901a0fa7b', 'aae0b6c3-7109-52f3-bf70-bc9414d7d948', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"customer segment","instruction":"Выберите подходящее слово.","options":["customer segment","change initiative","market entry"],"sentence_template":"A change initiative gains stakeholder buy-in when leaders explain the business rationale, acknowledge disruption, and provide credible implementation support."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('807a0214-d826-5b38-9455-b75b28503e0f', 'aae0b6c3-7109-52f3-bf70-bc9414d7d948', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","change","initiative","gains","stakeholder","buy-in","when","leaders","explain","the","business","rationale",",","acknowledge","disruption",",","and","provide","credible","implementation","support","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","support","implementation","credible","provide","and",",","disruption","acknowledge",",","rationale","business","the","explain","leaders","when","buy-in","stakeholder","gains","initiative","change","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e1ed8c9e-ddc6-554d-9c16-b328b654d7b3', 'aae0b6c3-7109-52f3-bf70-bc9414d7d948', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A change initiative gains stakeholder buy-in when leaders explain the business rationale, acknowledge disruption, and provide credible implementation support. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('51fa9133-cf1b-5149-aa3a-d1dfacecfe03', 'aae0b6c3-7109-52f3-bf70-bc9414d7d948', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A change initiative gains stakeholder buy-in when leaders explain the business rationale, acknowledge disruption, and provide credible implementation support. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Инициатива по изменениям получает поддержку заинтересованных сторон, когда руководители объясняют деловое обоснование, признают сложности и обеспечивают убедительную поддержку внедрения. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b6371c0d-13e6-5c4a-ba0f-5d2c187c41fe', 'aae0b6c3-7109-52f3-bf70-bc9414d7d948', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"A change initiative gains stakeholder buy-in when leaders explain the business rationale, acknowledge disruption, and provide credible implementation support.","translation":"Инициатива по изменениям получает поддержку заинтересованных сторон, когда руководители объясняют деловое обоснование, признают сложности и обеспечивают убедительную поддержку внедрения.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Communicating Organisational Change"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ed85fa6-e8d8-5df7-bbd3-7b2eba770804', 'aae0b6c3-7109-52f3-bf70-bc9414d7d948', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“customer segment” means a group sharing relevant needs or characteristics.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L3_D11","is_correct":true,"text":"a group sharing relevant needs or characteristics"},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L3_D12","is_correct":false,"text":"an organisational strength needed to execute strategy"},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L3_D13","is_correct":false,"text":"a legal requirement restricting market activity"}],"word":"customer segment"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78ebacd8-622e-5687-833e-280599e66656', 'aae0b6c3-7109-52f3-bf70-bc9414d7d948', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A change initiative gains stakeholder buy-in when leaders explain the business rationale, acknowledge disruption, and provide credible implementation support.","explanation":"The missing business expression is “customer segment”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"customer segment","id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L3_D14","is_correct":true},{"audio_text":"regulatory barrier","id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L3_D15","is_correct":false},{"audio_text":"stakeholder buy-in","id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L3_D16","is_correct":false}],"sentence_template":"A change initiative gains stakeholder buy-in when leaders explain the business rationale, acknowledge disruption, and provide credible implementation support."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b1a4f08d-0c60-53b3-8059-a13ce16b4631', 'aae0b6c3-7109-52f3-bf70-bc9414d7d948', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"customer segment","explanation":"The complete business statement uses “customer segment” precisely.","hint_prefix":"cust","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A change initiative gains stakeholder buy-in when leaders explain the business rationale, acknowledge disruption, and provide credible implementation support."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da413127-5ad3-52e4-b5bb-1a8582bf9f50', 'aae0b6c3-7109-52f3-bf70-bc9414d7d948', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"market entry","id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L3_D17","text":"market entry"},{"audio_text":"competitive advantage","id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L3_D18","text":"competitive advantage"},{"audio_text":"customer segment","id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L3_D19","text":"customer segment"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0d29cf2b-5cd5-5f52-81f6-e5938de4291f', 'aae0b6c3-7109-52f3-bf70-bc9414d7d948', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Communicating Organisational Change”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L3_D20","is_correct":true,"text":"A change initiative gains stakeholder buy-in when leaders explain the business rationale, acknowledge disruption, and provide credible implementation support."},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L3_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_STRATEGY_MARKET_EXPANSION_AND_ORGANISATIONAL_CHANGE_L3_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b65e1ff7-336a-51e4-9669-62dd121cbf99', 'aae0b6c3-7109-52f3-bf70-bc9414d7d948', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6666eb42-3811-56b5-bb27-7219f11ab742', 'en', 'market entry', 'выход на рынок', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('16e2d15a-2fe3-5571-b17b-ead5395cee1c', 'en', 'competitive advantage', 'конкурентное преимущество', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('78dbfd5f-0c46-5e1e-a904-62b8a60f2dc7', 'en', 'customer segment', 'сегмент клиентов', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('70d289be-fb79-5104-8a65-700c18eb212e', 'en', 'strategic capability', 'стратегическая способность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4bf3d71f-3241-5c25-9abb-714a648fa621', 'en', 'regulatory barrier', 'нормативный барьер', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f7cec5e7-87d4-5afe-8208-11f3c840c2a9', 'en', 'change initiative', 'инициатива по изменениям', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c10dc8c7-4d79-50b2-8514-5bc9186e90a3', 'en', 'stakeholder buy-in', 'поддержка заинтересованных сторон', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6666eb42-3811-56b5-bb27-7219f11ab742', 'en', 'market entry', 'выход на рынок', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('16e2d15a-2fe3-5571-b17b-ead5395cee1c', 'en', 'competitive advantage', 'конкурентное преимущество', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('78dbfd5f-0c46-5e1e-a904-62b8a60f2dc7', 'en', 'customer segment', 'сегмент клиентов', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('70d289be-fb79-5104-8a65-700c18eb212e', 'en', 'strategic capability', 'стратегическая способность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4bf3d71f-3241-5c25-9abb-714a648fa621', 'en', 'regulatory barrier', 'нормативный барьер', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f7cec5e7-87d4-5afe-8208-11f3c840c2a9', 'en', 'change initiative', 'инициатива по изменениям', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c10dc8c7-4d79-50b2-8514-5bc9186e90a3', 'en', 'stakeholder buy-in', 'поддержка заинтересованных сторон', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6666eb42-3811-56b5-bb27-7219f11ab742', 'en', 'market entry', 'выход на рынок', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('16e2d15a-2fe3-5571-b17b-ead5395cee1c', 'en', 'competitive advantage', 'конкурентное преимущество', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('78dbfd5f-0c46-5e1e-a904-62b8a60f2dc7', 'en', 'customer segment', 'сегмент клиентов', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('70d289be-fb79-5104-8a65-700c18eb212e', 'en', 'strategic capability', 'стратегическая способность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4bf3d71f-3241-5c25-9abb-714a648fa621', 'en', 'regulatory barrier', 'нормативный барьер', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f7cec5e7-87d4-5afe-8208-11f3c840c2a9', 'en', 'change initiative', 'инициатива по изменениям', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c10dc8c7-4d79-50b2-8514-5bc9186e90a3', 'en', 'stakeholder buy-in', 'поддержка заинтересованных сторон', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b65e1ff7-336a-51e4-9669-62dd121cbf99', id, '4a40189c-0d5f-5e9c-b5f2-0a6b36cdb3a4', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'market entry' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b65e1ff7-336a-51e4-9669-62dd121cbf99', id, '4a40189c-0d5f-5e9c-b5f2-0a6b36cdb3a4', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'competitive advantage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b65e1ff7-336a-51e4-9669-62dd121cbf99', id, '4a40189c-0d5f-5e9c-b5f2-0a6b36cdb3a4', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'customer segment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b65e1ff7-336a-51e4-9669-62dd121cbf99', id, '4a40189c-0d5f-5e9c-b5f2-0a6b36cdb3a4', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'strategic capability' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b65e1ff7-336a-51e4-9669-62dd121cbf99', id, '4a40189c-0d5f-5e9c-b5f2-0a6b36cdb3a4', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'regulatory barrier' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b65e1ff7-336a-51e4-9669-62dd121cbf99', id, '4a40189c-0d5f-5e9c-b5f2-0a6b36cdb3a4', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'change initiative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b65e1ff7-336a-51e4-9669-62dd121cbf99', id, '4a40189c-0d5f-5e9c-b5f2-0a6b36cdb3a4', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'stakeholder buy-in' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b65e1ff7-336a-51e4-9669-62dd121cbf99', id, '3e311d7a-1b5c-5951-9d6b-22d8d7acd18c', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'market entry' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b65e1ff7-336a-51e4-9669-62dd121cbf99', id, '3e311d7a-1b5c-5951-9d6b-22d8d7acd18c', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'competitive advantage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b65e1ff7-336a-51e4-9669-62dd121cbf99', id, '3e311d7a-1b5c-5951-9d6b-22d8d7acd18c', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'customer segment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b65e1ff7-336a-51e4-9669-62dd121cbf99', id, '3e311d7a-1b5c-5951-9d6b-22d8d7acd18c', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'strategic capability' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b65e1ff7-336a-51e4-9669-62dd121cbf99', id, '3e311d7a-1b5c-5951-9d6b-22d8d7acd18c', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'regulatory barrier' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b65e1ff7-336a-51e4-9669-62dd121cbf99', id, '3e311d7a-1b5c-5951-9d6b-22d8d7acd18c', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'change initiative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b65e1ff7-336a-51e4-9669-62dd121cbf99', id, '3e311d7a-1b5c-5951-9d6b-22d8d7acd18c', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'stakeholder buy-in' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b65e1ff7-336a-51e4-9669-62dd121cbf99', id, 'aae0b6c3-7109-52f3-bf70-bc9414d7d948', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'market entry' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b65e1ff7-336a-51e4-9669-62dd121cbf99', id, 'aae0b6c3-7109-52f3-bf70-bc9414d7d948', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'competitive advantage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b65e1ff7-336a-51e4-9669-62dd121cbf99', id, 'aae0b6c3-7109-52f3-bf70-bc9414d7d948', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'customer segment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b65e1ff7-336a-51e4-9669-62dd121cbf99', id, 'aae0b6c3-7109-52f3-bf70-bc9414d7d948', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'strategic capability' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b65e1ff7-336a-51e4-9669-62dd121cbf99', id, 'aae0b6c3-7109-52f3-bf70-bc9414d7d948', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'regulatory barrier' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b65e1ff7-336a-51e4-9669-62dd121cbf99', id, 'aae0b6c3-7109-52f3-bf70-bc9414d7d948', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'change initiative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b65e1ff7-336a-51e4-9669-62dd121cbf99', id, 'aae0b6c3-7109-52f3-bf70-bc9414d7d948', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'stakeholder buy-in' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
