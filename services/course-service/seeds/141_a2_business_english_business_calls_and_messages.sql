-- Track: A2_BUSINESS_ENGLISH_BUSINESS_CALLS_AND_MESSAGES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('2d509886-cfea-5f15-b3ee-a3ce36044e52', 'A2_BUSINESS_ENGLISH_BUSINESS_CALLS_AND_MESSAGES', 'Деловые звонки и сообщения', 'Развивайте деловой английский уровня A2 по теме «Деловые звонки и сообщения».', '{"en":"Business Calls and Messages","ru":"Деловые звонки и сообщения"}'::jsonb, '{"en":"Develop A2 business English for business calls and messages.","ru":"Развивайте деловой английский уровня A2 по теме «Деловые звонки и сообщения»."}'::jsonb, 'en', 'A2', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('170b388b-cb51-5ed7-a1a1-4b59221e4e73', NULL, 'Звонки на этой неделе', 'Рассказать о звонках и сообщениях, используя past simple и present perfect.', '{"en":"Calls This Week","ru":"Звонки на этой неделе"}'::jsonb, '{"en":"Talk about calls and messages using past simple and present perfect.","ru":"Рассказать о звонках и сообщениях, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2cc889a0-eb8b-58be-9c7f-75def5755f40', '170b388b-cb51-5ed7-a1a1-4b59221e4e73', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to call back","right":"перезвонить"},{"id":"P2","left":"voicemail","right":"голосовая почта"},{"id":"P3","left":"to leave a message","right":"оставить сообщение"},{"id":"P4","left":"line","right":"линия"},{"id":"P5","left":"to reach","right":"дозвониться до"},{"id":"P6","left":"missed call","right":"пропущенный звонок"},{"id":"P7","left":"twice","right":"дважды"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a007e63-e2f7-5eea-bb4f-f8db53e3a9e6', '170b388b-cb51-5ed7-a1a1-4b59221e4e73', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I have left two voicemails since this morning.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I have left two voicemails since this morning."},{"id":"Q_B","is_correct":false,"text":"I have left a voicemail yesterday."},{"id":"Q_C","is_correct":false,"text":"I left two voicemails already since morning."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aefdb824-3b97-5994-aa1d-f29974364875', '170b388b-cb51-5ed7-a1a1-4b59221e4e73', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I called him at ten, but I did not reach him and left a message instead.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я позвонил ему в десять, но не дозвонился и оставил сообщение.","target_language":"en","word_bank":["did","ten,","and","him","did","message","a","but","I","I","reach","at","not","called","left","call","instead.","tomorrow","him"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e5b49225-4d02-534b-a42f-754749643c20', '170b388b-cb51-5ed7-a1a1-4b59221e4e73', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"called","instruction":"Выберите подходящее слово.","options":["called","has call","calling"],"sentence_template":"She ___ me back within an hour yesterday.","translation_hint":"Она перезвонила мне в течение часа вчера."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a8983267-c365-5cd8-b6df-82a1fae2909f', '170b388b-cb51-5ed7-a1a1-4b59221e4e73', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["He","has","already","returned","three","missed","calls","this","morning."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["has","did","this","calls","three","morning.","He","already","missed","returned","was"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7265dc6f-37e9-5c89-829f-e67766554166', '170b388b-cb51-5ed7-a1a1-4b59221e4e73', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I have called the office twice today, but the line has been busy both times.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e282329d-b770-54ee-b904-6523b8b28830', '170b388b-cb51-5ed7-a1a1-4b59221e4e73', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I have called the office twice today, but the line has been busy both times.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Я звонил в офис дважды сегодня, но линия оба раза была занята."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('53d8f972-c17e-5aa7-b132-167c870478a9', '170b388b-cb51-5ed7-a1a1-4b59221e4e73', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"You have three missed calls from the same number.","translation":"У тебя три пропущенных с одного номера.","type":"dialogue"},{"character":"Tom","text":"Really? When did they call?","translation":"Серьёзно? Когда звонили?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Twice this morning and once after lunch — you should call back soon."},{"is_correct":false,"text":"Yesterday twice, and they has called again tomorrow."},{"is_correct":false,"text":"The number is calling the missed calls."}],"text":"What does Anna say?","type":"choice"}],"title":"The Missed Call"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('27dfaf99-3944-5dca-ad16-ee9b1ac49386', '170b388b-cb51-5ed7-a1a1-4b59221e4e73', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“voicemail” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A recorded message you leave when someone does not answer"},{"id":"D_B","is_correct":false,"text":"A written message you send by email"},{"id":"D_C","is_correct":false,"text":"A meeting room booking system"}],"word":"voicemail"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef2f1087-7177-590a-97da-dab67dd5fdf6', '170b388b-cb51-5ed7-a1a1-4b59221e4e73', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Could you ask him to call me back?","explanation":"The missing word is “call”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"call","id":"LW_A","is_correct":true},{"audio_text":"called","id":"LW_B","is_correct":false},{"audio_text":"calling","id":"LW_C","is_correct":false}],"sentence_template":"Could you ask him to ___ me back?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e37a3ad-306b-5bd0-bfa7-b45b5e5629dd', '170b388b-cb51-5ed7-a1a1-4b59221e4e73', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"on","explanation":"The complete sentence is “I have left a message on his voicemail.”.","hint_prefix":"on","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I have left a message ___ his voicemail."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a5a91ddf-8e43-5082-a25f-46c2711a6ac5', '170b388b-cb51-5ed7-a1a1-4b59221e4e73', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to call back","id":"V1","text":"to call back"},{"audio_text":"voicemail","id":"V2","text":"voicemail"},{"audio_text":"to leave a message","id":"V3","text":"to leave a message"},{"audio_text":"line","id":"V4","text":"line"},{"audio_text":"to reach","id":"V5","text":"to reach"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cb307a35-42f4-5f08-a57b-56b5bb29d233', '170b388b-cb51-5ed7-a1a1-4b59221e4e73', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Did you get my voicemail?"}],"explanation":"“Yes, I listened to it this morning and have already replied by email.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes, I listened to it this morning and have already replied by email."},{"id":"C_B","is_correct":false,"text":"Yes, I listen it tomorrow."},{"id":"C_C","is_correct":false,"text":"The voicemail is replying to me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2d509886-cfea-5f15-b3ee-a3ce36044e52', '170b388b-cb51-5ed7-a1a1-4b59221e4e73', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0af12b3a-2817-514d-8378-4ca78f680126', NULL, 'Важный звонок завтра', 'Подготовиться к будущим звонкам и сравнить способы связи.', '{"en":"An Important Call Tomorrow","ru":"Важный звонок завтра"}'::jsonb, '{"en":"Prepare for future calls and compare ways of contacting people.","ru":"Подготовиться к будущим звонкам и сравнить способы связи."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dded1284-3d25-5097-a266-646724345129', '0af12b3a-2817-514d-8378-4ca78f680126', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"conference call","right":"конференц-звонок"},{"id":"P2","left":"to dial in","right":"подключиться к звонку"},{"id":"P3","left":"clearly","right":"чётко / ясно"},{"id":"P4","left":"to take notes","right":"делать записи"},{"id":"P5","left":"in advance","right":"заранее"},{"id":"P6","left":"more useful","right":"полезнее"},{"id":"P7","left":"to prepare questions","right":"подготовить вопросы"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4e72339a-897a-5342-919f-07d953357cb7', '0af12b3a-2817-514d-8378-4ca78f680126', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “We are going to have a conference call with the Berlin office.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"We are going to have a conference call with the Berlin office."},{"id":"Q_B","is_correct":false,"text":"We had a conference call with Berlin yesterday."},{"id":"Q_C","is_correct":false,"text":"We has a call tomorrow already."}],"question":"Which sentence talks about tomorrow?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9cf1dff7-d4d4-5364-9a7c-6173fb8a7bc0', '0af12b3a-2817-514d-8378-4ca78f680126', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We are having a conference call tomorrow, so I am going to prepare the questions in advance.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Завтра у нас конференц-звонок, поэтому я подготовлю вопросы заранее.","target_language":"en","word_bank":["call","the","We","a","tomorrow,","in","are","having","questions","advance.","conference","going","prepare","so","yesterday","am","had","to","did","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('75d5b6de-5da2-5b29-bbc7-0bea6299a362', '0af12b3a-2817-514d-8378-4ca78f680126', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"more","instruction":"Выберите подходящее слово.","options":["more","most","much"],"sentence_template":"A short agenda is ___ useful than a long silence.","translation_hint":"Короткая повестка полезнее долгого молчания."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d517b534-34cd-5bf8-b04c-8c52f992d171', '0af12b3a-2817-514d-8378-4ca78f680126', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","am","going","to","take","notes","during","the","call","and","send","them","after."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["I","going","after.","notes","during","take","send","to","was","am","and","the","did","call","them"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('03b58ff7-c4f7-5dd1-9e98-6eff58a3594b', '0af12b3a-2817-514d-8378-4ca78f680126', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you dial in five minutes early, you will have time to test your microphone.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cfbf26a1-3f9b-584f-a984-16d9a56b6bbe', '0af12b3a-2817-514d-8378-4ca78f680126', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you dial in five minutes early, you will have time to test your microphone.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если подключишься на пять минут раньше, успеешь проверить микрофон."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08443964-df7e-5207-b184-74e1436ac34b', '0af12b3a-2817-514d-8378-4ca78f680126', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Manager","text":"The client call starts at nine tomorrow. Are you ready?","translation":"Звонок с клиентом завтра в девять. Ты готов?","type":"dialogue"},{"character":"Anna","text":"Almost. I have prepared the questions but not the slides.","translation":"Почти. Я подготовил вопросы, но не слайды.","type":"dialogue"},{"options":[{"is_correct":true,"text":"You should finish the slides tonight — they matter more."},{"is_correct":false,"text":"You must finishing them yesterday evening."},{"is_correct":false,"text":"The slides are preparing you tonight."}],"text":"What does the manager advise?","type":"choice"}],"title":"Before the Call"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b9188caf-b4a8-59ac-9e12-719ecbf1381a', '0af12b3a-2817-514d-8378-4ca78f680126', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to dial in” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To join a phone or video call by entering a code"},{"id":"D_B","is_correct":false,"text":"To hang up at the end of a conversation"},{"id":"D_C","is_correct":false,"text":"To write down a phone number on paper"}],"word":"to dial in"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('abca59c4-959a-5509-be25-bc9602b7cc08', '0af12b3a-2817-514d-8378-4ca78f680126', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We are calling the supplier at ten.","explanation":"The missing word is “calling”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"calling","id":"LW_A","is_correct":true},{"audio_text":"call","id":"LW_B","is_correct":false},{"audio_text":"called","id":"LW_C","is_correct":false}],"sentence_template":"We are ___ the supplier at ten."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('050b6453-3711-5a44-b80e-e78065762783', '0af12b3a-2817-514d-8378-4ca78f680126', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"questions","explanation":"The complete sentence is “You should prepare questions in advance.”.","hint_prefix":"qu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should prepare ___ in advance."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fdb7b222-67f4-5835-8a20-d312f074fa64', '0af12b3a-2817-514d-8378-4ca78f680126', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"conference call","id":"V1","text":"conference call"},{"audio_text":"to dial in","id":"V2","text":"to dial in"},{"audio_text":"clearly","id":"V3","text":"clearly"},{"audio_text":"to take notes","id":"V4","text":"to take notes"},{"audio_text":"in advance","id":"V5","text":"in advance"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('06b43f60-b7e1-5fda-8377-51e3a7c0a124', '0af12b3a-2817-514d-8378-4ca78f680126', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Should I join the call with the client?"}],"explanation":"“Yes, dial in at nine — if you take notes, the summary will be ready by noon.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes, dial in at nine — if you take notes, the summary will be ready by noon."},{"id":"C_B","is_correct":false,"text":"I dialled in yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The call is joining me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2d509886-cfea-5f15-b3ee-a3ce36044e52', '0af12b3a-2817-514d-8378-4ca78f680126', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('99143181-6ebf-5c07-8f1d-524434738300', NULL, 'Правила хороших звонков', 'Дать советы о деловых звонках, используя should и первое условное.', '{"en":"Rules for Good Calls","ru":"Правила хороших звонков"}'::jsonb, '{"en":"Give advice about business calls using should and the first conditional.","ru":"Дать советы о деловых звонках, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0422ab96-5646-5a1d-9e11-d479d2a83e0f', '99143181-6ebf-5c07-8f1d-524434738300', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to disturb","right":"беспокоить"},{"id":"P2","left":"brief","right":"краткий"},{"id":"P3","left":"to summarise","right":"подытожить"},{"id":"P4","left":"at the end","right":"в конце"},{"id":"P5","left":"to confirm","right":"подтвердить"},{"id":"P6","left":"polite","right":"вежливый"},{"id":"P7","left":"to hang up","right":"положить трубку"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('55405442-7109-5e45-b1ce-2a3914a45bdd', '99143181-6ebf-5c07-8f1d-524434738300', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should summarise the main points at the end of the call.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should summarise the main points at the end of the call."},{"id":"Q_B","is_correct":false,"text":"You should to summarise the points yesterday."},{"id":"Q_C","is_correct":false,"text":"You must summarising the call last week."}],"question":"Which sentence gives correct advice about calls?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf0ffb1f-2160-5d92-b1bc-0c4693390e42', '99143181-6ebf-5c07-8f1d-524434738300', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you summarise the agreements at the end, you will avoid misunderstandings.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если ты подытожишь договорённости в конце, вы избежите недопонимания.","target_language":"en","word_bank":["did","yesterday","If","end,","avoid","the","will","agreements","summarised","at","you","you","summarise","misunderstandings.","the"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7eb0607-5dea-5221-a820-bf16fb345e32', '99143181-6ebf-5c07-8f1d-524434738300', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"will not","instruction":"Выберите подходящее слово.","options":["will not","not will","don''t"],"sentence_template":"If you speak too fast, the client ___ understand you.","translation_hint":"Если говорить слишком быстро, клиент вас не поймёт."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8fdff47b-992d-506c-89ca-f1fd099a7d52', '99143181-6ebf-5c07-8f1d-524434738300', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","confirm","the","next","steps","before","you","hang","up."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["You","mustn''t","hang","before","you","up.","should","the","steps","confirm","next","went"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('243a0201-50d2-584f-8921-734cd211137c', '99143181-6ebf-5c07-8f1d-524434738300', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If the client sounds busy, you should keep the call brief and offer to email the details.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8572d9e9-5316-5a25-b957-cb9d545556e2', '99143181-6ebf-5c07-8f1d-524434738300', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If the client sounds busy, you should keep the call brief and offer to email the details.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если клиент звучит занятым, стоит говорить кратко и предложить прислать детали письмом."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('254efd60-aa77-560c-9b9c-15cdabbb5cef', '99143181-6ebf-5c07-8f1d-524434738300', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"The call went well, but did we confirm who sends the offer?","translation":"Звонок прошёл хорошо, но мы подтвердили, кто отправляет предложение?","type":"dialogue"},{"character":"Tom","text":"I''m not sure — we talked about so many things.","translation":"Не уверен — мы обсудили столько всего.","type":"dialogue"},{"options":[{"is_correct":true,"text":"You should send a short summary email to confirm."},{"is_correct":false,"text":"You must sending it yesterday afternoon."},{"is_correct":false,"text":"The offer is confirming itself by email."}],"text":"What should they do?","type":"choice"}],"title":"After the Call"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('343cd10a-724f-506c-9961-a4648a4746fe', '99143181-6ebf-5c07-8f1d-524434738300', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“brief” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Short and using few words"},{"id":"D_B","is_correct":false,"text":"Very long and detailed"},{"id":"D_C","is_correct":false,"text":"Loud and difficult to hear"}],"word":"brief"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cf2ff06d-1cf1-5f3e-9d6f-77319639424b', '99143181-6ebf-5c07-8f1d-524434738300', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you confirm the steps in writing, nothing will be lost.","explanation":"The missing word is “confirm”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"confirm","id":"LW_A","is_correct":true},{"audio_text":"will confirm","id":"LW_B","is_correct":false},{"audio_text":"confirmed","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ the steps in writing, nothing will be lost."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('24c0e843-b027-5a03-86d9-6916412e2db3', '99143181-6ebf-5c07-8f1d-524434738300', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"at","explanation":"The complete sentence is “You should summarise the call at the end.”.","hint_prefix":"at","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should summarise the call ___ the end."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a663cb58-fe47-5d22-a42c-406669a11a1e', '99143181-6ebf-5c07-8f1d-524434738300', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to disturb","id":"V1","text":"to disturb"},{"audio_text":"brief","id":"V2","text":"brief"},{"audio_text":"to summarise","id":"V3","text":"to summarise"},{"audio_text":"at the end","id":"V4","text":"at the end"},{"audio_text":"to confirm","id":"V5","text":"to confirm"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('051ae331-a2ac-5788-82c7-95986ca5cbb3', '99143181-6ebf-5c07-8f1d-524434738300', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"The client asked so many questions on the call."}],"explanation":"“You should send a brief follow-up email — if you write the answers down, they will trust us more.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"You should send a brief follow-up email — if you write the answers down, they will trust us more."},{"id":"C_B","is_correct":false,"text":"I sent it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The questions are emailing the client."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2d509886-cfea-5f15-b3ee-a3ce36044e52', '99143181-6ebf-5c07-8f1d-524434738300', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c12a75c3-b6f9-5b0c-9f5e-683338a3629c', 'en', 'to call back', 'перезвонить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9394030c-a6e0-5fd8-97d6-c2234de86a6f', 'en', 'voicemail', 'голосовая почта', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b7969507-ad73-5ec9-8d9d-472e3e863abd', 'en', 'to leave a message', 'оставить сообщение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c4b5e734-55c5-5d69-a97c-ce3efd2f78e5', 'en', 'line', 'линия', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('600fa084-9750-5620-a139-60c5c097fe58', 'en', 'to reach', 'дозвониться до', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('76697d11-45cf-5837-8528-305c02b6a4fb', 'en', 'missed call', 'пропущенный звонок', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('75cc07dc-9d42-551b-974d-c9e3b1f498dd', 'en', 'twice', 'дважды', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a1995326-93d6-538c-b023-74cbfea9261e', 'en', 'conference call', 'конференц-звонок', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('83653df5-84b1-5808-bc25-7e2131cc2db7', 'en', 'to dial in', 'подключиться к звонку', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d6c65766-9f5b-5688-be37-e74071195df1', 'en', 'clearly', 'чётко / ясно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bf96817d-0bbc-5960-ac73-6099e9f10b0b', 'en', 'to take notes', 'делать записи', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48465a51-bb8d-5af5-beb9-23e75da4553e', 'en', 'in advance', 'заранее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8421dc05-cfee-53ab-9476-832523f74d19', 'en', 'more useful', 'полезнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c64968b8-1271-5693-8435-57516ffa2006', 'en', 'to prepare questions', 'подготовить вопросы', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('42e440ad-155d-50f2-b718-df2cc2e2c61e', 'en', 'to disturb', 'беспокоить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4c8f3de2-01b0-5b3d-9006-5d9fe53a9487', 'en', 'brief', 'краткий', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6d7379ba-7980-5053-80b5-40b49501e9d9', 'en', 'to summarise', 'подытожить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ce9614f1-fcad-5e25-bf5e-e7d3a19696f3', 'en', 'at the end', 'в конце', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('479ada9b-5e03-574e-8749-5ae36cbb4e81', 'en', 'to confirm', 'подтвердить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d444b15-a6e2-561a-87a1-404b86fed95d', 'en', 'polite', 'вежливый', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('09e2d00e-c958-54d1-a229-99e7718a9164', 'en', 'to hang up', 'положить трубку', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d509886-cfea-5f15-b3ee-a3ce36044e52', id, '170b388b-cb51-5ed7-a1a1-4b59221e4e73', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'to call back' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d509886-cfea-5f15-b3ee-a3ce36044e52', id, '170b388b-cb51-5ed7-a1a1-4b59221e4e73', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'voicemail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d509886-cfea-5f15-b3ee-a3ce36044e52', id, '170b388b-cb51-5ed7-a1a1-4b59221e4e73', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to leave a message' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d509886-cfea-5f15-b3ee-a3ce36044e52', id, '170b388b-cb51-5ed7-a1a1-4b59221e4e73', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'line' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d509886-cfea-5f15-b3ee-a3ce36044e52', id, '170b388b-cb51-5ed7-a1a1-4b59221e4e73', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to reach' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d509886-cfea-5f15-b3ee-a3ce36044e52', id, '170b388b-cb51-5ed7-a1a1-4b59221e4e73', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'missed call' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d509886-cfea-5f15-b3ee-a3ce36044e52', id, '170b388b-cb51-5ed7-a1a1-4b59221e4e73', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'twice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d509886-cfea-5f15-b3ee-a3ce36044e52', id, '0af12b3a-2817-514d-8378-4ca78f680126', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'conference call' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d509886-cfea-5f15-b3ee-a3ce36044e52', id, '0af12b3a-2817-514d-8378-4ca78f680126', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to dial in' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d509886-cfea-5f15-b3ee-a3ce36044e52', id, '0af12b3a-2817-514d-8378-4ca78f680126', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'clearly' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d509886-cfea-5f15-b3ee-a3ce36044e52', id, '0af12b3a-2817-514d-8378-4ca78f680126', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to take notes' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d509886-cfea-5f15-b3ee-a3ce36044e52', id, '0af12b3a-2817-514d-8378-4ca78f680126', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'in advance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d509886-cfea-5f15-b3ee-a3ce36044e52', id, '0af12b3a-2817-514d-8378-4ca78f680126', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'more useful' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d509886-cfea-5f15-b3ee-a3ce36044e52', id, '0af12b3a-2817-514d-8378-4ca78f680126', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to prepare questions' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d509886-cfea-5f15-b3ee-a3ce36044e52', id, '99143181-6ebf-5c07-8f1d-524434738300', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to disturb' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d509886-cfea-5f15-b3ee-a3ce36044e52', id, '99143181-6ebf-5c07-8f1d-524434738300', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'brief' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d509886-cfea-5f15-b3ee-a3ce36044e52', id, '99143181-6ebf-5c07-8f1d-524434738300', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to summarise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d509886-cfea-5f15-b3ee-a3ce36044e52', id, '99143181-6ebf-5c07-8f1d-524434738300', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'at the end' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d509886-cfea-5f15-b3ee-a3ce36044e52', id, '99143181-6ebf-5c07-8f1d-524434738300', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to confirm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d509886-cfea-5f15-b3ee-a3ce36044e52', id, '99143181-6ebf-5c07-8f1d-524434738300', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'polite' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2d509886-cfea-5f15-b3ee-a3ce36044e52', id, '99143181-6ebf-5c07-8f1d-524434738300', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to hang up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
