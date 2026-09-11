-- Track: B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('ac407ac0-f9d2-52a7-aff5-f087ee8675b4', 'B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS', 'Обслуживание клиентов, жалобы и решения', 'Развивайте деловой английский уровня B1 по теме «Обслуживание клиентов, жалобы и решения».', '{"en":"Customer Service, Complaints and Solutions","ru":"Обслуживание клиентов, жалобы и решения"}'::jsonb, '{"en":"Develop B1 business English for customer service, complaints and solutions.","ru":"Развивайте деловой английский уровня B1 по теме «Обслуживание клиентов, жалобы и решения»."}'::jsonb, 'en', 'B1', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a20d89d6-f8a8-59f2-9e38-0035bbd6b800', NULL, 'Деловой контекст', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Investigating a Complaint","ru":"Деловой контекст"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1addc010-f9e0-5a2f-8a79-ef43304d672d', 'a20d89d6-f8a8-59f2-9e38-0035bbd6b800', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L1_B01","left":"complaint","right":"жалоба"},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L1_B02","left":"investigate","right":"расследовать"},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L1_B03","left":"refund","right":"возврат денег"},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L1_B04","left":"replacement","right":"замена"},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L1_B05","left":"inconvenience","right":"неудобство"},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L1_B06","left":"resolve","right":"решить"},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L1_B07","left":"customer loyalty","right":"лояльность клиентов"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3174c22d-3467-5bca-ab88-3f1d480f90c6', 'a20d89d6-f8a8-59f2-9e38-0035bbd6b800', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L1_B08","is_correct":true,"text":"We investigated the complaint and discovered that the customer had received the wrong product twice."},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L1_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L1_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c9db9e63-0162-53db-b7ca-c067e2c37ccb', 'a20d89d6-f8a8-59f2-9e38-0035bbd6b800', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We investigated the complaint and discovered that the customer had received the wrong product twice.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мы расследовали жалобу и обнаружили, что клиент дважды получил неправильный товар.","target_language":"en","word_bank":["We","investigated","the","complaint","and","discovered","that","the","customer","had","received","the","wrong","product","twice."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a6f1aac5-50a4-56d9-ad81-ef990e487536', 'a20d89d6-f8a8-59f2-9e38-0035bbd6b800', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"complaint","instruction":"Выберите подходящее слово.","options":["complaint","replacement","resolve"],"sentence_template":"We investigated the ___ and discovered that the customer had received the wrong product twice."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9c2e46b3-86fe-55b4-aa4a-dadcf1c367c6', 'a20d89d6-f8a8-59f2-9e38-0035bbd6b800', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","investigated","the","complaint","and","discovered","that","the","customer","had","received","the","wrong","product","twice."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["twice.","product","wrong","the","received","had","customer","the","that","discovered","and","complaint","the","investigated","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cb806e3a-d83b-5ae0-8a17-f5f81f5f971e', 'a20d89d6-f8a8-59f2-9e38-0035bbd6b800', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We investigated the complaint and discovered that the customer had received the wrong product twice. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('07b40874-eb5c-5d13-8fe5-6d505db0938c', 'a20d89d6-f8a8-59f2-9e38-0035bbd6b800', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We investigated the complaint and discovered that the customer had received the wrong product twice. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Мы расследовали жалобу и обнаружили, что клиент дважды получил неправильный товар. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ef64165-7ce1-5128-ac38-b51e8f26d559', 'a20d89d6-f8a8-59f2-9e38-0035bbd6b800', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"We investigated the complaint and discovered that the customer had received the wrong product twice.","translation":"Мы расследовали жалобу и обнаружили, что клиент дважды получил неправильный товар.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Investigating a Complaint"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8dcc387e-ee1f-55cc-8004-14f5cf24178d', 'a20d89d6-f8a8-59f2-9e38-0035bbd6b800', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“complaint” means a statement of dissatisfaction.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L1_B11","is_correct":true,"text":"a statement of dissatisfaction"},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L1_B12","is_correct":false,"text":"examine facts to discover what happened"},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L1_B13","is_correct":false,"text":"money returned to a customer"}],"word":"complaint"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c7c77270-86d5-5c61-bb85-b31b2e65976d', 'a20d89d6-f8a8-59f2-9e38-0035bbd6b800', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We investigated the complaint and discovered that the customer had received the wrong product twice.","explanation":"The missing business expression is “complaint”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"complaint","id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L1_B14","is_correct":true},{"audio_text":"refund","id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L1_B15","is_correct":false},{"audio_text":"inconvenience","id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L1_B16","is_correct":false}],"sentence_template":"We investigated the ___ and discovered that the customer had received the wrong product twice."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3c9e53f5-7960-5922-b6c8-bf3e263e08f0', 'a20d89d6-f8a8-59f2-9e38-0035bbd6b800', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"complaint","explanation":"The sentence requires “complaint” to express the intended business meaning.","hint_prefix":"com","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We investigated the ___ and discovered that the customer had received the wrong product twice."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('09b4535b-b48b-527b-b6d7-48b76042af32', 'a20d89d6-f8a8-59f2-9e38-0035bbd6b800', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"complaint","id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L1_B17","text":"complaint"},{"audio_text":"investigate","id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L1_B18","text":"investigate"},{"audio_text":"refund","id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L1_B19","text":"refund"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('47f4cea7-5266-59ef-b5a6-0317adffa91f', 'a20d89d6-f8a8-59f2-9e38-0035bbd6b800', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Investigating a Complaint”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L1_B20","is_correct":true,"text":"We investigated the complaint and discovered that the customer had received the wrong product twice."},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L1_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L1_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ac407ac0-f9d2-52a7-aff5-f087ee8675b4', 'a20d89d6-f8a8-59f2-9e38-0035bbd6b800', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('8f9fc5d2-33d8-5ba9-bf4a-32cd0fcd46ef', NULL, 'Обсуждение и уточнение', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Explaining Options","ru":"Обсуждение и уточнение"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e8153136-3497-594f-9c22-1e849c848c62', '8f9fc5d2-33d8-5ba9-bf4a-32cd0fcd46ef', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L2_B01","left":"complaint","right":"жалоба"},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L2_B02","left":"investigate","right":"расследовать"},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L2_B03","left":"refund","right":"возврат денег"},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L2_B04","left":"replacement","right":"замена"},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L2_B05","left":"inconvenience","right":"неудобство"},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L2_B06","left":"resolve","right":"решить"},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L2_B07","left":"customer loyalty","right":"лояльность клиентов"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0c8e8dc2-e37c-576f-b06a-22b70aae1862', '8f9fc5d2-33d8-5ba9-bf4a-32cd0fcd46ef', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L2_B08","is_correct":true,"text":"The company offered a replacement, a full refund and an apology for the inconvenience."},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L2_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L2_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b3ab0d22-b9dc-5f42-8309-42f29d4bb3a2', '8f9fc5d2-33d8-5ba9-bf4a-32cd0fcd46ef', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The company offered a replacement, a full refund and an apology for the inconvenience.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Компания предложила замену, полный возврат денег и извинилась за неудобство.","target_language":"en","word_bank":["The","company","offered","a","replacement,","a","full","refund","and","an","apology","for","the","inconvenience."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2142ac2f-4d77-5709-b990-f588c4fb09d5', '8f9fc5d2-33d8-5ba9-bf4a-32cd0fcd46ef', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"investigate","instruction":"Выберите подходящее слово.","options":["investigate","inconvenience","customer loyalty"],"sentence_template":"The company offered a replacement, a full refund and an apology for the inconvenience."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bcaeb97d-92fd-58ac-9c84-d450a2a30368', '8f9fc5d2-33d8-5ba9-bf4a-32cd0fcd46ef', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","company","offered","a","replacement,","a","full","refund","and","an","apology","for","the","inconvenience."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["inconvenience.","the","for","apology","an","and","refund","full","a","replacement,","a","offered","company","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fec3d665-ac57-5088-9a85-c6078e33381d', '8f9fc5d2-33d8-5ba9-bf4a-32cd0fcd46ef', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The company offered a replacement, a full refund and an apology for the inconvenience. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8a10f24-2403-5e42-ab2d-0d5208a54c77', '8f9fc5d2-33d8-5ba9-bf4a-32cd0fcd46ef', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The company offered a replacement, a full refund and an apology for the inconvenience. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Компания предложила замену, полный возврат денег и извинилась за неудобство. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b9a626cd-8a51-5622-a308-85aa5238575d', '8f9fc5d2-33d8-5ba9-bf4a-32cd0fcd46ef', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"The company offered a replacement, a full refund and an apology for the inconvenience.","translation":"Компания предложила замену, полный возврат денег и извинилась за неудобство.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Explaining Options"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4d46c38-bda9-56f6-beb9-826dd0d9eebe', '8f9fc5d2-33d8-5ba9-bf4a-32cd0fcd46ef', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“investigate” means examine facts to discover what happened.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L2_B11","is_correct":true,"text":"examine facts to discover what happened"},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L2_B12","is_correct":false,"text":"money returned to a customer"},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L2_B13","is_correct":false,"text":"an item provided instead of another"}],"word":"investigate"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b76e712-98fe-5391-b7f4-a77c46578d58', '8f9fc5d2-33d8-5ba9-bf4a-32cd0fcd46ef', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The company offered a replacement, a full refund and an apology for the inconvenience.","explanation":"The missing business expression is “investigate”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"investigate","id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L2_B14","is_correct":true},{"audio_text":"replacement","id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L2_B15","is_correct":false},{"audio_text":"resolve","id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L2_B16","is_correct":false}],"sentence_template":"The company offered a replacement, a full refund and an apology for the inconvenience."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('433e88fc-07f2-5399-91cf-ac7b49295b76', '8f9fc5d2-33d8-5ba9-bf4a-32cd0fcd46ef', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"investigate","explanation":"The sentence requires “investigate” to express the intended business meaning.","hint_prefix":"inv","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The company offered a replacement, a full refund and an apology for the inconvenience."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('15a20c2a-6515-5555-a643-fad1036d284e', '8f9fc5d2-33d8-5ba9-bf4a-32cd0fcd46ef', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"complaint","id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L2_B17","text":"complaint"},{"audio_text":"investigate","id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L2_B18","text":"investigate"},{"audio_text":"refund","id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L2_B19","text":"refund"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('036dc552-6a32-56ac-9e8c-781ddd6595aa', '8f9fc5d2-33d8-5ba9-bf4a-32cd0fcd46ef', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Explaining Options”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L2_B20","is_correct":true,"text":"The company offered a replacement, a full refund and an apology for the inconvenience."},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L2_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L2_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ac407ac0-f9d2-52a7-aff5-f087ee8675b4', '8f9fc5d2-33d8-5ba9-bf4a-32cd0fcd46ef', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('697df520-d44b-5ae6-bf84-fc83b499e6a0', NULL, 'Решение и дальнейшие действия', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Restoring Customer Confidence","ru":"Решение и дальнейшие действия"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c9d79f19-d58c-5b03-a1f0-5ca3ca3823d1', '697df520-d44b-5ae6-bf84-fc83b499e6a0', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L3_B01","left":"complaint","right":"жалоба"},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L3_B02","left":"investigate","right":"расследовать"},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L3_B03","left":"refund","right":"возврат денег"},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L3_B04","left":"replacement","right":"замена"},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L3_B05","left":"inconvenience","right":"неудобство"},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L3_B06","left":"resolve","right":"решить"},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L3_B07","left":"customer loyalty","right":"лояльность клиентов"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('42a6a275-f1e0-5274-a56c-0ddc72e7a66a', '697df520-d44b-5ae6-bf84-fc83b499e6a0', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L3_B08","is_correct":true,"text":"Resolving a problem quickly can protect customer loyalty even when the original service has failed."},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L3_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L3_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('117f4a7a-361f-5a4b-8381-2edbe42adaa1', '697df520-d44b-5ae6-bf84-fc83b499e6a0', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Resolving a problem quickly can protect customer loyalty even when the original service has failed.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Быстрое решение проблемы может сохранить лояльность клиентов, даже если первоначальная услуга оказалась неудачной.","target_language":"en","word_bank":["Resolving","a","problem","quickly","can","protect","customer","loyalty","even","when","the","original","service","has","failed."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f921607e-9b45-5092-bd79-740e98eb9ed7', '697df520-d44b-5ae6-bf84-fc83b499e6a0', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"refund","instruction":"Выберите подходящее слово.","options":["refund","resolve","complaint"],"sentence_template":"Resolving a problem quickly can protect customer loyalty even when the original service has failed."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d9a791a5-89bd-50ed-ae8b-638fac91fd02', '697df520-d44b-5ae6-bf84-fc83b499e6a0', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Resolving","a","problem","quickly","can","protect","customer","loyalty","even","when","the","original","service","has","failed."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["failed.","has","service","original","the","when","even","loyalty","customer","protect","can","quickly","problem","a","Resolving"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('30db8f56-053e-543f-aa7e-54b888788dc3', '697df520-d44b-5ae6-bf84-fc83b499e6a0', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Resolving a problem quickly can protect customer loyalty even when the original service has failed. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6624d582-9725-5307-9524-427648801c44', '697df520-d44b-5ae6-bf84-fc83b499e6a0', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Resolving a problem quickly can protect customer loyalty even when the original service has failed. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Быстрое решение проблемы может сохранить лояльность клиентов, даже если первоначальная услуга оказалась неудачной. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('46429714-a478-5bd7-9dca-1598f3c7e1d4', '697df520-d44b-5ae6-bf84-fc83b499e6a0', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"Resolving a problem quickly can protect customer loyalty even when the original service has failed.","translation":"Быстрое решение проблемы может сохранить лояльность клиентов, даже если первоначальная услуга оказалась неудачной.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Restoring Customer Confidence"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6f8c007f-6db1-50bd-af84-89abc67adc12', '697df520-d44b-5ae6-bf84-fc83b499e6a0', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“refund” means money returned to a customer.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L3_B11","is_correct":true,"text":"money returned to a customer"},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L3_B12","is_correct":false,"text":"an item provided instead of another"},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L3_B13","is_correct":false,"text":"difficulty caused to someone"}],"word":"refund"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f19be252-8c47-5826-9907-326f725ad5ff', '697df520-d44b-5ae6-bf84-fc83b499e6a0', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Resolving a problem quickly can protect customer loyalty even when the original service has failed.","explanation":"The missing business expression is “refund”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"refund","id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L3_B14","is_correct":true},{"audio_text":"inconvenience","id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L3_B15","is_correct":false},{"audio_text":"customer loyalty","id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L3_B16","is_correct":false}],"sentence_template":"Resolving a problem quickly can protect customer loyalty even when the original service has failed."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ea951516-104b-547f-ab7c-c98f658dd5cf', '697df520-d44b-5ae6-bf84-fc83b499e6a0', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"refund","explanation":"The sentence requires “refund” to express the intended business meaning.","hint_prefix":"ref","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Resolving a problem quickly can protect customer loyalty even when the original service has failed."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b5116619-3e2e-58da-8fda-214bdcb5e0c7', '697df520-d44b-5ae6-bf84-fc83b499e6a0', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"complaint","id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L3_B17","text":"complaint"},{"audio_text":"investigate","id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L3_B18","text":"investigate"},{"audio_text":"refund","id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L3_B19","text":"refund"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5b2e8ae3-6569-5899-98f7-bb20f3b9b8cd', '697df520-d44b-5ae6-bf84-fc83b499e6a0', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Restoring Customer Confidence”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L3_B20","is_correct":true,"text":"Resolving a problem quickly can protect customer loyalty even when the original service has failed."},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L3_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_CUSTOMER_SERVICE_COMPLAINTS_AND_SOLUTIONS_L3_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ac407ac0-f9d2-52a7-aff5-f087ee8675b4', '697df520-d44b-5ae6-bf84-fc83b499e6a0', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eaa6462c-1d21-5a10-8838-63239f0d62b8', 'en', 'complaint', 'жалоба', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('76b7c0c9-3646-5052-905a-b842ea6e67c5', 'en', 'investigate', 'расследовать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('01e002a9-4b87-5c3e-b557-467139962a8e', 'en', 'refund', 'возврат денег', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('148311d0-3a80-52e1-a425-c4572d6f437d', 'en', 'replacement', 'замена', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('625f1b79-b527-5de7-a628-9bfa3c50c17b', 'en', 'inconvenience', 'неудобство', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('82532f1e-51ed-52a1-89fe-22b82ccb80e3', 'en', 'resolve', 'решить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('255a4d04-3320-58b0-a602-eb281c838fe5', 'en', 'customer loyalty', 'лояльность клиентов', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eaa6462c-1d21-5a10-8838-63239f0d62b8', 'en', 'complaint', 'жалоба', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('76b7c0c9-3646-5052-905a-b842ea6e67c5', 'en', 'investigate', 'расследовать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('01e002a9-4b87-5c3e-b557-467139962a8e', 'en', 'refund', 'возврат денег', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('148311d0-3a80-52e1-a425-c4572d6f437d', 'en', 'replacement', 'замена', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('625f1b79-b527-5de7-a628-9bfa3c50c17b', 'en', 'inconvenience', 'неудобство', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('82532f1e-51ed-52a1-89fe-22b82ccb80e3', 'en', 'resolve', 'решить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('255a4d04-3320-58b0-a602-eb281c838fe5', 'en', 'customer loyalty', 'лояльность клиентов', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eaa6462c-1d21-5a10-8838-63239f0d62b8', 'en', 'complaint', 'жалоба', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('76b7c0c9-3646-5052-905a-b842ea6e67c5', 'en', 'investigate', 'расследовать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('01e002a9-4b87-5c3e-b557-467139962a8e', 'en', 'refund', 'возврат денег', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('148311d0-3a80-52e1-a425-c4572d6f437d', 'en', 'replacement', 'замена', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('625f1b79-b527-5de7-a628-9bfa3c50c17b', 'en', 'inconvenience', 'неудобство', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('82532f1e-51ed-52a1-89fe-22b82ccb80e3', 'en', 'resolve', 'решить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('255a4d04-3320-58b0-a602-eb281c838fe5', 'en', 'customer loyalty', 'лояльность клиентов', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac407ac0-f9d2-52a7-aff5-f087ee8675b4', id, 'a20d89d6-f8a8-59f2-9e38-0035bbd6b800', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'complaint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac407ac0-f9d2-52a7-aff5-f087ee8675b4', id, 'a20d89d6-f8a8-59f2-9e38-0035bbd6b800', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'investigate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac407ac0-f9d2-52a7-aff5-f087ee8675b4', id, 'a20d89d6-f8a8-59f2-9e38-0035bbd6b800', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'refund' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac407ac0-f9d2-52a7-aff5-f087ee8675b4', id, 'a20d89d6-f8a8-59f2-9e38-0035bbd6b800', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'replacement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac407ac0-f9d2-52a7-aff5-f087ee8675b4', id, 'a20d89d6-f8a8-59f2-9e38-0035bbd6b800', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'inconvenience' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac407ac0-f9d2-52a7-aff5-f087ee8675b4', id, 'a20d89d6-f8a8-59f2-9e38-0035bbd6b800', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'resolve' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac407ac0-f9d2-52a7-aff5-f087ee8675b4', id, 'a20d89d6-f8a8-59f2-9e38-0035bbd6b800', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'customer loyalty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac407ac0-f9d2-52a7-aff5-f087ee8675b4', id, '8f9fc5d2-33d8-5ba9-bf4a-32cd0fcd46ef', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'complaint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac407ac0-f9d2-52a7-aff5-f087ee8675b4', id, '8f9fc5d2-33d8-5ba9-bf4a-32cd0fcd46ef', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'investigate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac407ac0-f9d2-52a7-aff5-f087ee8675b4', id, '8f9fc5d2-33d8-5ba9-bf4a-32cd0fcd46ef', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'refund' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac407ac0-f9d2-52a7-aff5-f087ee8675b4', id, '8f9fc5d2-33d8-5ba9-bf4a-32cd0fcd46ef', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'replacement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac407ac0-f9d2-52a7-aff5-f087ee8675b4', id, '8f9fc5d2-33d8-5ba9-bf4a-32cd0fcd46ef', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'inconvenience' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac407ac0-f9d2-52a7-aff5-f087ee8675b4', id, '8f9fc5d2-33d8-5ba9-bf4a-32cd0fcd46ef', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'resolve' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac407ac0-f9d2-52a7-aff5-f087ee8675b4', id, '8f9fc5d2-33d8-5ba9-bf4a-32cd0fcd46ef', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'customer loyalty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac407ac0-f9d2-52a7-aff5-f087ee8675b4', id, '697df520-d44b-5ae6-bf84-fc83b499e6a0', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'complaint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac407ac0-f9d2-52a7-aff5-f087ee8675b4', id, '697df520-d44b-5ae6-bf84-fc83b499e6a0', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'investigate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac407ac0-f9d2-52a7-aff5-f087ee8675b4', id, '697df520-d44b-5ae6-bf84-fc83b499e6a0', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'refund' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac407ac0-f9d2-52a7-aff5-f087ee8675b4', id, '697df520-d44b-5ae6-bf84-fc83b499e6a0', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'replacement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac407ac0-f9d2-52a7-aff5-f087ee8675b4', id, '697df520-d44b-5ae6-bf84-fc83b499e6a0', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'inconvenience' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac407ac0-f9d2-52a7-aff5-f087ee8675b4', id, '697df520-d44b-5ae6-bf84-fc83b499e6a0', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'resolve' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ac407ac0-f9d2-52a7-aff5-f087ee8675b4', id, '697df520-d44b-5ae6-bf84-fc83b499e6a0', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'customer loyalty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
