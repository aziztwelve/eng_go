-- Track: A1_LISTENING_SHADOWING_DAILY_ENGLISH_PHRASES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('0df6291f-0d7a-5117-8077-7012a137291c', 'A1_LISTENING_SHADOWING_DAILY_ENGLISH_PHRASES', 'Повседневные английские фразы', 'Научитесь понимать на слух и повторять полезные вежливые фразы, просьбы и короткие ответы.', 'en', 'A1', '', ARRAY['listening_shadowing']::text[], true, 18, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('1d0d26b8-cb4b-57ee-90fc-f6a989014505', NULL, 'Вежливые повседневные фразы', 'Научиться узнавать на слух и повторять основные вежливые фразы.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a4900c3d-f95d-5485-99c2-13f103a70658', '1d0d26b8-cb4b-57ee-90fc-f6a989014505', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"LSDEP_L1_MP_P1","left":"Please","right":"Пожалуйста"},{"id":"LSDEP_L1_MP_P2","left":"Thank you","right":"Спасибо"},{"id":"LSDEP_L1_MP_P3","left":"You are welcome","right":"Пожалуйста"},{"id":"LSDEP_L1_MP_P4","left":"Excuse me","right":"Извините"},{"id":"LSDEP_L1_MP_P5","left":"I am sorry","right":"Мне жаль"},{"id":"LSDEP_L1_MP_P6","left":"That is okay","right":"Всё в порядке"},{"id":"LSDEP_L1_MP_P7","left":"Have a nice day","right":"Хорошего дня"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('2373f570-cd85-5561-bc89-fb279441e835', '1d0d26b8-cb4b-57ee-90fc-f6a989014505', 'quiz', 'Проверьте себя', '{"explanation":"“Thank you” is used to show that you are grateful.","instruction":"Выберите правильный ответ.","options":[{"id":"LSDEP_L1_Q_A","is_correct":true,"text":"Thank you."},{"id":"LSDEP_L1_Q_B","is_correct":false,"text":"Excuse me."},{"id":"LSDEP_L1_Q_C","is_correct":false,"text":"I am sorry."}],"question":"What do you say after someone helps you?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0994a4b0-6757-52d6-a2bc-27f538775c9a', '1d0d26b8-cb4b-57ee-90fc-f6a989014505', 'translate', 'Переведите', '{"correct_translation":"Thank you for your help.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Спасибо за помощь.","target_language":"en","word_bank":["help.","your","for","you","Thank"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b4ccbc56-c226-508e-8daf-ede362c56a2a', '1d0d26b8-cb4b-57ee-90fc-f6a989014505', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"Excuse","instruction":"Выберите подходящее слово.","options":["Excuse","Welcome","Sorry"],"sentence_template":"___ me, please."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ecb03b8f-06cf-5c2d-995a-9acd2546315a', '1d0d26b8-cb4b-57ee-90fc-f6a989014505', 'tap_words', 'Соберите фразу', '{"correct_words":["Have","a","nice","day."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["nice","a","day.","Have"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('fcfac92b-29ce-57df-9fe7-1e1a48f04ca4', '1d0d26b8-cb4b-57ee-90fc-f6a989014505', 'listening', 'Послушайте', '{"audio_text":"Thank you very much.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('72f06f45-7e84-5136-8820-6d8da2836a27', '1d0d26b8-cb4b-57ee-90fc-f6a989014505', 'listening_shadowing', 'Повторите', '{"audio_text":"Thank you for your help. Have a nice day.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Спасибо за помощь. Хорошего дня."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('243dc4de-b77e-53e5-a920-fa7e450652a0', '1d0d26b8-cb4b-57ee-90fc-f6a989014505', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Sam","text":"Excuse me.","translation":"Извините.","type":"dialogue"},{"character":"Mia","text":"Yes?","translation":"Да?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Can you open the door, please?"},{"is_correct":false,"text":"Good night the door."}],"text":"What should Sam say?","type":"choice"}],"title":"At the Door"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6e653758-b9d4-56c7-9d30-a90ed43da8e6', '1d0d26b8-cb4b-57ee-90fc-f6a989014505', 'choose_definition', 'Определение', '{"explanation":"“Sorry” is used when you feel bad about something.","instruction":"Выберите значение.","language":"en","options":[{"id":"LSDEP_L1_D_A","is_correct":true,"text":"A word used to say you feel bad about something"},{"id":"LSDEP_L1_D_B","is_correct":false,"text":"A phrase used to ask a name"},{"id":"LSDEP_L1_D_C","is_correct":false,"text":"A phrase used to greet someone"}],"word":"sorry"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('1ea71d10-4c77-5cd6-bb14-37f96f738020', '1d0d26b8-cb4b-57ee-90fc-f6a989014505', 'listen_choose_word', 'Слово', '{"audio_text":"Thank you.","explanation":"The missing word is “you.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"you","id":"LSDEP_L1_LW_A","is_correct":true},{"audio_text":"please","id":"LSDEP_L1_LW_B","is_correct":false},{"audio_text":"day","id":"LSDEP_L1_LW_C","is_correct":false}],"sentence_template":"Thank ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a939e76f-06a7-533f-8c15-ec472adffa89', '1d0d26b8-cb4b-57ee-90fc-f6a989014505', 'missing_word', 'Впишите', '{"correct_answer":"welcome","explanation":"The complete phrase is “You are welcome.”","hint_prefix":"we","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You are ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('252f1407-8b2e-5b11-8c0b-d4177b884ce9', '1d0d26b8-cb4b-57ee-90fc-f6a989014505', 'match_pairs_voice', 'Звук', '{"explanation":"Match each daily phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"Please","id":"LSDEP_L1_VM_P1","text":"Please"},{"audio_text":"Thank you","id":"LSDEP_L1_VM_P2","text":"Thank you"},{"audio_text":"Excuse me","id":"LSDEP_L1_VM_P3","text":"Excuse me"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b14b3c00-9a3a-55d1-b76d-18e812532132', '1d0d26b8-cb4b-57ee-90fc-f6a989014505', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Ella","text":"Thank you for your help."}],"explanation":"“You are welcome” is a natural reply to “Thank you.”","instruction":"Ответьте.","options":[{"id":"LSDEP_L1_C_A","is_correct":true,"text":"You are welcome."},{"id":"LSDEP_L1_C_B","is_correct":false,"text":"I am a help."},{"id":"LSDEP_L1_C_C","is_correct":false,"text":"Good morning, sorry."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0df6291f-0d7a-5117-8077-7012a137291c', '1d0d26b8-cb4b-57ee-90fc-f6a989014505', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('b3cc5af9-2e96-5fcf-8b23-c0f980947066', NULL, 'Просьбы и помощь', 'Научиться понимать и повторять простые просьбы о помощи.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9990fbe4-c5be-5e84-8dc1-bdc17714d248', 'b3cc5af9-2e96-5fcf-8b23-c0f980947066', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"LSDEP_L2_MP_P1","left":"Can you help me?","right":"Вы можете мне помочь?"},{"id":"LSDEP_L2_MP_P2","left":"Please wait","right":"Пожалуйста, подождите"},{"id":"LSDEP_L2_MP_P3","left":"Come here","right":"Подойдите сюда"},{"id":"LSDEP_L2_MP_P4","left":"Look at this","right":"Посмотрите на это"},{"id":"LSDEP_L2_MP_P5","left":"Listen, please","right":"Послушайте, пожалуйста"},{"id":"LSDEP_L2_MP_P6","left":"One moment","right":"Одну минуту"},{"id":"LSDEP_L2_MP_P7","left":"Of course","right":"Конечно"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7e8eb0b9-1ee9-5632-a7ea-146eb720551e', 'b3cc5af9-2e96-5fcf-8b23-c0f980947066', 'quiz', 'Проверьте себя', '{"explanation":"“Of course” is a natural positive reply to a request for help.","instruction":"Выберите правильный ответ.","options":[{"id":"LSDEP_L2_Q_A","is_correct":true,"text":"Of course."},{"id":"LSDEP_L2_Q_B","is_correct":false,"text":"Good night."},{"id":"LSDEP_L2_Q_C","is_correct":false,"text":"My name is help."}],"question":"What is a helpful reply to “Can you help me?”"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f8a953a4-ffbc-5315-b2f1-ef5ac17e2435', 'b3cc5af9-2e96-5fcf-8b23-c0f980947066', 'translate', 'Переведите', '{"correct_translation":"Please wait one moment.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Пожалуйста, подождите одну минуту.","target_language":"en","word_bank":["moment.","one","wait","Please"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('52f4ed5b-6b49-5959-8823-aac923dc884e', 'b3cc5af9-2e96-5fcf-8b23-c0f980947066', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"help","instruction":"Выберите подходящее слово.","options":["help","welcome","night"],"sentence_template":"Can you ___ me?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c4aa5363-f59f-532b-b9af-9d083d0ed6f5', 'b3cc5af9-2e96-5fcf-8b23-c0f980947066', 'tap_words', 'Соберите фразу', '{"correct_words":["Look","at","this."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["this.","at","Look"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4a5dbc3d-8c42-50bd-b2ef-d52acba4e4fd', 'b3cc5af9-2e96-5fcf-8b23-c0f980947066', 'listening', 'Послушайте', '{"audio_text":"Please wait one moment.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e2f333fd-9032-5aba-855b-3f0d35d07d15', 'b3cc5af9-2e96-5fcf-8b23-c0f980947066', 'listening_shadowing', 'Повторите', '{"audio_text":"Can you help me, please? Of course.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Вы можете мне помочь, пожалуйста? Конечно."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('13e3e77c-a24e-5430-be0a-947b587fdbe8', 'b3cc5af9-2e96-5fcf-8b23-c0f980947066', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Nina","text":"Excuse me. Can you help me?","translation":"Извините. Вы можете мне помочь?","type":"dialogue"},{"character":"Ben","text":"Of course.","translation":"Конечно.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I need this book."},{"is_correct":false,"text":"My book is a moment."}],"text":"What should Nina say next?","type":"choice"}],"title":"Finding a Book"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8e33a2d3-f6f6-58e6-b58f-4af6c0c72502', 'b3cc5af9-2e96-5fcf-8b23-c0f980947066', 'choose_definition', 'Определение', '{"explanation":"“Wait” means to stay until something happens.","instruction":"Выберите значение.","language":"en","options":[{"id":"LSDEP_L2_D_A","is_correct":true,"text":"To stay until something happens"},{"id":"LSDEP_L2_D_B","is_correct":false,"text":"To move closer to someone"},{"id":"LSDEP_L2_D_C","is_correct":false,"text":"To use your ears carefully"}],"word":"wait"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('899a5cb3-a6aa-5be8-9870-7ef27d8ff743', 'b3cc5af9-2e96-5fcf-8b23-c0f980947066', 'listen_choose_word', 'Слово', '{"audio_text":"Please wait one moment.","explanation":"The missing word is “wait.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"wait","id":"LSDEP_L2_LW_A","is_correct":true},{"audio_text":"sorry","id":"LSDEP_L2_LW_B","is_correct":false},{"audio_text":"day","id":"LSDEP_L2_LW_C","is_correct":false}],"sentence_template":"Please ___ one moment."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d457dc38-ed71-5ee6-ac2a-443d932ef35a', 'b3cc5af9-2e96-5fcf-8b23-c0f980947066', 'missing_word', 'Впишите', '{"correct_answer":"help","explanation":"The complete question is “Can you help me?”","hint_prefix":"he","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Can you ___ me?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9c954d6d-0832-5d98-b5fa-285a4e86d779', 'b3cc5af9-2e96-5fcf-8b23-c0f980947066', 'match_pairs_voice', 'Звук', '{"explanation":"Match each daily phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"Please wait","id":"LSDEP_L2_VM_P1","text":"Please wait"},{"audio_text":"Come here","id":"LSDEP_L2_VM_P2","text":"Come here"},{"audio_text":"Look at this","id":"LSDEP_L2_VM_P3","text":"Look at this"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0e4cb81a-a1df-5b2c-a2c3-b9e7be2c5692', 'b3cc5af9-2e96-5fcf-8b23-c0f980947066', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Tom","text":"Can you help me, please?"}],"explanation":"“Of course” is a natural and helpful response.","instruction":"Ответьте.","options":[{"id":"LSDEP_L2_C_A","is_correct":true,"text":"Of course."},{"id":"LSDEP_L2_C_B","is_correct":false,"text":"I am from please."},{"id":"LSDEP_L2_C_C","is_correct":false,"text":"My help is Monday."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0df6291f-0d7a-5117-8077-7012a137291c', 'b3cc5af9-2e96-5fcf-8b23-c0f980947066', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('171c3dc5-58ca-54db-a9a6-875e9d5bd326', NULL, 'Короткие повседневные ответы', 'Научиться понимать и повторять короткие естественные ответы в повседневных ситуациях.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('60c4d2fa-913a-566a-9a6f-8b1ed0eebd20', '171c3dc5-58ca-54db-a9a6-875e9d5bd326', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"LSDEP_L3_MP_P1","left":"Okay","right":"Хорошо"},{"id":"LSDEP_L3_MP_P2","left":"Yes, please","right":"Да, пожалуйста"},{"id":"LSDEP_L3_MP_P3","left":"No, thank you","right":"Нет, спасибо"},{"id":"LSDEP_L3_MP_P4","left":"Of course","right":"Конечно"},{"id":"LSDEP_L3_MP_P5","left":"Maybe later","right":"Может быть, позже"},{"id":"LSDEP_L3_MP_P6","left":"I do not know","right":"Я не знаю"},{"id":"LSDEP_L3_MP_P7","left":"That is great","right":"Это замечательно"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3ad58917-1989-52fd-ab44-c7279d635c22', '171c3dc5-58ca-54db-a9a6-875e9d5bd326', 'quiz', 'Проверьте себя', '{"explanation":"“No, thank you” is a polite way to refuse an offer.","instruction":"Выберите правильный ответ.","options":[{"id":"LSDEP_L3_Q_A","is_correct":true,"text":"No, thank you."},{"id":"LSDEP_L3_Q_B","is_correct":false,"text":"Yes, please."},{"id":"LSDEP_L3_Q_C","is_correct":false,"text":"That is great."}],"question":"What is a polite way to refuse something?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('2d0aa587-9364-5836-9073-9fa7ac21c320', '171c3dc5-58ca-54db-a9a6-875e9d5bd326', 'translate', 'Переведите', '{"correct_translation":"I do not know.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я не знаю.","target_language":"en","word_bank":["know.","not","do","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5ae8a26e-5ead-522b-887e-8c482e0e4686', '171c3dc5-58ca-54db-a9a6-875e9d5bd326', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"please","instruction":"Выберите подходящее слово.","options":["please","later","great"],"sentence_template":"Yes, ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7742271f-1050-5b90-a06f-3d75a4054fca', '171c3dc5-58ca-54db-a9a6-875e9d5bd326', 'tap_words', 'Соберите фразу', '{"correct_words":["No,","thank","you."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["thank","No,","you."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('2a701e82-4b75-51e4-93c0-3c00b915d3b6', '171c3dc5-58ca-54db-a9a6-875e9d5bd326', 'listening', 'Послушайте', '{"audio_text":"Maybe later, thank you.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('530231ae-509b-5dd1-ae7a-d16d50b65d0e', '171c3dc5-58ca-54db-a9a6-875e9d5bd326', 'listening_shadowing', 'Повторите', '{"audio_text":"Would you like some water? Yes, please.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Хотите воды? Да, пожалуйста."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('bf8939c3-d458-57e6-aa0e-95f598cdea8e', '171c3dc5-58ca-54db-a9a6-875e9d5bd326', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Dad","text":"Would you like some juice?","translation":"Хочешь сока?","type":"dialogue"},{"character":"Lena","text":"No, thank you.","translation":"Нет, спасибо.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Okay."},{"is_correct":false,"text":"I am juice years old."}],"text":"What can Dad say?","type":"choice"}],"title":"A Drink at Home"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('1a065a64-1e05-5cdb-b697-21d49b68ee0c', '171c3dc5-58ca-54db-a9a6-875e9d5bd326', 'choose_definition', 'Определение', '{"explanation":"“Maybe” means something is possible but not certain.","instruction":"Выберите значение.","language":"en","options":[{"id":"LSDEP_L3_D_A","is_correct":true,"text":"A word used when something is possible but not certain"},{"id":"LSDEP_L3_D_B","is_correct":false,"text":"A word that means definitely yes"},{"id":"LSDEP_L3_D_C","is_correct":false,"text":"A word used only to say goodbye"}],"word":"maybe"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a358c3a7-fd09-59ce-a5e4-bf90ae9669ca', '171c3dc5-58ca-54db-a9a6-875e9d5bd326', 'listen_choose_word', 'Слово', '{"audio_text":"No, thank you.","explanation":"The missing word is “you.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"you","id":"LSDEP_L3_LW_A","is_correct":true},{"audio_text":"great","id":"LSDEP_L3_LW_B","is_correct":false},{"audio_text":"later","id":"LSDEP_L3_LW_C","is_correct":false}],"sentence_template":"No, thank ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0dce9ee3-3044-5dc0-af52-11ce32f9c297', '171c3dc5-58ca-54db-a9a6-875e9d5bd326', 'missing_word', 'Впишите', '{"correct_answer":"great","explanation":"The complete phrase is “That is great.”","hint_prefix":"gr","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"That is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e4ff6296-20bc-569c-9475-3592983ee9ce', '171c3dc5-58ca-54db-a9a6-875e9d5bd326', 'match_pairs_voice', 'Звук', '{"explanation":"Match each daily phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"Okay","id":"LSDEP_L3_VM_P1","text":"Okay"},{"audio_text":"Yes, please","id":"LSDEP_L3_VM_P2","text":"Yes, please"},{"audio_text":"No, thank you","id":"LSDEP_L3_VM_P3","text":"No, thank you"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7ffa33af-bcd4-5858-8b57-ec3f22f6863b', '171c3dc5-58ca-54db-a9a6-875e9d5bd326', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"Would you like some tea?"}],"explanation":"“Yes, please” is a polite way to accept the offer.","instruction":"Ответьте.","options":[{"id":"LSDEP_L3_C_A","is_correct":true,"text":"Yes, please."},{"id":"LSDEP_L3_C_B","is_correct":false,"text":"I am tea."},{"id":"LSDEP_L3_C_C","is_correct":false,"text":"Where is please?"}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0df6291f-0d7a-5117-8077-7012a137291c', '171c3dc5-58ca-54db-a9a6-875e9d5bd326', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('597a96d3-92fe-58a8-885f-b283b2745e8b', 'en', 'Please', 'Пожалуйста', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('54461f61-5c4d-585c-83fa-25ffcd20762a', 'en', 'Thank you', 'Спасибо', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d113e8cd-ffcc-598c-b217-dd898678cea6', 'en', 'You are welcome', 'Пожалуйста', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ccbfee1c-ea9f-559e-83a6-d83063b6c5e9', 'en', 'Excuse me', 'Извините', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('22ef8e2d-c926-5560-8f09-ccef5a21fe9c', 'en', 'I am sorry', 'Мне жаль', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('af230278-26c2-59e3-837a-e7d80f3dd531', 'en', 'That is okay', 'Всё в порядке', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('56d2d779-9989-582f-926c-56d24985aa89', 'en', 'Have a nice day', 'Хорошего дня', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c912c497-ca0e-5b03-9644-f0ab9015efde', 'en', 'Can you help me?', 'Вы можете мне помочь?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('45b490fc-c4ac-5a32-9815-0307b92fb5b3', 'en', 'Please wait', 'Пожалуйста, подождите', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('725729f7-cd9f-5f1a-a293-2dfb81d9fce4', 'en', 'Come here', 'Подойдите сюда', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('04f0f62c-ddc2-5de4-a5c5-e0ef244e23ce', 'en', 'Look at this', 'Посмотрите на это', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ee61e8f3-52b3-5cd1-8755-17f033945151', 'en', 'Listen, please', 'Послушайте, пожалуйста', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('30449208-332a-5bab-92ad-435a64860ae3', 'en', 'One moment', 'Одну минуту', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('350b8506-216e-5767-8946-a40cb9237380', 'en', 'Of course', 'Конечно', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('95ebbcff-e138-56a5-856a-6a28fa475390', 'en', 'Okay', 'Хорошо', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b885d185-bda8-5997-92e6-7465f62e38cb', 'en', 'Yes, please', 'Да, пожалуйста', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1da51328-6f83-5877-a65a-3322220ae77d', 'en', 'No, thank you', 'Нет, спасибо', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('350b8506-216e-5767-8946-a40cb9237380', 'en', 'Of course', 'Конечно', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('96e7099b-0792-5e89-be59-a858b2aaea65', 'en', 'Maybe later', 'Может быть, позже', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9107172a-101e-5de1-9080-1317470cd404', 'en', 'I do not know', 'Я не знаю', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ff1ca1dd-7518-58eb-b3ab-b92b3104be5a', 'en', 'That is great', 'Это замечательно', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0df6291f-0d7a-5117-8077-7012a137291c', id, '1d0d26b8-cb4b-57ee-90fc-f6a989014505', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'Please' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0df6291f-0d7a-5117-8077-7012a137291c', id, '1d0d26b8-cb4b-57ee-90fc-f6a989014505', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'Thank you' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0df6291f-0d7a-5117-8077-7012a137291c', id, '1d0d26b8-cb4b-57ee-90fc-f6a989014505', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'You are welcome' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0df6291f-0d7a-5117-8077-7012a137291c', id, '1d0d26b8-cb4b-57ee-90fc-f6a989014505', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'Excuse me' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0df6291f-0d7a-5117-8077-7012a137291c', id, '1d0d26b8-cb4b-57ee-90fc-f6a989014505', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'I am sorry' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0df6291f-0d7a-5117-8077-7012a137291c', id, '1d0d26b8-cb4b-57ee-90fc-f6a989014505', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'That is okay' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0df6291f-0d7a-5117-8077-7012a137291c', id, '1d0d26b8-cb4b-57ee-90fc-f6a989014505', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'Have a nice day' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0df6291f-0d7a-5117-8077-7012a137291c', id, 'b3cc5af9-2e96-5fcf-8b23-c0f980947066', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'Can you help me?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0df6291f-0d7a-5117-8077-7012a137291c', id, 'b3cc5af9-2e96-5fcf-8b23-c0f980947066', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'Please wait' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0df6291f-0d7a-5117-8077-7012a137291c', id, 'b3cc5af9-2e96-5fcf-8b23-c0f980947066', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'Come here' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0df6291f-0d7a-5117-8077-7012a137291c', id, 'b3cc5af9-2e96-5fcf-8b23-c0f980947066', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'Look at this' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0df6291f-0d7a-5117-8077-7012a137291c', id, 'b3cc5af9-2e96-5fcf-8b23-c0f980947066', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'Listen, please' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0df6291f-0d7a-5117-8077-7012a137291c', id, 'b3cc5af9-2e96-5fcf-8b23-c0f980947066', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'One moment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0df6291f-0d7a-5117-8077-7012a137291c', id, 'b3cc5af9-2e96-5fcf-8b23-c0f980947066', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'Of course' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0df6291f-0d7a-5117-8077-7012a137291c', id, '171c3dc5-58ca-54db-a9a6-875e9d5bd326', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'Okay' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0df6291f-0d7a-5117-8077-7012a137291c', id, '171c3dc5-58ca-54db-a9a6-875e9d5bd326', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'Yes, please' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0df6291f-0d7a-5117-8077-7012a137291c', id, '171c3dc5-58ca-54db-a9a6-875e9d5bd326', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'No, thank you' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0df6291f-0d7a-5117-8077-7012a137291c', id, '171c3dc5-58ca-54db-a9a6-875e9d5bd326', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'Of course' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0df6291f-0d7a-5117-8077-7012a137291c', id, '171c3dc5-58ca-54db-a9a6-875e9d5bd326', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'Maybe later' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0df6291f-0d7a-5117-8077-7012a137291c', id, '171c3dc5-58ca-54db-a9a6-875e9d5bd326', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'I do not know' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0df6291f-0d7a-5117-8077-7012a137291c', id, '171c3dc5-58ca-54db-a9a6-875e9d5bd326', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'That is great' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
