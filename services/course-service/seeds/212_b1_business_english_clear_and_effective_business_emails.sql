-- Track: B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('cc2316d9-5d7b-5cf5-a70d-6c73b0aa0066', 'B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS', 'Ясные и эффективные деловые письма', 'Развивайте деловой английский уровня B1 по теме «Ясные и эффективные деловые письма».', '{"en":"Clear and Effective Business Emails","ru":"Ясные и эффективные деловые письма"}'::jsonb, '{"en":"Develop B1 business English for clear and effective business emails.","ru":"Развивайте деловой английский уровня B1 по теме «Ясные и эффективные деловые письма»."}'::jsonb, 'en', 'B1', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('92bacd56-997d-5ef8-a9b3-49fdf1be37f1', NULL, 'Деловой контекст', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Organising an Email","ru":"Деловой контекст"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('307c94e9-26b1-501e-bce0-a7639651c3fa', '92bacd56-997d-5ef8-a9b3-49fdf1be37f1', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L1_B01","left":"subject line","right":"тема письма"},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L1_B02","left":"purpose","right":"цель"},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L1_B03","left":"attachment","right":"вложение"},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L1_B04","left":"action point","right":"пункт действий"},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L1_B05","left":"deadline","right":"срок"},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L1_B06","left":"confirm receipt","right":"подтвердить получение"},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L1_B07","left":"regarding","right":"касательно"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f2ff9c9d-99a5-5797-b52a-624beca123d4', '92bacd56-997d-5ef8-a9b3-49fdf1be37f1', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L1_B08","is_correct":true,"text":"The subject line should reflect the purpose of the email so that the reader can prioritise it quickly."},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L1_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L1_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9bb8b15-6586-59e8-8f26-50153f52e0f6', '92bacd56-997d-5ef8-a9b3-49fdf1be37f1', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The subject line should reflect the purpose of the email so that the reader can prioritise it quickly.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Тема письма должна отражать его цель, чтобы читатель мог быстро определить приоритет.","target_language":"en","word_bank":["The","subject","line","should","reflect","the","purpose","of","the","email","so","that","the","reader","can","prioritise","it","quickly."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ecc3f8be-d598-5c52-8e28-3ed9fcc988d1', '92bacd56-997d-5ef8-a9b3-49fdf1be37f1', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"subject line","instruction":"Выберите подходящее слово.","options":["subject line","action point","confirm receipt"],"sentence_template":"The ___ should reflect the purpose of the email so that the reader can prioritise it quickly."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('48c97e2b-60c1-5d7e-bef3-cee763b02498', '92bacd56-997d-5ef8-a9b3-49fdf1be37f1', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","subject","line","should","reflect","the","purpose","of","the","email","so","that","the","reader","can","prioritise","it","quickly."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["quickly.","it","prioritise","can","reader","the","that","so","email","the","of","purpose","the","reflect","should","line","subject","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5103c155-c1ab-5204-8014-e36bf6a940fd', '92bacd56-997d-5ef8-a9b3-49fdf1be37f1', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The subject line should reflect the purpose of the email so that the reader can prioritise it quickly. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('36a254f7-dc56-5c19-b6bf-f3f7e1a1b218', '92bacd56-997d-5ef8-a9b3-49fdf1be37f1', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The subject line should reflect the purpose of the email so that the reader can prioritise it quickly. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Тема письма должна отражать его цель, чтобы читатель мог быстро определить приоритет. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0187205c-ea08-58a8-b7eb-d110a137ade9', '92bacd56-997d-5ef8-a9b3-49fdf1be37f1', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"The subject line should reflect the purpose of the email so that the reader can prioritise it quickly.","translation":"Тема письма должна отражать его цель, чтобы читатель мог быстро определить приоритет.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Organising an Email"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('51a06e29-b911-5a95-b0d5-d44785d9d44c', '92bacd56-997d-5ef8-a9b3-49fdf1be37f1', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“subject line” means the short title of an email.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L1_B11","is_correct":true,"text":"the short title of an email"},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L1_B12","is_correct":false,"text":"the reason for writing"},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L1_B13","is_correct":false,"text":"a file sent with an email"}],"word":"subject line"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('35d215a8-2354-5e46-bfb0-f3ccf9b05dc6', '92bacd56-997d-5ef8-a9b3-49fdf1be37f1', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The subject line should reflect the purpose of the email so that the reader can prioritise it quickly.","explanation":"The missing business expression is “subject line”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"subject line","id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L1_B14","is_correct":true},{"audio_text":"attachment","id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L1_B15","is_correct":false},{"audio_text":"deadline","id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L1_B16","is_correct":false}],"sentence_template":"The ___ should reflect the purpose of the email so that the reader can prioritise it quickly."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d19d637b-1763-5663-bcf8-8d7f98b7e7b6', '92bacd56-997d-5ef8-a9b3-49fdf1be37f1', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"subject line","explanation":"The sentence requires “subject line” to express the intended business meaning.","hint_prefix":"sub","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ should reflect the purpose of the email so that the reader can prioritise it quickly."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('663d5d51-8203-5531-883c-224353ac7aa5', '92bacd56-997d-5ef8-a9b3-49fdf1be37f1', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"subject line","id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L1_B17","text":"subject line"},{"audio_text":"purpose","id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L1_B18","text":"purpose"},{"audio_text":"attachment","id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L1_B19","text":"attachment"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b64904a2-4d08-5206-8e99-6b44d210b41d', '92bacd56-997d-5ef8-a9b3-49fdf1be37f1', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Organising an Email”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L1_B20","is_correct":true,"text":"The subject line should reflect the purpose of the email so that the reader can prioritise it quickly."},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L1_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L1_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('cc2316d9-5d7b-5cf5-a70d-6c73b0aa0066', '92bacd56-997d-5ef8-a9b3-49fdf1be37f1', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('4427f9d0-60a6-57c7-b632-51117d7cb1e9', NULL, 'Обсуждение и уточнение', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Requests and Explanations","ru":"Обсуждение и уточнение"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('05303772-3fcf-5952-86f3-e01eb3ea2871', '4427f9d0-60a6-57c7-b632-51117d7cb1e9', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L2_B01","left":"subject line","right":"тема письма"},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L2_B02","left":"purpose","right":"цель"},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L2_B03","left":"attachment","right":"вложение"},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L2_B04","left":"action point","right":"пункт действий"},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L2_B05","left":"deadline","right":"срок"},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L2_B06","left":"confirm receipt","right":"подтвердить получение"},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L2_B07","left":"regarding","right":"касательно"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5d732cef-72f8-5996-b132-bcc57508fd4e', '4427f9d0-60a6-57c7-b632-51117d7cb1e9', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L2_B08","is_correct":true,"text":"I have attached the revised proposal and highlighted each action point with its deadline."},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L2_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L2_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c3d5f40c-bb1a-5d27-b918-b4fc4611ce84', '4427f9d0-60a6-57c7-b632-51117d7cb1e9', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I have attached the revised proposal and highlighted each action point with its deadline.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я приложил исправленное предложение и выделил каждый пункт действий вместе со сроком.","target_language":"en","word_bank":["I","have","attached","the","revised","proposal","and","highlighted","each","action","point","with","its","deadline."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('43b0cf49-ea6a-503c-ba1a-81c30258dd1b', '4427f9d0-60a6-57c7-b632-51117d7cb1e9', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"purpose","instruction":"Выберите подходящее слово.","options":["purpose","deadline","regarding"],"sentence_template":"I have attached the revised proposal and highlighted each action point with its deadline."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('123f948f-d6df-534e-b3db-9fdb16ee79d3', '4427f9d0-60a6-57c7-b632-51117d7cb1e9', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","have","attached","the","revised","proposal","and","highlighted","each","action","point","with","its","deadline."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["deadline.","its","with","point","action","each","highlighted","and","proposal","revised","the","attached","have","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c346fdc1-4993-56aa-87fd-c5341b494d0f', '4427f9d0-60a6-57c7-b632-51117d7cb1e9', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I have attached the revised proposal and highlighted each action point with its deadline. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7152d6c-d428-5016-b471-4886e6df21f0', '4427f9d0-60a6-57c7-b632-51117d7cb1e9', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I have attached the revised proposal and highlighted each action point with its deadline. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Я приложил исправленное предложение и выделил каждый пункт действий вместе со сроком. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('49bdeda5-90f0-5163-b8fe-9192c2afe306', '4427f9d0-60a6-57c7-b632-51117d7cb1e9', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"I have attached the revised proposal and highlighted each action point with its deadline.","translation":"Я приложил исправленное предложение и выделил каждый пункт действий вместе со сроком.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Requests and Explanations"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a1f2a07-1275-58d9-8178-8fd996b11905', '4427f9d0-60a6-57c7-b632-51117d7cb1e9', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“purpose” means the reason for writing.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L2_B11","is_correct":true,"text":"the reason for writing"},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L2_B12","is_correct":false,"text":"a file sent with an email"},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L2_B13","is_correct":false,"text":"a task agreed for completion"}],"word":"purpose"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5800c54-5eee-50c8-acb8-2b90c5756e93', '4427f9d0-60a6-57c7-b632-51117d7cb1e9', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have attached the revised proposal and highlighted each action point with its deadline.","explanation":"The missing business expression is “purpose”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"purpose","id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L2_B14","is_correct":true},{"audio_text":"action point","id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L2_B15","is_correct":false},{"audio_text":"confirm receipt","id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L2_B16","is_correct":false}],"sentence_template":"I have attached the revised proposal and highlighted each action point with its deadline."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('56538d57-0c1c-50fe-aed5-937f2b374b6b', '4427f9d0-60a6-57c7-b632-51117d7cb1e9', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"purpose","explanation":"The sentence requires “purpose” to express the intended business meaning.","hint_prefix":"pur","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I have attached the revised proposal and highlighted each action point with its deadline."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5df14b7a-25ad-5a89-95da-9f66e5bd007c', '4427f9d0-60a6-57c7-b632-51117d7cb1e9', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"subject line","id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L2_B17","text":"subject line"},{"audio_text":"purpose","id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L2_B18","text":"purpose"},{"audio_text":"attachment","id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L2_B19","text":"attachment"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7761d78e-03f4-5835-8b33-cdaeaa240e3c', '4427f9d0-60a6-57c7-b632-51117d7cb1e9', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Requests and Explanations”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L2_B20","is_correct":true,"text":"I have attached the revised proposal and highlighted each action point with its deadline."},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L2_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L2_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('cc2316d9-5d7b-5cf5-a70d-6c73b0aa0066', '4427f9d0-60a6-57c7-b632-51117d7cb1e9', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b0ba4220-330b-5783-9297-a94a196ce197', NULL, 'Решение и дальнейшие действия', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Follow-ups and Action Points","ru":"Решение и дальнейшие действия"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7b97f42-8b72-5547-909a-2e3f6e95db08', 'b0ba4220-330b-5783-9297-a94a196ce197', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L3_B01","left":"subject line","right":"тема письма"},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L3_B02","left":"purpose","right":"цель"},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L3_B03","left":"attachment","right":"вложение"},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L3_B04","left":"action point","right":"пункт действий"},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L3_B05","left":"deadline","right":"срок"},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L3_B06","left":"confirm receipt","right":"подтвердить получение"},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L3_B07","left":"regarding","right":"касательно"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dcd4ab45-45f7-5d38-82ab-c3f5d9be7571', 'b0ba4220-330b-5783-9297-a94a196ce197', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L3_B08","is_correct":true,"text":"Please confirm receipt of the documents and contact me if you have any questions regarding the figures."},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L3_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L3_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('79fe2543-2d69-5788-8c03-252d98e844e2', 'b0ba4220-330b-5783-9297-a94a196ce197', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Please confirm receipt of the documents and contact me if you have any questions regarding the figures.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Пожалуйста, подтвердите получение документов и свяжитесь со мной, если у вас есть вопросы касательно показателей.","target_language":"en","word_bank":["Please","confirm","receipt","of","the","documents","and","contact","me","if","you","have","any","questions","regarding","the","figures."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc2886e6-316a-5fc1-890b-8f2772d3f42c', 'b0ba4220-330b-5783-9297-a94a196ce197', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"attachment","instruction":"Выберите подходящее слово.","options":["attachment","confirm receipt","subject line"],"sentence_template":"Please confirm receipt of the documents and contact me if you have any questions regarding the figures."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b4b037e-b1f2-5daa-9a6e-8264b23f0b65', 'b0ba4220-330b-5783-9297-a94a196ce197', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Please","confirm","receipt","of","the","documents","and","contact","me","if","you","have","any","questions","regarding","the","figures."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["figures.","the","regarding","questions","any","have","you","if","me","contact","and","documents","the","of","receipt","confirm","Please"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ab912475-7f1d-5208-a682-bcab13dc3a09', 'b0ba4220-330b-5783-9297-a94a196ce197', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Please confirm receipt of the documents and contact me if you have any questions regarding the figures. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3083e85a-469f-578c-892e-b8d415efc19b', 'b0ba4220-330b-5783-9297-a94a196ce197', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Please confirm receipt of the documents and contact me if you have any questions regarding the figures. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Пожалуйста, подтвердите получение документов и свяжитесь со мной, если у вас есть вопросы касательно показателей. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('af576e83-94b7-5675-bc71-c31d16aa725e', 'b0ba4220-330b-5783-9297-a94a196ce197', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"Please confirm receipt of the documents and contact me if you have any questions regarding the figures.","translation":"Пожалуйста, подтвердите получение документов и свяжитесь со мной, если у вас есть вопросы касательно показателей.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Follow-ups and Action Points"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ff5ebd03-072b-5e11-ac01-7e317d19f8c6', 'b0ba4220-330b-5783-9297-a94a196ce197', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“attachment” means a file sent with an email.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L3_B11","is_correct":true,"text":"a file sent with an email"},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L3_B12","is_correct":false,"text":"a task agreed for completion"},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L3_B13","is_correct":false,"text":"the final completion time"}],"word":"attachment"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ec9894fb-30a7-5d43-94eb-fff3275f7cd8', 'b0ba4220-330b-5783-9297-a94a196ce197', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Please confirm receipt of the documents and contact me if you have any questions regarding the figures.","explanation":"The missing business expression is “attachment”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"attachment","id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L3_B14","is_correct":true},{"audio_text":"deadline","id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L3_B15","is_correct":false},{"audio_text":"regarding","id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L3_B16","is_correct":false}],"sentence_template":"Please confirm receipt of the documents and contact me if you have any questions regarding the figures."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('53284ca1-cd80-53f2-b0f3-55950481d549', 'b0ba4220-330b-5783-9297-a94a196ce197', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"attachment","explanation":"The sentence requires “attachment” to express the intended business meaning.","hint_prefix":"att","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Please confirm receipt of the documents and contact me if you have any questions regarding the figures."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c4a8f029-7a36-5e4b-a5ce-6918dfc1ecd8', 'b0ba4220-330b-5783-9297-a94a196ce197', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"subject line","id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L3_B17","text":"subject line"},{"audio_text":"purpose","id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L3_B18","text":"purpose"},{"audio_text":"attachment","id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L3_B19","text":"attachment"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f47900fe-fa13-574d-845d-28101685f187', 'b0ba4220-330b-5783-9297-a94a196ce197', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Follow-ups and Action Points”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L3_B20","is_correct":true,"text":"Please confirm receipt of the documents and contact me if you have any questions regarding the figures."},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L3_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_CLEAR_AND_EFFECTIVE_BUSINESS_EMAILS_L3_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('cc2316d9-5d7b-5cf5-a70d-6c73b0aa0066', 'b0ba4220-330b-5783-9297-a94a196ce197', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('70cc97ad-4d17-5315-ba41-9a4bab766ec5', 'en', 'subject line', 'тема письма', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('977a9069-68fa-5d84-a99c-82c23899818b', 'en', 'purpose', 'цель', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0fe26307-8371-51f1-8414-74e74af495c2', 'en', 'attachment', 'вложение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5ec5b7f0-8b70-5cd8-af67-0021f956b3f2', 'en', 'action point', 'пункт действий', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0de93d22-7462-5503-8943-a78d5d53563a', 'en', 'deadline', 'срок', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b7171aa7-9c57-5853-a261-337902eb9c64', 'en', 'confirm receipt', 'подтвердить получение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3b3b73bb-5121-5286-b0e4-14c4a6adb9b8', 'en', 'regarding', 'касательно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('70cc97ad-4d17-5315-ba41-9a4bab766ec5', 'en', 'subject line', 'тема письма', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('977a9069-68fa-5d84-a99c-82c23899818b', 'en', 'purpose', 'цель', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0fe26307-8371-51f1-8414-74e74af495c2', 'en', 'attachment', 'вложение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5ec5b7f0-8b70-5cd8-af67-0021f956b3f2', 'en', 'action point', 'пункт действий', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0de93d22-7462-5503-8943-a78d5d53563a', 'en', 'deadline', 'срок', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b7171aa7-9c57-5853-a261-337902eb9c64', 'en', 'confirm receipt', 'подтвердить получение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3b3b73bb-5121-5286-b0e4-14c4a6adb9b8', 'en', 'regarding', 'касательно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('70cc97ad-4d17-5315-ba41-9a4bab766ec5', 'en', 'subject line', 'тема письма', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('977a9069-68fa-5d84-a99c-82c23899818b', 'en', 'purpose', 'цель', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0fe26307-8371-51f1-8414-74e74af495c2', 'en', 'attachment', 'вложение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5ec5b7f0-8b70-5cd8-af67-0021f956b3f2', 'en', 'action point', 'пункт действий', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0de93d22-7462-5503-8943-a78d5d53563a', 'en', 'deadline', 'срок', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b7171aa7-9c57-5853-a261-337902eb9c64', 'en', 'confirm receipt', 'подтвердить получение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3b3b73bb-5121-5286-b0e4-14c4a6adb9b8', 'en', 'regarding', 'касательно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cc2316d9-5d7b-5cf5-a70d-6c73b0aa0066', id, '92bacd56-997d-5ef8-a9b3-49fdf1be37f1', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'subject line' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cc2316d9-5d7b-5cf5-a70d-6c73b0aa0066', id, '92bacd56-997d-5ef8-a9b3-49fdf1be37f1', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'purpose' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cc2316d9-5d7b-5cf5-a70d-6c73b0aa0066', id, '92bacd56-997d-5ef8-a9b3-49fdf1be37f1', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'attachment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cc2316d9-5d7b-5cf5-a70d-6c73b0aa0066', id, '92bacd56-997d-5ef8-a9b3-49fdf1be37f1', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'action point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cc2316d9-5d7b-5cf5-a70d-6c73b0aa0066', id, '92bacd56-997d-5ef8-a9b3-49fdf1be37f1', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'deadline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cc2316d9-5d7b-5cf5-a70d-6c73b0aa0066', id, '92bacd56-997d-5ef8-a9b3-49fdf1be37f1', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirm receipt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cc2316d9-5d7b-5cf5-a70d-6c73b0aa0066', id, '92bacd56-997d-5ef8-a9b3-49fdf1be37f1', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'regarding' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cc2316d9-5d7b-5cf5-a70d-6c73b0aa0066', id, '4427f9d0-60a6-57c7-b632-51117d7cb1e9', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'subject line' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cc2316d9-5d7b-5cf5-a70d-6c73b0aa0066', id, '4427f9d0-60a6-57c7-b632-51117d7cb1e9', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'purpose' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cc2316d9-5d7b-5cf5-a70d-6c73b0aa0066', id, '4427f9d0-60a6-57c7-b632-51117d7cb1e9', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'attachment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cc2316d9-5d7b-5cf5-a70d-6c73b0aa0066', id, '4427f9d0-60a6-57c7-b632-51117d7cb1e9', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'action point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cc2316d9-5d7b-5cf5-a70d-6c73b0aa0066', id, '4427f9d0-60a6-57c7-b632-51117d7cb1e9', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'deadline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cc2316d9-5d7b-5cf5-a70d-6c73b0aa0066', id, '4427f9d0-60a6-57c7-b632-51117d7cb1e9', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirm receipt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cc2316d9-5d7b-5cf5-a70d-6c73b0aa0066', id, '4427f9d0-60a6-57c7-b632-51117d7cb1e9', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'regarding' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cc2316d9-5d7b-5cf5-a70d-6c73b0aa0066', id, 'b0ba4220-330b-5783-9297-a94a196ce197', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'subject line' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cc2316d9-5d7b-5cf5-a70d-6c73b0aa0066', id, 'b0ba4220-330b-5783-9297-a94a196ce197', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'purpose' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cc2316d9-5d7b-5cf5-a70d-6c73b0aa0066', id, 'b0ba4220-330b-5783-9297-a94a196ce197', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'attachment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cc2316d9-5d7b-5cf5-a70d-6c73b0aa0066', id, 'b0ba4220-330b-5783-9297-a94a196ce197', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'action point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cc2316d9-5d7b-5cf5-a70d-6c73b0aa0066', id, 'b0ba4220-330b-5783-9297-a94a196ce197', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'deadline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cc2316d9-5d7b-5cf5-a70d-6c73b0aa0066', id, 'b0ba4220-330b-5783-9297-a94a196ce197', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirm receipt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cc2316d9-5d7b-5cf5-a70d-6c73b0aa0066', id, 'b0ba4220-330b-5783-9297-a94a196ce197', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'regarding' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
