-- Track: B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('765fff3d-1031-5f89-ae41-a6d9eeba57d6', 'B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS', 'Показатели, тенденции и обсуждение бюджета', 'Развивайте деловой английский уровня B1 по теме «Показатели, тенденции и обсуждение бюджета».', '{"en":"Figures, Trends and Budget Discussions","ru":"Показатели, тенденции и обсуждение бюджета"}'::jsonb, '{"en":"Develop B1 business English for figures, trends and budget discussions.","ru":"Развивайте деловой английский уровня B1 по теме «Показатели, тенденции и обсуждение бюджета»."}'::jsonb, 'en', 'B1', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('3eab9a21-9600-5970-b8ca-1242282128e6', NULL, 'Деловой контекст', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Presenting Figures","ru":"Деловой контекст"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('58da1bc3-a05a-58ff-bf24-84f1f50d8287', '3eab9a21-9600-5970-b8ca-1242282128e6', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L1_B01","left":"revenue","right":"выручка"},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L1_B02","left":"cost","right":"расход"},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L1_B03","left":"increase","right":"увеличение"},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L1_B04","left":"decline","right":"снижение"},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L1_B05","left":"forecast","right":"прогноз"},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L1_B06","left":"budget","right":"бюджет"},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L1_B07","left":"approximately","right":"приблизительно"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('00291c7c-026f-51cd-a32a-0354d842132a', '3eab9a21-9600-5970-b8ca-1242282128e6', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L1_B08","is_correct":true,"text":"Revenue increased by approximately twelve percent, while operating costs remained almost unchanged."},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L1_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L1_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5eb031b0-a822-5ff9-abb7-61ea4a71ca76', '3eab9a21-9600-5970-b8ca-1242282128e6', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Revenue increased by approximately twelve percent, while operating costs remained almost unchanged.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Выручка увеличилась приблизительно на двенадцать процентов, тогда как операционные расходы почти не изменились.","target_language":"en","word_bank":["Revenue","increased","by","approximately","twelve","percent,","while","operating","costs","remained","almost","unchanged."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7d07180-b581-5f72-8fad-9cd12aa4491e', '3eab9a21-9600-5970-b8ca-1242282128e6', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"revenue","instruction":"Выберите подходящее слово.","options":["revenue","decline","budget"],"sentence_template":"Revenue increased by approximately twelve percent, while operating costs remained almost unchanged."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76958782-068a-5524-b432-13f3af20c219', '3eab9a21-9600-5970-b8ca-1242282128e6', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Revenue","increased","by","approximately","twelve","percent,","while","operating","costs","remained","almost","unchanged."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["unchanged.","almost","remained","costs","operating","while","percent,","twelve","approximately","by","increased","Revenue"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('46ac9fd5-a387-56a0-8280-591c9996e9b1', '3eab9a21-9600-5970-b8ca-1242282128e6', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Revenue increased by approximately twelve percent, while operating costs remained almost unchanged. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('652acf09-8954-5084-aa61-8b223d726f52', '3eab9a21-9600-5970-b8ca-1242282128e6', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Revenue increased by approximately twelve percent, while operating costs remained almost unchanged. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Выручка увеличилась приблизительно на двенадцать процентов, тогда как операционные расходы почти не изменились. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('755cf026-ded3-5c37-beba-acf6ad2e4fb7', '3eab9a21-9600-5970-b8ca-1242282128e6', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"Revenue increased by approximately twelve percent, while operating costs remained almost unchanged.","translation":"Выручка увеличилась приблизительно на двенадцать процентов, тогда как операционные расходы почти не изменились.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Presenting Figures"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2623bf88-59cb-54c0-b36d-df2a8b28fc13', '3eab9a21-9600-5970-b8ca-1242282128e6', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“revenue” means income received by a business.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L1_B11","is_correct":true,"text":"income received by a business"},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L1_B12","is_correct":false,"text":"money required for something"},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L1_B13","is_correct":false,"text":"a rise in amount"}],"word":"revenue"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8aee2efe-7e24-5331-a96f-fef301f51042', '3eab9a21-9600-5970-b8ca-1242282128e6', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Revenue increased by approximately twelve percent, while operating costs remained almost unchanged.","explanation":"The missing business expression is “revenue”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"revenue","id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L1_B14","is_correct":true},{"audio_text":"increase","id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L1_B15","is_correct":false},{"audio_text":"forecast","id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L1_B16","is_correct":false}],"sentence_template":"Revenue increased by approximately twelve percent, while operating costs remained almost unchanged."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3f8b273d-11be-5892-8837-b366c0d807c7', '3eab9a21-9600-5970-b8ca-1242282128e6', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"revenue","explanation":"The sentence requires “revenue” to express the intended business meaning.","hint_prefix":"rev","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Revenue increased by approximately twelve percent, while operating costs remained almost unchanged."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b3e68788-2819-52fb-9caa-0e0fa751f88d', '3eab9a21-9600-5970-b8ca-1242282128e6', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"revenue","id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L1_B17","text":"revenue"},{"audio_text":"cost","id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L1_B18","text":"cost"},{"audio_text":"increase","id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L1_B19","text":"increase"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('46e773e0-21d6-5a13-8549-7830232fae4d', '3eab9a21-9600-5970-b8ca-1242282128e6', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Presenting Figures”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L1_B20","is_correct":true,"text":"Revenue increased by approximately twelve percent, while operating costs remained almost unchanged."},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L1_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L1_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('765fff3d-1031-5f89-ae41-a6d9eeba57d6', '3eab9a21-9600-5970-b8ca-1242282128e6', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('16a07d81-26ba-5e92-8d8c-0d2a4cef0c54', NULL, 'Обсуждение и уточнение', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Describing Trends","ru":"Обсуждение и уточнение"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c8ab2c79-7dba-59a5-beba-7d4ad70c1a36', '16a07d81-26ba-5e92-8d8c-0d2a4cef0c54', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L2_B01","left":"revenue","right":"выручка"},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L2_B02","left":"cost","right":"расход"},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L2_B03","left":"increase","right":"увеличение"},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L2_B04","left":"decline","right":"снижение"},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L2_B05","left":"forecast","right":"прогноз"},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L2_B06","left":"budget","right":"бюджет"},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L2_B07","left":"approximately","right":"приблизительно"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc73c0cf-3b43-54b5-af60-6ed52828cdd9', '16a07d81-26ba-5e92-8d8c-0d2a4cef0c54', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L2_B08","is_correct":true,"text":"The latest forecast predicts a slight decline unless demand improves during the final quarter."},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L2_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L2_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c3cf4472-222c-5fe6-973c-c811a56ca588', '16a07d81-26ba-5e92-8d8c-0d2a4cef0c54', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The latest forecast predicts a slight decline unless demand improves during the final quarter.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Последний прогноз предсказывает небольшое снижение, если спрос не улучшится в последнем квартале.","target_language":"en","word_bank":["The","latest","forecast","predicts","a","slight","decline","unless","demand","improves","during","the","final","quarter."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d79bf7eb-a837-595b-8d8e-40f98f5ee2c7', '16a07d81-26ba-5e92-8d8c-0d2a4cef0c54', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"cost","instruction":"Выберите подходящее слово.","options":["cost","forecast","approximately"],"sentence_template":"The latest forecast predicts a slight decline unless demand improves during the final quarter."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('38e59445-665e-5555-8391-5a7de2145afd', '16a07d81-26ba-5e92-8d8c-0d2a4cef0c54', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","latest","forecast","predicts","a","slight","decline","unless","demand","improves","during","the","final","quarter."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["quarter.","final","the","during","improves","demand","unless","decline","slight","a","predicts","forecast","latest","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('66e2172e-1263-5e19-81b0-ffe459fce2dd', '16a07d81-26ba-5e92-8d8c-0d2a4cef0c54', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The latest forecast predicts a slight decline unless demand improves during the final quarter. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c22b4b09-de06-554d-a29b-74f609d4b4d3', '16a07d81-26ba-5e92-8d8c-0d2a4cef0c54', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The latest forecast predicts a slight decline unless demand improves during the final quarter. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Последний прогноз предсказывает небольшое снижение, если спрос не улучшится в последнем квартале. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12d99ef8-f52f-5d35-9efb-1de366ef2098', '16a07d81-26ba-5e92-8d8c-0d2a4cef0c54', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"The latest forecast predicts a slight decline unless demand improves during the final quarter.","translation":"Последний прогноз предсказывает небольшое снижение, если спрос не улучшится в последнем квартале.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Describing Trends"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5906644d-0625-51d4-acc3-643737db3528', '16a07d81-26ba-5e92-8d8c-0d2a4cef0c54', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“cost” means money required for something.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L2_B11","is_correct":true,"text":"money required for something"},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L2_B12","is_correct":false,"text":"a rise in amount"},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L2_B13","is_correct":false,"text":"a fall in amount"}],"word":"cost"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d60f6cd5-3c12-5c13-93a5-a2dcfc590931', '16a07d81-26ba-5e92-8d8c-0d2a4cef0c54', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The latest forecast predicts a slight decline unless demand improves during the final quarter.","explanation":"The missing business expression is “cost”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"cost","id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L2_B14","is_correct":true},{"audio_text":"decline","id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L2_B15","is_correct":false},{"audio_text":"budget","id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L2_B16","is_correct":false}],"sentence_template":"The latest forecast predicts a slight decline unless demand improves during the final quarter."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b4537f0f-f216-51e2-a4f8-5179b92796c1', '16a07d81-26ba-5e92-8d8c-0d2a4cef0c54', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"cost","explanation":"The sentence requires “cost” to express the intended business meaning.","hint_prefix":"cos","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The latest forecast predicts a slight decline unless demand improves during the final quarter."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('51548329-2972-5c1a-9386-dd989720a5c6', '16a07d81-26ba-5e92-8d8c-0d2a4cef0c54', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"revenue","id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L2_B17","text":"revenue"},{"audio_text":"cost","id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L2_B18","text":"cost"},{"audio_text":"increase","id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L2_B19","text":"increase"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('112c6496-a3ef-5588-89cb-8936974a6d5d', '16a07d81-26ba-5e92-8d8c-0d2a4cef0c54', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Describing Trends”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L2_B20","is_correct":true,"text":"The latest forecast predicts a slight decline unless demand improves during the final quarter."},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L2_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L2_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('765fff3d-1031-5f89-ae41-a6d9eeba57d6', '16a07d81-26ba-5e92-8d8c-0d2a4cef0c54', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('d540644c-8992-55ea-a272-2735caf129d8', NULL, 'Решение и дальнейшие действия', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Discussing Budget Choices","ru":"Решение и дальнейшие действия"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5ed5ad27-c090-566b-b054-1f40e3d0e627', 'd540644c-8992-55ea-a272-2735caf129d8', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L3_B01","left":"revenue","right":"выручка"},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L3_B02","left":"cost","right":"расход"},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L3_B03","left":"increase","right":"увеличение"},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L3_B04","left":"decline","right":"снижение"},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L3_B05","left":"forecast","right":"прогноз"},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L3_B06","left":"budget","right":"бюджет"},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L3_B07","left":"approximately","right":"приблизительно"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f797b1cb-21df-5781-b63f-6437f2d862d9', 'd540644c-8992-55ea-a272-2735caf129d8', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L3_B08","is_correct":true,"text":"We revised the budget because the original plan did not include the additional training costs."},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L3_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L3_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d073a88-f137-5be8-b639-dc659d27e919', 'd540644c-8992-55ea-a272-2735caf129d8', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We revised the budget because the original plan did not include the additional training costs.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мы пересмотрели бюджет, потому что первоначальный план не включал дополнительные расходы на обучение.","target_language":"en","word_bank":["We","revised","the","budget","because","the","original","plan","did","not","include","the","additional","training","costs."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('690ab63c-2a1f-5180-a737-b45ad3bbb762', 'd540644c-8992-55ea-a272-2735caf129d8', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"increase","instruction":"Выберите подходящее слово.","options":["increase","budget","revenue"],"sentence_template":"We revised the budget because the original plan did not include the additional training costs."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b4961fbc-22a2-52ed-88e8-5a8b68431312', 'd540644c-8992-55ea-a272-2735caf129d8', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","revised","the","budget","because","the","original","plan","did","not","include","the","additional","training","costs."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["costs.","training","additional","the","include","not","did","plan","original","the","because","budget","the","revised","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('77b5c2f4-01f6-57e5-9328-919a33aa4d89', 'd540644c-8992-55ea-a272-2735caf129d8', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We revised the budget because the original plan did not include the additional training costs. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c4ad6f6-3197-5861-9de9-519d88e00259', 'd540644c-8992-55ea-a272-2735caf129d8', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We revised the budget because the original plan did not include the additional training costs. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Мы пересмотрели бюджет, потому что первоначальный план не включал дополнительные расходы на обучение. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e5ba2da-a24a-58d9-a22a-cd61901f04ba', 'd540644c-8992-55ea-a272-2735caf129d8', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"We revised the budget because the original plan did not include the additional training costs.","translation":"Мы пересмотрели бюджет, потому что первоначальный план не включал дополнительные расходы на обучение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Discussing Budget Choices"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b6eaf549-6734-5159-8962-2f6a12c1ead4', 'd540644c-8992-55ea-a272-2735caf129d8', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“increase” means a rise in amount.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L3_B11","is_correct":true,"text":"a rise in amount"},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L3_B12","is_correct":false,"text":"a fall in amount"},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L3_B13","is_correct":false,"text":"a prediction based on information"}],"word":"increase"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6cd9df4e-e1f4-5690-9c59-ca482217225f', 'd540644c-8992-55ea-a272-2735caf129d8', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We revised the budget because the original plan did not include the additional training costs.","explanation":"The missing business expression is “increase”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"increase","id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L3_B14","is_correct":true},{"audio_text":"forecast","id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L3_B15","is_correct":false},{"audio_text":"approximately","id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L3_B16","is_correct":false}],"sentence_template":"We revised the budget because the original plan did not include the additional training costs."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f828e350-991d-555d-b613-58b6ba732f15', 'd540644c-8992-55ea-a272-2735caf129d8', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"increase","explanation":"The sentence requires “increase” to express the intended business meaning.","hint_prefix":"inc","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We revised the budget because the original plan did not include the additional training costs."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc3f92a8-54a1-559f-afa2-161a348db859', 'd540644c-8992-55ea-a272-2735caf129d8', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"revenue","id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L3_B17","text":"revenue"},{"audio_text":"cost","id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L3_B18","text":"cost"},{"audio_text":"increase","id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L3_B19","text":"increase"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('10d47b93-4602-5c78-b98d-4b920ad1a3bb', 'd540644c-8992-55ea-a272-2735caf129d8', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Discussing Budget Choices”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L3_B20","is_correct":true,"text":"We revised the budget because the original plan did not include the additional training costs."},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L3_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_FIGURES_TRENDS_AND_BUDGET_DISCUSSIONS_L3_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('765fff3d-1031-5f89-ae41-a6d9eeba57d6', 'd540644c-8992-55ea-a272-2735caf129d8', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fd321f93-1774-59a4-b875-c80199a84df7', 'en', 'revenue', 'выручка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('05b494fe-cdbf-51db-a4dd-facc3396f805', 'en', 'cost', 'расход', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('69c4ac4a-6455-5d22-ba48-426a4410e01f', 'en', 'increase', 'увеличение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('512940e5-7873-55f0-8160-f2bb19862399', 'en', 'decline', 'снижение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('97e58801-2fb5-5f8e-81bc-834a70b52bc2', 'en', 'forecast', 'прогноз', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('87ec6bbe-ce2e-5dc2-a95e-a18830af09ab', 'en', 'budget', 'бюджет', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0be4a394-fcca-5d34-9f55-599b317f2648', 'en', 'approximately', 'приблизительно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fd321f93-1774-59a4-b875-c80199a84df7', 'en', 'revenue', 'выручка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('05b494fe-cdbf-51db-a4dd-facc3396f805', 'en', 'cost', 'расход', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('69c4ac4a-6455-5d22-ba48-426a4410e01f', 'en', 'increase', 'увеличение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('512940e5-7873-55f0-8160-f2bb19862399', 'en', 'decline', 'снижение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('97e58801-2fb5-5f8e-81bc-834a70b52bc2', 'en', 'forecast', 'прогноз', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('87ec6bbe-ce2e-5dc2-a95e-a18830af09ab', 'en', 'budget', 'бюджет', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0be4a394-fcca-5d34-9f55-599b317f2648', 'en', 'approximately', 'приблизительно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fd321f93-1774-59a4-b875-c80199a84df7', 'en', 'revenue', 'выручка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('05b494fe-cdbf-51db-a4dd-facc3396f805', 'en', 'cost', 'расход', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('69c4ac4a-6455-5d22-ba48-426a4410e01f', 'en', 'increase', 'увеличение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('512940e5-7873-55f0-8160-f2bb19862399', 'en', 'decline', 'снижение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('97e58801-2fb5-5f8e-81bc-834a70b52bc2', 'en', 'forecast', 'прогноз', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('87ec6bbe-ce2e-5dc2-a95e-a18830af09ab', 'en', 'budget', 'бюджет', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0be4a394-fcca-5d34-9f55-599b317f2648', 'en', 'approximately', 'приблизительно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '765fff3d-1031-5f89-ae41-a6d9eeba57d6', id, '3eab9a21-9600-5970-b8ca-1242282128e6', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'revenue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '765fff3d-1031-5f89-ae41-a6d9eeba57d6', id, '3eab9a21-9600-5970-b8ca-1242282128e6', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'cost' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '765fff3d-1031-5f89-ae41-a6d9eeba57d6', id, '3eab9a21-9600-5970-b8ca-1242282128e6', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'increase' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '765fff3d-1031-5f89-ae41-a6d9eeba57d6', id, '3eab9a21-9600-5970-b8ca-1242282128e6', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'decline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '765fff3d-1031-5f89-ae41-a6d9eeba57d6', id, '3eab9a21-9600-5970-b8ca-1242282128e6', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'forecast' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '765fff3d-1031-5f89-ae41-a6d9eeba57d6', id, '3eab9a21-9600-5970-b8ca-1242282128e6', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'budget' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '765fff3d-1031-5f89-ae41-a6d9eeba57d6', id, '3eab9a21-9600-5970-b8ca-1242282128e6', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'approximately' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '765fff3d-1031-5f89-ae41-a6d9eeba57d6', id, '16a07d81-26ba-5e92-8d8c-0d2a4cef0c54', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'revenue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '765fff3d-1031-5f89-ae41-a6d9eeba57d6', id, '16a07d81-26ba-5e92-8d8c-0d2a4cef0c54', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'cost' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '765fff3d-1031-5f89-ae41-a6d9eeba57d6', id, '16a07d81-26ba-5e92-8d8c-0d2a4cef0c54', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'increase' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '765fff3d-1031-5f89-ae41-a6d9eeba57d6', id, '16a07d81-26ba-5e92-8d8c-0d2a4cef0c54', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'decline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '765fff3d-1031-5f89-ae41-a6d9eeba57d6', id, '16a07d81-26ba-5e92-8d8c-0d2a4cef0c54', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'forecast' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '765fff3d-1031-5f89-ae41-a6d9eeba57d6', id, '16a07d81-26ba-5e92-8d8c-0d2a4cef0c54', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'budget' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '765fff3d-1031-5f89-ae41-a6d9eeba57d6', id, '16a07d81-26ba-5e92-8d8c-0d2a4cef0c54', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'approximately' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '765fff3d-1031-5f89-ae41-a6d9eeba57d6', id, 'd540644c-8992-55ea-a272-2735caf129d8', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'revenue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '765fff3d-1031-5f89-ae41-a6d9eeba57d6', id, 'd540644c-8992-55ea-a272-2735caf129d8', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'cost' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '765fff3d-1031-5f89-ae41-a6d9eeba57d6', id, 'd540644c-8992-55ea-a272-2735caf129d8', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'increase' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '765fff3d-1031-5f89-ae41-a6d9eeba57d6', id, 'd540644c-8992-55ea-a272-2735caf129d8', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'decline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '765fff3d-1031-5f89-ae41-a6d9eeba57d6', id, 'd540644c-8992-55ea-a272-2735caf129d8', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'forecast' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '765fff3d-1031-5f89-ae41-a6d9eeba57d6', id, 'd540644c-8992-55ea-a272-2735caf129d8', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'budget' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '765fff3d-1031-5f89-ae41-a6d9eeba57d6', id, 'd540644c-8992-55ea-a272-2735caf129d8', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'approximately' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
