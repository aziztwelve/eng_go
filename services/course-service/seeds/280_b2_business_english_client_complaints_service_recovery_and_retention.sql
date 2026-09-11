-- Track: B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('745a495f-9b6d-5fd0-94ee-64c73612705d', 'B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION', 'Жалобы клиентов, восстановление сервиса и удержание', 'Развивайте точный деловой английский уровня B2 по теме «Жалобы клиентов, восстановление сервиса и удержание», анализируя коммерческие последствия и согласовывая обоснованные решения.', '{"en":"Client Complaints, Service Recovery and Retention","ru":"Жалобы клиентов, восстановление сервиса и удержание"}'::jsonb, '{"en":"Develop precise B2 business English for client complaints, service recovery and retention by analysing commercial implications and negotiating well-supported decisions.","ru":"Развивайте точный деловой английский уровня B2 по теме «Жалобы клиентов, восстановление сервиса и удержание», анализируя коммерческие последствия и согласовывая обоснованные решения."}'::jsonb, 'en', 'B2', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('48de0775-ab07-5ef8-bc16-08c29fb3716d', NULL, 'Деловой контекст и ключевые понятия', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Investigating a Complex Complaint","ru":"Деловой контекст и ключевые понятия"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d85aeac4-9160-5705-9cd0-e77af2e95202', '48de0775-ab07-5ef8-bc16-08c29fb3716d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L1_D01","left":"service failure","right":"сбой обслуживания"},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L1_D02","left":"root cause","right":"коренная причина"},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L1_D03","left":"acknowledge the impact","right":"признать последствия"},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L1_D04","left":"remedial action","right":"исправительное действие"},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L1_D05","left":"goodwill gesture","right":"жест доброй воли"},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L1_D06","left":"retention risk","right":"риск потери клиента"},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L1_D07","left":"restore confidence","right":"восстановить доверие"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6198a17d-3d3c-5672-8029-bb128256cc64', '48de0775-ab07-5ef8-bc16-08c29fb3716d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L1_D08","is_correct":true,"text":"A complex service failure should be investigated across the entire customer journey rather than treated as an isolated complaint."},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L1_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L1_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('013b5e84-c1d3-5b60-8261-1375d9bf8078', '48de0775-ab07-5ef8-bc16-08c29fb3716d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A complex service failure should be investigated across the entire customer journey rather than treated as an isolated complaint.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Сложный сбой обслуживания следует расследовать на всём пути клиента, а не рассматривать как отдельную жалобу.","target_language":"en","word_bank":["A","complex","service","failure","should","be","investigated","across","the","entire","customer","journey","rather","than","treated","as","an","isolated","complaint","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aec127ce-973b-5548-a886-cfbf99308183', '48de0775-ab07-5ef8-bc16-08c29fb3716d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"service failure","instruction":"Выберите подходящее слово.","options":["service failure","remedial action","retention risk"],"sentence_template":"A complex ___ should be investigated across the entire customer journey rather than treated as an isolated complaint."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ebb40f2f-9bf9-51cb-a486-957df98f12e4', '48de0775-ab07-5ef8-bc16-08c29fb3716d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","complex","service","failure","should","be","investigated","across","the","entire","customer","journey","rather","than","treated","as","an","isolated","complaint","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","complaint","isolated","an","as","treated","than","rather","journey","customer","entire","the","across","investigated","be","should","failure","service","complex","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb5ca241-da3f-500a-b704-ac28deeea8fd', '48de0775-ab07-5ef8-bc16-08c29fb3716d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A complex service failure should be investigated across the entire customer journey rather than treated as an isolated complaint. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5ae4b0c1-3ead-5388-a846-05e365799b76', '48de0775-ab07-5ef8-bc16-08c29fb3716d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A complex service failure should be investigated across the entire customer journey rather than treated as an isolated complaint. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Сложный сбой обслуживания следует расследовать на всём пути клиента, а не рассматривать как отдельную жалобу. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('836342dd-902a-5e1a-9dcb-c90fbd2132dd', '48de0775-ab07-5ef8-bc16-08c29fb3716d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"A complex service failure should be investigated across the entire customer journey rather than treated as an isolated complaint.","translation":"Сложный сбой обслуживания следует расследовать на всём пути клиента, а не рассматривать как отдельную жалобу.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Investigating a Complex Complaint"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf048a88-2f47-55ff-98a4-c1fbe4822e03', '48de0775-ab07-5ef8-bc16-08c29fb3716d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“service failure” means a failure to deliver the promised standard.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L1_D11","is_correct":true,"text":"a failure to deliver the promised standard"},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L1_D12","is_correct":false,"text":"the fundamental reason a problem occurred"},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L1_D13","is_correct":false,"text":"show understanding of how a problem affected someone"}],"word":"service failure"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a68669df-c949-5eaa-bb6d-3c7697cdb687', '48de0775-ab07-5ef8-bc16-08c29fb3716d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A complex service failure should be investigated across the entire customer journey rather than treated as an isolated complaint.","explanation":"The missing business expression is “service failure”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"service failure","id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L1_D14","is_correct":true},{"audio_text":"acknowledge the impact","id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L1_D15","is_correct":false},{"audio_text":"goodwill gesture","id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L1_D16","is_correct":false}],"sentence_template":"A complex ___ should be investigated across the entire customer journey rather than treated as an isolated complaint."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce0ecb9d-3ad5-5f6c-a4f3-b30e5dd5aa40', '48de0775-ab07-5ef8-bc16-08c29fb3716d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"service failure","explanation":"The complete business statement uses “service failure” precisely.","hint_prefix":"serv","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A complex ___ should be investigated across the entire customer journey rather than treated as an isolated complaint."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ad91e237-5674-57ff-b04e-cbcb984c7db8', '48de0775-ab07-5ef8-bc16-08c29fb3716d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"service failure","id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L1_D17","text":"service failure"},{"audio_text":"root cause","id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L1_D18","text":"root cause"},{"audio_text":"acknowledge the impact","id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L1_D19","text":"acknowledge the impact"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('92d94b63-737c-562c-a6d4-88c0bb04bb25', '48de0775-ab07-5ef8-bc16-08c29fb3716d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Investigating a Complex Complaint”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L1_D20","is_correct":true,"text":"A complex service failure should be investigated across the entire customer journey rather than treated as an isolated complaint."},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L1_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L1_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('745a495f-9b6d-5fd0-94ee-64c73612705d', '48de0775-ab07-5ef8-bc16-08c29fb3716d', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('af0bab3a-ba6b-5afc-8c6d-277c45677a70', NULL, 'Анализ и профессиональное взаимодействие', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Proposing Service Recovery","ru":"Анализ и профессиональное взаимодействие"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4b2d169-a15c-545e-98bb-685c127d9cf0', 'af0bab3a-ba6b-5afc-8c6d-277c45677a70', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L2_D01","left":"service failure","right":"сбой обслуживания"},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L2_D02","left":"root cause","right":"коренная причина"},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L2_D03","left":"acknowledge the impact","right":"признать последствия"},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L2_D04","left":"remedial action","right":"исправительное действие"},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L2_D05","left":"goodwill gesture","right":"жест доброй воли"},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L2_D06","left":"retention risk","right":"риск потери клиента"},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L2_D07","left":"restore confidence","right":"восстановить доверие"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41ef35e1-b33e-518f-aff8-de8610d3abee', 'af0bab3a-ba6b-5afc-8c6d-277c45677a70', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L2_D08","is_correct":true,"text":"Before proposing remedial action, acknowledge the impact, explain what is known about the root cause, and avoid defensive language."},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L2_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L2_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8880530-340f-53dc-8a84-b66acbc5387d', 'af0bab3a-ba6b-5afc-8c6d-277c45677a70', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Before proposing remedial action, acknowledge the impact, explain what is known about the root cause, and avoid defensive language.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Прежде чем предлагать исправительное действие, признайте последствия, объясните известное о коренной причине и избегайте защитного тона.","target_language":"en","word_bank":["Before","proposing","remedial","action",",","acknowledge","the","impact",",","explain","what","is","known","about","the","root","cause",",","and","avoid","defensive","language","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd74c821-6a57-5014-8966-216a60fe26f7', 'af0bab3a-ba6b-5afc-8c6d-277c45677a70', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"root cause","instruction":"Выберите подходящее слово.","options":["root cause","goodwill gesture","restore confidence"],"sentence_template":"Before proposing remedial action, acknowledge the impact, explain what is known about the ___, and avoid defensive language."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('551a65de-513c-5a30-9f54-5735df1bfcee', 'af0bab3a-ba6b-5afc-8c6d-277c45677a70', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Before","proposing","remedial","action",",","acknowledge","the","impact",",","explain","what","is","known","about","the","root","cause",",","and","avoid","defensive","language","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","language","defensive","avoid","and",",","cause","root","the","about","known","is","what","explain",",","impact","the","acknowledge",",","action","remedial","proposing","Before"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18f3209e-e59a-51c8-8e5a-4cf782f999ec', 'af0bab3a-ba6b-5afc-8c6d-277c45677a70', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Before proposing remedial action, acknowledge the impact, explain what is known about the root cause, and avoid defensive language. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0f212c79-d62a-5122-a1b0-b0d65e444223', 'af0bab3a-ba6b-5afc-8c6d-277c45677a70', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Before proposing remedial action, acknowledge the impact, explain what is known about the root cause, and avoid defensive language. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Прежде чем предлагать исправительное действие, признайте последствия, объясните известное о коренной причине и избегайте защитного тона. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8a9718ac-c5bc-521a-8c01-36d4f7e3c329', 'af0bab3a-ba6b-5afc-8c6d-277c45677a70', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"Before proposing remedial action, acknowledge the impact, explain what is known about the root cause, and avoid defensive language.","translation":"Прежде чем предлагать исправительное действие, признайте последствия, объясните известное о коренной причине и избегайте защитного тона.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Proposing Service Recovery"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a903a2c8-f921-5c39-8704-0cc1043cae58', 'af0bab3a-ba6b-5afc-8c6d-277c45677a70', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“root cause” means the fundamental reason a problem occurred.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L2_D11","is_correct":true,"text":"the fundamental reason a problem occurred"},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L2_D12","is_correct":false,"text":"show understanding of how a problem affected someone"},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L2_D13","is_correct":false,"text":"a step taken to correct a failure"}],"word":"root cause"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0008b5f7-13c2-51e6-b4d4-b71608021e35', 'af0bab3a-ba6b-5afc-8c6d-277c45677a70', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Before proposing remedial action, acknowledge the impact, explain what is known about the root cause, and avoid defensive language.","explanation":"The missing business expression is “root cause”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"root cause","id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L2_D14","is_correct":true},{"audio_text":"remedial action","id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L2_D15","is_correct":false},{"audio_text":"retention risk","id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L2_D16","is_correct":false}],"sentence_template":"Before proposing remedial action, acknowledge the impact, explain what is known about the ___, and avoid defensive language."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c02e0647-9917-5781-8159-435939c67ec3', 'af0bab3a-ba6b-5afc-8c6d-277c45677a70', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"root cause","explanation":"The complete business statement uses “root cause” precisely.","hint_prefix":"root","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Before proposing remedial action, acknowledge the impact, explain what is known about the ___, and avoid defensive language."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('de798766-33a0-522b-bd54-c17dd4b5d482', 'af0bab3a-ba6b-5afc-8c6d-277c45677a70', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"service failure","id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L2_D17","text":"service failure"},{"audio_text":"root cause","id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L2_D18","text":"root cause"},{"audio_text":"acknowledge the impact","id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L2_D19","text":"acknowledge the impact"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('22b3ea16-dae0-5a82-bea9-ef2f7944ea6a', 'af0bab3a-ba6b-5afc-8c6d-277c45677a70', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Proposing Service Recovery”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L2_D20","is_correct":true,"text":"Before proposing remedial action, acknowledge the impact, explain what is known about the root cause, and avoid defensive language."},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L2_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L2_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('745a495f-9b6d-5fd0-94ee-64c73612705d', 'af0bab3a-ba6b-5afc-8c6d-277c45677a70', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9a67915a-14ac-533f-9d4c-30b5b5499730', NULL, 'Решение и последующие действия', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Rebuilding Client Confidence","ru":"Решение и последующие действия"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('24b232e0-c8ed-51d5-901d-864865eddc52', '9a67915a-14ac-533f-9d4c-30b5b5499730', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L3_D01","left":"service failure","right":"сбой обслуживания"},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L3_D02","left":"root cause","right":"коренная причина"},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L3_D03","left":"acknowledge the impact","right":"признать последствия"},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L3_D04","left":"remedial action","right":"исправительное действие"},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L3_D05","left":"goodwill gesture","right":"жест доброй воли"},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L3_D06","left":"retention risk","right":"риск потери клиента"},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L3_D07","left":"restore confidence","right":"восстановить доверие"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f56359fc-530b-5a90-b505-e9a233955458', '9a67915a-14ac-533f-9d4c-30b5b5499730', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L3_D08","is_correct":true,"text":"A goodwill gesture may reduce retention risk, but restoring confidence ultimately depends on reliable delivery and transparent follow-up."},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L3_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L3_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b70accde-78df-54fe-86b7-646b86930b56', '9a67915a-14ac-533f-9d4c-30b5b5499730', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A goodwill gesture may reduce retention risk, but restoring confidence ultimately depends on reliable delivery and transparent follow-up.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Жест доброй воли может снизить риск потери клиента, но восстановление доверия в конечном счёте зависит от надёжного исполнения и прозрачного последующего контроля.","target_language":"en","word_bank":["A","goodwill","gesture","may","reduce","retention","risk",",","but","restoring","confidence","ultimately","depends","on","reliable","delivery","and","transparent","follow-up","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('35562dec-a5a0-5726-8e33-264b3b13a63e', '9a67915a-14ac-533f-9d4c-30b5b5499730', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"acknowledge the impact","instruction":"Выберите подходящее слово.","options":["acknowledge the impact","retention risk","service failure"],"sentence_template":"A goodwill gesture may reduce retention risk, but restoring confidence ultimately depends on reliable delivery and transparent follow-up."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5d5f5a92-d332-5903-99b0-d1b171bb2c8e', '9a67915a-14ac-533f-9d4c-30b5b5499730', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","goodwill","gesture","may","reduce","retention","risk",",","but","restoring","confidence","ultimately","depends","on","reliable","delivery","and","transparent","follow-up","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","follow-up","transparent","and","delivery","reliable","on","depends","ultimately","confidence","restoring","but",",","risk","retention","reduce","may","gesture","goodwill","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7fdeea08-f651-5eba-8ba2-519c4722aaf4', '9a67915a-14ac-533f-9d4c-30b5b5499730', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A goodwill gesture may reduce retention risk, but restoring confidence ultimately depends on reliable delivery and transparent follow-up. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c3af13e4-5a97-500e-9a92-abc697f15730', '9a67915a-14ac-533f-9d4c-30b5b5499730', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A goodwill gesture may reduce retention risk, but restoring confidence ultimately depends on reliable delivery and transparent follow-up. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Жест доброй воли может снизить риск потери клиента, но восстановление доверия в конечном счёте зависит от надёжного исполнения и прозрачного последующего контроля. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('67ce3431-1e56-524d-9eec-5362de4e5699', '9a67915a-14ac-533f-9d4c-30b5b5499730', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"A goodwill gesture may reduce retention risk, but restoring confidence ultimately depends on reliable delivery and transparent follow-up.","translation":"Жест доброй воли может снизить риск потери клиента, но восстановление доверия в конечном счёте зависит от надёжного исполнения и прозрачного последующего контроля.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Rebuilding Client Confidence"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('22fed542-b948-5d0c-acae-fb0d19f60153', '9a67915a-14ac-533f-9d4c-30b5b5499730', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“acknowledge the impact” means show understanding of how a problem affected someone.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L3_D11","is_correct":true,"text":"show understanding of how a problem affected someone"},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L3_D12","is_correct":false,"text":"a step taken to correct a failure"},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L3_D13","is_correct":false,"text":"compensation offered to restore confidence"}],"word":"acknowledge the impact"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f20f2abd-c61d-5203-8f55-ff8cdb7acd53', '9a67915a-14ac-533f-9d4c-30b5b5499730', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A goodwill gesture may reduce retention risk, but restoring confidence ultimately depends on reliable delivery and transparent follow-up.","explanation":"The missing business expression is “acknowledge the impact”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"acknowledge the impact","id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L3_D14","is_correct":true},{"audio_text":"goodwill gesture","id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L3_D15","is_correct":false},{"audio_text":"restore confidence","id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L3_D16","is_correct":false}],"sentence_template":"A goodwill gesture may reduce retention risk, but restoring confidence ultimately depends on reliable delivery and transparent follow-up."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6befcc23-7779-5799-a9f8-5e7a9fac6357', '9a67915a-14ac-533f-9d4c-30b5b5499730', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"acknowledge the impact","explanation":"The complete business statement uses “acknowledge the impact” precisely.","hint_prefix":"ackn","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A goodwill gesture may reduce retention risk, but restoring confidence ultimately depends on reliable delivery and transparent follow-up."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d469a44b-9d8d-5d37-b6cc-be75664137d8', '9a67915a-14ac-533f-9d4c-30b5b5499730', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"service failure","id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L3_D17","text":"service failure"},{"audio_text":"root cause","id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L3_D18","text":"root cause"},{"audio_text":"acknowledge the impact","id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L3_D19","text":"acknowledge the impact"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('172c5337-2bdd-5589-9501-03b38101a111', '9a67915a-14ac-533f-9d4c-30b5b5499730', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Rebuilding Client Confidence”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L3_D20","is_correct":true,"text":"A goodwill gesture may reduce retention risk, but restoring confidence ultimately depends on reliable delivery and transparent follow-up."},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L3_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_CLIENT_COMPLAINTS_SERVICE_RECOVERY_AND_RETENTION_L3_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('745a495f-9b6d-5fd0-94ee-64c73612705d', '9a67915a-14ac-533f-9d4c-30b5b5499730', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48094f93-6ab2-54cb-bc8e-8a346410759e', 'en', 'service failure', 'сбой обслуживания', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41c59135-0d9e-508f-ab88-e69d9214fc37', 'en', 'root cause', 'коренная причина', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e868504f-cba7-5fa2-8f07-2020f8fc47c0', 'en', 'acknowledge the impact', 'признать последствия', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1040d582-f494-5319-8e27-63b43847c9e9', 'en', 'remedial action', 'исправительное действие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('37db0426-aa6f-57b1-966a-eefb0482f04a', 'en', 'goodwill gesture', 'жест доброй воли', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f95427aa-e77c-5860-8591-477434566886', 'en', 'retention risk', 'риск потери клиента', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f714670d-72d4-526d-b289-acefa8fb5105', 'en', 'restore confidence', 'восстановить доверие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48094f93-6ab2-54cb-bc8e-8a346410759e', 'en', 'service failure', 'сбой обслуживания', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41c59135-0d9e-508f-ab88-e69d9214fc37', 'en', 'root cause', 'коренная причина', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e868504f-cba7-5fa2-8f07-2020f8fc47c0', 'en', 'acknowledge the impact', 'признать последствия', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1040d582-f494-5319-8e27-63b43847c9e9', 'en', 'remedial action', 'исправительное действие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('37db0426-aa6f-57b1-966a-eefb0482f04a', 'en', 'goodwill gesture', 'жест доброй воли', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f95427aa-e77c-5860-8591-477434566886', 'en', 'retention risk', 'риск потери клиента', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f714670d-72d4-526d-b289-acefa8fb5105', 'en', 'restore confidence', 'восстановить доверие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48094f93-6ab2-54cb-bc8e-8a346410759e', 'en', 'service failure', 'сбой обслуживания', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41c59135-0d9e-508f-ab88-e69d9214fc37', 'en', 'root cause', 'коренная причина', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e868504f-cba7-5fa2-8f07-2020f8fc47c0', 'en', 'acknowledge the impact', 'признать последствия', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1040d582-f494-5319-8e27-63b43847c9e9', 'en', 'remedial action', 'исправительное действие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('37db0426-aa6f-57b1-966a-eefb0482f04a', 'en', 'goodwill gesture', 'жест доброй воли', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f95427aa-e77c-5860-8591-477434566886', 'en', 'retention risk', 'риск потери клиента', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f714670d-72d4-526d-b289-acefa8fb5105', 'en', 'restore confidence', 'восстановить доверие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '745a495f-9b6d-5fd0-94ee-64c73612705d', id, '48de0775-ab07-5ef8-bc16-08c29fb3716d', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'service failure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '745a495f-9b6d-5fd0-94ee-64c73612705d', id, '48de0775-ab07-5ef8-bc16-08c29fb3716d', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'root cause' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '745a495f-9b6d-5fd0-94ee-64c73612705d', id, '48de0775-ab07-5ef8-bc16-08c29fb3716d', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'acknowledge the impact' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '745a495f-9b6d-5fd0-94ee-64c73612705d', id, '48de0775-ab07-5ef8-bc16-08c29fb3716d', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'remedial action' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '745a495f-9b6d-5fd0-94ee-64c73612705d', id, '48de0775-ab07-5ef8-bc16-08c29fb3716d', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'goodwill gesture' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '745a495f-9b6d-5fd0-94ee-64c73612705d', id, '48de0775-ab07-5ef8-bc16-08c29fb3716d', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'retention risk' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '745a495f-9b6d-5fd0-94ee-64c73612705d', id, '48de0775-ab07-5ef8-bc16-08c29fb3716d', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'restore confidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '745a495f-9b6d-5fd0-94ee-64c73612705d', id, 'af0bab3a-ba6b-5afc-8c6d-277c45677a70', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'service failure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '745a495f-9b6d-5fd0-94ee-64c73612705d', id, 'af0bab3a-ba6b-5afc-8c6d-277c45677a70', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'root cause' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '745a495f-9b6d-5fd0-94ee-64c73612705d', id, 'af0bab3a-ba6b-5afc-8c6d-277c45677a70', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'acknowledge the impact' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '745a495f-9b6d-5fd0-94ee-64c73612705d', id, 'af0bab3a-ba6b-5afc-8c6d-277c45677a70', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'remedial action' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '745a495f-9b6d-5fd0-94ee-64c73612705d', id, 'af0bab3a-ba6b-5afc-8c6d-277c45677a70', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'goodwill gesture' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '745a495f-9b6d-5fd0-94ee-64c73612705d', id, 'af0bab3a-ba6b-5afc-8c6d-277c45677a70', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'retention risk' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '745a495f-9b6d-5fd0-94ee-64c73612705d', id, 'af0bab3a-ba6b-5afc-8c6d-277c45677a70', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'restore confidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '745a495f-9b6d-5fd0-94ee-64c73612705d', id, '9a67915a-14ac-533f-9d4c-30b5b5499730', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'service failure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '745a495f-9b6d-5fd0-94ee-64c73612705d', id, '9a67915a-14ac-533f-9d4c-30b5b5499730', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'root cause' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '745a495f-9b6d-5fd0-94ee-64c73612705d', id, '9a67915a-14ac-533f-9d4c-30b5b5499730', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'acknowledge the impact' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '745a495f-9b6d-5fd0-94ee-64c73612705d', id, '9a67915a-14ac-533f-9d4c-30b5b5499730', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'remedial action' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '745a495f-9b6d-5fd0-94ee-64c73612705d', id, '9a67915a-14ac-533f-9d4c-30b5b5499730', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'goodwill gesture' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '745a495f-9b6d-5fd0-94ee-64c73612705d', id, '9a67915a-14ac-533f-9d4c-30b5b5499730', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'retention risk' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '745a495f-9b6d-5fd0-94ee-64c73612705d', id, '9a67915a-14ac-533f-9d4c-30b5b5499730', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'restore confidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
