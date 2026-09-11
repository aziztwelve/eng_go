-- Track: B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('042a8141-cc2c-55a3-8584-8071a5d0f222', 'B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS', 'Совещания, мнения и планы действий', 'Развивайте деловой английский уровня B1 по теме «Совещания, мнения и планы действий».', '{"en":"Meetings, Opinions and Action Points","ru":"Совещания, мнения и планы действий"}'::jsonb, '{"en":"Develop B1 business English for meetings, opinions and action points.","ru":"Развивайте деловой английский уровня B1 по теме «Совещания, мнения и планы действий»."}'::jsonb, 'en', 'B1', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('59d4c4b2-5e68-5a6b-93e9-022088abd0f9', NULL, 'Деловой контекст', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Leading Through an Agenda","ru":"Деловой контекст"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2dab20b7-04c2-50a5-a76a-7fda05f0721b', '59d4c4b2-5e68-5a6b-93e9-022088abd0f9', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L1_B01","left":"agenda","right":"повестка"},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L1_B02","left":"chair","right":"председательствовать"},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L1_B03","left":"raise a concern","right":"выразить обеспокоенность"},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L1_B04","left":"agree to","right":"согласиться"},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L1_B05","left":"action point","right":"пункт действий"},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L1_B06","left":"minutes","right":"протокол"},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L1_B07","left":"reach a decision","right":"принять решение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1efa68b8-69f1-57b2-989f-080b6c28b237', '59d4c4b2-5e68-5a6b-93e9-022088abd0f9', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L1_B08","is_correct":true,"text":"The chair followed the agenda closely but allowed extra time when a manager raised a serious concern."},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L1_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L1_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ed6c8b91-963d-5f23-9c27-9daaa5d0bb98', '59d4c4b2-5e68-5a6b-93e9-022088abd0f9', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The chair followed the agenda closely but allowed extra time when a manager raised a serious concern.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Председатель строго следовал повестке, но выделил дополнительное время, когда менеджер выразил серьёзную обеспокоенность.","target_language":"en","word_bank":["The","chair","followed","the","agenda","closely","but","allowed","extra","time","when","a","manager","raised","a","serious","concern."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('af962e9d-41e6-563c-8ac9-3e6a4e464a19', '59d4c4b2-5e68-5a6b-93e9-022088abd0f9', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"agenda","instruction":"Выберите подходящее слово.","options":["agenda","agree to","minutes"],"sentence_template":"The chair followed the ___ closely but allowed extra time when a manager raised a serious concern."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('50f872f0-9384-5a3f-bfbc-88bdac4d3fd4', '59d4c4b2-5e68-5a6b-93e9-022088abd0f9', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","chair","followed","the","agenda","closely","but","allowed","extra","time","when","a","manager","raised","a","serious","concern."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["concern.","serious","a","raised","manager","a","when","time","extra","allowed","but","closely","agenda","the","followed","chair","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7357aa4-e486-52da-b951-b22a391fd28a', '59d4c4b2-5e68-5a6b-93e9-022088abd0f9', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The chair followed the agenda closely but allowed extra time when a manager raised a serious concern. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e4b39f94-def8-52ab-8ba1-ba6065705e9e', '59d4c4b2-5e68-5a6b-93e9-022088abd0f9', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The chair followed the agenda closely but allowed extra time when a manager raised a serious concern. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Председатель строго следовал повестке, но выделил дополнительное время, когда менеджер выразил серьёзную обеспокоенность. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bfdd437a-2c8e-5cae-acc0-da38bbaaf0c0', '59d4c4b2-5e68-5a6b-93e9-022088abd0f9', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"The chair followed the agenda closely but allowed extra time when a manager raised a serious concern.","translation":"Председатель строго следовал повестке, но выделил дополнительное время, когда менеджер выразил серьёзную обеспокоенность.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Leading Through an Agenda"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1df55bc-0a63-576b-8296-28ee2b5650f9', '59d4c4b2-5e68-5a6b-93e9-022088abd0f9', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“agenda” means a list of meeting subjects.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L1_B11","is_correct":true,"text":"a list of meeting subjects"},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L1_B12","is_correct":false,"text":"lead a formal meeting"},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L1_B13","is_correct":false,"text":"mention a possible problem"}],"word":"agenda"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7953d296-25ad-572a-9f68-8e689ac8621a', '59d4c4b2-5e68-5a6b-93e9-022088abd0f9', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The chair followed the agenda closely but allowed extra time when a manager raised a serious concern.","explanation":"The missing business expression is “agenda”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"agenda","id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L1_B14","is_correct":true},{"audio_text":"raise a concern","id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L1_B15","is_correct":false},{"audio_text":"action point","id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L1_B16","is_correct":false}],"sentence_template":"The chair followed the ___ closely but allowed extra time when a manager raised a serious concern."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d15c0cec-0cb9-5b92-853e-c1571401f37c', '59d4c4b2-5e68-5a6b-93e9-022088abd0f9', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"agenda","explanation":"The sentence requires “agenda” to express the intended business meaning.","hint_prefix":"age","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The chair followed the ___ closely but allowed extra time when a manager raised a serious concern."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c87499bc-cc03-573d-9901-3d026832bd4c', '59d4c4b2-5e68-5a6b-93e9-022088abd0f9', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"agenda","id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L1_B17","text":"agenda"},{"audio_text":"chair","id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L1_B18","text":"chair"},{"audio_text":"raise a concern","id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L1_B19","text":"raise a concern"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a8100bd6-d26b-5eda-a70e-3700c1c5d182', '59d4c4b2-5e68-5a6b-93e9-022088abd0f9', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Leading Through an Agenda”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L1_B20","is_correct":true,"text":"The chair followed the agenda closely but allowed extra time when a manager raised a serious concern."},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L1_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L1_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('042a8141-cc2c-55a3-8584-8071a5d0f222', '59d4c4b2-5e68-5a6b-93e9-022088abd0f9', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('8cbbb23c-8e28-50aa-8e8d-d7bfe24f91d5', NULL, 'Обсуждение и уточнение', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Explaining and Challenging Ideas","ru":"Обсуждение и уточнение"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('acc7cb88-85e7-5940-bc48-2c0fba225765', '8cbbb23c-8e28-50aa-8e8d-d7bfe24f91d5', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L2_B01","left":"agenda","right":"повестка"},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L2_B02","left":"chair","right":"председательствовать"},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L2_B03","left":"raise a concern","right":"выразить обеспокоенность"},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L2_B04","left":"agree to","right":"согласиться"},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L2_B05","left":"action point","right":"пункт действий"},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L2_B06","left":"minutes","right":"протокол"},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L2_B07","left":"reach a decision","right":"принять решение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ee33a79-3113-54ec-a08a-6910a34c4279', '8cbbb23c-8e28-50aa-8e8d-d7bfe24f91d5', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L2_B08","is_correct":true,"text":"We agreed to investigate both options before reaching a final decision."},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L2_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L2_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9dcf6ab2-eafd-5117-97d4-09240d83643f', '8cbbb23c-8e28-50aa-8e8d-d7bfe24f91d5', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We agreed to investigate both options before reaching a final decision.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мы согласились изучить оба варианта до принятия окончательного решения.","target_language":"en","word_bank":["We","agreed","to","investigate","both","options","before","reaching","a","final","decision."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a2b6ab6-82ce-58f4-b728-f93de62a0827', '8cbbb23c-8e28-50aa-8e8d-d7bfe24f91d5', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"chair","instruction":"Выберите подходящее слово.","options":["chair","action point","reach a decision"],"sentence_template":"We agreed to investigate both options before reaching a final decision."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b5745395-982c-5900-9429-beb09992b795', '8cbbb23c-8e28-50aa-8e8d-d7bfe24f91d5', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","agreed","to","investigate","both","options","before","reaching","a","final","decision."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["decision.","final","a","reaching","before","options","both","investigate","to","agreed","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e2448367-df0b-5162-8dac-a854e23f0197', '8cbbb23c-8e28-50aa-8e8d-d7bfe24f91d5', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We agreed to investigate both options before reaching a final decision. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f340deff-ef9d-5888-8dff-ad0769e359db', '8cbbb23c-8e28-50aa-8e8d-d7bfe24f91d5', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We agreed to investigate both options before reaching a final decision. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Мы согласились изучить оба варианта до принятия окончательного решения. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9d884053-eb23-56c2-a9f4-16b1ee5b05ca', '8cbbb23c-8e28-50aa-8e8d-d7bfe24f91d5', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"We agreed to investigate both options before reaching a final decision.","translation":"Мы согласились изучить оба варианта до принятия окончательного решения.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Explaining and Challenging Ideas"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9ba986d3-7ae5-5703-a885-32ecc2568aec', '8cbbb23c-8e28-50aa-8e8d-d7bfe24f91d5', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“chair” means lead a formal meeting.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L2_B11","is_correct":true,"text":"lead a formal meeting"},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L2_B12","is_correct":false,"text":"mention a possible problem"},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L2_B13","is_correct":false,"text":"accept a proposal"}],"word":"chair"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('58dff84f-51fe-5cb8-9725-d5db25c54705', '8cbbb23c-8e28-50aa-8e8d-d7bfe24f91d5', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We agreed to investigate both options before reaching a final decision.","explanation":"The missing business expression is “chair”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"chair","id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L2_B14","is_correct":true},{"audio_text":"agree to","id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L2_B15","is_correct":false},{"audio_text":"minutes","id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L2_B16","is_correct":false}],"sentence_template":"We agreed to investigate both options before reaching a final decision."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3aaca237-c092-5326-9c75-cd9d0b594575', '8cbbb23c-8e28-50aa-8e8d-d7bfe24f91d5', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"chair","explanation":"The sentence requires “chair” to express the intended business meaning.","hint_prefix":"cha","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We agreed to investigate both options before reaching a final decision."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('06930c30-0508-57c3-ad91-cf0cb4666a8d', '8cbbb23c-8e28-50aa-8e8d-d7bfe24f91d5', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"agenda","id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L2_B17","text":"agenda"},{"audio_text":"chair","id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L2_B18","text":"chair"},{"audio_text":"raise a concern","id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L2_B19","text":"raise a concern"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('521a615c-b091-5131-b6ba-ede7543506e4', '8cbbb23c-8e28-50aa-8e8d-d7bfe24f91d5', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Explaining and Challenging Ideas”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L2_B20","is_correct":true,"text":"We agreed to investigate both options before reaching a final decision."},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L2_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L2_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('042a8141-cc2c-55a3-8584-8071a5d0f222', '8cbbb23c-8e28-50aa-8e8d-d7bfe24f91d5', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('43877834-a85a-52a5-a74e-a12a5103bfdf', NULL, 'Решение и дальнейшие действия', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Agreeing Action Points","ru":"Решение и дальнейшие действия"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a886e57-a3c9-55b6-90e9-768be12871fd', '43877834-a85a-52a5-a74e-a12a5103bfdf', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L3_B01","left":"agenda","right":"повестка"},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L3_B02","left":"chair","right":"председательствовать"},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L3_B03","left":"raise a concern","right":"выразить обеспокоенность"},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L3_B04","left":"agree to","right":"согласиться"},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L3_B05","left":"action point","right":"пункт действий"},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L3_B06","left":"minutes","right":"протокол"},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L3_B07","left":"reach a decision","right":"принять решение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7425dfb-8d24-549d-9521-620f58f5d476', '43877834-a85a-52a5-a74e-a12a5103bfdf', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L3_B08","is_correct":true,"text":"The minutes list every action point, the responsible person and the agreed deadline."},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L3_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L3_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('38fc34fe-ce44-5929-b19c-88cb82d93b82', '43877834-a85a-52a5-a74e-a12a5103bfdf', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The minutes list every action point, the responsible person and the agreed deadline.","instruction":"Соберите перевод.","source_language":"ru","source_text":"В протоколе указаны каждый пункт действий, ответственное лицо и согласованный срок.","target_language":"en","word_bank":["The","minutes","list","every","action","point,","the","responsible","person","and","the","agreed","deadline."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('698d37fe-40ad-5be8-a116-e15bcd300f65', '43877834-a85a-52a5-a74e-a12a5103bfdf', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"raise a concern","instruction":"Выберите подходящее слово.","options":["raise a concern","minutes","agenda"],"sentence_template":"The minutes list every action point, the responsible person and the agreed deadline."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('418b9c7e-ff0c-5220-b678-9fbcdf5ee6ca', '43877834-a85a-52a5-a74e-a12a5103bfdf', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","minutes","list","every","action","point,","the","responsible","person","and","the","agreed","deadline."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["deadline.","agreed","the","and","person","responsible","the","point,","action","every","list","minutes","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e5c5d7c6-2655-529d-b5c7-52c1c0abbe48', '43877834-a85a-52a5-a74e-a12a5103bfdf', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The minutes list every action point, the responsible person and the agreed deadline. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc6954ba-5385-51c0-a9c7-bd29227c84e6', '43877834-a85a-52a5-a74e-a12a5103bfdf', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The minutes list every action point, the responsible person and the agreed deadline. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"В протоколе указаны каждый пункт действий, ответственное лицо и согласованный срок. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('195ee0e3-4889-5205-ba51-32273a3be772', '43877834-a85a-52a5-a74e-a12a5103bfdf', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"The minutes list every action point, the responsible person and the agreed deadline.","translation":"В протоколе указаны каждый пункт действий, ответственное лицо и согласованный срок.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Agreeing Action Points"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0bd72d72-5b5e-5ecc-aec8-fe35fd6abf8c', '43877834-a85a-52a5-a74e-a12a5103bfdf', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“raise a concern” means mention a possible problem.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L3_B11","is_correct":true,"text":"mention a possible problem"},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L3_B12","is_correct":false,"text":"accept a proposal"},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L3_B13","is_correct":false,"text":"a task decided in a meeting"}],"word":"raise a concern"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fe46b20c-19b5-5db0-b740-bfc831c79287', '43877834-a85a-52a5-a74e-a12a5103bfdf', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The minutes list every action point, the responsible person and the agreed deadline.","explanation":"The missing business expression is “raise a concern”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"raise a concern","id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L3_B14","is_correct":true},{"audio_text":"action point","id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L3_B15","is_correct":false},{"audio_text":"reach a decision","id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L3_B16","is_correct":false}],"sentence_template":"The minutes list every action point, the responsible person and the agreed deadline."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('043961da-7bbf-5f91-92e3-55b71f3e9128', '43877834-a85a-52a5-a74e-a12a5103bfdf', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"raise a concern","explanation":"The sentence requires “raise a concern” to express the intended business meaning.","hint_prefix":"rai","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The minutes list every action point, the responsible person and the agreed deadline."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb92b127-56c6-5329-9a10-56efe0ae8668', '43877834-a85a-52a5-a74e-a12a5103bfdf', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"agenda","id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L3_B17","text":"agenda"},{"audio_text":"chair","id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L3_B18","text":"chair"},{"audio_text":"raise a concern","id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L3_B19","text":"raise a concern"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b78526cf-ac64-59a2-9d6c-e47eeeb3b211', '43877834-a85a-52a5-a74e-a12a5103bfdf', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Agreeing Action Points”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L3_B20","is_correct":true,"text":"The minutes list every action point, the responsible person and the agreed deadline."},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L3_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_MEETINGS_OPINIONS_AND_ACTION_POINTS_L3_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('042a8141-cc2c-55a3-8584-8071a5d0f222', '43877834-a85a-52a5-a74e-a12a5103bfdf', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f9a7faf2-77c0-549b-9eb6-f2dd0164c848', 'en', 'agenda', 'повестка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('09053cc6-9fb8-5b0a-b200-f223459c5537', 'en', 'chair', 'председательствовать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('18aa6888-62fc-5efb-8c97-f42471ecff91', 'en', 'raise a concern', 'выразить обеспокоенность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0b7756e8-9471-55ae-8274-f4bb1a105a95', 'en', 'agree to', 'согласиться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5ec5b7f0-8b70-5cd8-af67-0021f956b3f2', 'en', 'action point', 'пункт действий', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1a47972f-0ef3-5584-8fb2-741a5f2e8fc9', 'en', 'minutes', 'протокол', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('56b75190-9598-5321-9fb2-9d0c7a925146', 'en', 'reach a decision', 'принять решение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f9a7faf2-77c0-549b-9eb6-f2dd0164c848', 'en', 'agenda', 'повестка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('09053cc6-9fb8-5b0a-b200-f223459c5537', 'en', 'chair', 'председательствовать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('18aa6888-62fc-5efb-8c97-f42471ecff91', 'en', 'raise a concern', 'выразить обеспокоенность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0b7756e8-9471-55ae-8274-f4bb1a105a95', 'en', 'agree to', 'согласиться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5ec5b7f0-8b70-5cd8-af67-0021f956b3f2', 'en', 'action point', 'пункт действий', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1a47972f-0ef3-5584-8fb2-741a5f2e8fc9', 'en', 'minutes', 'протокол', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('56b75190-9598-5321-9fb2-9d0c7a925146', 'en', 'reach a decision', 'принять решение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f9a7faf2-77c0-549b-9eb6-f2dd0164c848', 'en', 'agenda', 'повестка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('09053cc6-9fb8-5b0a-b200-f223459c5537', 'en', 'chair', 'председательствовать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('18aa6888-62fc-5efb-8c97-f42471ecff91', 'en', 'raise a concern', 'выразить обеспокоенность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0b7756e8-9471-55ae-8274-f4bb1a105a95', 'en', 'agree to', 'согласиться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5ec5b7f0-8b70-5cd8-af67-0021f956b3f2', 'en', 'action point', 'пункт действий', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1a47972f-0ef3-5584-8fb2-741a5f2e8fc9', 'en', 'minutes', 'протокол', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('56b75190-9598-5321-9fb2-9d0c7a925146', 'en', 'reach a decision', 'принять решение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '042a8141-cc2c-55a3-8584-8071a5d0f222', id, '59d4c4b2-5e68-5a6b-93e9-022088abd0f9', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'agenda' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '042a8141-cc2c-55a3-8584-8071a5d0f222', id, '59d4c4b2-5e68-5a6b-93e9-022088abd0f9', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'chair' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '042a8141-cc2c-55a3-8584-8071a5d0f222', id, '59d4c4b2-5e68-5a6b-93e9-022088abd0f9', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'raise a concern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '042a8141-cc2c-55a3-8584-8071a5d0f222', id, '59d4c4b2-5e68-5a6b-93e9-022088abd0f9', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'agree to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '042a8141-cc2c-55a3-8584-8071a5d0f222', id, '59d4c4b2-5e68-5a6b-93e9-022088abd0f9', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'action point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '042a8141-cc2c-55a3-8584-8071a5d0f222', id, '59d4c4b2-5e68-5a6b-93e9-022088abd0f9', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'minutes' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '042a8141-cc2c-55a3-8584-8071a5d0f222', id, '59d4c4b2-5e68-5a6b-93e9-022088abd0f9', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'reach a decision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '042a8141-cc2c-55a3-8584-8071a5d0f222', id, '8cbbb23c-8e28-50aa-8e8d-d7bfe24f91d5', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'agenda' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '042a8141-cc2c-55a3-8584-8071a5d0f222', id, '8cbbb23c-8e28-50aa-8e8d-d7bfe24f91d5', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'chair' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '042a8141-cc2c-55a3-8584-8071a5d0f222', id, '8cbbb23c-8e28-50aa-8e8d-d7bfe24f91d5', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'raise a concern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '042a8141-cc2c-55a3-8584-8071a5d0f222', id, '8cbbb23c-8e28-50aa-8e8d-d7bfe24f91d5', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'agree to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '042a8141-cc2c-55a3-8584-8071a5d0f222', id, '8cbbb23c-8e28-50aa-8e8d-d7bfe24f91d5', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'action point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '042a8141-cc2c-55a3-8584-8071a5d0f222', id, '8cbbb23c-8e28-50aa-8e8d-d7bfe24f91d5', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'minutes' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '042a8141-cc2c-55a3-8584-8071a5d0f222', id, '8cbbb23c-8e28-50aa-8e8d-d7bfe24f91d5', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'reach a decision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '042a8141-cc2c-55a3-8584-8071a5d0f222', id, '43877834-a85a-52a5-a74e-a12a5103bfdf', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'agenda' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '042a8141-cc2c-55a3-8584-8071a5d0f222', id, '43877834-a85a-52a5-a74e-a12a5103bfdf', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'chair' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '042a8141-cc2c-55a3-8584-8071a5d0f222', id, '43877834-a85a-52a5-a74e-a12a5103bfdf', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'raise a concern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '042a8141-cc2c-55a3-8584-8071a5d0f222', id, '43877834-a85a-52a5-a74e-a12a5103bfdf', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'agree to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '042a8141-cc2c-55a3-8584-8071a5d0f222', id, '43877834-a85a-52a5-a74e-a12a5103bfdf', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'action point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '042a8141-cc2c-55a3-8584-8071a5d0f222', id, '43877834-a85a-52a5-a74e-a12a5103bfdf', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'minutes' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '042a8141-cc2c-55a3-8584-8071a5d0f222', id, '43877834-a85a-52a5-a74e-a12a5103bfdf', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'reach a decision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
