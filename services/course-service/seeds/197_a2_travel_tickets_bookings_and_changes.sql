-- Track: A2_TRAVEL_TICKETS_BOOKINGS_AND_CHANGES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('63422f58-1787-5c87-8eb6-04f7b6523c38', 'A2_TRAVEL_TICKETS_BOOKINGS_AND_CHANGES', 'Билеты, бронирование и изменения', 'Развивайте английский для путешествий уровня A2 по теме «Билеты, бронирование и изменения».', '{"en":"Tickets, Bookings and Changes","ru":"Билеты, бронирование и изменения"}'::jsonb, '{"en":"Develop A2 travel English for tickets, bookings and changes.","ru":"Развивайте английский для путешествий уровня A2 по теме «Билеты, бронирование и изменения»."}'::jsonb, 'en', 'A2', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c74ef1b6-ead1-5814-a937-45c562be521b', NULL, 'Как мы бронировали', 'Рассказать о бронированиях, используя past simple и present perfect.', '{"en":"How We Booked","ru":"Как мы бронировали"}'::jsonb, '{"en":"Talk about bookings using past simple and present perfect.","ru":"Рассказать о бронированиях, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cbf4eac1-4d1a-5fbe-bb00-fa938841ab90', 'c74ef1b6-ead1-5814-a937-45c562be521b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to book online","right":"забронировать онлайн"},{"id":"P2","left":"confirmation email","right":"письмо-подтверждение"},{"id":"P3","left":"non-refundable","right":"невозвратный"},{"id":"P4","left":"to reserve","right":"зарезервировать"},{"id":"P5","left":"seat reservation","right":"бронь места"},{"id":"P6","left":"booking reference","right":"код бронирования"},{"id":"P7","left":"straight away","right":"сразу же"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e6f0aec9-9d14-5356-8443-fa1556fa54b0', 'c74ef1b6-ead1-5814-a937-45c562be521b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The hotel has sent the confirmation email already.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The hotel has sent the confirmation email already."},{"id":"Q_B","is_correct":false,"text":"The hotel has sent it yesterday."},{"id":"Q_C","is_correct":false,"text":"The hotel send the email already now."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('604b21c1-c8f6-56f4-ba3e-866ad3521385', 'c74ef1b6-ead1-5814-a937-45c562be521b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I booked the tickets straight away because the price went up the next day.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я забронировал билеты сразу же, потому что цена выросла на следующий день.","target_language":"en","word_bank":["went","next","tickets","price","because","booked","the","day.","the","up","away","straight","I","the","did","tomorrow","book"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ca77676b-9898-596d-b016-7a4391496842', 'c74ef1b6-ead1-5814-a937-45c562be521b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"ago","instruction":"Выберите подходящее слово.","options":["ago","since","before"],"sentence_template":"We reserved the seats a month ___ .","translation_hint":"Мы забронировали места месяц назад."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c0dad09a-1338-5f31-822b-d9eb99891694', 'c74ef1b6-ead1-5814-a937-45c562be521b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["She","has","received","the","booking","reference","by","email."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["did","received","email.","She","by","reference","the","booking","has","was"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2491e694-5d53-5dd1-a99a-5f629af62cc2', 'c74ef1b6-ead1-5814-a937-45c562be521b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I have printed all the confirmation emails, but the booking reference has not arrived yet.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('83325635-951e-5bd6-87ae-db92a2588c61', 'c74ef1b6-ead1-5814-a937-45c562be521b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I have printed all the confirmation emails, but the booking reference has not arrived yet.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Я распечатал все подтверждения, но код бронирования ещё не пришёл."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b30a87a-9212-5cdc-867a-ece1c706874b', 'c74ef1b6-ead1-5814-a937-45c562be521b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"I booked the flight this morning for two hundred euros.","translation":"Я забронировала рейс сегодня утром за двести евро.","type":"dialogue"},{"character":"Tom","text":"The same flight now costs two hundred and sixty. When did the price change?","translation":"Тот же рейс теперь стоит двести шестьдесят. Когда цена изменилась?","type":"dialogue"},{"options":[{"is_correct":true,"text":"About an hour after my booking — I have saved sixty euros."},{"is_correct":false,"text":"Tomorrow, an hour ago yesterday."},{"is_correct":false,"text":"The price is booking the flight."}],"text":"What does Anna say?","type":"choice"}],"title":"The Vanishing Price"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('61d6edb2-aede-54d1-bdbb-e4b640d4483a', 'c74ef1b6-ead1-5814-a937-45c562be521b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“non-refundable” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"That cannot be cancelled for money back"},{"id":"D_B","is_correct":false,"text":"Easy to change to another date for free"},{"id":"D_C","is_correct":false,"text":"Paid for at the hotel on arrival"}],"word":"non-refundable"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6801abf2-9c3b-56bf-8f7d-dca55185527a', 'c74ef1b6-ead1-5814-a937-45c562be521b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have reserved two seats for the night train.","explanation":"The missing word is “reserved”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"reserved","id":"LW_A","is_correct":true},{"audio_text":"reserve","id":"LW_B","is_correct":false},{"audio_text":"reserving","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ two seats for the night train."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('318a320e-4a49-5ab4-b272-b8fa75db6895', 'c74ef1b6-ead1-5814-a937-45c562be521b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"confirmation","explanation":"The complete sentence is “Have you received the confirmation email?”.","hint_prefix":"co","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Have you received the ___ email?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6dd10425-e89e-5a2a-b09c-72322f6f5043', 'c74ef1b6-ead1-5814-a937-45c562be521b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to book online","id":"V1","text":"to book online"},{"audio_text":"confirmation email","id":"V2","text":"confirmation email"},{"audio_text":"non-refundable","id":"V3","text":"non-refundable"},{"audio_text":"to reserve","id":"V4","text":"to reserve"},{"audio_text":"seat reservation","id":"V5","text":"seat reservation"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('51289411-f580-5b6d-9cc1-dff86d8f1d08', 'c74ef1b6-ead1-5814-a937-45c562be521b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Agent","text":"Do you have your booking reference?"}],"explanation":"“Yes, here it is — I have also brought the confirmation email, just in case.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes, here it is — I have also brought the confirmation email, just in case."},{"id":"C_B","is_correct":false,"text":"Yes, I have it tomorrow yesterday."},{"id":"C_C","is_correct":false,"text":"The reference is booking me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('63422f58-1787-5c87-8eb6-04f7b6523c38', 'c74ef1b6-ead1-5814-a937-45c562be521b', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('262de10b-bcd5-5695-8b96-d572f6648ac2', NULL, 'Меняем бронирование', 'Изменить бронирование и сравнить тарифы.', '{"en":"Changing a Booking","ru":"Меняем бронирование"}'::jsonb, '{"en":"Change a booking and compare fares.","ru":"Изменить бронирование и сравнить тарифы."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('784b896a-0894-50f9-8d62-8ecbe5bc0649', '262de10b-bcd5-5695-8b96-d572f6648ac2', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to change a booking","right":"изменить бронь"},{"id":"P2","left":"flexible fare","right":"гибкий тариф"},{"id":"P3","left":"change fee","right":"сбор за изменение"},{"id":"P4","left":"more expensive","right":"дороже"},{"id":"P5","left":"to upgrade","right":"улучшить (тариф/класс)"},{"id":"P6","left":"availability","right":"наличие мест"},{"id":"P7","left":"to rebook","right":"перебронировать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7a29cd9-521f-5b36-86f9-2fd9588069a0', '262de10b-bcd5-5695-8b96-d572f6648ac2', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The flexible fare is more expensive than the basic one.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The flexible fare is more expensive than the basic one."},{"id":"Q_B","is_correct":false,"text":"The flexible fare is expensiver than basic."},{"id":"Q_C","is_correct":false,"text":"The flexible fare is most expensive than basic."}],"question":"Which sentence compares two fares correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4f867dba-75ce-5b9e-9a1c-d982c6873795', '262de10b-bcd5-5695-8b96-d572f6648ac2', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We are going to change the date — the flexible fare is more expensive, but there is no change fee.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мы собираемся изменить дату — гибкий тариф стоит дороже, но без сбора за изменение.","target_language":"en","word_bank":["but","change","are","to","more","did","We","the","no","going","expensive,","the","fee.","is","is","change","flexible","changed","yesterday","date","—","there","fare"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc5e0684-51f8-56de-b9d8-9069fd71a2ed', '262de10b-bcd5-5695-8b96-d572f6648ac2', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"fee","instruction":"Выберите подходящее слово.","options":["fee","fees","feeing"],"sentence_template":"The basic fare has a change ___ of thirty euros.","translation_hint":"У базового тарифа сбор за изменение — тридцать евро."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d58a90ee-c81b-5eab-a52f-c14894ddbf7f', '262de10b-bcd5-5695-8b96-d572f6648ac2', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["They","are","going","to","rebook","us","on","the","morning","flight."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["going","rebook","are","the","did","us","to","They","morning","flight.","on","was"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('af63877c-c517-5657-bbce-826e31350841', '262de10b-bcd5-5695-8b96-d572f6648ac2', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you upgrade to the flexible fare now, any future change will cost you nothing extra.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3b36bd58-8f60-5f75-80ef-8eb25ab30d98', '262de10b-bcd5-5695-8b96-d572f6648ac2', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you upgrade to the flexible fare now, any future change will cost you nothing extra.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если перейти на гибкий тариф сейчас, любое будущее изменение будет бесплатным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('628738bb-efc4-53d7-90c6-711a9650cd0a', '262de10b-bcd5-5695-8b96-d572f6648ac2', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Customer","text":"I need to move my ticket from Friday to Sunday.","translation":"Мне нужно перенести билет с пятницы на воскресенье.","type":"dialogue"},{"character":"Agent","text":"There is availability, but the basic fare has a change fee.","translation":"Места есть, но у базового тарифа сбор за изменение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"How much is the fee, and is the flexible fare still cheaper than a new ticket?"},{"is_correct":false,"text":"Is the fee arriving tomorrow yesterday?"},{"is_correct":false,"text":"Is the Friday changing the fee?"}],"text":"What does the customer ask?","type":"choice"}],"title":"The Date Change"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2ac25efd-449d-588c-943a-70d7aee9b944', '262de10b-bcd5-5695-8b96-d572f6648ac2', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“fare” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"The price you pay for a journey by train or plane"},{"id":"D_B","is_correct":false,"text":"The food served during a long flight"},{"id":"D_C","is_correct":false,"text":"A hotel room with breakfast included"}],"word":"fare"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b27babf8-e31a-5b83-84d8-4bc87e06b85d', '262de10b-bcd5-5695-8b96-d572f6648ac2', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"They are going to rebook us on the early train.","explanation":"The missing word is “rebook”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"rebook","id":"LW_A","is_correct":true},{"audio_text":"rebooked","id":"LW_B","is_correct":false},{"audio_text":"rebooking","id":"LW_C","is_correct":false}],"sentence_template":"They are going to ___ us on the early train."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('db8f244b-c16c-500a-ab10-08c8952f5082', '262de10b-bcd5-5695-8b96-d572f6648ac2', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"better","explanation":"The complete sentence is “The flexible fare is better for changes.”.","hint_prefix":"be","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The flexible fare is ___ for changes."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5279ca2-cae2-5243-9b78-bf07527e67ed', '262de10b-bcd5-5695-8b96-d572f6648ac2', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to change a booking","id":"V1","text":"to change a booking"},{"audio_text":"flexible fare","id":"V2","text":"flexible fare"},{"audio_text":"change fee","id":"V3","text":"change fee"},{"audio_text":"more expensive","id":"V4","text":"more expensive"},{"audio_text":"to upgrade","id":"V5","text":"to upgrade"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d73eedcf-0a86-58c7-99a2-b115ffb677b0', '262de10b-bcd5-5695-8b96-d572f6648ac2', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Agent","text":"Would you like to keep the same seat?"}],"explanation":"“If possible — if the window seat is free on the new flight, I will take it.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"If possible — if the window seat is free on the new flight, I will take it."},{"id":"C_B","is_correct":false,"text":"I kept it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The seat is rebooking me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('63422f58-1787-5c87-8eb6-04f7b6523c38', '262de10b-bcd5-5695-8b96-d572f6648ac2', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2e1fdc71-ba24-5cd6-a2de-6aa3756e069b', NULL, 'Если планы сорвутся', 'Обсудить отмену бронирования, используя should и первое условное.', '{"en":"If Plans Fall Through","ru":"Если планы сорвутся"}'::jsonb, '{"en":"Discuss cancelling a booking using should and the first conditional.","ru":"Обсудить отмену бронирования, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c46d70cb-9341-5f2c-b07d-1db231c9c4ad', '2e1fdc71-ba24-5cd6-a2de-6aa3756e069b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"cancellation","right":"отмена"},{"id":"P2","left":"to cancel","right":"отменить"},{"id":"P3","left":"refundable","right":"возвратный"},{"id":"P4","left":"to read the rules","right":"прочитать правила"},{"id":"P5","left":"before booking","right":"до бронирования"},{"id":"P6","left":"insurance","right":"страховка"},{"id":"P7","left":"in case","right":"на случай"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e77c83be-0b4a-5865-8ba3-aabeac6402e8', '2e1fdc71-ba24-5cd6-a2de-6aa3756e069b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should read the cancellation rules before booking.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should read the cancellation rules before booking."},{"id":"Q_B","is_correct":false,"text":"You should to read them yesterday."},{"id":"Q_C","is_correct":false,"text":"You must reading them last week."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6151b912-7b89-57db-830b-dc87e76df67d', '2e1fdc71-ba24-5cd6-a2de-6aa3756e069b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If your plans change, a refundable fare will save your money.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если планы изменятся, возвратный тариф спасёт деньги.","target_language":"en","word_bank":["will","your","save","fare","did","refundable","plans","money.","yesterday","a","change,","changed","If","your"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e29b9492-ba83-5e03-ae70-08453db1a0be', '2e1fdc71-ba24-5cd6-a2de-6aa3756e069b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"cancel","instruction":"Выберите подходящее слово.","options":["cancel","will cancel","cancelled"],"sentence_template":"If you ___ within twenty-four hours, most airlines will refund the full price.","translation_hint":"Если отменить в течение суток, большинство авиакомпаний вернёт полную стоимость."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f9a266df-269f-5055-9910-e07bf587644c', '2e1fdc71-ba24-5cd6-a2de-6aa3756e069b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","keep","the","insurance","documents","in","case","of","cancellation."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["in","cancellation.","documents","insurance","mustn''t","the","of","case","went","You","keep","should"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b92795f-953c-52da-9f42-6c9219a0de2e', '2e1fdc71-ba24-5cd6-a2de-6aa3756e069b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you book refundable rooms, a sudden change of plans will not destroy your budget.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cfadbaa1-f0ec-5b45-96cf-a36f1944fe86', '2e1fdc71-ba24-5cd6-a2de-6aa3756e069b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you book refundable rooms, a sudden change of plans will not destroy your budget.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если бронировать возвратные номера, внезапная смена планов не разрушит бюджет."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2f47db83-79a2-5191-95a6-4340bc5150f9', '2e1fdc71-ba24-5cd6-a2de-6aa3756e069b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"Our host has just cancelled our flat for next week!","translation":"Хозяин только что отменил нашу квартиру на следующую неделю!","type":"dialogue"},{"character":"Tom","text":"Did you book the refundable option?","translation":"Ты брала возвратный вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes, luckily — if I hadn''t, we would lose two hundred euros."},{"is_correct":false,"text":"Yes, I will booked it tomorrow yesterday."},{"is_correct":false,"text":"The flat is refunding our plans."}],"text":"What does Anna answer?","type":"choice"}],"title":"The Sudden Change"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b284b2a5-8159-5580-9002-5a932dc39da2', '2e1fdc71-ba24-5cd6-a2de-6aa3756e069b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“refundable” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Something you can get your money back for"},{"id":"D_B","is_correct":false,"text":"A ticket that cannot be used after the date"},{"id":"D_C","is_correct":false,"text":"A service paid only in cash"}],"word":"refundable"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('569a3e8a-756d-5010-bf00-700ffecb8f06', '2e1fdc71-ba24-5cd6-a2de-6aa3756e069b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If the airline cancels the flight, you will get a voucher.","explanation":"The missing word is “cancels”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"cancels","id":"LW_A","is_correct":true},{"audio_text":"will cancel","id":"LW_B","is_correct":false},{"audio_text":"cancelled","id":"LW_C","is_correct":false}],"sentence_template":"If the airline ___ the flight, you will get a voucher."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('476cc053-0c6e-5772-9792-04480c822101', '2e1fdc71-ba24-5cd6-a2de-6aa3756e069b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"in","explanation":"The complete sentence is “You should buy insurance in case of illness.”.","hint_prefix":"in","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should buy insurance ___ case of illness."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cf187b6d-2219-5bbc-a251-b0d7894168fd', '2e1fdc71-ba24-5cd6-a2de-6aa3756e069b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"cancellation","id":"V1","text":"cancellation"},{"audio_text":"to cancel","id":"V2","text":"to cancel"},{"audio_text":"refundable","id":"V3","text":"refundable"},{"audio_text":"to read the rules","id":"V4","text":"to read the rules"},{"audio_text":"before booking","id":"V5","text":"before booking"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5ba39626-c811-53ec-8e9d-04df062509fc', '2e1fdc71-ba24-5cd6-a2de-6aa3756e069b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Should I book the cheaper non-refundable room?"}],"explanation":"“Think twice — if your trip changes, the flexible room will be cheaper in the end.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Think twice — if your trip changes, the flexible room will be cheaper in the end."},{"id":"C_B","is_correct":false,"text":"I booked it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The room is refunding me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('63422f58-1787-5c87-8eb6-04f7b6523c38', '2e1fdc71-ba24-5cd6-a2de-6aa3756e069b', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('053a9727-2692-5f79-9d3b-f114fcdcb0d5', 'en', 'to book online', 'забронировать онлайн', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d4e36ae1-7b97-5b86-8ed6-3e75b7f66b11', 'en', 'confirmation email', 'письмо-подтверждение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('684e9adc-2b02-5bd8-aa8c-d5b99b6d369b', 'en', 'non-refundable', 'невозвратный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5dc65318-47f4-5909-acb1-5e7bd9ec5221', 'en', 'to reserve', 'зарезервировать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('267971c7-a8a3-530e-a260-55c5d77d774f', 'en', 'seat reservation', 'бронь места', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c14821f4-23a0-5bb7-ae75-0082d0c72228', 'en', 'booking reference', 'код бронирования', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('40bdc287-7c1a-5268-8c28-d755391ea0cd', 'en', 'straight away', 'сразу же', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e21a3944-0a7e-5f0d-915f-228268cbc255', 'en', 'to change a booking', 'изменить бронь', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('594f5c31-eaa0-5fd6-afff-36555992014c', 'en', 'flexible fare', 'гибкий тариф', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7cccf64e-abac-5b20-987a-44eb53b7cb78', 'en', 'change fee', 'сбор за изменение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ecf92be5-9db3-5beb-aced-b395011c2f01', 'en', 'more expensive', 'дороже', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3ca2eac5-66bb-502a-a77d-1fb881fe8a8c', 'en', 'to upgrade', 'улучшить (тариф/класс)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7fecf9b1-4dbc-5d8a-899e-a13a69107bd8', 'en', 'availability', 'наличие мест', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e454d134-348e-5cde-8d26-b6faaccdbc4c', 'en', 'to rebook', 'перебронировать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6e1e3529-9317-5a31-ab4d-bc960d1a2699', 'en', 'cancellation', 'отмена', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('843dbac7-abe6-5068-8977-0ea4d0bf2880', 'en', 'to cancel', 'отменить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8b1b7997-4e94-5604-a51e-6a0f6c4b4475', 'en', 'refundable', 'возвратный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('27037c7e-bf59-5857-8fa0-237175b3f37d', 'en', 'to read the rules', 'прочитать правила', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d1a987be-6351-522f-8a1e-351c2161705e', 'en', 'before booking', 'до бронирования', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('beba11cb-e165-5589-a506-76e06a0c154f', 'en', 'insurance', 'страховка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('048c812f-0fc6-5b32-a36f-469c071d3805', 'en', 'in case', 'на случай', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63422f58-1787-5c87-8eb6-04f7b6523c38', id, 'c74ef1b6-ead1-5814-a937-45c562be521b', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'to book online' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63422f58-1787-5c87-8eb6-04f7b6523c38', id, 'c74ef1b6-ead1-5814-a937-45c562be521b', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirmation email' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63422f58-1787-5c87-8eb6-04f7b6523c38', id, 'c74ef1b6-ead1-5814-a937-45c562be521b', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'non-refundable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63422f58-1787-5c87-8eb6-04f7b6523c38', id, 'c74ef1b6-ead1-5814-a937-45c562be521b', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'to reserve' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63422f58-1787-5c87-8eb6-04f7b6523c38', id, 'c74ef1b6-ead1-5814-a937-45c562be521b', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'seat reservation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63422f58-1787-5c87-8eb6-04f7b6523c38', id, 'c74ef1b6-ead1-5814-a937-45c562be521b', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'booking reference' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63422f58-1787-5c87-8eb6-04f7b6523c38', id, 'c74ef1b6-ead1-5814-a937-45c562be521b', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'straight away' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63422f58-1787-5c87-8eb6-04f7b6523c38', id, '262de10b-bcd5-5695-8b96-d572f6648ac2', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to change a booking' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63422f58-1787-5c87-8eb6-04f7b6523c38', id, '262de10b-bcd5-5695-8b96-d572f6648ac2', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'flexible fare' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63422f58-1787-5c87-8eb6-04f7b6523c38', id, '262de10b-bcd5-5695-8b96-d572f6648ac2', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'change fee' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63422f58-1787-5c87-8eb6-04f7b6523c38', id, '262de10b-bcd5-5695-8b96-d572f6648ac2', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'more expensive' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63422f58-1787-5c87-8eb6-04f7b6523c38', id, '262de10b-bcd5-5695-8b96-d572f6648ac2', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to upgrade' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63422f58-1787-5c87-8eb6-04f7b6523c38', id, '262de10b-bcd5-5695-8b96-d572f6648ac2', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'availability' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63422f58-1787-5c87-8eb6-04f7b6523c38', id, '262de10b-bcd5-5695-8b96-d572f6648ac2', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to rebook' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63422f58-1787-5c87-8eb6-04f7b6523c38', id, '2e1fdc71-ba24-5cd6-a2de-6aa3756e069b', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'cancellation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63422f58-1787-5c87-8eb6-04f7b6523c38', id, '2e1fdc71-ba24-5cd6-a2de-6aa3756e069b', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to cancel' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63422f58-1787-5c87-8eb6-04f7b6523c38', id, '2e1fdc71-ba24-5cd6-a2de-6aa3756e069b', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'refundable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63422f58-1787-5c87-8eb6-04f7b6523c38', id, '2e1fdc71-ba24-5cd6-a2de-6aa3756e069b', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to read the rules' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63422f58-1787-5c87-8eb6-04f7b6523c38', id, '2e1fdc71-ba24-5cd6-a2de-6aa3756e069b', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'before booking' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63422f58-1787-5c87-8eb6-04f7b6523c38', id, '2e1fdc71-ba24-5cd6-a2de-6aa3756e069b', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'insurance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63422f58-1787-5c87-8eb6-04f7b6523c38', id, '2e1fdc71-ba24-5cd6-a2de-6aa3756e069b', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'in case' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
