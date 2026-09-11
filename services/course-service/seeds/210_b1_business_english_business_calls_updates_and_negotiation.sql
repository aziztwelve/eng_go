-- Track: B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('b8e90785-2413-5131-aab1-40795bbf5d6d', 'B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION', 'Деловые звонки, обновления и переговоры', 'Развивайте деловой английский уровня B1 по теме «Деловые звонки, обновления и переговоры».', '{"en":"Business Calls, Updates and Negotiation","ru":"Деловые звонки, обновления и переговоры"}'::jsonb, '{"en":"Develop B1 business English for business calls, updates and negotiation.","ru":"Развивайте деловой английский уровня B1 по теме «Деловые звонки, обновления и переговоры»."}'::jsonb, 'en', 'B1', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('36752157-30ca-5ff2-a56e-0d665aa5eb70', NULL, 'Деловой контекст', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Managing a Business Call","ru":"Деловой контекст"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e0a3f871-aa72-5414-9ae1-835de090d8fb', '36752157-30ca-5ff2-a56e-0d665aa5eb70', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L1_B01","left":"put through","right":"соединить"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L1_B02","left":"progress update","right":"отчёт о ходе работы"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L1_B03","left":"negotiate","right":"вести переговоры"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L1_B04","left":"compromise","right":"компромисс"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L1_B05","left":"clarify","right":"уточнять"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L1_B06","left":"propose","right":"предлагать"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L1_B07","left":"confirm","right":"подтверждать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5506da50-2ab2-5671-abec-ea7178181c9a', '36752157-30ca-5ff2-a56e-0d665aa5eb70', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L1_B08","is_correct":true,"text":"Could you put me through to the project manager so that I can clarify the delivery schedule?"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L1_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L1_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('913f0421-7ec1-5719-9640-7731e2477fee', '36752157-30ca-5ff2-a56e-0d665aa5eb70', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Could you put me through to the project manager so that I can clarify the delivery schedule?","instruction":"Соберите перевод.","source_language":"ru","source_text":"Не могли бы вы соединить меня с руководителем проекта, чтобы я мог уточнить график доставки?","target_language":"en","word_bank":["Could","you","put","me","through","to","the","project","manager","so","that","I","can","clarify","the","delivery","schedule?"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0dc0e0f1-f1c8-5c1a-8dbf-8d5accd5f62f', '36752157-30ca-5ff2-a56e-0d665aa5eb70', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"put through","instruction":"Выберите подходящее слово.","options":["put through","compromise","propose"],"sentence_template":"Could you put me through to the project manager so that I can clarify the delivery schedule?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0111465e-bf9e-540a-9c13-63ab25dd618a', '36752157-30ca-5ff2-a56e-0d665aa5eb70', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Could","you","put","me","through","to","the","project","manager","so","that","I","can","clarify","the","delivery","schedule?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["schedule?","delivery","the","clarify","can","I","that","so","manager","project","the","to","through","me","put","you","Could"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8872cc6d-cee1-5438-9c52-7660f158547a', '36752157-30ca-5ff2-a56e-0d665aa5eb70', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Could you put me through to the project manager so that I can clarify the delivery schedule? The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7651483e-dcf4-54c7-b3da-57e67f1ac56a', '36752157-30ca-5ff2-a56e-0d665aa5eb70', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Could you put me through to the project manager so that I can clarify the delivery schedule? The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Не могли бы вы соединить меня с руководителем проекта, чтобы я мог уточнить график доставки? Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d901355a-ccec-554f-b3f7-22e2cf39d366', '36752157-30ca-5ff2-a56e-0d665aa5eb70', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"Could you put me through to the project manager so that I can clarify the delivery schedule?","translation":"Не могли бы вы соединить меня с руководителем проекта, чтобы я мог уточнить график доставки?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Managing a Business Call"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c6134e75-8d9d-59b8-9f74-e77da8290fa4', '36752157-30ca-5ff2-a56e-0d665aa5eb70', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“put through” means connect a caller to another person.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L1_B11","is_correct":true,"text":"connect a caller to another person"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L1_B12","is_correct":false,"text":"new information about progress"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L1_B13","is_correct":false,"text":"discuss terms to reach agreement"}],"word":"put through"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('593045f5-c563-5b83-970f-077262f42a3b', '36752157-30ca-5ff2-a56e-0d665aa5eb70', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Could you put me through to the project manager so that I can clarify the delivery schedule?","explanation":"The missing business expression is “put through”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"put through","id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L1_B14","is_correct":true},{"audio_text":"negotiate","id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L1_B15","is_correct":false},{"audio_text":"clarify","id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L1_B16","is_correct":false}],"sentence_template":"Could you put me through to the project manager so that I can clarify the delivery schedule?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce2e0f46-01be-539c-8e72-6b64d18b6125', '36752157-30ca-5ff2-a56e-0d665aa5eb70', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"put through","explanation":"The sentence requires “put through” to express the intended business meaning.","hint_prefix":"put","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Could you put me through to the project manager so that I can clarify the delivery schedule?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1f937242-bc5c-5d16-a810-404d1c96ee19', '36752157-30ca-5ff2-a56e-0d665aa5eb70', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"put through","id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L1_B17","text":"put through"},{"audio_text":"progress update","id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L1_B18","text":"progress update"},{"audio_text":"negotiate","id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L1_B19","text":"negotiate"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7c5decb8-f668-5ce9-985e-11cedfdac1bf', '36752157-30ca-5ff2-a56e-0d665aa5eb70', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Managing a Business Call”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L1_B20","is_correct":true,"text":"Could you put me through to the project manager so that I can clarify the delivery schedule?"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L1_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L1_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b8e90785-2413-5131-aab1-40795bbf5d6d', '36752157-30ca-5ff2-a56e-0d665aa5eb70', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2b9201f7-b8e6-5785-8017-e7dbf3660c55', NULL, 'Обсуждение и уточнение', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Giving Updates by Phone","ru":"Обсуждение и уточнение"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4c7cb512-fcbe-549c-a812-438e1c5b2bd0', '2b9201f7-b8e6-5785-8017-e7dbf3660c55', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L2_B01","left":"put through","right":"соединить"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L2_B02","left":"progress update","right":"отчёт о ходе работы"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L2_B03","left":"negotiate","right":"вести переговоры"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L2_B04","left":"compromise","right":"компромисс"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L2_B05","left":"clarify","right":"уточнять"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L2_B06","left":"propose","right":"предлагать"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L2_B07","left":"confirm","right":"подтверждать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('346e786c-3a5b-54e5-980e-04940e14db21', '2b9201f7-b8e6-5785-8017-e7dbf3660c55', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L2_B08","is_correct":true,"text":"During the progress update, the supplier explained why the order had been delayed."},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L2_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L2_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('407958df-c9ee-5750-8443-1ab149b20690', '2b9201f7-b8e6-5785-8017-e7dbf3660c55', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"During the progress update, the supplier explained why the order had been delayed.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Во время отчёта о ходе работы поставщик объяснил, почему заказ был задержан.","target_language":"en","word_bank":["During","the","progress","update,","the","supplier","explained","why","the","order","had","been","delayed."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('44e3a479-ba7f-5e1a-a237-abe83c6b2443', '2b9201f7-b8e6-5785-8017-e7dbf3660c55', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"progress update","instruction":"Выберите подходящее слово.","options":["progress update","clarify","confirm"],"sentence_template":"During the ___, the supplier explained why the order had been delayed."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9203e24e-3faa-53e7-9da9-74376445202b', '2b9201f7-b8e6-5785-8017-e7dbf3660c55', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["During","the","progress","update,","the","supplier","explained","why","the","order","had","been","delayed."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["delayed.","been","had","order","the","why","explained","supplier","the","update,","progress","the","During"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('538ff8e9-da50-5573-bde4-242ab29bde5e', '2b9201f7-b8e6-5785-8017-e7dbf3660c55', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"During the progress update, the supplier explained why the order had been delayed. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c06e2744-11cb-59fd-97f5-19d978bb6f7a', '2b9201f7-b8e6-5785-8017-e7dbf3660c55', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"During the progress update, the supplier explained why the order had been delayed. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Во время отчёта о ходе работы поставщик объяснил, почему заказ был задержан. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c51a7988-6262-5f90-9d6a-4b091911678c', '2b9201f7-b8e6-5785-8017-e7dbf3660c55', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"During the progress update, the supplier explained why the order had been delayed.","translation":"Во время отчёта о ходе работы поставщик объяснил, почему заказ был задержан.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Giving Updates by Phone"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2e74d0b4-c9dc-5bc6-88ce-83ac292b39e0', '2b9201f7-b8e6-5785-8017-e7dbf3660c55', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“progress update” means new information about progress.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L2_B11","is_correct":true,"text":"new information about progress"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L2_B12","is_correct":false,"text":"discuss terms to reach agreement"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L2_B13","is_correct":false,"text":"an agreement involving concessions"}],"word":"progress update"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('40d3a823-f4f6-52de-b6d3-e8834e4a4ede', '2b9201f7-b8e6-5785-8017-e7dbf3660c55', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"During the progress update, the supplier explained why the order had been delayed.","explanation":"The missing business expression is “progress update”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"progress update","id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L2_B14","is_correct":true},{"audio_text":"compromise","id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L2_B15","is_correct":false},{"audio_text":"propose","id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L2_B16","is_correct":false}],"sentence_template":"During the ___, the supplier explained why the order had been delayed."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('77118dcf-a75d-5abf-b168-aaed9c83533a', '2b9201f7-b8e6-5785-8017-e7dbf3660c55', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"progress update","explanation":"The sentence requires “progress update” to express the intended business meaning.","hint_prefix":"pro","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"During the ___, the supplier explained why the order had been delayed."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('803b752e-71f2-55f6-ba37-41155ac17844', '2b9201f7-b8e6-5785-8017-e7dbf3660c55', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"put through","id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L2_B17","text":"put through"},{"audio_text":"progress update","id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L2_B18","text":"progress update"},{"audio_text":"negotiate","id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L2_B19","text":"negotiate"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2eb8f3eb-0935-5922-b09f-1b6e0ce11258', '2b9201f7-b8e6-5785-8017-e7dbf3660c55', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Giving Updates by Phone”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L2_B20","is_correct":true,"text":"During the progress update, the supplier explained why the order had been delayed."},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L2_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L2_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b8e90785-2413-5131-aab1-40795bbf5d6d', '2b9201f7-b8e6-5785-8017-e7dbf3660c55', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('387e0fc5-3907-5eb1-9796-11d4d82ee089', NULL, 'Решение и дальнейшие действия', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Negotiating Simple Changes","ru":"Решение и дальнейшие действия"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('79f93485-ad4b-5e19-b795-cc74cac9e4de', '387e0fc5-3907-5eb1-9796-11d4d82ee089', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L3_B01","left":"put through","right":"соединить"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L3_B02","left":"progress update","right":"отчёт о ходе работы"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L3_B03","left":"negotiate","right":"вести переговоры"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L3_B04","left":"compromise","right":"компромисс"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L3_B05","left":"clarify","right":"уточнять"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L3_B06","left":"propose","right":"предлагать"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L3_B07","left":"confirm","right":"подтверждать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd25cbb0-9e83-5862-8aef-3b405499e643', '387e0fc5-3907-5eb1-9796-11d4d82ee089', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L3_B08","is_correct":true,"text":"We negotiated a compromise after the client proposed a later deadline and confirmed the revised terms."},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L3_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L3_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('62a33652-979e-5546-8601-1cd149f6a1f3', '387e0fc5-3907-5eb1-9796-11d4d82ee089', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We negotiated a compromise after the client proposed a later deadline and confirmed the revised terms.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мы достигли компромисса на переговорах после того, как клиент предложил более поздний срок и подтвердил изменённые условия.","target_language":"en","word_bank":["We","negotiated","a","compromise","after","the","client","proposed","a","later","deadline","and","confirmed","the","revised","terms."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d37d524-9fe7-5d70-aff9-9dccaeff8983', '387e0fc5-3907-5eb1-9796-11d4d82ee089', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"negotiate","instruction":"Выберите подходящее слово.","options":["negotiate","propose","put through"],"sentence_template":"We ___d a compromise after the client proposed a later deadline and confirmed the revised terms."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('348a4d51-b806-5949-b7ad-c85ffc7ae1a0', '387e0fc5-3907-5eb1-9796-11d4d82ee089', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","negotiated","a","compromise","after","the","client","proposed","a","later","deadline","and","confirmed","the","revised","terms."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["terms.","revised","the","confirmed","and","deadline","later","a","proposed","client","the","after","compromise","a","negotiated","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2db9f9f4-ebf1-54b4-a325-38470f634fae', '387e0fc5-3907-5eb1-9796-11d4d82ee089', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We negotiated a compromise after the client proposed a later deadline and confirmed the revised terms. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('60a613e2-9dfb-5d2c-a622-b7b658c8cc86', '387e0fc5-3907-5eb1-9796-11d4d82ee089', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We negotiated a compromise after the client proposed a later deadline and confirmed the revised terms. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Мы достигли компромисса на переговорах после того, как клиент предложил более поздний срок и подтвердил изменённые условия. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e3551335-77e2-5cf7-924c-4ecee8f2bff3', '387e0fc5-3907-5eb1-9796-11d4d82ee089', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"We negotiated a compromise after the client proposed a later deadline and confirmed the revised terms.","translation":"Мы достигли компромисса на переговорах после того, как клиент предложил более поздний срок и подтвердил изменённые условия.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Negotiating Simple Changes"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f5285ec7-b0e9-5a48-8213-62c16b9986b0', '387e0fc5-3907-5eb1-9796-11d4d82ee089', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“negotiate” means discuss terms to reach agreement.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L3_B11","is_correct":true,"text":"discuss terms to reach agreement"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L3_B12","is_correct":false,"text":"an agreement involving concessions"},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L3_B13","is_correct":false,"text":"make information clearer"}],"word":"negotiate"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('308f1a41-c82e-509f-b6f3-61061ff26b10', '387e0fc5-3907-5eb1-9796-11d4d82ee089', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We negotiated a compromise after the client proposed a later deadline and confirmed the revised terms.","explanation":"The missing business expression is “negotiate”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"negotiate","id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L3_B14","is_correct":true},{"audio_text":"clarify","id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L3_B15","is_correct":false},{"audio_text":"confirm","id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L3_B16","is_correct":false}],"sentence_template":"We ___d a compromise after the client proposed a later deadline and confirmed the revised terms."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a6de3a3d-6d7b-5e20-9a53-c19a7d58aba4', '387e0fc5-3907-5eb1-9796-11d4d82ee089', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"negotiate","explanation":"The sentence requires “negotiate” to express the intended business meaning.","hint_prefix":"neg","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We ___d a compromise after the client proposed a later deadline and confirmed the revised terms."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89030e3f-6c46-5b68-9b2a-5be5c2252d7e', '387e0fc5-3907-5eb1-9796-11d4d82ee089', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"put through","id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L3_B17","text":"put through"},{"audio_text":"progress update","id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L3_B18","text":"progress update"},{"audio_text":"negotiate","id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L3_B19","text":"negotiate"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cfdf682f-f440-5e21-9921-0ad100d99d37', '387e0fc5-3907-5eb1-9796-11d4d82ee089', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Negotiating Simple Changes”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L3_B20","is_correct":true,"text":"We negotiated a compromise after the client proposed a later deadline and confirmed the revised terms."},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L3_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_BUSINESS_CALLS_UPDATES_AND_NEGOTIATION_L3_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b8e90785-2413-5131-aab1-40795bbf5d6d', '387e0fc5-3907-5eb1-9796-11d4d82ee089', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ad07dea1-ee9a-59ad-93c2-b5c5c5810480', 'en', 'put through', 'соединить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('16485392-7183-5dbc-b14f-53806faf3e58', 'en', 'progress update', 'отчёт о ходе работы', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d298e635-4c83-541f-9e4a-54d75c6ae4fd', 'en', 'negotiate', 'вести переговоры', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('35db5830-e5b4-560a-9d02-624f8ba64c82', 'en', 'compromise', 'компромисс', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('076f2a6e-d040-58e4-b99b-6c8f8b0e8b7c', 'en', 'clarify', 'уточнять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('66ee7ace-5ac3-5765-aff8-d62d1ec1093b', 'en', 'propose', 'предлагать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67b7d91b-1d2a-5380-87b4-36cc0aec0a14', 'en', 'confirm', 'подтверждать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ad07dea1-ee9a-59ad-93c2-b5c5c5810480', 'en', 'put through', 'соединить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('16485392-7183-5dbc-b14f-53806faf3e58', 'en', 'progress update', 'отчёт о ходе работы', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d298e635-4c83-541f-9e4a-54d75c6ae4fd', 'en', 'negotiate', 'вести переговоры', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('35db5830-e5b4-560a-9d02-624f8ba64c82', 'en', 'compromise', 'компромисс', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('076f2a6e-d040-58e4-b99b-6c8f8b0e8b7c', 'en', 'clarify', 'уточнять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('66ee7ace-5ac3-5765-aff8-d62d1ec1093b', 'en', 'propose', 'предлагать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67b7d91b-1d2a-5380-87b4-36cc0aec0a14', 'en', 'confirm', 'подтверждать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ad07dea1-ee9a-59ad-93c2-b5c5c5810480', 'en', 'put through', 'соединить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('16485392-7183-5dbc-b14f-53806faf3e58', 'en', 'progress update', 'отчёт о ходе работы', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d298e635-4c83-541f-9e4a-54d75c6ae4fd', 'en', 'negotiate', 'вести переговоры', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('35db5830-e5b4-560a-9d02-624f8ba64c82', 'en', 'compromise', 'компромисс', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('076f2a6e-d040-58e4-b99b-6c8f8b0e8b7c', 'en', 'clarify', 'уточнять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('66ee7ace-5ac3-5765-aff8-d62d1ec1093b', 'en', 'propose', 'предлагать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67b7d91b-1d2a-5380-87b4-36cc0aec0a14', 'en', 'confirm', 'подтверждать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b8e90785-2413-5131-aab1-40795bbf5d6d', id, '36752157-30ca-5ff2-a56e-0d665aa5eb70', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'put through' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b8e90785-2413-5131-aab1-40795bbf5d6d', id, '36752157-30ca-5ff2-a56e-0d665aa5eb70', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'progress update' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b8e90785-2413-5131-aab1-40795bbf5d6d', id, '36752157-30ca-5ff2-a56e-0d665aa5eb70', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'negotiate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b8e90785-2413-5131-aab1-40795bbf5d6d', id, '36752157-30ca-5ff2-a56e-0d665aa5eb70', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'compromise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b8e90785-2413-5131-aab1-40795bbf5d6d', id, '36752157-30ca-5ff2-a56e-0d665aa5eb70', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'clarify' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b8e90785-2413-5131-aab1-40795bbf5d6d', id, '36752157-30ca-5ff2-a56e-0d665aa5eb70', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'propose' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b8e90785-2413-5131-aab1-40795bbf5d6d', id, '36752157-30ca-5ff2-a56e-0d665aa5eb70', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b8e90785-2413-5131-aab1-40795bbf5d6d', id, '2b9201f7-b8e6-5785-8017-e7dbf3660c55', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'put through' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b8e90785-2413-5131-aab1-40795bbf5d6d', id, '2b9201f7-b8e6-5785-8017-e7dbf3660c55', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'progress update' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b8e90785-2413-5131-aab1-40795bbf5d6d', id, '2b9201f7-b8e6-5785-8017-e7dbf3660c55', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'negotiate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b8e90785-2413-5131-aab1-40795bbf5d6d', id, '2b9201f7-b8e6-5785-8017-e7dbf3660c55', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'compromise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b8e90785-2413-5131-aab1-40795bbf5d6d', id, '2b9201f7-b8e6-5785-8017-e7dbf3660c55', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'clarify' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b8e90785-2413-5131-aab1-40795bbf5d6d', id, '2b9201f7-b8e6-5785-8017-e7dbf3660c55', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'propose' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b8e90785-2413-5131-aab1-40795bbf5d6d', id, '2b9201f7-b8e6-5785-8017-e7dbf3660c55', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b8e90785-2413-5131-aab1-40795bbf5d6d', id, '387e0fc5-3907-5eb1-9796-11d4d82ee089', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'put through' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b8e90785-2413-5131-aab1-40795bbf5d6d', id, '387e0fc5-3907-5eb1-9796-11d4d82ee089', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'progress update' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b8e90785-2413-5131-aab1-40795bbf5d6d', id, '387e0fc5-3907-5eb1-9796-11d4d82ee089', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'negotiate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b8e90785-2413-5131-aab1-40795bbf5d6d', id, '387e0fc5-3907-5eb1-9796-11d4d82ee089', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'compromise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b8e90785-2413-5131-aab1-40795bbf5d6d', id, '387e0fc5-3907-5eb1-9796-11d4d82ee089', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'clarify' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b8e90785-2413-5131-aab1-40795bbf5d6d', id, '387e0fc5-3907-5eb1-9796-11d4d82ee089', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'propose' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b8e90785-2413-5131-aab1-40795bbf5d6d', id, '387e0fc5-3907-5eb1-9796-11d4d82ee089', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
