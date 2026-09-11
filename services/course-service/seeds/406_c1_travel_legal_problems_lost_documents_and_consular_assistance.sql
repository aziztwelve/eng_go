-- Track: C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('d170850f-90d3-563e-a36a-f5743e63cb31', 'C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE', 'Правовые проблемы, утраченные документы и консульская помощь', 'Освойте практический английский C1 по теме «Правовые проблемы, утраченные документы и консульская помощь», уверенно решая сложные реальные ситуации в международных поездках.', '{"en":"Legal Problems, Lost Documents and Consular Assistance","ru":"Правовые проблемы, утраченные документы и консульская помощь"}'::jsonb, '{"en":"Master practical C1 English for legal problems, lost documents and consular assistance by handling complex real-world international travel situations confidently.","ru":"Освойте практический английский C1 по теме «Правовые проблемы, утраченные документы и консульская помощь», уверенно решая сложные реальные ситуации в международных поездках."}'::jsonb, 'en', 'C1', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('d3e97494-526f-5fc1-b63b-25836208e374', NULL, 'Практический контекст и ключевые понятия', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Reporting Lost or Stolen Documents","ru":"Практический контекст и ключевые понятия"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a822fd4e-391c-50fa-b1de-64cd03010eed', 'd3e97494-526f-5fc1-b63b-25836208e374', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L1_D01","left":"police report","right":"полицейский протокол"},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L1_D02","left":"emergency travel document","right":"временный проездной документ"},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L1_D03","left":"legal representation","right":"юридическое представительство"},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L1_D04","left":"procedural right","right":"процессуальное право"},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L1_D05","left":"certified interpreter","right":"сертифицированный переводчик"},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L1_D06","left":"consular assistance","right":"консульская помощь"},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L1_D07","left":"jurisdictional limit","right":"предел юрисдикции"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf40aa08-a036-5607-bd79-b307f4cfae3f', 'd3e97494-526f-5fc1-b63b-25836208e374', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L1_D08","is_correct":true,"text":"I need a police report listing the missing passport and identifying information so that I can request an emergency travel document."},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L1_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L1_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2863ba0f-bbdb-58a4-b5a3-56ff0ccc7ec5', 'd3e97494-526f-5fc1-b63b-25836208e374', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I need a police report listing the missing passport and identifying information so that I can request an emergency travel document.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мне нужен полицейский протокол с указанием пропавшего паспорта и идентификационных данных, чтобы запросить временный проездной документ.","target_language":"en","word_bank":["I","need","a","police","report","listing","the","missing","passport","and","identifying","information","so","that","I","can","request","an","emergency","travel","document","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('15b3a7cb-4e84-5c75-a5d4-776cacc06d35', 'd3e97494-526f-5fc1-b63b-25836208e374', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"police report","instruction":"Выберите подходящее слово.","options":["police report","procedural right","consular assistance"],"sentence_template":"I need a ___ listing the missing passport and identifying information so that I can request an emergency travel document."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d55390e8-d9d8-5157-9903-e771942e0d0e', 'd3e97494-526f-5fc1-b63b-25836208e374', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","need","a","police","report","listing","the","missing","passport","and","identifying","information","so","that","I","can","request","an","emergency","travel","document","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","document","travel","emergency","an","request","can","I","that","so","information","identifying","and","passport","missing","the","listing","report","police","a","need","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d9356a2-4d17-5c2a-beb3-822be7384f5d', 'd3e97494-526f-5fc1-b63b-25836208e374', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I need a police report listing the missing passport and identifying information so that I can request an emergency travel document. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ab018722-6805-5387-90fa-83949409496a', 'd3e97494-526f-5fc1-b63b-25836208e374', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I need a police report listing the missing passport and identifying information so that I can request an emergency travel document. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Мне нужен полицейский протокол с указанием пропавшего паспорта и идентификационных данных, чтобы запросить временный проездной документ. Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первое решение недостаточно, спокойно объясните почему и запросите соразмерную альтернативу."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e16aacf1-d593-5c98-aa7e-1b0252a0f878', 'd3e97494-526f-5fc1-b63b-25836208e374', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"I need a police report listing the missing passport and identifying information so that I can request an emergency travel document.","translation":"Мне нужен полицейский протокол с указанием пропавшего паспорта и идентификационных данных, чтобы запросить временный проездной документ.","type":"dialogue"},{"character":"Representative","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Reporting Lost or Stolen Documents"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41616972-b0c7-5047-b0cb-745f86c2cf64', 'd3e97494-526f-5fc1-b63b-25836208e374', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“police report” means an official record made by the police.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L1_D11","is_correct":true,"text":"an official record made by the police"},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L1_D12","is_correct":false,"text":"temporary identification permitting essential travel"},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L1_D13","is_correct":false,"text":"professional assistance from a lawyer"}],"word":"police report"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f73d4607-617c-5ed6-aca8-a1e3bf2db4e7', 'd3e97494-526f-5fc1-b63b-25836208e374', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I need a police report listing the missing passport and identifying information so that I can request an emergency travel document.","explanation":"The missing C1 travel expression is “police report”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"police report","id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L1_D14","is_correct":true},{"audio_text":"legal representation","id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L1_D15","is_correct":false},{"audio_text":"certified interpreter","id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L1_D16","is_correct":false}],"sentence_template":"I need a ___ listing the missing passport and identifying information so that I can request an emergency travel document."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2fa64d85-30dd-5381-80f2-d2ff1d524e33', 'd3e97494-526f-5fc1-b63b-25836208e374', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"police report","explanation":"The complete statement uses “police report” accurately.","hint_prefix":"poli","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I need a ___ listing the missing passport and identifying information so that I can request an emergency travel document."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fdcdd021-40e4-5e1a-8f79-9d0518986cb1', 'd3e97494-526f-5fc1-b63b-25836208e374', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"police report","id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L1_D17","text":"police report"},{"audio_text":"emergency travel document","id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L1_D18","text":"emergency travel document"},{"audio_text":"legal representation","id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L1_D19","text":"legal representation"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('882b5486-7073-5ef8-8e19-b0328b61d95e', 'd3e97494-526f-5fc1-b63b-25836208e374', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Reporting Lost or Stolen Documents”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L1_D20","is_correct":true,"text":"I need a police report listing the missing passport and identifying information so that I can request an emergency travel document."},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L1_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L1_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d170850f-90d3-563e-a36a-f5743e63cb31', 'd3e97494-526f-5fc1-b63b-25836208e374', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f3f83939-a5e5-5378-864c-31dfef272516', NULL, 'Сложное взаимодействие и решение проблемы', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Understanding Local Legal Procedure","ru":"Сложное взаимодействие и решение проблемы"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b0d8562a-3fcd-5d99-a1ad-03b0cedbbea2', 'f3f83939-a5e5-5378-864c-31dfef272516', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L2_D01","left":"police report","right":"полицейский протокол"},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L2_D02","left":"emergency travel document","right":"временный проездной документ"},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L2_D03","left":"legal representation","right":"юридическое представительство"},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L2_D04","left":"procedural right","right":"процессуальное право"},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L2_D05","left":"certified interpreter","right":"сертифицированный переводчик"},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L2_D06","left":"consular assistance","right":"консульская помощь"},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L2_D07","left":"jurisdictional limit","right":"предел юрисдикции"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f49639d9-01b2-5b75-aa89-9a735ab79e07', 'f3f83939-a5e5-5378-864c-31dfef272516', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L2_D08","is_correct":true,"text":"Before signing the statement, I would like legal representation and a certified interpreter to explain my procedural rights. The relevant travel expression is emergency travel document."},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L2_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L2_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b1aaffe-1997-559f-bdd0-506bb8e0c867', 'f3f83939-a5e5-5378-864c-31dfef272516', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Before signing the statement, I would like legal representation and a certified interpreter to explain my procedural rights. The relevant travel expression is emergency travel document.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Перед подписанием заявления я хотел бы получить юридическое представительство и сертифицированного переводчика для объяснения процессуальных прав. Соответствующее выражение для путешествий — «временный проездной документ».","target_language":"en","word_bank":["Before","signing","the","statement",",","I","would","like","legal","representation","and","a","certified","interpreter","to","explain","my","procedural","rights",".","The","relevant","travel","expression","is","emergency","travel","document","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6829469d-c6d3-5256-aad3-391b8d3b6432', 'f3f83939-a5e5-5378-864c-31dfef272516', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"emergency travel document","instruction":"Выберите подходящее слово.","options":["emergency travel document","certified interpreter","jurisdictional limit"],"sentence_template":"Before signing the statement, I would like legal representation and a certified interpreter to explain my procedural rights. The relevant travel expression is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6518d65e-4c4d-513c-9e9e-a3773f5f12c0', 'f3f83939-a5e5-5378-864c-31dfef272516', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Before","signing","the","statement",",","I","would","like","legal","representation","and","a","certified","interpreter","to","explain","my","procedural","rights",".","The","relevant","travel","expression","is","emergency","travel","document","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","document","travel","emergency","is","expression","travel","relevant","The",".","rights","procedural","my","explain","to","interpreter","certified","a","and","representation","legal","like","would","I",",","statement","the","signing","Before"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('639d22ed-3703-5356-8461-04693b0125bb', 'f3f83939-a5e5-5378-864c-31dfef272516', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Before signing the statement, I would like legal representation and a certified interpreter to explain my procedural rights. The relevant travel expression is emergency travel document. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c32a05f4-5fdb-5fea-a491-d2941da2fa73', 'f3f83939-a5e5-5378-864c-31dfef272516', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Before signing the statement, I would like legal representation and a certified interpreter to explain my procedural rights. The relevant travel expression is emergency travel document. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Перед подписанием заявления я хотел бы получить юридическое представительство и сертифицированного переводчика для объяснения процессуальных прав. Соответствующее выражение для путешествий — «временный проездной документ». Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первое решение недостаточно, спокойно объясните почему и запросите соразмерную альтернативу."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('95daa43c-b3f0-53b7-aada-e4658da22c67', 'f3f83939-a5e5-5378-864c-31dfef272516', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"Before signing the statement, I would like legal representation and a certified interpreter to explain my procedural rights. The relevant travel expression is emergency travel document.","translation":"Перед подписанием заявления я хотел бы получить юридическое представительство и сертифицированного переводчика для объяснения процессуальных прав. Соответствующее выражение для путешествий — «временный проездной документ».","type":"dialogue"},{"character":"Representative","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Understanding Local Legal Procedure"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a1af5f6-4a59-5581-b723-a2875d35b0ed', 'f3f83939-a5e5-5378-864c-31dfef272516', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“emergency travel document” means temporary identification permitting essential travel.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L2_D11","is_correct":true,"text":"temporary identification permitting essential travel"},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L2_D12","is_correct":false,"text":"professional assistance from a lawyer"},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L2_D13","is_correct":false,"text":"a legal protection within an official process"}],"word":"emergency travel document"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d8cf6ef-1d17-55bb-b422-bcc405633387', 'f3f83939-a5e5-5378-864c-31dfef272516', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Before signing the statement, I would like legal representation and a certified interpreter to explain my procedural rights. The relevant travel expression is emergency travel document.","explanation":"The missing C1 travel expression is “emergency travel document”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"emergency travel document","id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L2_D14","is_correct":true},{"audio_text":"procedural right","id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L2_D15","is_correct":false},{"audio_text":"consular assistance","id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L2_D16","is_correct":false}],"sentence_template":"Before signing the statement, I would like legal representation and a certified interpreter to explain my procedural rights. The relevant travel expression is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e80c9fe0-82e8-5675-b941-d0e47eea7392', 'f3f83939-a5e5-5378-864c-31dfef272516', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"emergency travel document","explanation":"The complete statement uses “emergency travel document” accurately.","hint_prefix":"emer","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Before signing the statement, I would like legal representation and a certified interpreter to explain my procedural rights. The relevant travel expression is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ad1f3414-a5cd-5e0f-99a0-5f2e33853a23', 'f3f83939-a5e5-5378-864c-31dfef272516', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"police report","id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L2_D17","text":"police report"},{"audio_text":"emergency travel document","id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L2_D18","text":"emergency travel document"},{"audio_text":"legal representation","id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L2_D19","text":"legal representation"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('becbf3ff-344a-5523-b4dc-8561288ee64e', 'f3f83939-a5e5-5378-864c-31dfef272516', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Understanding Local Legal Procedure”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L2_D20","is_correct":true,"text":"Before signing the statement, I would like legal representation and a certified interpreter to explain my procedural rights. The relevant travel expression is emergency travel document."},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L2_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L2_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d170850f-90d3-563e-a36a-f5743e63cb31', 'f3f83939-a5e5-5378-864c-31dfef272516', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f8c1058a-7ec5-50b3-af43-c35e602f0610', NULL, 'Ответственное действие и последующие шаги', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Requesting Appropriate Consular Support","ru":"Ответственное действие и последующие шаги"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('69bcf118-63a4-5c53-b00d-6c6808939d7c', 'f8c1058a-7ec5-50b3-af43-c35e602f0610', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L3_D01","left":"police report","right":"полицейский протокол"},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L3_D02","left":"emergency travel document","right":"временный проездной документ"},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L3_D03","left":"legal representation","right":"юридическое представительство"},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L3_D04","left":"procedural right","right":"процессуальное право"},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L3_D05","left":"certified interpreter","right":"сертифицированный переводчик"},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L3_D06","left":"consular assistance","right":"консульская помощь"},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L3_D07","left":"jurisdictional limit","right":"предел юрисдикции"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('25cae50b-890a-5d6b-90dd-47114b7c652d', 'f8c1058a-7ec5-50b3-af43-c35e602f0610', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L3_D08","is_correct":true,"text":"I understand the jurisdictional limit, but I need consular assistance to contact family and obtain details of local legal services. The relevant travel expression is legal representation."},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L3_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L3_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5baf0ff4-6219-52bf-8a69-7a4fcda268bb', 'f8c1058a-7ec5-50b3-af43-c35e602f0610', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I understand the jurisdictional limit, but I need consular assistance to contact family and obtain details of local legal services. The relevant travel expression is legal representation.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я понимаю предел юрисдикции, однако мне нужна консульская помощь, чтобы связаться с семьёй и получить сведения о местных юридических услугах. Соответствующее выражение для путешествий — «юридическое представительство».","target_language":"en","word_bank":["I","understand","the","jurisdictional","limit",",","but","I","need","consular","assistance","to","contact","family","and","obtain","details","of","local","legal","services",".","The","relevant","travel","expression","is","legal","representation","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2ce811d3-e29c-5e6c-8477-66c0db114f72', 'f8c1058a-7ec5-50b3-af43-c35e602f0610', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"legal representation","instruction":"Выберите подходящее слово.","options":["legal representation","consular assistance","police report"],"sentence_template":"I understand the jurisdictional limit, but I need consular assistance to contact family and obtain details of local legal services. The relevant travel expression is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae216ace-ad10-5476-98e0-15167c8dffec', 'f8c1058a-7ec5-50b3-af43-c35e602f0610', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","understand","the","jurisdictional","limit",",","but","I","need","consular","assistance","to","contact","family","and","obtain","details","of","local","legal","services",".","The","relevant","travel","expression","is","legal","representation","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","representation","legal","is","expression","travel","relevant","The",".","services","legal","local","of","details","obtain","and","family","contact","to","assistance","consular","need","I","but",",","limit","jurisdictional","the","understand","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('791cb5a1-e365-5790-b0af-966efd5c9939', 'f8c1058a-7ec5-50b3-af43-c35e602f0610', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I understand the jurisdictional limit, but I need consular assistance to contact family and obtain details of local legal services. The relevant travel expression is legal representation. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18633cdb-507f-5faa-b9c6-d8c3b0a85d5d', 'f8c1058a-7ec5-50b3-af43-c35e602f0610', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I understand the jurisdictional limit, but I need consular assistance to contact family and obtain details of local legal services. The relevant travel expression is legal representation. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Я понимаю предел юрисдикции, однако мне нужна консульская помощь, чтобы связаться с семьёй и получить сведения о местных юридических услугах. Соответствующее выражение для путешествий — «юридическое представительство». Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первое решение недостаточно, спокойно объясните почему и запросите соразмерную альтернативу."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18f0a8ad-444c-51b3-8948-521c18cc0e5b', 'f8c1058a-7ec5-50b3-af43-c35e602f0610', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"I understand the jurisdictional limit, but I need consular assistance to contact family and obtain details of local legal services. The relevant travel expression is legal representation.","translation":"Я понимаю предел юрисдикции, однако мне нужна консульская помощь, чтобы связаться с семьёй и получить сведения о местных юридических услугах. Соответствующее выражение для путешествий — «юридическое представительство».","type":"dialogue"},{"character":"Representative","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Requesting Appropriate Consular Support"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c8962bfc-59b1-5b6a-8ece-6537eab3c82e', 'f8c1058a-7ec5-50b3-af43-c35e602f0610', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“legal representation” means professional assistance from a lawyer.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L3_D11","is_correct":true,"text":"professional assistance from a lawyer"},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L3_D12","is_correct":false,"text":"a legal protection within an official process"},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L3_D13","is_correct":false,"text":"an authorised person providing accurate interpretation"}],"word":"legal representation"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e0d7195-b5e6-5d4d-a483-6fa8d2f8b3d9', 'f8c1058a-7ec5-50b3-af43-c35e602f0610', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I understand the jurisdictional limit, but I need consular assistance to contact family and obtain details of local legal services. The relevant travel expression is legal representation.","explanation":"The missing C1 travel expression is “legal representation”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"legal representation","id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L3_D14","is_correct":true},{"audio_text":"certified interpreter","id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L3_D15","is_correct":false},{"audio_text":"jurisdictional limit","id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L3_D16","is_correct":false}],"sentence_template":"I understand the jurisdictional limit, but I need consular assistance to contact family and obtain details of local legal services. The relevant travel expression is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a790e6e-9412-5659-b1fe-eae3782c4208', 'f8c1058a-7ec5-50b3-af43-c35e602f0610', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"legal representation","explanation":"The complete statement uses “legal representation” accurately.","hint_prefix":"lega","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I understand the jurisdictional limit, but I need consular assistance to contact family and obtain details of local legal services. The relevant travel expression is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6374985c-38df-56fa-9693-e8479a7d1df6', 'f8c1058a-7ec5-50b3-af43-c35e602f0610', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"police report","id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L3_D17","text":"police report"},{"audio_text":"emergency travel document","id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L3_D18","text":"emergency travel document"},{"audio_text":"legal representation","id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L3_D19","text":"legal representation"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('67de7d82-3cb2-525e-9273-93bdcc624688', 'f8c1058a-7ec5-50b3-af43-c35e602f0610', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Requesting Appropriate Consular Support”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L3_D20","is_correct":true,"text":"I understand the jurisdictional limit, but I need consular assistance to contact family and obtain details of local legal services. The relevant travel expression is legal representation."},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L3_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_LEGAL_PROBLEMS_LOST_DOCUMENTS_AND_CONSULAR_ASSISTANCE_L3_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d170850f-90d3-563e-a36a-f5743e63cb31', 'f8c1058a-7ec5-50b3-af43-c35e602f0610', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eb49c2df-868a-5af4-9e98-6a12432a9586', 'en', 'police report', 'полицейский протокол', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c77f5baf-19ea-59f5-831d-b9dbcca9da7f', 'en', 'emergency travel document', 'временный проездной документ', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ec403e9e-2baf-54f2-b51f-5832066cd6cf', 'en', 'legal representation', 'юридическое представительство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ae63ed15-911d-50c6-adec-2b1918c522d1', 'en', 'procedural right', 'процессуальное право', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e6706765-9cdc-57d8-bda0-f6c1dae73a05', 'en', 'certified interpreter', 'сертифицированный переводчик', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('febef894-74c4-5e17-9d3a-1d4d49fe81eb', 'en', 'consular assistance', 'консульская помощь', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c4e2b04d-0da4-585d-b272-323154ace412', 'en', 'jurisdictional limit', 'предел юрисдикции', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eb49c2df-868a-5af4-9e98-6a12432a9586', 'en', 'police report', 'полицейский протокол', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c77f5baf-19ea-59f5-831d-b9dbcca9da7f', 'en', 'emergency travel document', 'временный проездной документ', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ec403e9e-2baf-54f2-b51f-5832066cd6cf', 'en', 'legal representation', 'юридическое представительство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ae63ed15-911d-50c6-adec-2b1918c522d1', 'en', 'procedural right', 'процессуальное право', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e6706765-9cdc-57d8-bda0-f6c1dae73a05', 'en', 'certified interpreter', 'сертифицированный переводчик', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('febef894-74c4-5e17-9d3a-1d4d49fe81eb', 'en', 'consular assistance', 'консульская помощь', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c4e2b04d-0da4-585d-b272-323154ace412', 'en', 'jurisdictional limit', 'предел юрисдикции', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eb49c2df-868a-5af4-9e98-6a12432a9586', 'en', 'police report', 'полицейский протокол', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c77f5baf-19ea-59f5-831d-b9dbcca9da7f', 'en', 'emergency travel document', 'временный проездной документ', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ec403e9e-2baf-54f2-b51f-5832066cd6cf', 'en', 'legal representation', 'юридическое представительство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ae63ed15-911d-50c6-adec-2b1918c522d1', 'en', 'procedural right', 'процессуальное право', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e6706765-9cdc-57d8-bda0-f6c1dae73a05', 'en', 'certified interpreter', 'сертифицированный переводчик', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('febef894-74c4-5e17-9d3a-1d4d49fe81eb', 'en', 'consular assistance', 'консульская помощь', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c4e2b04d-0da4-585d-b272-323154ace412', 'en', 'jurisdictional limit', 'предел юрисдикции', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd170850f-90d3-563e-a36a-f5743e63cb31', id, 'd3e97494-526f-5fc1-b63b-25836208e374', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'police report' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd170850f-90d3-563e-a36a-f5743e63cb31', id, 'd3e97494-526f-5fc1-b63b-25836208e374', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'emergency travel document' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd170850f-90d3-563e-a36a-f5743e63cb31', id, 'd3e97494-526f-5fc1-b63b-25836208e374', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'legal representation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd170850f-90d3-563e-a36a-f5743e63cb31', id, 'd3e97494-526f-5fc1-b63b-25836208e374', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'procedural right' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd170850f-90d3-563e-a36a-f5743e63cb31', id, 'd3e97494-526f-5fc1-b63b-25836208e374', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'certified interpreter' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd170850f-90d3-563e-a36a-f5743e63cb31', id, 'd3e97494-526f-5fc1-b63b-25836208e374', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'consular assistance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd170850f-90d3-563e-a36a-f5743e63cb31', id, 'd3e97494-526f-5fc1-b63b-25836208e374', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'jurisdictional limit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd170850f-90d3-563e-a36a-f5743e63cb31', id, 'f3f83939-a5e5-5378-864c-31dfef272516', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'police report' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd170850f-90d3-563e-a36a-f5743e63cb31', id, 'f3f83939-a5e5-5378-864c-31dfef272516', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'emergency travel document' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd170850f-90d3-563e-a36a-f5743e63cb31', id, 'f3f83939-a5e5-5378-864c-31dfef272516', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'legal representation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd170850f-90d3-563e-a36a-f5743e63cb31', id, 'f3f83939-a5e5-5378-864c-31dfef272516', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'procedural right' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd170850f-90d3-563e-a36a-f5743e63cb31', id, 'f3f83939-a5e5-5378-864c-31dfef272516', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'certified interpreter' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd170850f-90d3-563e-a36a-f5743e63cb31', id, 'f3f83939-a5e5-5378-864c-31dfef272516', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'consular assistance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd170850f-90d3-563e-a36a-f5743e63cb31', id, 'f3f83939-a5e5-5378-864c-31dfef272516', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'jurisdictional limit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd170850f-90d3-563e-a36a-f5743e63cb31', id, 'f8c1058a-7ec5-50b3-af43-c35e602f0610', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'police report' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd170850f-90d3-563e-a36a-f5743e63cb31', id, 'f8c1058a-7ec5-50b3-af43-c35e602f0610', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'emergency travel document' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd170850f-90d3-563e-a36a-f5743e63cb31', id, 'f8c1058a-7ec5-50b3-af43-c35e602f0610', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'legal representation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd170850f-90d3-563e-a36a-f5743e63cb31', id, 'f8c1058a-7ec5-50b3-af43-c35e602f0610', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'procedural right' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd170850f-90d3-563e-a36a-f5743e63cb31', id, 'f8c1058a-7ec5-50b3-af43-c35e602f0610', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'certified interpreter' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd170850f-90d3-563e-a36a-f5743e63cb31', id, 'f8c1058a-7ec5-50b3-af43-c35e602f0610', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'consular assistance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd170850f-90d3-563e-a36a-f5743e63cb31', id, 'f8c1058a-7ec5-50b3-af43-c35e602f0610', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'jurisdictional limit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
