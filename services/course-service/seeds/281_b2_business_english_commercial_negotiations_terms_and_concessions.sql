-- Track: B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('abb2f433-7dd2-5fb9-a81f-df7cb2bf912e', 'B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS', 'Коммерческие переговоры, условия и уступки', 'Развивайте точный деловой английский уровня B2 по теме «Коммерческие переговоры, условия и уступки», анализируя коммерческие последствия и согласовывая обоснованные решения.', '{"en":"Commercial Negotiations, Terms and Concessions","ru":"Коммерческие переговоры, условия и уступки"}'::jsonb, '{"en":"Develop precise B2 business English for commercial negotiations, terms and concessions by analysing commercial implications and negotiating well-supported decisions.","ru":"Развивайте точный деловой английский уровня B2 по теме «Коммерческие переговоры, условия и уступки», анализируя коммерческие последствия и согласовывая обоснованные решения."}'::jsonb, 'en', 'B2', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('975e1d0e-f5e5-5a5f-a5d4-b537d75bd57c', NULL, 'Деловой контекст и ключевые понятия', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Establishing Negotiating Positions","ru":"Деловой контекст и ключевые понятия"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('60d936ce-3132-5402-903b-cd0dfb96ff97', '975e1d0e-f5e5-5a5f-a5d4-b537d75bd57c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L1_D01","left":"opening position","right":"исходная позиция"},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L1_D02","left":"non-negotiable","right":"не подлежащий обсуждению"},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L1_D03","left":"trade-off","right":"компромиссный обмен"},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L1_D04","left":"conditional offer","right":"условное предложение"},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L1_D05","left":"make a concession","right":"пойти на уступку"},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L1_D06","left":"commercial terms","right":"коммерческие условия"},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L1_D07","left":"tentative agreement","right":"предварительное соглашение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e5c59b7e-918a-50d3-8d6d-205f9f2a5555', '975e1d0e-f5e5-5a5f-a5d4-b537d75bd57c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L1_D08","is_correct":true,"text":"Our opening position reflects the full service scope, although the payment schedule is negotiable within clearly defined limits."},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L1_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L1_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('895f44f3-32d6-5911-8888-4ecce37eb159', '975e1d0e-f5e5-5a5f-a5d4-b537d75bd57c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Our opening position reflects the full service scope, although the payment schedule is negotiable within clearly defined limits.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Наша исходная позиция отражает полный объём услуг, хотя график платежей может обсуждаться в чётко определённых пределах.","target_language":"en","word_bank":["Our","opening","position","reflects","the","full","service","scope",",","although","the","payment","schedule","is","negotiable","within","clearly","defined","limits","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('13509f09-7674-5da6-b1b7-c4ae0bc8adcf', '975e1d0e-f5e5-5a5f-a5d4-b537d75bd57c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"opening position","instruction":"Выберите подходящее слово.","options":["opening position","conditional offer","commercial terms"],"sentence_template":"Our ___ reflects the full service scope, although the payment schedule is negotiable within clearly defined limits."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('de4fb9b3-a68d-59ea-82b8-9318e6e143ed', '975e1d0e-f5e5-5a5f-a5d4-b537d75bd57c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Our","opening","position","reflects","the","full","service","scope",",","although","the","payment","schedule","is","negotiable","within","clearly","defined","limits","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","limits","defined","clearly","within","negotiable","is","schedule","payment","the","although",",","scope","service","full","the","reflects","position","opening","Our"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a0759b74-7646-5b7d-9b4b-5f105da18d0c', '975e1d0e-f5e5-5a5f-a5d4-b537d75bd57c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Our opening position reflects the full service scope, although the payment schedule is negotiable within clearly defined limits. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6630e6de-4274-5a70-8cc6-aa1f9564b9cf', '975e1d0e-f5e5-5a5f-a5d4-b537d75bd57c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Our opening position reflects the full service scope, although the payment schedule is negotiable within clearly defined limits. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Наша исходная позиция отражает полный объём услуг, хотя график платежей может обсуждаться в чётко определённых пределах. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce0b643e-dffe-5703-b129-c3147630c117', '975e1d0e-f5e5-5a5f-a5d4-b537d75bd57c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"Our opening position reflects the full service scope, although the payment schedule is negotiable within clearly defined limits.","translation":"Наша исходная позиция отражает полный объём услуг, хотя график платежей может обсуждаться в чётко определённых пределах.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Establishing Negotiating Positions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('335b7dba-29a0-5ecc-bd18-9a2364a8373c', '975e1d0e-f5e5-5a5f-a5d4-b537d75bd57c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“opening position” means the initial terms proposed in a negotiation.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L1_D11","is_correct":true,"text":"the initial terms proposed in a negotiation"},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L1_D12","is_correct":false,"text":"not open to compromise"},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L1_D13","is_correct":false,"text":"an exchange of one advantage for another"}],"word":"opening position"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('87ae56b0-2f97-56a5-ad94-bae688013475', '975e1d0e-f5e5-5a5f-a5d4-b537d75bd57c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Our opening position reflects the full service scope, although the payment schedule is negotiable within clearly defined limits.","explanation":"The missing business expression is “opening position”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"opening position","id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L1_D14","is_correct":true},{"audio_text":"trade-off","id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L1_D15","is_correct":false},{"audio_text":"make a concession","id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L1_D16","is_correct":false}],"sentence_template":"Our ___ reflects the full service scope, although the payment schedule is negotiable within clearly defined limits."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd9f4b6e-36da-5f3a-9d97-479ce023de88', '975e1d0e-f5e5-5a5f-a5d4-b537d75bd57c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"opening position","explanation":"The complete business statement uses “opening position” precisely.","hint_prefix":"open","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Our ___ reflects the full service scope, although the payment schedule is negotiable within clearly defined limits."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('31631920-13a6-5d18-9473-06d52f20ebb1', '975e1d0e-f5e5-5a5f-a5d4-b537d75bd57c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"opening position","id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L1_D17","text":"opening position"},{"audio_text":"non-negotiable","id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L1_D18","text":"non-negotiable"},{"audio_text":"trade-off","id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L1_D19","text":"trade-off"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9ab16063-3bd4-5151-b317-6c44e4e0d3ca', '975e1d0e-f5e5-5a5f-a5d4-b537d75bd57c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Establishing Negotiating Positions”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L1_D20","is_correct":true,"text":"Our opening position reflects the full service scope, although the payment schedule is negotiable within clearly defined limits."},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L1_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L1_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('abb2f433-7dd2-5fb9-a81f-df7cb2bf912e', '975e1d0e-f5e5-5a5f-a5d4-b537d75bd57c', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a9420567-3c7a-5e66-8a39-72ca12286c53', NULL, 'Анализ и профессиональное взаимодействие', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Trading Concessions","ru":"Анализ и профессиональное взаимодействие"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('800faa84-cf09-56e7-960a-2dc6d388bc0f', 'a9420567-3c7a-5e66-8a39-72ca12286c53', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L2_D01","left":"opening position","right":"исходная позиция"},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L2_D02","left":"non-negotiable","right":"не подлежащий обсуждению"},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L2_D03","left":"trade-off","right":"компромиссный обмен"},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L2_D04","left":"conditional offer","right":"условное предложение"},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L2_D05","left":"make a concession","right":"пойти на уступку"},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L2_D06","left":"commercial terms","right":"коммерческие условия"},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L2_D07","left":"tentative agreement","right":"предварительное соглашение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a88d80d3-f2e1-5238-93bf-2f8c8328c4d2', 'a9420567-3c7a-5e66-8a39-72ca12286c53', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L2_D08","is_correct":true,"text":"We could make a concession on delivery if the client accepted a trade-off involving a longer minimum contract."},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L2_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L2_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('44e79348-e00e-57cc-b7a7-75be52c49ca7', 'a9420567-3c7a-5e66-8a39-72ca12286c53', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We could make a concession on delivery if the client accepted a trade-off involving a longer minimum contract.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мы могли бы пойти на уступку по срокам поставки, если бы клиент принял компромиссный обмен с более длительным минимальным контрактом.","target_language":"en","word_bank":["We","could","make","a","concession","on","delivery","if","the","client","accepted","a","trade-off","involving","a","longer","minimum","contract","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('17402f7f-c26e-5e0a-9e26-d8ca9b64f210', 'a9420567-3c7a-5e66-8a39-72ca12286c53', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"non-negotiable","instruction":"Выберите подходящее слово.","options":["non-negotiable","make a concession","tentative agreement"],"sentence_template":"We could make a concession on delivery if the client accepted a trade-off involving a longer minimum contract."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('be026c87-20b9-51cf-b0c4-3d059a425517', 'a9420567-3c7a-5e66-8a39-72ca12286c53', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","could","make","a","concession","on","delivery","if","the","client","accepted","a","trade-off","involving","a","longer","minimum","contract","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","contract","minimum","longer","a","involving","trade-off","a","accepted","client","the","if","delivery","on","concession","a","make","could","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b41e6576-581f-59dc-9ab7-5afcb676a296', 'a9420567-3c7a-5e66-8a39-72ca12286c53', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We could make a concession on delivery if the client accepted a trade-off involving a longer minimum contract. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a09ff02-9b3d-511f-9e07-644b71ff9497', 'a9420567-3c7a-5e66-8a39-72ca12286c53', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We could make a concession on delivery if the client accepted a trade-off involving a longer minimum contract. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Мы могли бы пойти на уступку по срокам поставки, если бы клиент принял компромиссный обмен с более длительным минимальным контрактом. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b6a15e4-d34c-5396-938c-1386d9e7b25b', 'a9420567-3c7a-5e66-8a39-72ca12286c53', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"We could make a concession on delivery if the client accepted a trade-off involving a longer minimum contract.","translation":"Мы могли бы пойти на уступку по срокам поставки, если бы клиент принял компромиссный обмен с более длительным минимальным контрактом.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Trading Concessions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fe9035a1-de24-5fe8-bfcc-06a240921af7', 'a9420567-3c7a-5e66-8a39-72ca12286c53', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“non-negotiable” means not open to compromise.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L2_D11","is_correct":true,"text":"not open to compromise"},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L2_D12","is_correct":false,"text":"an exchange of one advantage for another"},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L2_D13","is_correct":false,"text":"a proposal valid only if a condition is met"}],"word":"non-negotiable"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('94d90e95-7010-5a16-b2b1-e48759a8fcc5', 'a9420567-3c7a-5e66-8a39-72ca12286c53', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We could make a concession on delivery if the client accepted a trade-off involving a longer minimum contract.","explanation":"The missing business expression is “non-negotiable”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"non-negotiable","id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L2_D14","is_correct":true},{"audio_text":"conditional offer","id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L2_D15","is_correct":false},{"audio_text":"commercial terms","id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L2_D16","is_correct":false}],"sentence_template":"We could make a concession on delivery if the client accepted a trade-off involving a longer minimum contract."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ab67b947-abed-53fc-a439-cfddc02d91ab', 'a9420567-3c7a-5e66-8a39-72ca12286c53', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"non-negotiable","explanation":"The complete business statement uses “non-negotiable” precisely.","hint_prefix":"non-","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We could make a concession on delivery if the client accepted a trade-off involving a longer minimum contract."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65a7a13d-8554-5b66-8aea-e9eb45bfc175', 'a9420567-3c7a-5e66-8a39-72ca12286c53', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"opening position","id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L2_D17","text":"opening position"},{"audio_text":"non-negotiable","id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L2_D18","text":"non-negotiable"},{"audio_text":"trade-off","id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L2_D19","text":"trade-off"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7620e683-c3bf-5453-9964-fba32f15951b', 'a9420567-3c7a-5e66-8a39-72ca12286c53', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Trading Concessions”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L2_D20","is_correct":true,"text":"We could make a concession on delivery if the client accepted a trade-off involving a longer minimum contract."},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L2_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L2_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('abb2f433-7dd2-5fb9-a81f-df7cb2bf912e', 'a9420567-3c7a-5e66-8a39-72ca12286c53', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ce620963-ea74-513b-98ec-26a0c4bc5ba7', NULL, 'Решение и последующие действия', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Closing a Conditional Agreement","ru":"Решение и последующие действия"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('921bffb4-dec8-5781-ae06-527fa23d4e5f', 'ce620963-ea74-513b-98ec-26a0c4bc5ba7', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L3_D01","left":"opening position","right":"исходная позиция"},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L3_D02","left":"non-negotiable","right":"не подлежащий обсуждению"},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L3_D03","left":"trade-off","right":"компромиссный обмен"},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L3_D04","left":"conditional offer","right":"условное предложение"},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L3_D05","left":"make a concession","right":"пойти на уступку"},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L3_D06","left":"commercial terms","right":"коммерческие условия"},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L3_D07","left":"tentative agreement","right":"предварительное соглашение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('33d909ec-073b-5d12-abfc-4ba08a02b52f', 'ce620963-ea74-513b-98ec-26a0c4bc5ba7', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L3_D08","is_correct":true,"text":"The tentative agreement covers the main commercial terms, but final approval depends on acceptance of the conditional offer in writing."},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L3_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L3_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9894528a-f471-50f8-bb5f-84e3fc061a4f', 'ce620963-ea74-513b-98ec-26a0c4bc5ba7', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The tentative agreement covers the main commercial terms, but final approval depends on acceptance of the conditional offer in writing.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Предварительное соглашение охватывает основные коммерческие условия, но окончательное утверждение зависит от письменного принятия условного предложения.","target_language":"en","word_bank":["The","tentative","agreement","covers","the","main","commercial","terms",",","but","final","approval","depends","on","acceptance","of","the","conditional","offer","in","writing","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('04c5aeb1-7534-5c98-ae36-63979d46ef06', 'ce620963-ea74-513b-98ec-26a0c4bc5ba7', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"trade-off","instruction":"Выберите подходящее слово.","options":["trade-off","commercial terms","opening position"],"sentence_template":"The tentative agreement covers the main commercial terms, but final approval depends on acceptance of the conditional offer in writing."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b970f61-1251-5e08-b779-afe223b7897d', 'ce620963-ea74-513b-98ec-26a0c4bc5ba7', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","tentative","agreement","covers","the","main","commercial","terms",",","but","final","approval","depends","on","acceptance","of","the","conditional","offer","in","writing","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","writing","in","offer","conditional","the","of","acceptance","on","depends","approval","final","but",",","terms","commercial","main","the","covers","agreement","tentative","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('722a5f7d-8d89-5122-9b19-90711edcb902', 'ce620963-ea74-513b-98ec-26a0c4bc5ba7', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The tentative agreement covers the main commercial terms, but final approval depends on acceptance of the conditional offer in writing. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa0815c0-9553-5a6d-a597-4aad5f7974e0', 'ce620963-ea74-513b-98ec-26a0c4bc5ba7', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The tentative agreement covers the main commercial terms, but final approval depends on acceptance of the conditional offer in writing. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Предварительное соглашение охватывает основные коммерческие условия, но окончательное утверждение зависит от письменного принятия условного предложения. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('756a9ae7-e0bc-5187-bd27-c363a81504db', 'ce620963-ea74-513b-98ec-26a0c4bc5ba7', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"The tentative agreement covers the main commercial terms, but final approval depends on acceptance of the conditional offer in writing.","translation":"Предварительное соглашение охватывает основные коммерческие условия, но окончательное утверждение зависит от письменного принятия условного предложения.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Closing a Conditional Agreement"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('852dbf34-f45c-5b7e-8564-0e44b27bf891', 'ce620963-ea74-513b-98ec-26a0c4bc5ba7', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“trade-off” means an exchange of one advantage for another.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L3_D11","is_correct":true,"text":"an exchange of one advantage for another"},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L3_D12","is_correct":false,"text":"a proposal valid only if a condition is met"},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L3_D13","is_correct":false,"text":"give up part of a demand to gain agreement"}],"word":"trade-off"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5cd64a86-45ed-5aff-8658-aeb4e8e4eb94', 'ce620963-ea74-513b-98ec-26a0c4bc5ba7', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The tentative agreement covers the main commercial terms, but final approval depends on acceptance of the conditional offer in writing.","explanation":"The missing business expression is “trade-off”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"trade-off","id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L3_D14","is_correct":true},{"audio_text":"make a concession","id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L3_D15","is_correct":false},{"audio_text":"tentative agreement","id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L3_D16","is_correct":false}],"sentence_template":"The tentative agreement covers the main commercial terms, but final approval depends on acceptance of the conditional offer in writing."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae6a11ea-b3d6-5e34-9302-bf36e6428e8d', 'ce620963-ea74-513b-98ec-26a0c4bc5ba7', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"trade-off","explanation":"The complete business statement uses “trade-off” precisely.","hint_prefix":"trad","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The tentative agreement covers the main commercial terms, but final approval depends on acceptance of the conditional offer in writing."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5dcd0f99-6527-52ea-a60c-2801b970aeec', 'ce620963-ea74-513b-98ec-26a0c4bc5ba7', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"opening position","id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L3_D17","text":"opening position"},{"audio_text":"non-negotiable","id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L3_D18","text":"non-negotiable"},{"audio_text":"trade-off","id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L3_D19","text":"trade-off"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('44092318-bfb6-52ac-9312-b58620cb5529', 'ce620963-ea74-513b-98ec-26a0c4bc5ba7', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Closing a Conditional Agreement”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L3_D20","is_correct":true,"text":"The tentative agreement covers the main commercial terms, but final approval depends on acceptance of the conditional offer in writing."},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L3_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_COMMERCIAL_NEGOTIATIONS_TERMS_AND_CONCESSIONS_L3_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('abb2f433-7dd2-5fb9-a81f-df7cb2bf912e', 'ce620963-ea74-513b-98ec-26a0c4bc5ba7', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('32d6743b-09bf-5d1f-aba7-2f8fab72bf3d', 'en', 'opening position', 'исходная позиция', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3078c98-bab5-5756-8bbb-fdfee27d1d82', 'en', 'non-negotiable', 'не подлежащий обсуждению', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('09e874b9-5b90-5efe-9ff2-18fdd270e4da', 'en', 'trade-off', 'компромиссный обмен', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cfcb2557-8a46-5b54-bcf6-f26a1dc778e8', 'en', 'conditional offer', 'условное предложение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3bfd1bdf-6dfe-58a3-8386-26615355a1df', 'en', 'make a concession', 'пойти на уступку', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('56f3b453-0a44-59fa-ae05-4bd83037ebc6', 'en', 'commercial terms', 'коммерческие условия', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5acf455-c37a-54c8-a996-2313b8d071be', 'en', 'tentative agreement', 'предварительное соглашение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('32d6743b-09bf-5d1f-aba7-2f8fab72bf3d', 'en', 'opening position', 'исходная позиция', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3078c98-bab5-5756-8bbb-fdfee27d1d82', 'en', 'non-negotiable', 'не подлежащий обсуждению', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('09e874b9-5b90-5efe-9ff2-18fdd270e4da', 'en', 'trade-off', 'компромиссный обмен', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cfcb2557-8a46-5b54-bcf6-f26a1dc778e8', 'en', 'conditional offer', 'условное предложение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3bfd1bdf-6dfe-58a3-8386-26615355a1df', 'en', 'make a concession', 'пойти на уступку', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('56f3b453-0a44-59fa-ae05-4bd83037ebc6', 'en', 'commercial terms', 'коммерческие условия', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5acf455-c37a-54c8-a996-2313b8d071be', 'en', 'tentative agreement', 'предварительное соглашение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('32d6743b-09bf-5d1f-aba7-2f8fab72bf3d', 'en', 'opening position', 'исходная позиция', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3078c98-bab5-5756-8bbb-fdfee27d1d82', 'en', 'non-negotiable', 'не подлежащий обсуждению', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('09e874b9-5b90-5efe-9ff2-18fdd270e4da', 'en', 'trade-off', 'компромиссный обмен', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cfcb2557-8a46-5b54-bcf6-f26a1dc778e8', 'en', 'conditional offer', 'условное предложение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3bfd1bdf-6dfe-58a3-8386-26615355a1df', 'en', 'make a concession', 'пойти на уступку', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('56f3b453-0a44-59fa-ae05-4bd83037ebc6', 'en', 'commercial terms', 'коммерческие условия', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5acf455-c37a-54c8-a996-2313b8d071be', 'en', 'tentative agreement', 'предварительное соглашение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abb2f433-7dd2-5fb9-a81f-df7cb2bf912e', id, '975e1d0e-f5e5-5a5f-a5d4-b537d75bd57c', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'opening position' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abb2f433-7dd2-5fb9-a81f-df7cb2bf912e', id, '975e1d0e-f5e5-5a5f-a5d4-b537d75bd57c', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'non-negotiable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abb2f433-7dd2-5fb9-a81f-df7cb2bf912e', id, '975e1d0e-f5e5-5a5f-a5d4-b537d75bd57c', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'trade-off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abb2f433-7dd2-5fb9-a81f-df7cb2bf912e', id, '975e1d0e-f5e5-5a5f-a5d4-b537d75bd57c', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'conditional offer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abb2f433-7dd2-5fb9-a81f-df7cb2bf912e', id, '975e1d0e-f5e5-5a5f-a5d4-b537d75bd57c', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'make a concession' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abb2f433-7dd2-5fb9-a81f-df7cb2bf912e', id, '975e1d0e-f5e5-5a5f-a5d4-b537d75bd57c', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'commercial terms' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abb2f433-7dd2-5fb9-a81f-df7cb2bf912e', id, '975e1d0e-f5e5-5a5f-a5d4-b537d75bd57c', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'tentative agreement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abb2f433-7dd2-5fb9-a81f-df7cb2bf912e', id, 'a9420567-3c7a-5e66-8a39-72ca12286c53', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'opening position' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abb2f433-7dd2-5fb9-a81f-df7cb2bf912e', id, 'a9420567-3c7a-5e66-8a39-72ca12286c53', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'non-negotiable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abb2f433-7dd2-5fb9-a81f-df7cb2bf912e', id, 'a9420567-3c7a-5e66-8a39-72ca12286c53', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'trade-off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abb2f433-7dd2-5fb9-a81f-df7cb2bf912e', id, 'a9420567-3c7a-5e66-8a39-72ca12286c53', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'conditional offer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abb2f433-7dd2-5fb9-a81f-df7cb2bf912e', id, 'a9420567-3c7a-5e66-8a39-72ca12286c53', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'make a concession' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abb2f433-7dd2-5fb9-a81f-df7cb2bf912e', id, 'a9420567-3c7a-5e66-8a39-72ca12286c53', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'commercial terms' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abb2f433-7dd2-5fb9-a81f-df7cb2bf912e', id, 'a9420567-3c7a-5e66-8a39-72ca12286c53', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'tentative agreement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abb2f433-7dd2-5fb9-a81f-df7cb2bf912e', id, 'ce620963-ea74-513b-98ec-26a0c4bc5ba7', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'opening position' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abb2f433-7dd2-5fb9-a81f-df7cb2bf912e', id, 'ce620963-ea74-513b-98ec-26a0c4bc5ba7', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'non-negotiable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abb2f433-7dd2-5fb9-a81f-df7cb2bf912e', id, 'ce620963-ea74-513b-98ec-26a0c4bc5ba7', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'trade-off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abb2f433-7dd2-5fb9-a81f-df7cb2bf912e', id, 'ce620963-ea74-513b-98ec-26a0c4bc5ba7', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'conditional offer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abb2f433-7dd2-5fb9-a81f-df7cb2bf912e', id, 'ce620963-ea74-513b-98ec-26a0c4bc5ba7', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'make a concession' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abb2f433-7dd2-5fb9-a81f-df7cb2bf912e', id, 'ce620963-ea74-513b-98ec-26a0c4bc5ba7', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'commercial terms' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abb2f433-7dd2-5fb9-a81f-df7cb2bf912e', id, 'ce620963-ea74-513b-98ec-26a0c4bc5ba7', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'tentative agreement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
