-- Track: B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('38528416-3b01-58ce-957c-f91a92e8d5b0', 'B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS', 'Убедительные презентации и сложные вопросы', 'Развивайте точный деловой английский уровня B2 по теме «Убедительные презентации и сложные вопросы», анализируя коммерческие последствия и согласовывая обоснованные решения.', '{"en":"Persuasive Presentations and Challenging Questions","ru":"Убедительные презентации и сложные вопросы"}'::jsonb, '{"en":"Develop precise B2 business English for persuasive presentations and challenging questions by analysing commercial implications and negotiating well-supported decisions.","ru":"Развивайте точный деловой английский уровня B2 по теме «Убедительные презентации и сложные вопросы», анализируя коммерческие последствия и согласовывая обоснованные решения."}'::jsonb, 'en', 'B2', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5e4cbf44-febb-516a-b548-b66a975f2d2d', NULL, 'Деловой контекст и ключевые понятия', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Structuring a Persuasive Case","ru":"Деловой контекст и ключевые понятия"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b43f1eb0-68ca-5754-bc4e-89e5d6b4d831', '5e4cbf44-febb-516a-b548-b66a975f2d2d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L1_D01","left":"value proposition","right":"ценностное предложение"},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L1_D02","left":"compelling evidence","right":"веские доказательства"},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L1_D03","left":"business case","right":"бизнес-обоснование"},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L1_D04","left":"anticipated objection","right":"ожидаемое возражение"},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L1_D05","left":"quantify the impact","right":"количественно оценить влияние"},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L1_D06","left":"reframe a question","right":"переформулировать вопрос"},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L1_D07","left":"credible response","right":"убедительный ответ"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a4d3f35-c778-540c-845f-a737aca0dc7c', '5e4cbf44-febb-516a-b548-b66a975f2d2d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L1_D08","is_correct":true,"text":"A persuasive value proposition connects a specific client problem to a distinctive benefit rather than listing product features."},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L1_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L1_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('973cc745-6a39-56f5-ad54-4fae3a8c1595', '5e4cbf44-febb-516a-b548-b66a975f2d2d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A persuasive value proposition connects a specific client problem to a distinctive benefit rather than listing product features.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Убедительное ценностное предложение связывает конкретную проблему клиента с отличительным преимуществом, а не перечисляет характеристики продукта.","target_language":"en","word_bank":["A","persuasive","value","proposition","connects","a","specific","client","problem","to","a","distinctive","benefit","rather","than","listing","product","features","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e20f14b0-0ab0-5043-a863-493447964af7', '5e4cbf44-febb-516a-b548-b66a975f2d2d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"value proposition","instruction":"Выберите подходящее слово.","options":["value proposition","anticipated objection","reframe a question"],"sentence_template":"A persuasive ___ connects a specific client problem to a distinctive benefit rather than listing product features."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('35839fb3-b6de-5f78-9794-1359aa599580', '5e4cbf44-febb-516a-b548-b66a975f2d2d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","persuasive","value","proposition","connects","a","specific","client","problem","to","a","distinctive","benefit","rather","than","listing","product","features","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","features","product","listing","than","rather","benefit","distinctive","a","to","problem","client","specific","a","connects","proposition","value","persuasive","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b53c1d8-a874-5cf7-9288-72b4b0376564', '5e4cbf44-febb-516a-b548-b66a975f2d2d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A persuasive value proposition connects a specific client problem to a distinctive benefit rather than listing product features. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b43e5df-045e-5cbe-9c8b-38b5b4569c21', '5e4cbf44-febb-516a-b548-b66a975f2d2d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A persuasive value proposition connects a specific client problem to a distinctive benefit rather than listing product features. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Убедительное ценностное предложение связывает конкретную проблему клиента с отличительным преимуществом, а не перечисляет характеристики продукта. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('50f7f804-d0d8-53ae-96cd-5e6623740fed', '5e4cbf44-febb-516a-b548-b66a975f2d2d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"A persuasive value proposition connects a specific client problem to a distinctive benefit rather than listing product features.","translation":"Убедительное ценностное предложение связывает конкретную проблему клиента с отличительным преимуществом, а не перечисляет характеристики продукта.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Structuring a Persuasive Case"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f43ac35f-cb5d-5e5c-960c-7257527ba873', '5e4cbf44-febb-516a-b548-b66a975f2d2d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“value proposition” means a clear explanation of distinctive customer value.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L1_D11","is_correct":true,"text":"a clear explanation of distinctive customer value"},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L1_D12","is_correct":false,"text":"information that strongly supports a conclusion"},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L1_D13","is_correct":false,"text":"a justification based on costs, benefits, and risks"}],"word":"value proposition"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8a7f36df-1fa4-505e-bbd4-31966bed2069', '5e4cbf44-febb-516a-b548-b66a975f2d2d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A persuasive value proposition connects a specific client problem to a distinctive benefit rather than listing product features.","explanation":"The missing business expression is “value proposition”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"value proposition","id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L1_D14","is_correct":true},{"audio_text":"business case","id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L1_D15","is_correct":false},{"audio_text":"quantify the impact","id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L1_D16","is_correct":false}],"sentence_template":"A persuasive ___ connects a specific client problem to a distinctive benefit rather than listing product features."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b8369dda-44ea-5998-8628-11359c8ecb26', '5e4cbf44-febb-516a-b548-b66a975f2d2d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"value proposition","explanation":"The complete business statement uses “value proposition” precisely.","hint_prefix":"valu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A persuasive ___ connects a specific client problem to a distinctive benefit rather than listing product features."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2beeab7-adf8-570e-b27c-732e7dad5289', '5e4cbf44-febb-516a-b548-b66a975f2d2d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"value proposition","id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L1_D17","text":"value proposition"},{"audio_text":"compelling evidence","id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L1_D18","text":"compelling evidence"},{"audio_text":"business case","id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L1_D19","text":"business case"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9919262d-e02c-5641-842f-d4c5ef28206d', '5e4cbf44-febb-516a-b548-b66a975f2d2d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Structuring a Persuasive Case”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L1_D20","is_correct":true,"text":"A persuasive value proposition connects a specific client problem to a distinctive benefit rather than listing product features."},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L1_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L1_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('38528416-3b01-58ce-957c-f91a92e8d5b0', '5e4cbf44-febb-516a-b548-b66a975f2d2d', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('d0a3499c-272b-550d-8163-a9dd19a43579', NULL, 'Анализ и профессиональное взаимодействие', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Presenting Evidence and Impact","ru":"Анализ и профессиональное взаимодействие"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('526f8a22-5f33-5f29-be4b-f0e21a7c21f6', 'd0a3499c-272b-550d-8163-a9dd19a43579', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L2_D01","left":"value proposition","right":"ценностное предложение"},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L2_D02","left":"compelling evidence","right":"веские доказательства"},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L2_D03","left":"business case","right":"бизнес-обоснование"},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L2_D04","left":"anticipated objection","right":"ожидаемое возражение"},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L2_D05","left":"quantify the impact","right":"количественно оценить влияние"},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L2_D06","left":"reframe a question","right":"переформулировать вопрос"},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L2_D07","left":"credible response","right":"убедительный ответ"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('427b33b7-069c-5b5e-9316-53fbe1c7a29e', 'd0a3499c-272b-550d-8163-a9dd19a43579', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L2_D08","is_correct":true,"text":"The business case becomes more convincing when the presenter can quantify the impact and explain the assumptions behind the forecast."},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L2_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L2_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('57e9d07c-6109-522e-b2d9-e57951fb5386', 'd0a3499c-272b-550d-8163-a9dd19a43579', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The business case becomes more convincing when the presenter can quantify the impact and explain the assumptions behind the forecast.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Бизнес-обоснование становится убедительнее, когда выступающий может количественно оценить влияние и объяснить предположения, лежащие в основе прогноза.","target_language":"en","word_bank":["The","business","case","becomes","more","convincing","when","the","presenter","can","quantify","the","impact","and","explain","the","assumptions","behind","the","forecast","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cfe60f03-88ab-5042-8c7f-a56d94f002f1', 'd0a3499c-272b-550d-8163-a9dd19a43579', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"compelling evidence","instruction":"Выберите подходящее слово.","options":["compelling evidence","quantify the impact","credible response"],"sentence_template":"The business case becomes more convincing when the presenter can quantify the impact and explain the assumptions behind the forecast."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('620e5080-0517-5db9-9972-c7a198324113', 'd0a3499c-272b-550d-8163-a9dd19a43579', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","business","case","becomes","more","convincing","when","the","presenter","can","quantify","the","impact","and","explain","the","assumptions","behind","the","forecast","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","forecast","the","behind","assumptions","the","explain","and","impact","the","quantify","can","presenter","the","when","convincing","more","becomes","case","business","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('56f79212-d4db-53e9-95c7-50a674e5b808', 'd0a3499c-272b-550d-8163-a9dd19a43579', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The business case becomes more convincing when the presenter can quantify the impact and explain the assumptions behind the forecast. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d1f8cd91-4474-5e8c-8efd-59182c28537b', 'd0a3499c-272b-550d-8163-a9dd19a43579', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The business case becomes more convincing when the presenter can quantify the impact and explain the assumptions behind the forecast. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Бизнес-обоснование становится убедительнее, когда выступающий может количественно оценить влияние и объяснить предположения, лежащие в основе прогноза. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b3862b1a-3bbf-5724-a8c6-75ab733335ff', 'd0a3499c-272b-550d-8163-a9dd19a43579', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"The business case becomes more convincing when the presenter can quantify the impact and explain the assumptions behind the forecast.","translation":"Бизнес-обоснование становится убедительнее, когда выступающий может количественно оценить влияние и объяснить предположения, лежащие в основе прогноза.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Presenting Evidence and Impact"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5b4a0cb6-a949-527e-a14e-663573667d6f', 'd0a3499c-272b-550d-8163-a9dd19a43579', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“compelling evidence” means information that strongly supports a conclusion.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L2_D11","is_correct":true,"text":"information that strongly supports a conclusion"},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L2_D12","is_correct":false,"text":"a justification based on costs, benefits, and risks"},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L2_D13","is_correct":false,"text":"a concern predicted before it is raised"}],"word":"compelling evidence"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da296339-307f-5485-8f04-075a87e5fc32', 'd0a3499c-272b-550d-8163-a9dd19a43579', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The business case becomes more convincing when the presenter can quantify the impact and explain the assumptions behind the forecast.","explanation":"The missing business expression is “compelling evidence”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"compelling evidence","id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L2_D14","is_correct":true},{"audio_text":"anticipated objection","id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L2_D15","is_correct":false},{"audio_text":"reframe a question","id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L2_D16","is_correct":false}],"sentence_template":"The business case becomes more convincing when the presenter can quantify the impact and explain the assumptions behind the forecast."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a6b41037-64e6-57db-95e9-0bd9c7015ec1', 'd0a3499c-272b-550d-8163-a9dd19a43579', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"compelling evidence","explanation":"The complete business statement uses “compelling evidence” precisely.","hint_prefix":"comp","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The business case becomes more convincing when the presenter can quantify the impact and explain the assumptions behind the forecast."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f55f1ae2-0c4c-5012-91fd-6320e34fd185', 'd0a3499c-272b-550d-8163-a9dd19a43579', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"value proposition","id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L2_D17","text":"value proposition"},{"audio_text":"compelling evidence","id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L2_D18","text":"compelling evidence"},{"audio_text":"business case","id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L2_D19","text":"business case"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1395e63e-f2c1-5c78-b490-db47eb2fe243', 'd0a3499c-272b-550d-8163-a9dd19a43579', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Presenting Evidence and Impact”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L2_D20","is_correct":true,"text":"The business case becomes more convincing when the presenter can quantify the impact and explain the assumptions behind the forecast."},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L2_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L2_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('38528416-3b01-58ce-957c-f91a92e8d5b0', 'd0a3499c-272b-550d-8163-a9dd19a43579', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('785bb85e-02e6-5ead-af6d-354fbcc3ed7e', NULL, 'Решение и последующие действия', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Handling Challenging Questions","ru":"Решение и последующие действия"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ee5baf3d-28fc-5fa3-b2c3-9acf3b664a7e', '785bb85e-02e6-5ead-af6d-354fbcc3ed7e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L3_D01","left":"value proposition","right":"ценностное предложение"},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L3_D02","left":"compelling evidence","right":"веские доказательства"},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L3_D03","left":"business case","right":"бизнес-обоснование"},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L3_D04","left":"anticipated objection","right":"ожидаемое возражение"},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L3_D05","left":"quantify the impact","right":"количественно оценить влияние"},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L3_D06","left":"reframe a question","right":"переформулировать вопрос"},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L3_D07","left":"credible response","right":"убедительный ответ"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('83f9de9c-07e8-5df1-a518-0a65992a0feb', '785bb85e-02e6-5ead-af6d-354fbcc3ed7e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L3_D08","is_correct":true,"text":"A credible response may reframe a question, but it must still address the anticipated objection directly and acknowledge uncertainty."},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L3_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L3_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('df974320-d69a-51de-8822-f15a8b5866bb', '785bb85e-02e6-5ead-af6d-354fbcc3ed7e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A credible response may reframe a question, but it must still address the anticipated objection directly and acknowledge uncertainty.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Убедительный ответ может переформулировать вопрос, но всё равно должен прямо отвечать на ожидаемое возражение и признавать неопределённость.","target_language":"en","word_bank":["A","credible","response","may","reframe","a","question",",","but","it","must","still","address","the","anticipated","objection","directly","and","acknowledge","uncertainty","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ad670d95-c981-5710-8139-74732288c534', '785bb85e-02e6-5ead-af6d-354fbcc3ed7e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"business case","instruction":"Выберите подходящее слово.","options":["business case","reframe a question","value proposition"],"sentence_template":"A credible response may reframe a question, but it must still address the anticipated objection directly and acknowledge uncertainty."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4f2a0cf4-c7a8-5772-a765-cfc17933be47', '785bb85e-02e6-5ead-af6d-354fbcc3ed7e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","credible","response","may","reframe","a","question",",","but","it","must","still","address","the","anticipated","objection","directly","and","acknowledge","uncertainty","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","uncertainty","acknowledge","and","directly","objection","anticipated","the","address","still","must","it","but",",","question","a","reframe","may","response","credible","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3306d314-d143-560a-969f-c4f738c4f55f', '785bb85e-02e6-5ead-af6d-354fbcc3ed7e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A credible response may reframe a question, but it must still address the anticipated objection directly and acknowledge uncertainty. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9ed88617-2834-5318-abd0-d825c1002037', '785bb85e-02e6-5ead-af6d-354fbcc3ed7e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A credible response may reframe a question, but it must still address the anticipated objection directly and acknowledge uncertainty. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Убедительный ответ может переформулировать вопрос, но всё равно должен прямо отвечать на ожидаемое возражение и признавать неопределённость. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f20dce39-658b-5395-8a21-52bb684394b3', '785bb85e-02e6-5ead-af6d-354fbcc3ed7e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"A credible response may reframe a question, but it must still address the anticipated objection directly and acknowledge uncertainty.","translation":"Убедительный ответ может переформулировать вопрос, но всё равно должен прямо отвечать на ожидаемое возражение и признавать неопределённость.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Handling Challenging Questions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b94f54b-71bf-5418-b3bb-9a0cef119a69', '785bb85e-02e6-5ead-af6d-354fbcc3ed7e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“business case” means a justification based on costs, benefits, and risks.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L3_D11","is_correct":true,"text":"a justification based on costs, benefits, and risks"},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L3_D12","is_correct":false,"text":"a concern predicted before it is raised"},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L3_D13","is_correct":false,"text":"express an effect using measurable figures"}],"word":"business case"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b8848266-b5f4-5347-8431-d9573d55ab7d', '785bb85e-02e6-5ead-af6d-354fbcc3ed7e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A credible response may reframe a question, but it must still address the anticipated objection directly and acknowledge uncertainty.","explanation":"The missing business expression is “business case”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"business case","id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L3_D14","is_correct":true},{"audio_text":"quantify the impact","id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L3_D15","is_correct":false},{"audio_text":"credible response","id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L3_D16","is_correct":false}],"sentence_template":"A credible response may reframe a question, but it must still address the anticipated objection directly and acknowledge uncertainty."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2f3ad62e-a84c-5bc6-920a-45f5c7d63c06', '785bb85e-02e6-5ead-af6d-354fbcc3ed7e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"business case","explanation":"The complete business statement uses “business case” precisely.","hint_prefix":"busi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A credible response may reframe a question, but it must still address the anticipated objection directly and acknowledge uncertainty."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a6d3d268-4159-59cf-81b3-3f54c2cce4c6', '785bb85e-02e6-5ead-af6d-354fbcc3ed7e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"value proposition","id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L3_D17","text":"value proposition"},{"audio_text":"compelling evidence","id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L3_D18","text":"compelling evidence"},{"audio_text":"business case","id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L3_D19","text":"business case"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('060e2d5d-8604-57bb-b9c7-14a4e1d77ae0', '785bb85e-02e6-5ead-af6d-354fbcc3ed7e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Handling Challenging Questions”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L3_D20","is_correct":true,"text":"A credible response may reframe a question, but it must still address the anticipated objection directly and acknowledge uncertainty."},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L3_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_PERSUASIVE_PRESENTATIONS_AND_CHALLENGING_QUESTIONS_L3_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('38528416-3b01-58ce-957c-f91a92e8d5b0', '785bb85e-02e6-5ead-af6d-354fbcc3ed7e', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('741c1bc3-7654-5a63-9829-5426a852e4b7', 'en', 'value proposition', 'ценностное предложение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5eff7dbf-7a9c-52ef-92a8-207824a7eba1', 'en', 'compelling evidence', 'веские доказательства', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('80c8b57a-136c-542e-a8ab-7d45028c75f5', 'en', 'business case', 'бизнес-обоснование', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d9acee28-5e39-5c3b-9b5d-59cd992ec57f', 'en', 'anticipated objection', 'ожидаемое возражение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b73f3c2d-3032-5627-b9ca-20af5af1e8ee', 'en', 'quantify the impact', 'количественно оценить влияние', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ed80c52-bf9d-587f-b2bc-69f6faedf222', 'en', 'reframe a question', 'переформулировать вопрос', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b016747c-13e8-5afa-8644-b9d090b552ca', 'en', 'credible response', 'убедительный ответ', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('741c1bc3-7654-5a63-9829-5426a852e4b7', 'en', 'value proposition', 'ценностное предложение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5eff7dbf-7a9c-52ef-92a8-207824a7eba1', 'en', 'compelling evidence', 'веские доказательства', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('80c8b57a-136c-542e-a8ab-7d45028c75f5', 'en', 'business case', 'бизнес-обоснование', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d9acee28-5e39-5c3b-9b5d-59cd992ec57f', 'en', 'anticipated objection', 'ожидаемое возражение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b73f3c2d-3032-5627-b9ca-20af5af1e8ee', 'en', 'quantify the impact', 'количественно оценить влияние', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ed80c52-bf9d-587f-b2bc-69f6faedf222', 'en', 'reframe a question', 'переформулировать вопрос', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b016747c-13e8-5afa-8644-b9d090b552ca', 'en', 'credible response', 'убедительный ответ', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('741c1bc3-7654-5a63-9829-5426a852e4b7', 'en', 'value proposition', 'ценностное предложение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5eff7dbf-7a9c-52ef-92a8-207824a7eba1', 'en', 'compelling evidence', 'веские доказательства', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('80c8b57a-136c-542e-a8ab-7d45028c75f5', 'en', 'business case', 'бизнес-обоснование', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d9acee28-5e39-5c3b-9b5d-59cd992ec57f', 'en', 'anticipated objection', 'ожидаемое возражение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b73f3c2d-3032-5627-b9ca-20af5af1e8ee', 'en', 'quantify the impact', 'количественно оценить влияние', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ed80c52-bf9d-587f-b2bc-69f6faedf222', 'en', 'reframe a question', 'переформулировать вопрос', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b016747c-13e8-5afa-8644-b9d090b552ca', 'en', 'credible response', 'убедительный ответ', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '38528416-3b01-58ce-957c-f91a92e8d5b0', id, '5e4cbf44-febb-516a-b548-b66a975f2d2d', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'value proposition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '38528416-3b01-58ce-957c-f91a92e8d5b0', id, '5e4cbf44-febb-516a-b548-b66a975f2d2d', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'compelling evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '38528416-3b01-58ce-957c-f91a92e8d5b0', id, '5e4cbf44-febb-516a-b548-b66a975f2d2d', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'business case' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '38528416-3b01-58ce-957c-f91a92e8d5b0', id, '5e4cbf44-febb-516a-b548-b66a975f2d2d', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'anticipated objection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '38528416-3b01-58ce-957c-f91a92e8d5b0', id, '5e4cbf44-febb-516a-b548-b66a975f2d2d', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'quantify the impact' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '38528416-3b01-58ce-957c-f91a92e8d5b0', id, '5e4cbf44-febb-516a-b548-b66a975f2d2d', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'reframe a question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '38528416-3b01-58ce-957c-f91a92e8d5b0', id, '5e4cbf44-febb-516a-b548-b66a975f2d2d', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'credible response' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '38528416-3b01-58ce-957c-f91a92e8d5b0', id, 'd0a3499c-272b-550d-8163-a9dd19a43579', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'value proposition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '38528416-3b01-58ce-957c-f91a92e8d5b0', id, 'd0a3499c-272b-550d-8163-a9dd19a43579', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'compelling evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '38528416-3b01-58ce-957c-f91a92e8d5b0', id, 'd0a3499c-272b-550d-8163-a9dd19a43579', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'business case' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '38528416-3b01-58ce-957c-f91a92e8d5b0', id, 'd0a3499c-272b-550d-8163-a9dd19a43579', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'anticipated objection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '38528416-3b01-58ce-957c-f91a92e8d5b0', id, 'd0a3499c-272b-550d-8163-a9dd19a43579', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'quantify the impact' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '38528416-3b01-58ce-957c-f91a92e8d5b0', id, 'd0a3499c-272b-550d-8163-a9dd19a43579', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'reframe a question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '38528416-3b01-58ce-957c-f91a92e8d5b0', id, 'd0a3499c-272b-550d-8163-a9dd19a43579', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'credible response' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '38528416-3b01-58ce-957c-f91a92e8d5b0', id, '785bb85e-02e6-5ead-af6d-354fbcc3ed7e', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'value proposition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '38528416-3b01-58ce-957c-f91a92e8d5b0', id, '785bb85e-02e6-5ead-af6d-354fbcc3ed7e', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'compelling evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '38528416-3b01-58ce-957c-f91a92e8d5b0', id, '785bb85e-02e6-5ead-af6d-354fbcc3ed7e', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'business case' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '38528416-3b01-58ce-957c-f91a92e8d5b0', id, '785bb85e-02e6-5ead-af6d-354fbcc3ed7e', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'anticipated objection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '38528416-3b01-58ce-957c-f91a92e8d5b0', id, '785bb85e-02e6-5ead-af6d-354fbcc3ed7e', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'quantify the impact' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '38528416-3b01-58ce-957c-f91a92e8d5b0', id, '785bb85e-02e6-5ead-af6d-354fbcc3ed7e', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'reframe a question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '38528416-3b01-58ce-957c-f91a92e8d5b0', id, '785bb85e-02e6-5ead-af6d-354fbcc3ed7e', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'credible response' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
