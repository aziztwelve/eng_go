-- Track: A1_BUSINESS_ENGLISH_SIMPLE_MEETINGS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('8dbc6351-972c-55d4-807a-378d2e576b8d', 'A1_BUSINESS_ENGLISH_SIMPLE_MEETINGS', 'Простые деловые встречи', 'Научитесь начинать простую встречу, высказывать идеи и завершать обсуждение.', 'en', 'A1', '', ARRAY['business_english']::text[], true, 14, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('6650bf91-5458-50f6-8e8d-85b6067881f5', NULL, 'Начало встречи', 'Научиться приветствовать участников и начинать простую деловую встречу.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('430fb582-c2c3-5729-9a99-82f2ad550c8d', '6650bf91-5458-50f6-8e8d-85b6067881f5', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BESM_L1_MP_P1","left":"meeting","right":"встреча"},{"id":"BESM_L1_MP_P2","left":"start","right":"начинать"},{"id":"BESM_L1_MP_P3","left":"everyone","right":"все"},{"id":"BESM_L1_MP_P4","left":"Good morning","right":"Доброе утро"},{"id":"BESM_L1_MP_P5","left":"Please sit down","right":"Пожалуйста, садитесь"},{"id":"BESM_L1_MP_P6","left":"We are ready","right":"Мы готовы"},{"id":"BESM_L1_MP_P7","left":"Let us begin","right":"Давайте начнём"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3927d82e-9f12-534c-b949-8fc11b00f37a', '6650bf91-5458-50f6-8e8d-85b6067881f5', 'quiz', 'Проверьте себя', '{"explanation":"“Let us begin” clearly starts the meeting.","instruction":"Выберите правильный ответ.","options":[{"id":"BESM_L1_Q_A","is_correct":true,"text":"Let us begin."},{"id":"BESM_L1_Q_B","is_correct":false,"text":"Good night, everyone."},{"id":"BESM_L1_Q_C","is_correct":false,"text":"I am a meeting."}],"question":"What phrase can start a meeting?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('02e8d4f6-e189-54c0-8749-96edd36c6179', '6650bf91-5458-50f6-8e8d-85b6067881f5', 'translate', 'Переведите', '{"correct_translation":"Let us begin the meeting.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Давайте начнём встречу.","target_language":"en","word_bank":["meeting.","the","begin","us","Let"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0abff549-13b5-5f3e-8309-c331838991b4', '6650bf91-5458-50f6-8e8d-85b6067881f5', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"ready","instruction":"Выберите подходящее слово.","options":["ready","office","client"],"sentence_template":"We are ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('55719a09-1b10-5500-ba11-ca75ef5741a6', '6650bf91-5458-50f6-8e8d-85b6067881f5', 'tap_words', 'Соберите фразу', '{"correct_words":["Good","morning,","everyone."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["morning,","Good","everyone."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('38f23831-a429-5acf-9f2f-b03118adea3d', '6650bf91-5458-50f6-8e8d-85b6067881f5', 'listening', 'Послушайте', '{"audio_text":"Good morning, everyone. Let us begin.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6374ef39-e8bb-5571-ba8a-2929e3af4e01', '6650bf91-5458-50f6-8e8d-85b6067881f5', 'listening_shadowing', 'Повторите', '{"audio_text":"Good morning. Please sit down. We are ready to start.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Доброе утро. Пожалуйста, садитесь. Мы готовы начать."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('28cda117-aee1-5f7a-a15e-21c94fc655e3', '6650bf91-5458-50f6-8e8d-85b6067881f5', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Good morning, everyone.","translation":"Доброе утро, все.","type":"dialogue"},{"character":"Team","text":"Good morning.","translation":"Доброе утро.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Let us begin the meeting."},{"is_correct":false,"text":"The meeting is a phone."}],"text":"What should the manager say next?","type":"choice"}],"title":"The Morning Meeting"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9733750d-ef01-5c76-b870-17414275d6e8', '6650bf91-5458-50f6-8e8d-85b6067881f5', 'choose_definition', 'Определение', '{"explanation":"A meeting is a planned time when people talk about work.","instruction":"Выберите значение.","language":"en","options":[{"id":"BESM_L1_D_A","is_correct":true,"text":"A planned time when people talk about work"},{"id":"BESM_L1_D_B","is_correct":false,"text":"A card with contact details"},{"id":"BESM_L1_D_C","is_correct":false,"text":"A department that helps customers"}],"word":"meeting"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c54cac80-395a-5846-9511-5e305390abb4', '6650bf91-5458-50f6-8e8d-85b6067881f5', 'listen_choose_word', 'Слово', '{"audio_text":"Let us begin.","explanation":"The missing word is “begin.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"begin","id":"BESM_L1_LW_A","is_correct":true},{"audio_text":"client","id":"BESM_L1_LW_B","is_correct":false},{"audio_text":"card","id":"BESM_L1_LW_C","is_correct":false}],"sentence_template":"Let us ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('173f98b3-4422-53af-a626-64ff601d6f6a', '6650bf91-5458-50f6-8e8d-85b6067881f5', 'missing_word', 'Впишите', '{"correct_answer":"ready","explanation":"The complete sentence is “We are ready.”","hint_prefix":"re","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We are ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6b1a50d9-bebf-5a04-a6e7-3a6391f8f968', '6650bf91-5458-50f6-8e8d-85b6067881f5', 'match_pairs_voice', 'Звук', '{"explanation":"Match each meeting phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"meeting","id":"BESM_L1_VM_P1","text":"meeting"},{"audio_text":"Please sit down","id":"BESM_L1_VM_P2","text":"Please sit down"},{"audio_text":"Let us begin","id":"BESM_L1_VM_P3","text":"Let us begin"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('36327837-2b2c-5ec0-9494-2f6d1ce4406a', '6650bf91-5458-50f6-8e8d-85b6067881f5', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Manager","text":"Good morning, everyone. Are you ready?"}],"explanation":"“Yes, we are ready” naturally confirms that the team can begin.","instruction":"Ответьте.","options":[{"id":"BESM_L1_C_A","is_correct":true,"text":"Yes, we are ready."},{"id":"BESM_L1_C_B","is_correct":false,"text":"We are from morning."},{"id":"BESM_L1_C_C","is_correct":false,"text":"My meeting is a chair."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8dbc6351-972c-55d4-807a-378d2e576b8d', '6650bf91-5458-50f6-8e8d-85b6067881f5', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('d66a04d6-b209-5663-ba5d-6ac7efb26d54', NULL, 'Простые идеи и мнения', 'Научиться высказывать простую идею и соглашаться на встрече.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('743697bb-b042-5c08-90a6-6154ae6f2393', 'd66a04d6-b209-5663-ba5d-6ac7efb26d54', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BESM_L2_MP_P1","left":"idea","right":"идея"},{"id":"BESM_L2_MP_P2","left":"plan","right":"план"},{"id":"BESM_L2_MP_P3","left":"I think","right":"Я думаю"},{"id":"BESM_L2_MP_P4","left":"I agree","right":"Я согласен"},{"id":"BESM_L2_MP_P5","left":"That is good","right":"Это хорошо"},{"id":"BESM_L2_MP_P6","left":"Yes, that is right","right":"Да, это верно"},{"id":"BESM_L2_MP_P7","left":"What do you think?","right":"Что вы думаете?"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ec44669d-3ad0-51ae-b022-f18ca02145a3', 'd66a04d6-b209-5663-ba5d-6ac7efb26d54', 'quiz', 'Проверьте себя', '{"explanation":"“I agree” means you have the same opinion.","instruction":"Выберите правильный ответ.","options":[{"id":"BESM_L2_Q_A","is_correct":true,"text":"I agree."},{"id":"BESM_L2_Q_B","is_correct":false,"text":"Let us sit."},{"id":"BESM_L2_Q_C","is_correct":false,"text":"I am a plan."}],"question":"Which phrase shows agreement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f45a9bac-39f5-5717-9a64-aac81dc077cf', 'd66a04d6-b209-5663-ba5d-6ac7efb26d54', 'translate', 'Переведите', '{"correct_translation":"I agree with this plan.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я согласен с этим планом.","target_language":"en","word_bank":["plan.","this","with","agree","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('40ea719f-9083-5c93-a9ee-8881a59f0f42', 'd66a04d6-b209-5663-ba5d-6ac7efb26d54', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"idea","instruction":"Выберите подходящее слово.","options":["idea","meeting","office"],"sentence_template":"That is a good ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('45a6a14d-832f-51da-bc4d-b02b6213744d', 'd66a04d6-b209-5663-ba5d-6ac7efb26d54', 'tap_words', 'Соберите фразу', '{"correct_words":["What","do","you","think?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["do","think?","you","What"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('433e8968-14ea-53b6-a1b0-98ba13e9eb38', 'd66a04d6-b209-5663-ba5d-6ac7efb26d54', 'listening', 'Послушайте', '{"audio_text":"I think this is a good plan.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ffe25867-b8e7-53b7-aca6-c396c5033376', 'd66a04d6-b209-5663-ba5d-6ac7efb26d54', 'listening_shadowing', 'Повторите', '{"audio_text":"That is a good idea. Yes, I agree.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Это хорошая идея. Да, я согласен."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('040b2718-f5a6-5b26-b30b-7c3d9bc0d596', 'd66a04d6-b209-5663-ba5d-6ac7efb26d54', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Eva","text":"I think we need a new plan.","translation":"Я думаю, нам нужен новый план.","type":"dialogue"},{"character":"Tom","text":"Yes, I agree.","translation":"Да, я согласен.","type":"dialogue"},{"options":[{"is_correct":true,"text":"What do you think, Anna?"},{"is_correct":false,"text":"Is the plan a manager?"}],"text":"What should Eva ask?","type":"choice"}],"title":"A New Plan"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3e18b86f-5679-5b95-8cc1-d4e809e8277f', 'd66a04d6-b209-5663-ba5d-6ac7efb26d54', 'choose_definition', 'Определение', '{"explanation":"“Agree” means to have the same opinion.","instruction":"Выберите значение.","language":"en","options":[{"id":"BESM_L2_D_A","is_correct":true,"text":"To have the same opinion"},{"id":"BESM_L2_D_B","is_correct":false,"text":"To begin a meeting"},{"id":"BESM_L2_D_C","is_correct":false,"text":"To write an email"}],"word":"agree"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('76fc001b-b5fe-54ce-9592-909ef9d0d772', 'd66a04d6-b209-5663-ba5d-6ac7efb26d54', 'listen_choose_word', 'Слово', '{"audio_text":"That is a good idea.","explanation":"The missing word is “idea.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"idea","id":"BESM_L2_LW_A","is_correct":true},{"audio_text":"client","id":"BESM_L2_LW_B","is_correct":false},{"audio_text":"morning","id":"BESM_L2_LW_C","is_correct":false}],"sentence_template":"That is a good ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b1a9a9c2-9d24-529b-9cc6-a1b7f593526b', 'd66a04d6-b209-5663-ba5d-6ac7efb26d54', 'missing_word', 'Впишите', '{"correct_answer":"agree","explanation":"The complete phrase is “I agree.”","hint_prefix":"ag","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('11f4dfd3-7513-53c9-91ec-b6a84f9964c1', 'd66a04d6-b209-5663-ba5d-6ac7efb26d54', 'match_pairs_voice', 'Звук', '{"explanation":"Match each meeting phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"idea","id":"BESM_L2_VM_P1","text":"idea"},{"audio_text":"I agree","id":"BESM_L2_VM_P2","text":"I agree"},{"audio_text":"What do you think?","id":"BESM_L2_VM_P3","text":"What do you think?"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('46e2c06b-7839-5f25-89b8-235d397b2253', 'd66a04d6-b209-5663-ba5d-6ac7efb26d54', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"I think this is a good plan."}],"explanation":"“Yes, I agree” is a natural response to the opinion.","instruction":"Ответьте.","options":[{"id":"BESM_L2_C_A","is_correct":true,"text":"Yes, I agree."},{"id":"BESM_L2_C_B","is_correct":false,"text":"I am from a plan."},{"id":"BESM_L2_C_C","is_correct":false,"text":"My idea is five years old."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8dbc6351-972c-55d4-807a-378d2e576b8d', 'd66a04d6-b209-5663-ba5d-6ac7efb26d54', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('a9cb17e5-95a7-5fe3-8a4d-6424d6c37dfb', NULL, 'Завершение встречи', 'Научиться подводить простой итог и завершать деловую встречу.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('19d09529-ed24-5eeb-b7e1-524f08399d9b', 'a9cb17e5-95a7-5fe3-8a4d-6424d6c37dfb', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BESM_L3_MP_P1","left":"finish","right":"заканчивать"},{"id":"BESM_L3_MP_P2","left":"next step","right":"следующий шаг"},{"id":"BESM_L3_MP_P3","left":"task","right":"задача"},{"id":"BESM_L3_MP_P4","left":"today","right":"сегодня"},{"id":"BESM_L3_MP_P5","left":"tomorrow","right":"завтра"},{"id":"BESM_L3_MP_P6","left":"Thank you, everyone","right":"Спасибо всем"},{"id":"BESM_L3_MP_P7","left":"See you tomorrow","right":"Увидимся завтра"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4f008734-73ed-5d10-bf7d-ab0dd35ba66e', 'a9cb17e5-95a7-5fe3-8a4d-6424d6c37dfb', 'quiz', 'Проверьте себя', '{"explanation":"“Thank you, everyone” politely thanks all participants at the end.","instruction":"Выберите правильный ответ.","options":[{"id":"BESM_L3_Q_A","is_correct":true,"text":"Thank you, everyone."},{"id":"BESM_L3_Q_B","is_correct":false,"text":"Please start yesterday."},{"id":"BESM_L3_Q_C","is_correct":false,"text":"I am tomorrow."}],"question":"What phrase politely closes a meeting?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a9b0d7eb-537c-5b7e-abbe-f16ed2fb07c4', 'a9cb17e5-95a7-5fe3-8a4d-6424d6c37dfb', 'translate', 'Переведите', '{"correct_translation":"The meeting is finished.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Встреча закончена.","target_language":"en","word_bank":["finished.","is","meeting","The"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9d3e97b4-3dae-588f-9ae4-b594c42719f8', 'a9cb17e5-95a7-5fe3-8a4d-6424d6c37dfb', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"tomorrow","instruction":"Выберите подходящее слово.","options":["tomorrow","task","plan"],"sentence_template":"See you ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ef4c56e6-93b6-52dc-ba6c-329a8762cac1', 'a9cb17e5-95a7-5fe3-8a4d-6424d6c37dfb', 'tap_words', 'Соберите фразу', '{"correct_words":["Thank","you,","everyone."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["everyone.","you,","Thank"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('24a59c47-1160-5b2a-8ad0-507630e2380a', 'a9cb17e5-95a7-5fe3-8a4d-6424d6c37dfb', 'listening', 'Послушайте', '{"audio_text":"Thank you, everyone. The meeting is finished.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9b65b638-4371-5e89-9cca-a8f65e4d24b5', 'a9cb17e5-95a7-5fe3-8a4d-6424d6c37dfb', 'listening_shadowing', 'Повторите', '{"audio_text":"Our next step is clear. See you tomorrow.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Наш следующий шаг понятен. Увидимся завтра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4d7ded30-120a-5e68-bd23-2e8cd4aae6f5', 'a9cb17e5-95a7-5fe3-8a4d-6424d6c37dfb', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Our next task is ready.","translation":"Наша следующая задача готова.","type":"dialogue"},{"character":"Team","text":"Great.","translation":"Отлично.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Thank you, everyone. See you tomorrow."},{"is_correct":false,"text":"The task is a business card."}],"text":"What should the manager say?","type":"choice"}],"title":"The Meeting Ends"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8137dd34-ad38-5244-9cb1-209919d3b8e7', 'a9cb17e5-95a7-5fe3-8a4d-6424d6c37dfb', 'choose_definition', 'Определение', '{"explanation":"A task is a piece of work that needs to be done.","instruction":"Выберите значение.","language":"en","options":[{"id":"BESM_L3_D_A","is_correct":true,"text":"A piece of work that needs to be done"},{"id":"BESM_L3_D_B","is_correct":false,"text":"A person who attends a meeting"},{"id":"BESM_L3_D_C","is_correct":false,"text":"A place where a company works"}],"word":"task"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('355600fc-a3eb-5555-b1c3-ed3e3a71a1d9', 'a9cb17e5-95a7-5fe3-8a4d-6424d6c37dfb', 'listen_choose_word', 'Слово', '{"audio_text":"See you tomorrow.","explanation":"The missing word is “tomorrow.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"tomorrow","id":"BESM_L3_LW_A","is_correct":true},{"audio_text":"client","id":"BESM_L3_LW_B","is_correct":false},{"audio_text":"begin","id":"BESM_L3_LW_C","is_correct":false}],"sentence_template":"See you ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9c0285cf-a6ab-5fa4-8b79-790e89dafdaa', 'a9cb17e5-95a7-5fe3-8a4d-6424d6c37dfb', 'missing_word', 'Впишите', '{"correct_answer":"finished","explanation":"The complete sentence is “The meeting is finished.”","hint_prefix":"fi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The meeting is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('23a5868d-6132-5aa8-97e8-5779ded19ef5', 'a9cb17e5-95a7-5fe3-8a4d-6424d6c37dfb', 'match_pairs_voice', 'Звук', '{"explanation":"Match each meeting phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"next step","id":"BESM_L3_VM_P1","text":"next step"},{"audio_text":"Thank you, everyone","id":"BESM_L3_VM_P2","text":"Thank you, everyone"},{"audio_text":"See you tomorrow","id":"BESM_L3_VM_P3","text":"See you tomorrow"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8af43594-dca6-5fce-970c-8ee038b4cbc9', 'a9cb17e5-95a7-5fe3-8a4d-6424d6c37dfb', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Manager","text":"That is all for today. Thank you, everyone."}],"explanation":"This is a polite and natural reply at the end of a meeting.","instruction":"Ответьте.","options":[{"id":"BESM_L3_C_A","is_correct":true,"text":"Thank you. See you tomorrow."},{"id":"BESM_L3_C_B","is_correct":false,"text":"I am all for today years old."},{"id":"BESM_L3_C_C","is_correct":false,"text":"My meeting is a client."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8dbc6351-972c-55d4-807a-378d2e576b8d', 'a9cb17e5-95a7-5fe3-8a4d-6424d6c37dfb', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('837b9a5c-fc04-5e07-b8ef-e67aee76a4c3', 'en', 'meeting', 'встреча', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('25f5d5e2-ee11-53ba-9552-e25e8bedd962', 'en', 'start', 'начинать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cd1e368e-9ec9-5435-a536-a805eae2e2c5', 'en', 'everyone', 'все', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('777dc687-03b4-5f9c-8375-8f436101a373', 'en', 'Good morning', 'Доброе утро', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9f2e8c61-73ee-5a8b-aa0b-cfac42ce939d', 'en', 'Please sit down', 'Пожалуйста, садитесь', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('363afe44-a3cc-5b71-bfef-5c4fd1e19b0a', 'en', 'We are ready', 'Мы готовы', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1b89b18f-c58f-524e-bf86-cb255dfacfb7', 'en', 'Let us begin', 'Давайте начнём', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('697dc9a9-f1e0-5601-8487-23cd39be105f', 'en', 'idea', 'идея', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1eb851bc-8bdd-5b10-bb1a-76cb3d9c23be', 'en', 'plan', 'план', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('11146658-3652-500d-b8a2-a6bed4f25b54', 'en', 'I think', 'Я думаю', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f76f4753-d5a7-50a5-882c-69321d5d5167', 'en', 'I agree', 'Я согласен', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0ec5e62a-9aec-57d9-a24c-a22399f3884d', 'en', 'That is good', 'Это хорошо', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5b909b2a-69d3-520f-9a6e-d16f9fbc2b76', 'en', 'Yes, that is right', 'Да, это верно', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fe83f7a1-07d8-5370-a9f4-3a7acd225077', 'en', 'What do you think?', 'Что вы думаете?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f97478e3-6aa0-54f6-844c-a7b07158c905', 'en', 'finish', 'заканчивать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f493effe-75fe-5aa6-bd65-d498034aae13', 'en', 'next step', 'следующий шаг', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ee85a326-24d1-5401-8e13-4ff874079055', 'en', 'task', 'задача', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f63596fa-e1a7-596d-839b-65eddde8d504', 'en', 'today', 'сегодня', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0d87e567-9d2d-55d9-ba3e-587332645ba9', 'en', 'tomorrow', 'завтра', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b55cad11-af9c-52c5-b195-00afad47b9fe', 'en', 'Thank you, everyone', 'Спасибо всем', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c0b8498b-4ef5-5f2a-b302-3a21d9a85e7c', 'en', 'See you tomorrow', 'Увидимся завтра', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8dbc6351-972c-55d4-807a-378d2e576b8d', id, '6650bf91-5458-50f6-8e8d-85b6067881f5', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'meeting' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8dbc6351-972c-55d4-807a-378d2e576b8d', id, '6650bf91-5458-50f6-8e8d-85b6067881f5', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'start' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8dbc6351-972c-55d4-807a-378d2e576b8d', id, '6650bf91-5458-50f6-8e8d-85b6067881f5', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'everyone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8dbc6351-972c-55d4-807a-378d2e576b8d', id, '6650bf91-5458-50f6-8e8d-85b6067881f5', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'Good morning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8dbc6351-972c-55d4-807a-378d2e576b8d', id, '6650bf91-5458-50f6-8e8d-85b6067881f5', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'Please sit down' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8dbc6351-972c-55d4-807a-378d2e576b8d', id, '6650bf91-5458-50f6-8e8d-85b6067881f5', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'We are ready' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8dbc6351-972c-55d4-807a-378d2e576b8d', id, '6650bf91-5458-50f6-8e8d-85b6067881f5', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'Let us begin' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8dbc6351-972c-55d4-807a-378d2e576b8d', id, 'd66a04d6-b209-5663-ba5d-6ac7efb26d54', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'idea' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8dbc6351-972c-55d4-807a-378d2e576b8d', id, 'd66a04d6-b209-5663-ba5d-6ac7efb26d54', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'plan' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8dbc6351-972c-55d4-807a-378d2e576b8d', id, 'd66a04d6-b209-5663-ba5d-6ac7efb26d54', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'I think' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8dbc6351-972c-55d4-807a-378d2e576b8d', id, 'd66a04d6-b209-5663-ba5d-6ac7efb26d54', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'I agree' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8dbc6351-972c-55d4-807a-378d2e576b8d', id, 'd66a04d6-b209-5663-ba5d-6ac7efb26d54', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'That is good' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8dbc6351-972c-55d4-807a-378d2e576b8d', id, 'd66a04d6-b209-5663-ba5d-6ac7efb26d54', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'Yes, that is right' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8dbc6351-972c-55d4-807a-378d2e576b8d', id, 'd66a04d6-b209-5663-ba5d-6ac7efb26d54', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'What do you think?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8dbc6351-972c-55d4-807a-378d2e576b8d', id, 'a9cb17e5-95a7-5fe3-8a4d-6424d6c37dfb', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'finish' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8dbc6351-972c-55d4-807a-378d2e576b8d', id, 'a9cb17e5-95a7-5fe3-8a4d-6424d6c37dfb', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'next step' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8dbc6351-972c-55d4-807a-378d2e576b8d', id, 'a9cb17e5-95a7-5fe3-8a4d-6424d6c37dfb', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'task' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8dbc6351-972c-55d4-807a-378d2e576b8d', id, 'a9cb17e5-95a7-5fe3-8a4d-6424d6c37dfb', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'today' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8dbc6351-972c-55d4-807a-378d2e576b8d', id, 'a9cb17e5-95a7-5fe3-8a4d-6424d6c37dfb', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'tomorrow' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8dbc6351-972c-55d4-807a-378d2e576b8d', id, 'a9cb17e5-95a7-5fe3-8a4d-6424d6c37dfb', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'Thank you, everyone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8dbc6351-972c-55d4-807a-378d2e576b8d', id, 'a9cb17e5-95a7-5fe3-8a4d-6424d6c37dfb', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'See you tomorrow' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
