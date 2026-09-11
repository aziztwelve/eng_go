-- Track: A2_BUSINESS_ENGLISH_APPOINTMENTS_SCHEDULES_AND_CHANGES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('3bd86400-0940-5b4c-8209-dff240e06c03', 'A2_BUSINESS_ENGLISH_APPOINTMENTS_SCHEDULES_AND_CHANGES', 'Встречи, расписания и изменения', 'Развивайте деловой английский уровня A2 по теме «Встречи, расписания и изменения».', '{"en":"Appointments, Schedules and Changes","ru":"Встречи, расписания и изменения"}'::jsonb, '{"en":"Develop A2 business English for appointments, schedules and changes.","ru":"Развивайте деловой английский уровня A2 по теме «Встречи, расписания и изменения»."}'::jsonb, 'en', 'A2', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('479231bb-4f55-5e63-bd4f-c5a5006eb7f5', NULL, 'Переносим встречу', 'Сообщить об изменениях во встречах, используя past simple и present perfect.', '{"en":"Moving a Meeting","ru":"Переносим встречу"}'::jsonb, '{"en":"Report changes to appointments using past simple and present perfect.","ru":"Сообщить об изменениях во встречах, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9f0405eb-5773-5113-adaf-cfaec4b41761', '479231bb-4f55-5e63-bd4f-c5a5006eb7f5', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"appointment","right":"встреча / договорённость"},{"id":"P2","left":"to reschedule","right":"перенести (на другое время)"},{"id":"P3","left":"available","right":"свободный (о времени)"},{"id":"P4","left":"calendar","right":"календарь"},{"id":"P5","left":"to cancel","right":"отменить"},{"id":"P6","left":"confirmation","right":"подтверждение"},{"id":"P7","left":"in advance","right":"заранее"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b8bd28aa-16ad-5647-9fe2-2cf6e3b3d134', '479231bb-4f55-5e63-bd4f-c5a5006eb7f5', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The client has rescheduled the appointment twice this week.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The client has rescheduled the appointment twice this week."},{"id":"Q_B","is_correct":false,"text":"The client has reschedule it yesterday."},{"id":"Q_C","is_correct":false,"text":"The client reschedule it already twice."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d7be260-bf9f-5b1a-ad57-f08b0a5a1943', '479231bb-4f55-5e63-bd4f-c5a5006eb7f5', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The client has moved the appointment to Thursday, and we have already confirmed the new time.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Клиент перенёс встречу на четверг, и мы уже подтвердили новое время.","target_language":"en","word_bank":["did","confirmed","client","moved","the","and","appointment","yesterday","the","has","have","new","Thursday,","The","already","to","time.","we","move"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('48cf8af9-6f6f-5df8-a4b2-801cd23d576a', '479231bb-4f55-5e63-bd4f-c5a5006eb7f5', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"cancelled","instruction":"Выберите подходящее слово.","options":["cancelled","has cancel","cancelling"],"sentence_template":"She ___ the Monday meeting because of the flight delay.","translation_hint":"Она отменила понедельничную встречу из-за задержки рейса."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('174a500e-7cbd-5ea2-bae7-d6122bbacc05', '479231bb-4f55-5e63-bd4f-c5a5006eb7f5', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","have","updated","the","calendar","with","the","new","appointment","time."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["appointment","with","the","time.","have","was","new","the","did","calendar","updated","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae7db49b-6402-5bba-ba77-871aa51e889d', '479231bb-4f55-5e63-bd4f-c5a5006eb7f5', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The Tuesday appointment has been cancelled, so I have offered two new slots instead.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a03ddf00-60fe-5aad-b010-c5eeebdb72f0', '479231bb-4f55-5e63-bd4f-c5a5006eb7f5', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The Tuesday appointment has been cancelled, so I have offered two new slots instead.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Встреча во вторник отменена, поэтому я предложил два новых времени."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c6cf5ebb-6812-5595-bb8d-0a22b6b7da17', '479231bb-4f55-5e63-bd4f-c5a5006eb7f5', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Assistant","text":"Mr Weber has moved his appointment to Friday at eleven.","translation":"Господин Вебер перенёс встречу на пятницу на одиннадцать.","type":"dialogue"},{"character":"Anna","text":"That''s fine. Have you sent him the confirmation yet?","translation":"Хорошо. Ты уже отправил ему подтверждение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes, I sent it an hour ago and he has already replied."},{"is_correct":false,"text":"Yes, I have send it tomorrow morning."},{"is_correct":false,"text":"The confirmation is sending itself."}],"text":"What does the assistant answer?","type":"choice"}],"title":"The Full Calendar"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9eb89591-031a-5c7f-a8c2-20c8e5579b35', '479231bb-4f55-5e63-bd4f-c5a5006eb7f5', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to reschedule” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To change a planned time to another time"},{"id":"D_B","is_correct":false,"text":"To finish a meeting earlier than planned"},{"id":"D_C","is_correct":false,"text":"To arrive at a meeting very early"}],"word":"to reschedule"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef053784-8ba2-5b12-8683-463dd0da1c20', '479231bb-4f55-5e63-bd4f-c5a5006eb7f5', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have moved the call to three o''clock.","explanation":"The missing word is “moved”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"moved","id":"LW_A","is_correct":true},{"audio_text":"move","id":"LW_B","is_correct":false},{"audio_text":"moving","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ the call to three o''clock."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0967cb82-f3d9-5a48-a7c4-0d554b4df87f', '479231bb-4f55-5e63-bd4f-c5a5006eb7f5', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"confirmation","explanation":"The complete sentence is “We have received the confirmation for Friday.”.","hint_prefix":"co","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We have received the ___ for Friday."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ce2df8a-fbb6-5ee8-8bc1-7bd4133369b8', '479231bb-4f55-5e63-bd4f-c5a5006eb7f5', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"appointment","id":"V1","text":"appointment"},{"audio_text":"to reschedule","id":"V2","text":"to reschedule"},{"audio_text":"available","id":"V3","text":"available"},{"audio_text":"calendar","id":"V4","text":"calendar"},{"audio_text":"to cancel","id":"V5","text":"to cancel"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2f786088-74d7-5f4a-8797-6266508ed971', '479231bb-4f55-5e63-bd4f-c5a5006eb7f5', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Has the client confirmed the new time?"}],"explanation":"“Yes, he confirmed it this morning and has added it to his calendar.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes, he confirmed it this morning and has added it to his calendar."},{"id":"C_B","is_correct":false,"text":"Yes, he confirm it yesterday now."},{"id":"C_C","is_correct":false,"text":"The time is confirming the client."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3bd86400-0940-5b4c-8209-dff240e06c03', '479231bb-4f55-5e63-bd4f-c5a5006eb7f5', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('6eba4a3e-9990-58ea-a1b9-e22abe50a8ea', NULL, 'Планируем встречи на месяц', 'Договориться о будущих встречах и сравнить варианты времени.', '{"en":"Planning Meetings for the Month","ru":"Планируем встречи на месяц"}'::jsonb, '{"en":"Arrange future meetings and compare time options.","ru":"Договориться о будущих встречах и сравнить варианты времени."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f948732f-671e-5d1f-94ad-90c828efcdc8', '6eba4a3e-9990-58ea-a1b9-e22abe50a8ea', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"slot","right":"окно в расписании"},{"id":"P2","left":"to book","right":"забронировать"},{"id":"P3","left":"earlier","right":"раньше"},{"id":"P4","left":"conflict","right":"конфликт (в расписании)"},{"id":"P5","left":"agenda","right":"повестка дня"},{"id":"P6","left":"to offer","right":"предложить"},{"id":"P7","left":"convenient","right":"удобный"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cab10fba-0259-5012-8c7f-d8f12cfbddf2', '6eba4a3e-9990-58ea-a1b9-e22abe50a8ea', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “We are meeting the suppliers on Tuesday at ten.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"We are meeting the suppliers on Tuesday at ten."},{"id":"Q_B","is_correct":false,"text":"We met the suppliers on Tuesday at ten."},{"id":"Q_C","is_correct":false,"text":"We has meet them tomorrow already."}],"question":"Which sentence talks about a future arrangement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('49226255-608a-5d2d-81c8-8d963226c52f', '6eba4a3e-9990-58ea-a1b9-e22abe50a8ea', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I am going to book the main room for two hours because it is bigger than the small one.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я собираюсь забронировать зал на два часа, потому что он больше, чем переговорка.","target_language":"en","word_bank":["because","is","the","going","than","yesterday","did","for","the","bigger","booked","main","I","one.","to","it","book","small","hours","am","two","room"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b39703c0-c134-5d7b-9506-6159f597dad3', '6eba4a3e-9990-58ea-a1b9-e22abe50a8ea', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"more","instruction":"Выберите подходящее слово.","options":["more","most","much"],"sentence_template":"The morning slots are ___ popular than the afternoon ones.","translation_hint":"Утренние окна пользуются большей популярностью, чем дневные."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('99cdb5d0-5302-5e4a-9946-001652acae1d', '6eba4a3e-9990-58ea-a1b9-e22abe50a8ea', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","going","to","send","the","agenda","a","day","before","the","meeting."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["agenda","the","day","meeting.","was","are","send","a","We","did","to","going","before","the"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4df96591-f659-5e7e-85de-89657e843e75', '6eba4a3e-9990-58ea-a1b9-e22abe50a8ea', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you send me two convenient slots, I will book the room and invite the team.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c995be14-8124-5d4a-b285-783d8cb46531', '6eba4a3e-9990-58ea-a1b9-e22abe50a8ea', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you send me two convenient slots, I will book the room and invite the team.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если пришлёте два удобных времени, я забронирую зал и приглашу команду."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a43342e0-7430-5366-b02f-36bc1712a7a5', '6eba4a3e-9990-58ea-a1b9-e22abe50a8ea', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Client","text":"Could we meet next week to discuss the contract?","translation":"Можем встретиться на следующей неделе обсудить контракт?","type":"dialogue"},{"character":"Anna","text":"Of course. Tuesday at ten or Thursday at two — which is more convenient?","translation":"Конечно. Вторник в десять или четверг в два — что удобнее?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Thursday is better for me because I am travelling on Tuesday."},{"is_correct":false,"text":"Thursday was better yesterday when I travel."},{"is_correct":false,"text":"The contract is meeting me on Tuesday."}],"text":"What does the client choose?","type":"choice"}],"title":"Finding a Slot"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f4149a5d-378c-5a92-9115-b7f860ab633f', '6eba4a3e-9990-58ea-a1b9-e22abe50a8ea', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“agenda” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A list of topics for a meeting"},{"id":"D_B","is_correct":false,"text":"A room where people have meetings"},{"id":"D_C","is_correct":false,"text":"A document that confirms a booking"}],"word":"agenda"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9087435a-1f81-555f-92ff-471a6845c242', '6eba4a3e-9990-58ea-a1b9-e22abe50a8ea', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to book the conference room.","explanation":"The missing word is “book”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"book","id":"LW_A","is_correct":true},{"audio_text":"booked","id":"LW_B","is_correct":false},{"audio_text":"booking","id":"LW_C","is_correct":false}],"sentence_template":"I am going to ___ the conference room."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('80c4ff01-98be-5cc6-b0a1-c85027df46dc', '6eba4a3e-9990-58ea-a1b9-e22abe50a8ea', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"less","explanation":"The complete sentence is “The afternoon slot is less convenient for the client.”.","hint_prefix":"le","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The afternoon slot is ___ convenient for the client."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6fd87ec3-2fd9-58d7-8535-1f1724e0f44f', '6eba4a3e-9990-58ea-a1b9-e22abe50a8ea', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"slot","id":"V1","text":"slot"},{"audio_text":"to book","id":"V2","text":"to book"},{"audio_text":"earlier","id":"V3","text":"earlier"},{"audio_text":"conflict","id":"V4","text":"conflict"},{"audio_text":"agenda","id":"V5","text":"agenda"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1a95cc2c-f588-5741-b673-ee8555f01013', '6eba4a3e-9990-58ea-a1b9-e22abe50a8ea', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"When should we send the agenda?"}],"explanation":"“We are going to send it tomorrow — a day before the meeting.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"We are going to send it tomorrow — a day before the meeting."},{"id":"C_B","is_correct":false,"text":"We sent it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The agenda is sending us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3bd86400-0940-5b4c-8209-dff240e06c03', '6eba4a3e-9990-58ea-a1b9-e22abe50a8ea', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('06d560a2-7183-58f7-9ac4-8c352605aa3d', NULL, 'Если планы меняются', 'Объяснить изменения планов, используя should и первое условное.', '{"en":"When Plans Change","ru":"Если планы меняются"}'::jsonb, '{"en":"Explain changing plans using should and the first conditional.","ru":"Объяснить изменения планов, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5580f679-72ed-5306-bebf-a90bb44beee5', '06d560a2-7183-58f7-9ac4-8c352605aa3d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to inform","right":"известить"},{"id":"P2","left":"as soon as","right":"как только"},{"id":"P3","left":"change","right":"изменение"},{"id":"P4","left":"to avoid confusion","right":"избежать путаницы"},{"id":"P5","left":"polite","right":"вежливый"},{"id":"P6","left":"to appreciate","right":"быть благодарным"},{"id":"P7","left":"flexible","right":"гибкий"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3ffb4b68-896c-583f-8a36-dd1e1db4acdd', '06d560a2-7183-58f7-9ac4-8c352605aa3d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should inform everyone as soon as plans change.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should inform everyone as soon as plans change."},{"id":"Q_B","is_correct":false,"text":"You should to inform everyone yesterday."},{"id":"Q_C","is_correct":false,"text":"You must informing everyone last week."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3471141c-ed42-5f05-9408-b25e92c64b1f', '06d560a2-7183-58f7-9ac4-8c352605aa3d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If the appointment changes, you should inform all the participants as soon as possible.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если встреча изменится, сообщите всем участникам как можно скорее.","target_language":"en","word_bank":["all","you","inform","possible.","changes,","should","changed","appointment","as","the","yesterday","as","the","If","soon","participants","did"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1a53cc75-d819-522a-bafe-ec932611adf8', '06d560a2-7183-58f7-9ac4-8c352605aa3d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"change","instruction":"Выберите подходящее слово.","options":["change","will change","changed"],"sentence_template":"If you ___ the time in two places, people will miss the update.","translation_hint":"Если поменять время только в двух местах, люди пропустят обновление."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9211e44a-e865-52cf-b19e-d02e8b722719', '06d560a2-7183-58f7-9ac4-8c352605aa3d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","be","flexible","when","clients","change","their","plans."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["clients","plans.","should","when","went","flexible","be","change","their","mustn''t","You"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('86c1e904-f0f3-54fd-98f1-3e56acc279f8', '06d560a2-7183-58f7-9ac4-8c352605aa3d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If a client cancels, you should offer a new slot politely — they will appreciate it.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c8fbae77-cecc-5481-b9fc-6c2a1d55842d', '06d560a2-7183-58f7-9ac4-8c352605aa3d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If a client cancels, you should offer a new slot politely — they will appreciate it.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если клиент отменяет встречу, стоит вежливо предложить новое время — это оценят."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0ec87ed-0ab7-55c8-befa-437b565f8722', '06d560a2-7183-58f7-9ac4-8c352605aa3d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Tom","text":"The client has just cancelled tomorrow''s call.","translation":"Клиент только что отменил завтрашний звонок.","type":"dialogue"},{"character":"Anna","text":"Have you told the whole team yet?","translation":"Ты уже сказал всей команде?","type":"dialogue"},{"options":[{"is_correct":true,"text":"No, but I should inform them now to avoid confusion."},{"is_correct":false,"text":"No, I must informing them yesterday."},{"is_correct":false,"text":"The cancellation is telling the team."}],"text":"What does Tom say?","type":"choice"}],"title":"The Late Change"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a3763d91-291e-54f1-ae39-d05036311fcc', '06d560a2-7183-58f7-9ac4-8c352605aa3d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“flexible” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Able to change plans easily when it is necessary"},{"id":"D_B","is_correct":false,"text":"Doing everything exactly as planned every time"},{"id":"D_C","is_correct":false,"text":"Refusing all changes to a schedule"}],"word":"flexible"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fa13cb01-c572-560e-b21e-debfa43bf79b', '06d560a2-7183-58f7-9ac4-8c352605aa3d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If the client cancels, we will offer a new slot.","explanation":"The missing word is “cancels”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"cancels","id":"LW_A","is_correct":true},{"audio_text":"will cancel","id":"LW_B","is_correct":false},{"audio_text":"cancelled","id":"LW_C","is_correct":false}],"sentence_template":"If the client ___, we will offer a new slot."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d788a28b-ce17-5a5b-80d9-b46540d381d0', '06d560a2-7183-58f7-9ac4-8c352605aa3d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"soon","explanation":"The complete sentence is “You should inform the team as soon as possible.”.","hint_prefix":"so","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should inform the team as ___ as possible."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b37e4c9-f9b2-5a3d-8170-eec7afb0bcb7', '06d560a2-7183-58f7-9ac4-8c352605aa3d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to inform","id":"V1","text":"to inform"},{"audio_text":"as soon as","id":"V2","text":"as soon as"},{"audio_text":"change","id":"V3","text":"change"},{"audio_text":"to avoid confusion","id":"V4","text":"to avoid confusion"},{"audio_text":"polite","id":"V5","text":"polite"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('112c85ff-9dc3-5926-9d2a-c9c98f1dcdde', '06d560a2-7183-58f7-9ac4-8c352605aa3d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"The supplier wants to move Friday''s call."}],"explanation":"“That''s fine — if he sends two new slots, I will inform everyone today.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"That''s fine — if he sends two new slots, I will inform everyone today."},{"id":"C_B","is_correct":false,"text":"He moved it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"Friday is moving the supplier."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3bd86400-0940-5b4c-8209-dff240e06c03', '06d560a2-7183-58f7-9ac4-8c352605aa3d', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('784189e7-2d12-533c-a9a5-6e32993fb411', 'en', 'appointment', 'встреча / договорённость', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8af35da2-4929-51c9-ab53-2ea0f5f80873', 'en', 'to reschedule', 'перенести (на другое время)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c21e899b-7be3-524a-88f1-c45d91a41d8c', 'en', 'available', 'свободный (о времени)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0cab6dad-b67d-5982-8150-9c12e58e63d4', 'en', 'calendar', 'календарь', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('843dbac7-abe6-5068-8977-0ea4d0bf2880', 'en', 'to cancel', 'отменить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a46aef91-28ac-58d6-95ef-411e7f4b73d4', 'en', 'confirmation', 'подтверждение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48465a51-bb8d-5af5-beb9-23e75da4553e', 'en', 'in advance', 'заранее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b41ec15e-ee18-5308-a854-6ee89134c07d', 'en', 'slot', 'окно в расписании', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4169b2fb-d187-56fc-82c4-f87dcc0c2913', 'en', 'to book', 'забронировать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('91aa292d-0d4b-58f7-a029-07d791531f6b', 'en', 'earlier', 'раньше', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6e817634-5859-5f13-9605-305f581683b9', 'en', 'conflict', 'конфликт (в расписании)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f9a7faf2-77c0-549b-9eb6-f2dd0164c848', 'en', 'agenda', 'повестка дня', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a4606c31-a982-54d2-bf79-d1722ca4710c', 'en', 'to offer', 'предложить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41fca1db-5bf3-5ee0-a109-6e569dbde494', 'en', 'convenient', 'удобный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('252967bf-df92-5901-bbb5-d1308816e523', 'en', 'to inform', 'известить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e6cc5b34-8c6f-5732-b16a-a85f7aebe617', 'en', 'as soon as', 'как только', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('29edec5a-8470-5156-93fd-8c23d8cb4246', 'en', 'change', 'изменение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5d47a04b-1318-5f2f-848b-0c5c50d474ea', 'en', 'to avoid confusion', 'избежать путаницы', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d444b15-a6e2-561a-87a1-404b86fed95d', 'en', 'polite', 'вежливый', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('82e14714-bfb8-5e94-8be8-3611022f29a1', 'en', 'to appreciate', 'быть благодарным', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e6153a88-fa2d-5aa4-b8bc-887ae363ef91', 'en', 'flexible', 'гибкий', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3bd86400-0940-5b4c-8209-dff240e06c03', id, '479231bb-4f55-5e63-bd4f-c5a5006eb7f5', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'appointment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3bd86400-0940-5b4c-8209-dff240e06c03', id, '479231bb-4f55-5e63-bd4f-c5a5006eb7f5', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to reschedule' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3bd86400-0940-5b4c-8209-dff240e06c03', id, '479231bb-4f55-5e63-bd4f-c5a5006eb7f5', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'available' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3bd86400-0940-5b4c-8209-dff240e06c03', id, '479231bb-4f55-5e63-bd4f-c5a5006eb7f5', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'calendar' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3bd86400-0940-5b4c-8209-dff240e06c03', id, '479231bb-4f55-5e63-bd4f-c5a5006eb7f5', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to cancel' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3bd86400-0940-5b4c-8209-dff240e06c03', id, '479231bb-4f55-5e63-bd4f-c5a5006eb7f5', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirmation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3bd86400-0940-5b4c-8209-dff240e06c03', id, '479231bb-4f55-5e63-bd4f-c5a5006eb7f5', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'in advance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3bd86400-0940-5b4c-8209-dff240e06c03', id, '6eba4a3e-9990-58ea-a1b9-e22abe50a8ea', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'slot' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3bd86400-0940-5b4c-8209-dff240e06c03', id, '6eba4a3e-9990-58ea-a1b9-e22abe50a8ea', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to book' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3bd86400-0940-5b4c-8209-dff240e06c03', id, '6eba4a3e-9990-58ea-a1b9-e22abe50a8ea', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'earlier' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3bd86400-0940-5b4c-8209-dff240e06c03', id, '6eba4a3e-9990-58ea-a1b9-e22abe50a8ea', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'conflict' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3bd86400-0940-5b4c-8209-dff240e06c03', id, '6eba4a3e-9990-58ea-a1b9-e22abe50a8ea', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'agenda' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3bd86400-0940-5b4c-8209-dff240e06c03', id, '6eba4a3e-9990-58ea-a1b9-e22abe50a8ea', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to offer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3bd86400-0940-5b4c-8209-dff240e06c03', id, '6eba4a3e-9990-58ea-a1b9-e22abe50a8ea', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'convenient' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3bd86400-0940-5b4c-8209-dff240e06c03', id, '06d560a2-7183-58f7-9ac4-8c352605aa3d', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to inform' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3bd86400-0940-5b4c-8209-dff240e06c03', id, '06d560a2-7183-58f7-9ac4-8c352605aa3d', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'as soon as' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3bd86400-0940-5b4c-8209-dff240e06c03', id, '06d560a2-7183-58f7-9ac4-8c352605aa3d', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'change' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3bd86400-0940-5b4c-8209-dff240e06c03', id, '06d560a2-7183-58f7-9ac4-8c352605aa3d', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to avoid confusion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3bd86400-0940-5b4c-8209-dff240e06c03', id, '06d560a2-7183-58f7-9ac4-8c352605aa3d', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'polite' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3bd86400-0940-5b4c-8209-dff240e06c03', id, '06d560a2-7183-58f7-9ac4-8c352605aa3d', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to appreciate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3bd86400-0940-5b4c-8209-dff240e06c03', id, '06d560a2-7183-58f7-9ac4-8c352605aa3d', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'flexible' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
