-- Track: B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('29e4aaf5-9308-5141-b27a-1a847355b64f', 'B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS', 'Деловые предложения, процессы и улучшения', 'Развивайте деловой английский уровня B1 по теме «Деловые предложения, процессы и улучшения».', '{"en":"Business Proposals, Processes and Improvements","ru":"Деловые предложения, процессы и улучшения"}'::jsonb, '{"en":"Develop B1 business English for business proposals, processes and improvements.","ru":"Развивайте деловой английский уровня B1 по теме «Деловые предложения, процессы и улучшения»."}'::jsonb, 'en', 'B1', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9a482531-4f83-5e54-aea0-1501fa2bb2c9', NULL, 'Деловой контекст', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Describing a Process","ru":"Деловой контекст"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d80fc2bb-f4bd-5b03-b09f-7d193b580315', '9a482531-4f83-5e54-aea0-1501fa2bb2c9', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L1_B01","left":"proposal","right":"предложение"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L1_B02","left":"process","right":"процесс"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L1_B03","left":"efficiency","right":"эффективность"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L1_B04","left":"implement","right":"внедрять"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L1_B05","left":"benefit","right":"преимущество"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L1_B06","left":"risk","right":"риск"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L1_B07","left":"evaluate","right":"оценивать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c4b6f58-c10e-5c7b-a848-4cfb5ae5e4dc', '9a482531-4f83-5e54-aea0-1501fa2bb2c9', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L1_B08","is_correct":true,"text":"The proposal explains how the revised process could improve efficiency without reducing service quality."},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L1_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L1_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bccee725-b0a4-5252-ac5d-4768224b58bf', '9a482531-4f83-5e54-aea0-1501fa2bb2c9', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The proposal explains how the revised process could improve efficiency without reducing service quality.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Предложение объясняет, как изменённый процесс может повысить эффективность без снижения качества обслуживания.","target_language":"en","word_bank":["The","proposal","explains","how","the","revised","process","could","improve","efficiency","without","reducing","service","quality."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('07667afd-756b-527c-a19b-95e9388deb89', '9a482531-4f83-5e54-aea0-1501fa2bb2c9', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"proposal","instruction":"Выберите подходящее слово.","options":["proposal","implement","risk"],"sentence_template":"The ___ explains how the revised process could improve efficiency without reducing service quality."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bdada38b-ad65-5d9e-8711-b96b897353fe', '9a482531-4f83-5e54-aea0-1501fa2bb2c9', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","proposal","explains","how","the","revised","process","could","improve","efficiency","without","reducing","service","quality."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["quality.","service","reducing","without","efficiency","improve","could","process","revised","the","how","explains","proposal","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a10bef4a-6518-559c-8277-35606e7762ae', '9a482531-4f83-5e54-aea0-1501fa2bb2c9', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The proposal explains how the revised process could improve efficiency without reducing service quality. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2063cc51-0064-597c-bf99-541e2f358c0a', '9a482531-4f83-5e54-aea0-1501fa2bb2c9', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The proposal explains how the revised process could improve efficiency without reducing service quality. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Предложение объясняет, как изменённый процесс может повысить эффективность без снижения качества обслуживания. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('511406aa-b250-5175-bf78-3441ad94af08', '9a482531-4f83-5e54-aea0-1501fa2bb2c9', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"The proposal explains how the revised process could improve efficiency without reducing service quality.","translation":"Предложение объясняет, как изменённый процесс может повысить эффективность без снижения качества обслуживания.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Describing a Process"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b51f842a-6f4a-55cc-9c1e-b4bbf1e2cff9', '9a482531-4f83-5e54-aea0-1501fa2bb2c9', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“proposal” means a formal plan for consideration.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L1_B11","is_correct":true,"text":"a formal plan for consideration"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L1_B12","is_correct":false,"text":"a series of actions producing a result"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L1_B13","is_correct":false,"text":"achieving results with minimal waste"}],"word":"proposal"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0dbef1a2-c428-5ec8-99ab-cba4155aec59', '9a482531-4f83-5e54-aea0-1501fa2bb2c9', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The proposal explains how the revised process could improve efficiency without reducing service quality.","explanation":"The missing business expression is “proposal”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"proposal","id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L1_B14","is_correct":true},{"audio_text":"efficiency","id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L1_B15","is_correct":false},{"audio_text":"benefit","id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L1_B16","is_correct":false}],"sentence_template":"The ___ explains how the revised process could improve efficiency without reducing service quality."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('721333f2-ff0c-5be4-b366-8ef35e161f03', '9a482531-4f83-5e54-aea0-1501fa2bb2c9', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"proposal","explanation":"The sentence requires “proposal” to express the intended business meaning.","hint_prefix":"pro","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ explains how the revised process could improve efficiency without reducing service quality."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc3eb00a-43d0-5797-8169-aa1bff9272ad', '9a482531-4f83-5e54-aea0-1501fa2bb2c9', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"proposal","id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L1_B17","text":"proposal"},{"audio_text":"process","id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L1_B18","text":"process"},{"audio_text":"efficiency","id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L1_B19","text":"efficiency"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('57abc34a-12ba-536a-88c1-ee528aba20a0', '9a482531-4f83-5e54-aea0-1501fa2bb2c9', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Describing a Process”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L1_B20","is_correct":true,"text":"The proposal explains how the revised process could improve efficiency without reducing service quality."},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L1_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L1_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('29e4aaf5-9308-5141-b27a-1a847355b64f', '9a482531-4f83-5e54-aea0-1501fa2bb2c9', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('005898c6-0c2e-5660-a4ba-0c283807cecc', NULL, 'Обсуждение и уточнение', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Suggesting Improvements","ru":"Обсуждение и уточнение"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b5775f2b-9765-5703-bd2b-cf8baa4e4504', '005898c6-0c2e-5660-a4ba-0c283807cecc', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L2_B01","left":"proposal","right":"предложение"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L2_B02","left":"process","right":"процесс"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L2_B03","left":"efficiency","right":"эффективность"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L2_B04","left":"implement","right":"внедрять"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L2_B05","left":"benefit","right":"преимущество"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L2_B06","left":"risk","right":"риск"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L2_B07","left":"evaluate","right":"оценивать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1ec8165f-1522-53b3-a0fe-a0f56f000ff0', '005898c6-0c2e-5660-a4ba-0c283807cecc', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L2_B08","is_correct":true,"text":"Before implementing the change, management compared the expected benefit with the main financial risk."},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L2_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L2_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('14ee4d29-512b-5696-8d07-ea6ff031a297', '005898c6-0c2e-5660-a4ba-0c283807cecc', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Before implementing the change, management compared the expected benefit with the main financial risk.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Перед внедрением изменения руководство сравнило ожидаемое преимущество с основным финансовым риском.","target_language":"en","word_bank":["Before","implementing","the","change,","management","compared","the","expected","benefit","with","the","main","financial","risk."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da130a45-b2db-5e30-a9dc-087cc21cedb4', '005898c6-0c2e-5660-a4ba-0c283807cecc', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"process","instruction":"Выберите подходящее слово.","options":["process","benefit","evaluate"],"sentence_template":"Before implementing the change, management compared the expected benefit with the main financial risk."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5fbfbdf-ca3d-5172-a8da-7e593365415a', '005898c6-0c2e-5660-a4ba-0c283807cecc', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Before","implementing","the","change,","management","compared","the","expected","benefit","with","the","main","financial","risk."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["risk.","financial","main","the","with","benefit","expected","the","compared","management","change,","the","implementing","Before"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c948db78-4976-54f7-9c51-54087b470912', '005898c6-0c2e-5660-a4ba-0c283807cecc', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Before implementing the change, management compared the expected benefit with the main financial risk. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2c63a17f-820e-5ac5-9db0-ed67faa96c13', '005898c6-0c2e-5660-a4ba-0c283807cecc', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Before implementing the change, management compared the expected benefit with the main financial risk. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Перед внедрением изменения руководство сравнило ожидаемое преимущество с основным финансовым риском. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a9e4cde-b176-5879-8808-43aa4fbd27b9', '005898c6-0c2e-5660-a4ba-0c283807cecc', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"Before implementing the change, management compared the expected benefit with the main financial risk.","translation":"Перед внедрением изменения руководство сравнило ожидаемое преимущество с основным финансовым риском.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Suggesting Improvements"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('63c99350-2793-52a4-b063-d842a195a1f7', '005898c6-0c2e-5660-a4ba-0c283807cecc', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“process” means a series of actions producing a result.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L2_B11","is_correct":true,"text":"a series of actions producing a result"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L2_B12","is_correct":false,"text":"achieving results with minimal waste"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L2_B13","is_correct":false,"text":"put a plan into action"}],"word":"process"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ea83a1a-bdc1-5007-bb23-b995c1486a10', '005898c6-0c2e-5660-a4ba-0c283807cecc', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Before implementing the change, management compared the expected benefit with the main financial risk.","explanation":"The missing business expression is “process”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"process","id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L2_B14","is_correct":true},{"audio_text":"implement","id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L2_B15","is_correct":false},{"audio_text":"risk","id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L2_B16","is_correct":false}],"sentence_template":"Before implementing the change, management compared the expected benefit with the main financial risk."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('54c4d5e5-dcb3-5d3b-a133-a66f9355a865', '005898c6-0c2e-5660-a4ba-0c283807cecc', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"process","explanation":"The sentence requires “process” to express the intended business meaning.","hint_prefix":"pro","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Before implementing the change, management compared the expected benefit with the main financial risk."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('df53150c-2085-5909-8b03-edac5daff1ab', '005898c6-0c2e-5660-a4ba-0c283807cecc', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"proposal","id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L2_B17","text":"proposal"},{"audio_text":"process","id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L2_B18","text":"process"},{"audio_text":"efficiency","id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L2_B19","text":"efficiency"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c8f3b8b5-5bfb-5e71-82d2-3b839f537910', '005898c6-0c2e-5660-a4ba-0c283807cecc', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Suggesting Improvements”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L2_B20","is_correct":true,"text":"Before implementing the change, management compared the expected benefit with the main financial risk."},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L2_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L2_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('29e4aaf5-9308-5141-b27a-1a847355b64f', '005898c6-0c2e-5660-a4ba-0c283807cecc', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('3ae3098f-2424-520f-8549-5983cdca3072', NULL, 'Решение и дальнейшие действия', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Presenting a Simple Proposal","ru":"Решение и дальнейшие действия"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2031e481-eb62-582e-898c-4bd8f00cb23f', '3ae3098f-2424-520f-8549-5983cdca3072', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L3_B01","left":"proposal","right":"предложение"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L3_B02","left":"process","right":"процесс"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L3_B03","left":"efficiency","right":"эффективность"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L3_B04","left":"implement","right":"внедрять"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L3_B05","left":"benefit","right":"преимущество"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L3_B06","left":"risk","right":"риск"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L3_B07","left":"evaluate","right":"оценивать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('717b4978-5d93-54d6-9312-3d81c4a9021d', '3ae3098f-2424-520f-8549-5983cdca3072', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L3_B08","is_correct":true,"text":"We will evaluate the results after three months and adjust the process if the improvement is smaller than expected."},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L3_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L3_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('475530fa-6990-5f5d-b9d4-dd93ea519fbb', '3ae3098f-2424-520f-8549-5983cdca3072', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We will evaluate the results after three months and adjust the process if the improvement is smaller than expected.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мы оценим результаты через три месяца и скорректируем процесс, если улучшение окажется меньше ожидаемого.","target_language":"en","word_bank":["We","will","evaluate","the","results","after","three","months","and","adjust","the","process","if","the","improvement","is","smaller","than","expected."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('57f2cf94-d78f-52fd-9262-69f74085b77a', '3ae3098f-2424-520f-8549-5983cdca3072', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"efficiency","instruction":"Выберите подходящее слово.","options":["efficiency","risk","proposal"],"sentence_template":"We will evaluate the results after three months and adjust the process if the improvement is smaller than expected."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9d463526-d994-5f4c-8e18-1b50ae5686cf', '3ae3098f-2424-520f-8549-5983cdca3072', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","will","evaluate","the","results","after","three","months","and","adjust","the","process","if","the","improvement","is","smaller","than","expected."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["expected.","than","smaller","is","improvement","the","if","process","the","adjust","and","months","three","after","results","the","evaluate","will","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2cfbf0d1-ffec-5c3c-8004-3c6e6d066032', '3ae3098f-2424-520f-8549-5983cdca3072', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We will evaluate the results after three months and adjust the process if the improvement is smaller than expected. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c35cef28-01e8-5d2a-8d76-e13a162e9522', '3ae3098f-2424-520f-8549-5983cdca3072', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We will evaluate the results after three months and adjust the process if the improvement is smaller than expected. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Мы оценим результаты через три месяца и скорректируем процесс, если улучшение окажется меньше ожидаемого. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ec3b446-39dd-5919-b135-3ecc7374b36f', '3ae3098f-2424-520f-8549-5983cdca3072', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"We will evaluate the results after three months and adjust the process if the improvement is smaller than expected.","translation":"Мы оценим результаты через три месяца и скорректируем процесс, если улучшение окажется меньше ожидаемого.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Presenting a Simple Proposal"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76b567e8-881d-5f3e-a3e1-be9d26f20014', '3ae3098f-2424-520f-8549-5983cdca3072', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“efficiency” means achieving results with minimal waste.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L3_B11","is_correct":true,"text":"achieving results with minimal waste"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L3_B12","is_correct":false,"text":"put a plan into action"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L3_B13","is_correct":false,"text":"a positive result"}],"word":"efficiency"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa60b1f6-b392-54cc-aebd-8e58a84a56d5', '3ae3098f-2424-520f-8549-5983cdca3072', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We will evaluate the results after three months and adjust the process if the improvement is smaller than expected.","explanation":"The missing business expression is “efficiency”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"efficiency","id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L3_B14","is_correct":true},{"audio_text":"benefit","id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L3_B15","is_correct":false},{"audio_text":"evaluate","id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L3_B16","is_correct":false}],"sentence_template":"We will evaluate the results after three months and adjust the process if the improvement is smaller than expected."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d67dfda9-e622-5c72-941d-198205dbe09b', '3ae3098f-2424-520f-8549-5983cdca3072', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"efficiency","explanation":"The sentence requires “efficiency” to express the intended business meaning.","hint_prefix":"eff","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We will evaluate the results after three months and adjust the process if the improvement is smaller than expected."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('39390709-b4ab-5fe0-a3b2-7dcb0da0e933', '3ae3098f-2424-520f-8549-5983cdca3072', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"proposal","id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L3_B17","text":"proposal"},{"audio_text":"process","id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L3_B18","text":"process"},{"audio_text":"efficiency","id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L3_B19","text":"efficiency"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eae5caa8-db3c-5857-849d-ab2ff815c373', '3ae3098f-2424-520f-8549-5983cdca3072', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Presenting a Simple Proposal”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L3_B20","is_correct":true,"text":"We will evaluate the results after three months and adjust the process if the improvement is smaller than expected."},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L3_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_PROPOSALS_PROCESSES_AND_IMPROVEMENTS_L3_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('29e4aaf5-9308-5141-b27a-1a847355b64f', '3ae3098f-2424-520f-8549-5983cdca3072', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('774150cc-e180-57d5-baf4-afd81d6e552d', 'en', 'proposal', 'предложение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('896167f0-c186-5f13-87b5-57c62cb00a54', 'en', 'process', 'процесс', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d6037a63-9e8e-51ab-a005-f9f4e2cecec7', 'en', 'efficiency', 'эффективность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5a37a202-a9a5-5d8c-afbd-89976ec1d45d', 'en', 'implement', 'внедрять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('14981c45-f06a-59ba-940f-c54f5cf87bd3', 'en', 'benefit', 'преимущество', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2c8e0fbc-15eb-5c05-978b-19a1a69375c6', 'en', 'risk', 'риск', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3375c8a-8caa-5f25-89eb-6c31b0522026', 'en', 'evaluate', 'оценивать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('774150cc-e180-57d5-baf4-afd81d6e552d', 'en', 'proposal', 'предложение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('896167f0-c186-5f13-87b5-57c62cb00a54', 'en', 'process', 'процесс', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d6037a63-9e8e-51ab-a005-f9f4e2cecec7', 'en', 'efficiency', 'эффективность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5a37a202-a9a5-5d8c-afbd-89976ec1d45d', 'en', 'implement', 'внедрять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('14981c45-f06a-59ba-940f-c54f5cf87bd3', 'en', 'benefit', 'преимущество', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2c8e0fbc-15eb-5c05-978b-19a1a69375c6', 'en', 'risk', 'риск', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3375c8a-8caa-5f25-89eb-6c31b0522026', 'en', 'evaluate', 'оценивать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('774150cc-e180-57d5-baf4-afd81d6e552d', 'en', 'proposal', 'предложение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('896167f0-c186-5f13-87b5-57c62cb00a54', 'en', 'process', 'процесс', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d6037a63-9e8e-51ab-a005-f9f4e2cecec7', 'en', 'efficiency', 'эффективность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5a37a202-a9a5-5d8c-afbd-89976ec1d45d', 'en', 'implement', 'внедрять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('14981c45-f06a-59ba-940f-c54f5cf87bd3', 'en', 'benefit', 'преимущество', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2c8e0fbc-15eb-5c05-978b-19a1a69375c6', 'en', 'risk', 'риск', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3375c8a-8caa-5f25-89eb-6c31b0522026', 'en', 'evaluate', 'оценивать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29e4aaf5-9308-5141-b27a-1a847355b64f', id, '9a482531-4f83-5e54-aea0-1501fa2bb2c9', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'proposal' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29e4aaf5-9308-5141-b27a-1a847355b64f', id, '9a482531-4f83-5e54-aea0-1501fa2bb2c9', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'process' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29e4aaf5-9308-5141-b27a-1a847355b64f', id, '9a482531-4f83-5e54-aea0-1501fa2bb2c9', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'efficiency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29e4aaf5-9308-5141-b27a-1a847355b64f', id, '9a482531-4f83-5e54-aea0-1501fa2bb2c9', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'implement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29e4aaf5-9308-5141-b27a-1a847355b64f', id, '9a482531-4f83-5e54-aea0-1501fa2bb2c9', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'benefit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29e4aaf5-9308-5141-b27a-1a847355b64f', id, '9a482531-4f83-5e54-aea0-1501fa2bb2c9', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'risk' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29e4aaf5-9308-5141-b27a-1a847355b64f', id, '9a482531-4f83-5e54-aea0-1501fa2bb2c9', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'evaluate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29e4aaf5-9308-5141-b27a-1a847355b64f', id, '005898c6-0c2e-5660-a4ba-0c283807cecc', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'proposal' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29e4aaf5-9308-5141-b27a-1a847355b64f', id, '005898c6-0c2e-5660-a4ba-0c283807cecc', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'process' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29e4aaf5-9308-5141-b27a-1a847355b64f', id, '005898c6-0c2e-5660-a4ba-0c283807cecc', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'efficiency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29e4aaf5-9308-5141-b27a-1a847355b64f', id, '005898c6-0c2e-5660-a4ba-0c283807cecc', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'implement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29e4aaf5-9308-5141-b27a-1a847355b64f', id, '005898c6-0c2e-5660-a4ba-0c283807cecc', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'benefit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29e4aaf5-9308-5141-b27a-1a847355b64f', id, '005898c6-0c2e-5660-a4ba-0c283807cecc', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'risk' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29e4aaf5-9308-5141-b27a-1a847355b64f', id, '005898c6-0c2e-5660-a4ba-0c283807cecc', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'evaluate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29e4aaf5-9308-5141-b27a-1a847355b64f', id, '3ae3098f-2424-520f-8549-5983cdca3072', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'proposal' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29e4aaf5-9308-5141-b27a-1a847355b64f', id, '3ae3098f-2424-520f-8549-5983cdca3072', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'process' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29e4aaf5-9308-5141-b27a-1a847355b64f', id, '3ae3098f-2424-520f-8549-5983cdca3072', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'efficiency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29e4aaf5-9308-5141-b27a-1a847355b64f', id, '3ae3098f-2424-520f-8549-5983cdca3072', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'implement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29e4aaf5-9308-5141-b27a-1a847355b64f', id, '3ae3098f-2424-520f-8549-5983cdca3072', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'benefit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29e4aaf5-9308-5141-b27a-1a847355b64f', id, '3ae3098f-2424-520f-8549-5983cdca3072', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'risk' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '29e4aaf5-9308-5141-b27a-1a847355b64f', id, '3ae3098f-2424-520f-8549-5983cdca3072', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'evaluate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
