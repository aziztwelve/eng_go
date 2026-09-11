-- Track: B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('f18c44e4-fd00-577a-af7c-244c86289a43', 'B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS', 'Нетворкинг и профессиональные отношения', 'Развивайте деловой английский уровня B1 по теме «Нетворкинг и профессиональные отношения».', '{"en":"Networking and Professional Relationships","ru":"Нетворкинг и профессиональные отношения"}'::jsonb, '{"en":"Develop B1 business English for networking and professional relationships.","ru":"Развивайте деловой английский уровня B1 по теме «Нетворкинг и профессиональные отношения»."}'::jsonb, 'en', 'B1', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('983798ca-601d-588a-ba56-4b5ad232e920', NULL, 'Деловой контекст', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Making Professional Connections","ru":"Деловой контекст"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3431c8af-bf9e-5b9a-9154-4079eae888e7', '983798ca-601d-588a-ba56-4b5ad232e920', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L1_B01","left":"professional background","right":"профессиональный опыт"},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L1_B02","left":"networking","right":"нетворкинг"},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L1_B03","left":"industry","right":"отрасль"},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L1_B04","left":"contact details","right":"контактные данные"},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L1_B05","left":"follow up","right":"продолжить общение"},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L1_B06","left":"mutual interest","right":"общий интерес"},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L1_B07","left":"introduce","right":"представлять"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d64d5dbb-dd5b-5205-a309-b71e15e49ee5', '983798ca-601d-588a-ba56-4b5ad232e920', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L1_B08","is_correct":true,"text":"When introducing myself, I briefly describe my professional background and explain which industry I work in."},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L1_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L1_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1078d661-4573-5a73-bc05-fb36a128f360', '983798ca-601d-588a-ba56-4b5ad232e920', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"When introducing myself, I briefly describe my professional background and explain which industry I work in.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Представляясь, я кратко описываю свой профессиональный опыт и объясняю, в какой отрасли работаю.","target_language":"en","word_bank":["When","introducing","myself,","I","briefly","describe","my","professional","background","and","explain","which","industry","I","work","in."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7767a94-815b-570e-814b-5188dbb48d1e', '983798ca-601d-588a-ba56-4b5ad232e920', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"professional background","instruction":"Выберите подходящее слово.","options":["professional background","contact details","mutual interest"],"sentence_template":"When introducing myself, I briefly describe my ___ and explain which industry I work in."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7464d015-9d6d-5e02-a2f2-cf4c95bd52e0', '983798ca-601d-588a-ba56-4b5ad232e920', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["When","introducing","myself,","I","briefly","describe","my","professional","background","and","explain","which","industry","I","work","in."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["in.","work","I","industry","which","explain","and","background","professional","my","describe","briefly","I","myself,","introducing","When"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4cb361b1-6382-5d50-afe9-432d1ceb3456', '983798ca-601d-588a-ba56-4b5ad232e920', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"When introducing myself, I briefly describe my professional background and explain which industry I work in. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ba5654a-7447-5496-a16a-3273941b6b03', '983798ca-601d-588a-ba56-4b5ad232e920', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"When introducing myself, I briefly describe my professional background and explain which industry I work in. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Представляясь, я кратко описываю свой профессиональный опыт и объясняю, в какой отрасли работаю. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9679c472-d916-54aa-b5eb-9cf19a93472f', '983798ca-601d-588a-ba56-4b5ad232e920', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"When introducing myself, I briefly describe my professional background and explain which industry I work in.","translation":"Представляясь, я кратко описываю свой профессиональный опыт и объясняю, в какой отрасли работаю.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Making Professional Connections"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2d44022-6395-51f2-a57f-41b3bf48fb98', '983798ca-601d-588a-ba56-4b5ad232e920', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“professional background” means education and work experience.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L1_B11","is_correct":true,"text":"education and work experience"},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L1_B12","is_correct":false,"text":"building useful professional relationships"},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L1_B13","is_correct":false,"text":"a particular area of business"}],"word":"professional background"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fd7d8c47-a326-5905-93a5-89c6f1f4802f', '983798ca-601d-588a-ba56-4b5ad232e920', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"When introducing myself, I briefly describe my professional background and explain which industry I work in.","explanation":"The missing business expression is “professional background”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"professional background","id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L1_B14","is_correct":true},{"audio_text":"industry","id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L1_B15","is_correct":false},{"audio_text":"follow up","id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L1_B16","is_correct":false}],"sentence_template":"When introducing myself, I briefly describe my ___ and explain which industry I work in."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d1f199a9-d408-5346-993f-5a4be2f4a7df', '983798ca-601d-588a-ba56-4b5ad232e920', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"professional background","explanation":"The sentence requires “professional background” to express the intended business meaning.","hint_prefix":"pro","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"When introducing myself, I briefly describe my ___ and explain which industry I work in."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c0336557-728f-5aef-9642-3b8f78a76f01', '983798ca-601d-588a-ba56-4b5ad232e920', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"professional background","id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L1_B17","text":"professional background"},{"audio_text":"networking","id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L1_B18","text":"networking"},{"audio_text":"industry","id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L1_B19","text":"industry"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f76d0c01-645d-5aa2-8251-681be8c9ae2e', '983798ca-601d-588a-ba56-4b5ad232e920', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Making Professional Connections”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L1_B20","is_correct":true,"text":"When introducing myself, I briefly describe my professional background and explain which industry I work in."},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L1_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L1_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f18c44e4-fd00-577a-af7c-244c86289a43', '983798ca-601d-588a-ba56-4b5ad232e920', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('99c4e05c-8010-51c0-b4f8-819ada175984', NULL, 'Обсуждение и уточнение', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Describing Experience","ru":"Обсуждение и уточнение"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e92a8d1d-419b-57c8-9e74-af1f9f3f822b', '99c4e05c-8010-51c0-b4f8-819ada175984', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L2_B01","left":"professional background","right":"профессиональный опыт"},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L2_B02","left":"networking","right":"нетворкинг"},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L2_B03","left":"industry","right":"отрасль"},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L2_B04","left":"contact details","right":"контактные данные"},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L2_B05","left":"follow up","right":"продолжить общение"},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L2_B06","left":"mutual interest","right":"общий интерес"},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L2_B07","left":"introduce","right":"представлять"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3277abb6-cb65-5991-be3b-1711ac5e316e', '99c4e05c-8010-51c0-b4f8-819ada175984', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L2_B08","is_correct":true,"text":"Effective networking focuses on mutual interests rather than simply collecting contact details."},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L2_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L2_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('06cb7ed2-0120-58f0-b393-e7243012786c', '99c4e05c-8010-51c0-b4f8-819ada175984', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Effective networking focuses on mutual interests rather than simply collecting contact details.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Эффективный нетворкинг сосредоточен на общих интересах, а не просто на сборе контактных данных.","target_language":"en","word_bank":["Effective","networking","focuses","on","mutual","interests","rather","than","simply","collecting","contact","details."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0774db6e-9971-55da-bb17-bda487681bb7', '99c4e05c-8010-51c0-b4f8-819ada175984', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"networking","instruction":"Выберите подходящее слово.","options":["networking","follow up","introduce"],"sentence_template":"Effective ___ focuses on mutual interests rather than simply collecting contact details."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('64a9e17c-7ac0-5194-8285-b7881356a260', '99c4e05c-8010-51c0-b4f8-819ada175984', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Effective","networking","focuses","on","mutual","interests","rather","than","simply","collecting","contact","details."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["details.","contact","collecting","simply","than","rather","interests","mutual","on","focuses","networking","Effective"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('96df9c20-355d-564b-80e9-3b1c78aaec2b', '99c4e05c-8010-51c0-b4f8-819ada175984', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Effective networking focuses on mutual interests rather than simply collecting contact details. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0d16be76-a537-5df2-8fbc-40fefbc89dca', '99c4e05c-8010-51c0-b4f8-819ada175984', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Effective networking focuses on mutual interests rather than simply collecting contact details. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Эффективный нетворкинг сосредоточен на общих интересах, а не просто на сборе контактных данных. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d28f7f7d-204a-52c9-8d12-68c17be88175', '99c4e05c-8010-51c0-b4f8-819ada175984', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"Effective networking focuses on mutual interests rather than simply collecting contact details.","translation":"Эффективный нетворкинг сосредоточен на общих интересах, а не просто на сборе контактных данных.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Describing Experience"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f2d7457c-c326-5398-a8b6-ad99d8788519', '99c4e05c-8010-51c0-b4f8-819ada175984', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“networking” means building useful professional relationships.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L2_B11","is_correct":true,"text":"building useful professional relationships"},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L2_B12","is_correct":false,"text":"a particular area of business"},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L2_B13","is_correct":false,"text":"information used to contact someone"}],"word":"networking"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ad073cb6-7c9f-532e-8cf7-8cb5ab11476e', '99c4e05c-8010-51c0-b4f8-819ada175984', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Effective networking focuses on mutual interests rather than simply collecting contact details.","explanation":"The missing business expression is “networking”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"networking","id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L2_B14","is_correct":true},{"audio_text":"contact details","id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L2_B15","is_correct":false},{"audio_text":"mutual interest","id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L2_B16","is_correct":false}],"sentence_template":"Effective ___ focuses on mutual interests rather than simply collecting contact details."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('493efe22-ba71-5c2d-82ae-02fcef745ac8', '99c4e05c-8010-51c0-b4f8-819ada175984', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"networking","explanation":"The sentence requires “networking” to express the intended business meaning.","hint_prefix":"net","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Effective ___ focuses on mutual interests rather than simply collecting contact details."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb8215a8-fc55-5d27-9cd9-8215295c2fa4', '99c4e05c-8010-51c0-b4f8-819ada175984', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"professional background","id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L2_B17","text":"professional background"},{"audio_text":"networking","id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L2_B18","text":"networking"},{"audio_text":"industry","id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L2_B19","text":"industry"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('15d8f79c-2ae7-5fa2-8346-2a33f6235b02', '99c4e05c-8010-51c0-b4f8-819ada175984', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Describing Experience”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L2_B20","is_correct":true,"text":"Effective networking focuses on mutual interests rather than simply collecting contact details."},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L2_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L2_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f18c44e4-fd00-577a-af7c-244c86289a43', '99c4e05c-8010-51c0-b4f8-819ada175984', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('d74ac6bf-0ead-52ea-935f-8a90e74c2c89', NULL, 'Решение и дальнейшие действия', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Following Up After Networking","ru":"Решение и дальнейшие действия"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('17d21faf-4283-509c-88c1-38b70c077683', 'd74ac6bf-0ead-52ea-935f-8a90e74c2c89', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L3_B01","left":"professional background","right":"профессиональный опыт"},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L3_B02","left":"networking","right":"нетворкинг"},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L3_B03","left":"industry","right":"отрасль"},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L3_B04","left":"contact details","right":"контактные данные"},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L3_B05","left":"follow up","right":"продолжить общение"},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L3_B06","left":"mutual interest","right":"общий интерес"},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L3_B07","left":"introduce","right":"представлять"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0366f222-9099-50e7-b895-3a278865d517', 'd74ac6bf-0ead-52ea-935f-8a90e74c2c89', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L3_B08","is_correct":true,"text":"I followed up after the conference because our conversation suggested that our companies might collaborate."},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L3_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L3_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('83dfd18c-aa34-54d4-ab90-1b172f459b47', 'd74ac6bf-0ead-52ea-935f-8a90e74c2c89', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I followed up after the conference because our conversation suggested that our companies might collaborate.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я продолжил общение после конференции, потому что наш разговор показал, что наши компании могут сотрудничать.","target_language":"en","word_bank":["I","followed","up","after","the","conference","because","our","conversation","suggested","that","our","companies","might","collaborate."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d516cb7b-fbc1-5c18-abc7-6ed0b3429694', 'd74ac6bf-0ead-52ea-935f-8a90e74c2c89', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"industry","instruction":"Выберите подходящее слово.","options":["industry","mutual interest","professional background"],"sentence_template":"I followed up after the conference because our conversation suggested that our companies might collaborate."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9948ad8-60a0-51ca-98a8-9fe5ad865791', 'd74ac6bf-0ead-52ea-935f-8a90e74c2c89', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","followed","up","after","the","conference","because","our","conversation","suggested","that","our","companies","might","collaborate."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["collaborate.","might","companies","our","that","suggested","conversation","our","because","conference","the","after","up","followed","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c26f40fd-67c6-5553-be54-d1a3071d5272', 'd74ac6bf-0ead-52ea-935f-8a90e74c2c89', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I followed up after the conference because our conversation suggested that our companies might collaborate. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c04aff8e-b72b-5810-943a-f493bb372a32', 'd74ac6bf-0ead-52ea-935f-8a90e74c2c89', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I followed up after the conference because our conversation suggested that our companies might collaborate. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Я продолжил общение после конференции, потому что наш разговор показал, что наши компании могут сотрудничать. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e1cccfa3-2266-542f-985e-06e7b29b2fe8', 'd74ac6bf-0ead-52ea-935f-8a90e74c2c89', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"I followed up after the conference because our conversation suggested that our companies might collaborate.","translation":"Я продолжил общение после конференции, потому что наш разговор показал, что наши компании могут сотрудничать.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Following Up After Networking"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7c0601b-5847-5d33-ba8e-0508053cb4b9', 'd74ac6bf-0ead-52ea-935f-8a90e74c2c89', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“industry” means a particular area of business.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L3_B11","is_correct":true,"text":"a particular area of business"},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L3_B12","is_correct":false,"text":"information used to contact someone"},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L3_B13","is_correct":false,"text":"contact someone again after meeting"}],"word":"industry"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0f89e341-5fc9-5416-9e90-a8dcfbc16b64', 'd74ac6bf-0ead-52ea-935f-8a90e74c2c89', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I followed up after the conference because our conversation suggested that our companies might collaborate.","explanation":"The missing business expression is “industry”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"industry","id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L3_B14","is_correct":true},{"audio_text":"follow up","id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L3_B15","is_correct":false},{"audio_text":"introduce","id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L3_B16","is_correct":false}],"sentence_template":"I followed up after the conference because our conversation suggested that our companies might collaborate."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a846c5d-d784-5122-ac46-9597eed06249', 'd74ac6bf-0ead-52ea-935f-8a90e74c2c89', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"industry","explanation":"The sentence requires “industry” to express the intended business meaning.","hint_prefix":"ind","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I followed up after the conference because our conversation suggested that our companies might collaborate."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ad3cad87-f852-538c-9dac-88316bc4c0d9', 'd74ac6bf-0ead-52ea-935f-8a90e74c2c89', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"professional background","id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L3_B17","text":"professional background"},{"audio_text":"networking","id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L3_B18","text":"networking"},{"audio_text":"industry","id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L3_B19","text":"industry"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2603b844-68c4-5dbf-b728-9a31f8ddb61a', 'd74ac6bf-0ead-52ea-935f-8a90e74c2c89', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Following Up After Networking”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L3_B20","is_correct":true,"text":"I followed up after the conference because our conversation suggested that our companies might collaborate."},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L3_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_NETWORKING_AND_PROFESSIONAL_RELATIONSHIPS_L3_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f18c44e4-fd00-577a-af7c-244c86289a43', 'd74ac6bf-0ead-52ea-935f-8a90e74c2c89', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dc1fc9eb-e826-5c34-8fad-14995cf4c813', 'en', 'professional background', 'профессиональный опыт', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('71f7cfa6-4104-517d-8220-0e5fbac825ed', 'en', 'networking', 'нетворкинг', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ef7f277d-8ec7-5b71-b30f-e2eed84f4552', 'en', 'industry', 'отрасль', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1ed9d4e4-89a6-51ec-8a3a-88dbb69d5c7a', 'en', 'contact details', 'контактные данные', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8dc3d3a1-d2f6-5005-8b18-b7e89e1b0607', 'en', 'follow up', 'продолжить общение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6343f33a-f5e7-5c45-9d68-1a1be4399dec', 'en', 'mutual interest', 'общий интерес', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2d6913ae-9ca2-58ef-ba4e-03b76f17d4a8', 'en', 'introduce', 'представлять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dc1fc9eb-e826-5c34-8fad-14995cf4c813', 'en', 'professional background', 'профессиональный опыт', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('71f7cfa6-4104-517d-8220-0e5fbac825ed', 'en', 'networking', 'нетворкинг', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ef7f277d-8ec7-5b71-b30f-e2eed84f4552', 'en', 'industry', 'отрасль', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1ed9d4e4-89a6-51ec-8a3a-88dbb69d5c7a', 'en', 'contact details', 'контактные данные', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8dc3d3a1-d2f6-5005-8b18-b7e89e1b0607', 'en', 'follow up', 'продолжить общение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6343f33a-f5e7-5c45-9d68-1a1be4399dec', 'en', 'mutual interest', 'общий интерес', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2d6913ae-9ca2-58ef-ba4e-03b76f17d4a8', 'en', 'introduce', 'представлять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dc1fc9eb-e826-5c34-8fad-14995cf4c813', 'en', 'professional background', 'профессиональный опыт', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('71f7cfa6-4104-517d-8220-0e5fbac825ed', 'en', 'networking', 'нетворкинг', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ef7f277d-8ec7-5b71-b30f-e2eed84f4552', 'en', 'industry', 'отрасль', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1ed9d4e4-89a6-51ec-8a3a-88dbb69d5c7a', 'en', 'contact details', 'контактные данные', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8dc3d3a1-d2f6-5005-8b18-b7e89e1b0607', 'en', 'follow up', 'продолжить общение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6343f33a-f5e7-5c45-9d68-1a1be4399dec', 'en', 'mutual interest', 'общий интерес', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2d6913ae-9ca2-58ef-ba4e-03b76f17d4a8', 'en', 'introduce', 'представлять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f18c44e4-fd00-577a-af7c-244c86289a43', id, '983798ca-601d-588a-ba56-4b5ad232e920', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'professional background' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f18c44e4-fd00-577a-af7c-244c86289a43', id, '983798ca-601d-588a-ba56-4b5ad232e920', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'networking' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f18c44e4-fd00-577a-af7c-244c86289a43', id, '983798ca-601d-588a-ba56-4b5ad232e920', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'industry' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f18c44e4-fd00-577a-af7c-244c86289a43', id, '983798ca-601d-588a-ba56-4b5ad232e920', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'contact details' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f18c44e4-fd00-577a-af7c-244c86289a43', id, '983798ca-601d-588a-ba56-4b5ad232e920', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'follow up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f18c44e4-fd00-577a-af7c-244c86289a43', id, '983798ca-601d-588a-ba56-4b5ad232e920', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'mutual interest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f18c44e4-fd00-577a-af7c-244c86289a43', id, '983798ca-601d-588a-ba56-4b5ad232e920', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'introduce' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f18c44e4-fd00-577a-af7c-244c86289a43', id, '99c4e05c-8010-51c0-b4f8-819ada175984', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'professional background' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f18c44e4-fd00-577a-af7c-244c86289a43', id, '99c4e05c-8010-51c0-b4f8-819ada175984', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'networking' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f18c44e4-fd00-577a-af7c-244c86289a43', id, '99c4e05c-8010-51c0-b4f8-819ada175984', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'industry' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f18c44e4-fd00-577a-af7c-244c86289a43', id, '99c4e05c-8010-51c0-b4f8-819ada175984', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'contact details' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f18c44e4-fd00-577a-af7c-244c86289a43', id, '99c4e05c-8010-51c0-b4f8-819ada175984', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'follow up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f18c44e4-fd00-577a-af7c-244c86289a43', id, '99c4e05c-8010-51c0-b4f8-819ada175984', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'mutual interest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f18c44e4-fd00-577a-af7c-244c86289a43', id, '99c4e05c-8010-51c0-b4f8-819ada175984', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'introduce' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f18c44e4-fd00-577a-af7c-244c86289a43', id, 'd74ac6bf-0ead-52ea-935f-8a90e74c2c89', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'professional background' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f18c44e4-fd00-577a-af7c-244c86289a43', id, 'd74ac6bf-0ead-52ea-935f-8a90e74c2c89', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'networking' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f18c44e4-fd00-577a-af7c-244c86289a43', id, 'd74ac6bf-0ead-52ea-935f-8a90e74c2c89', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'industry' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f18c44e4-fd00-577a-af7c-244c86289a43', id, 'd74ac6bf-0ead-52ea-935f-8a90e74c2c89', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'contact details' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f18c44e4-fd00-577a-af7c-244c86289a43', id, 'd74ac6bf-0ead-52ea-935f-8a90e74c2c89', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'follow up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f18c44e4-fd00-577a-af7c-244c86289a43', id, 'd74ac6bf-0ead-52ea-935f-8a90e74c2c89', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'mutual interest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f18c44e4-fd00-577a-af7c-244c86289a43', id, 'd74ac6bf-0ead-52ea-935f-8a90e74c2c89', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'introduce' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
