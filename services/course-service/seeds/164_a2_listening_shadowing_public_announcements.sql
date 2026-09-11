-- Track: A2_LISTENING_SHADOWING_PUBLIC_ANNOUNCEMENTS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('5f185bf5-64bd-57e4-bcec-7a5c2a5bb767', 'A2_LISTENING_SHADOWING_PUBLIC_ANNOUNCEMENTS', 'Объявления в общественных местах', 'Развивайте навыки аудирования и повторения уровня A2 по теме «Объявления в общественных местах».', '{"en":"Public Announcements","ru":"Объявления в общественных местах"}'::jsonb, '{"en":"Develop A2 listening and shadowing skills for public announcements.","ru":"Развивайте навыки аудирования и повторения уровня A2 по теме «Объявления в общественных местах»."}'::jsonb, 'en', 'A2', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('87538408-32d4-5edb-ac9f-94072a5dca44', NULL, 'Объявления, которые уже прозвучали', 'Понимать объявления, используя past simple и present perfect.', '{"en":"Announcements That Have Already Sounded","ru":"Объявления, которые уже прозвучали"}'::jsonb, '{"en":"Understand announcements using past simple and present perfect.","ru":"Понимать объявления, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('125a55c4-d5fd-504e-b8ec-f04c3aaf8ea5', '87538408-32d4-5edb-ac9f-94072a5dca44', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"attention, please","right":"внимание, пожалуйста"},{"id":"P2","left":"platform change","right":"изменение платформы"},{"id":"P3","left":"to apologise for","right":"извиниться за"},{"id":"P4","left":"delay","right":"задержка"},{"id":"P5","left":"final call","right":"последний вызов (посадка)"},{"id":"P6","left":"to make one''s way to","right":"проследовать к"},{"id":"P7","left":"boarding","right":"посадка"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65630458-1dea-565b-b508-469a5c39120a', '87538408-32d4-5edb-ac9f-94072a5dca44', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “This is the final call for flight BA 229.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"This is the final call for flight BA 229."},{"id":"Q_B","is_correct":false,"text":"This is first call for yesterday flight."},{"id":"Q_C","is_correct":false,"text":"The gates are calling the flight finally."}],"question":"Which phrase do you hear just before gates close?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e611575a-ecb8-53c3-b7dd-e6d541ee9d30', '87538408-32d4-5edb-ac9f-94072a5dca44', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The passengers have received an apology for the delay and were asked to make their way to gate B12.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Пассажирам извинились за задержку и попросили пройти к выходу B12.","target_language":"en","word_bank":["delay","to","an","way","apologise","their","for","asked","to","were","The","and","the","tomorrow","passengers","apology","make","B12.","received","have","gate","did"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cdb19327-ea78-519a-ac0b-acc6e3b31ac7', '87538408-32d4-5edb-ac9f-94072a5dca44', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"departed","instruction":"Выберите подходящее слово.","options":["departed","has depart","departing"],"sentence_template":"The announcement said the train ___ from a different platform.","translation_hint":"В объявлении сказали, что поезд отправляется с другой платформы."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('40e80a1e-a71d-5786-8454-4d51706e9191', '87538408-32d4-5edb-ac9f-94072a5dca44', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Have","you","heard","the","platform","change","announcement?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["heard","change","announcement?","you","Have","did","platform","was","the"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a3f34e5f-ee58-58c2-8291-72d7612bfda5', '87538408-32d4-5edb-ac9f-94072a5dca44', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Attention, please: the 14:15 service to Bristol has been delayed — we apologise for the inconvenience and will update you shortly.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b1e501cf-d50e-5938-b2a6-f952dc7111aa', '87538408-32d4-5edb-ac9f-94072a5dca44', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Attention, please: the 14:15 service to Bristol has been delayed — we apologise for the inconvenience and will update you shortly.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Внимание: рейс 14:15 в Бристоль задержан — приносим извинения за неудобства и скоро сообщим подробности."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f871fa78-3c49-507a-a0ef-273774d56257', '87538408-32d4-5edb-ac9f-94072a5dca44', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Announcement","text":"Attention, please. The 10:30 train to Oxford now leaves from platform nine.","translation":"Внимание. Поезд 10:30 в Оксфорд теперь отправляется с девятой платформы.","type":"dialogue"},{"character":"Passenger","text":"Did you hear that? We have been waiting at the wrong platform.","translation":"Ты слышал? Мы ждали не на той платформе.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Hurry — boarding starts in three minutes."},{"is_correct":false,"text":"To wait at the old platform tomorrow yesterday."},{"is_correct":false,"text":"The announcement is waiting for the train."}],"text":"What should they do?","type":"choice"}],"title":"At the Station"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('02ad6512-4bb3-5a64-8ea7-9cf48864427f', '87538408-32d4-5edb-ac9f-94072a5dca44', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“final call” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"The last announcement before boarding closes"},{"id":"D_B","is_correct":false,"text":"The first announcement of the day"},{"id":"D_C","is_correct":false,"text":"A call made after the plane has left"}],"word":"final call"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a0f6ac5d-b4fa-5da6-9932-27cc98104009', '87538408-32d4-5edb-ac9f-94072a5dca44', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"They have apologised for the delay.","explanation":"The missing word is “apologised”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"apologised","id":"LW_A","is_correct":true},{"audio_text":"apologise","id":"LW_B","is_correct":false},{"audio_text":"apologising","id":"LW_C","is_correct":false}],"sentence_template":"They have ___ for the delay."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4ef6e258-184d-5979-82ce-6a03074f8c1e', '87538408-32d4-5edb-ac9f-94072a5dca44', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"way","explanation":"The complete sentence is “Please make your way to gate five.”.","hint_prefix":"wa","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Please make your ___ to gate five."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7c0e48ec-623e-5445-928e-ec16038cea57', '87538408-32d4-5edb-ac9f-94072a5dca44', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"attention, please","id":"V1","text":"attention, please"},{"audio_text":"platform change","id":"V2","text":"platform change"},{"audio_text":"to apologise for","id":"V3","text":"to apologise for"},{"audio_text":"delay","id":"V4","text":"delay"},{"audio_text":"final call","id":"V5","text":"final call"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('96eddbde-0c91-5646-ae6d-86ec01b6e6e0', '87538408-32d4-5edb-ac9f-94072a5dca44', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Announcement","text":"This is the final call for passenger Ivanov."}],"explanation":"“That''s me — if I run now, I will catch the gate before it closes.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"That''s me — if I run now, I will catch the gate before it closes."},{"id":"C_B","is_correct":false,"text":"I ran there yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The call is gating me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('5f185bf5-64bd-57e4-bcec-7a5c2a5bb767', '87538408-32d4-5edb-ac9f-94072a5dca44', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ef85ea70-5324-5fa2-acdf-6d3b701485da', NULL, 'Что объявят завтра', 'Понимать объявления о будущем и сравнивать варианты проезда.', '{"en":"What Will Be Announced Tomorrow","ru":"Что объявят завтра"}'::jsonb, '{"en":"Understand future announcements and compare travel options.","ru":"Понимать объявления о будущем и сравнивать варианты проезда."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('40df592e-aa29-5925-81de-5b4ab61351a0', 'ef85ea70-5324-5fa2-acdf-6d3b701485da', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"replacement bus","right":"автобус-заменитель"},{"id":"P2","left":"more frequent","right":"чаще"},{"id":"P3","left":"to run","right":"ходить (о транспорте)"},{"id":"P4","left":"every ten minutes","right":"каждые десять минут"},{"id":"P5","left":"to be subject to","right":"зависеть от (обстоятельств)"},{"id":"P6","left":"at short notice","right":"в последний момент"},{"id":"P7","left":"timetable","right":"расписание"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7309e7f5-e2ff-5e78-9c66-a1221725362e', 'ef85ea70-5324-5fa2-acdf-6d3b701485da', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The express is more frequent than the slow service in the morning.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The express is more frequent than the slow service in the morning."},{"id":"Q_B","is_correct":false,"text":"The express is frequenter than slow service."},{"id":"Q_C","is_correct":false,"text":"The express is most frequent than the slow one."}],"question":"Which announcement compares two services correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1c8bd778-4543-53b7-9d6b-8ba10071e761', 'ef85ea70-5324-5fa2-acdf-6d3b701485da', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Tomorrow a replacement bus will run every twenty minutes instead of the train.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Завтра вместо поезда будет ходить автобус каждые двадцать минут.","target_language":"en","word_bank":["bus","yesterday","instead","a","replacement","train.","Tomorrow","twenty","run","ran","the","will","minutes","every","did","of"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ec3b055-d567-5923-83f2-5ea3d55ead7b', 'ef85ea70-5324-5fa2-acdf-6d3b701485da', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"every","instruction":"Выберите подходящее слово.","options":["every","each","all"],"sentence_template":"The shuttle runs ___ fifteen minutes on Sundays.","translation_hint":"Шаттл ходит каждые пятнадцать минут по воскресеньям."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bee336b3-76a4-5848-961b-03e75db9aa7b', 'ef85ea70-5324-5fa2-acdf-6d3b701485da', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Extra","trains","are","going","to","run","during","the","festival."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["festival.","during","going","are","was","run","the","Extra","trains","did","to"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d6bac095-c5ca-5e5d-9a3a-b68fc6afe11a', 'ef85ea70-5324-5fa2-acdf-6d3b701485da', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Because of engineering works, buses will replace trains this weekend — the buses are less frequent, so please allow extra time.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce975286-ce6c-5ab4-b8f9-8ff25f2849fa', 'ef85ea70-5324-5fa2-acdf-6d3b701485da', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Because of engineering works, buses will replace trains this weekend — the buses are less frequent, so please allow extra time.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Из-за путевых работ поезда заменят автобусами — автобусы ходят реже, поэтому заложите дополнительное время."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('553a0763-118e-54b4-92a9-9f6a7db399b6', 'ef85ea70-5324-5fa2-acdf-6d3b701485da', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Announcement","text":"On Sunday, buses will replace all trains between Central and Northgate.","translation":"В воскресенье автобусы заменят все поезда между Центральным и Нортгейтом.","type":"dialogue"},{"character":"Passenger","text":"How often will the buses run?","translation":"Как часто будут ходить автобусы?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Every twenty minutes — less frequent than the trains, I am afraid."},{"is_correct":false,"text":"Every twenty minutes tomorrow yesterday."},{"is_correct":false,"text":"The buses are training the minute."}],"text":"What is the likely answer?","type":"choice"}],"title":"Weekend Works"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3dd31987-72a8-5bbd-a8cb-270ce37c93ff', 'ef85ea70-5324-5fa2-acdf-6d3b701485da', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“replacement bus” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A bus used when a train service is not running"},{"id":"D_B","is_correct":false,"text":"A bus that follows the same route for tourists"},{"id":"D_C","is_correct":false,"text":"An extra carriage added to a train"}],"word":"replacement bus"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c90a86ea-47f6-5769-b6fd-eed719791480', 'ef85ea70-5324-5fa2-acdf-6d3b701485da', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The night service is going to run twice an hour.","explanation":"The missing word is “run”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"run","id":"LW_A","is_correct":true},{"audio_text":"ran","id":"LW_B","is_correct":false},{"audio_text":"running","id":"LW_C","is_correct":false}],"sentence_template":"The night service is going to ___ twice an hour."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fdebf991-17a6-5333-bf42-a0111aa18095', 'ef85ea70-5324-5fa2-acdf-6d3b701485da', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"more","explanation":"The complete sentence is “Morning trains are more frequent.”.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Morning trains are ___ frequent."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('15b09b8b-9bbf-562c-a81c-7e4d2059fb51', 'ef85ea70-5324-5fa2-acdf-6d3b701485da', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"replacement bus","id":"V1","text":"replacement bus"},{"audio_text":"more frequent","id":"V2","text":"more frequent"},{"audio_text":"to run","id":"V3","text":"to run"},{"audio_text":"every ten minutes","id":"V4","text":"every ten minutes"},{"audio_text":"to be subject to","id":"V5","text":"to be subject to"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3ee9f3bf-3b13-5ad8-a44c-fe6c0c9d9367', 'ef85ea70-5324-5fa2-acdf-6d3b701485da', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Announcement","text":"This service is subject to cancellation."}],"explanation":"“Then I should check the app — if it is cancelled, the taxi will cost a fortune.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Then I should check the app — if it is cancelled, the taxi will cost a fortune."},{"id":"C_B","is_correct":false,"text":"It cancelled me yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The service is subjecting me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('5f185bf5-64bd-57e4-bcec-7a5c2a5bb767', 'ef85ea70-5324-5fa2-acdf-6d3b701485da', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2c64478c-dd8d-5bd9-b42f-072c26b8465b', NULL, 'Если объявление касается тебя', 'Понимать инструкции в объявлениях, используя should и первое условное.', '{"en":"If the Announcement Concerns You","ru":"Если объявление касается тебя"}'::jsonb, '{"en":"Understand announcement instructions using should and the first conditional.","ru":"Понимать инструкции в объявлениях, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7fd38cfe-5524-5d16-ae7f-b7d2d8584f75', '2c64478c-dd8d-5bd9-b42f-072c26b8465b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to follow instructions","right":"следовать инструкциям"},{"id":"P2","left":"unattended","right":"беспризорный (оставленный без присмотра)"},{"id":"P3","left":"to evacuate","right":"эвакуироваться"},{"id":"P4","left":"emergency exit","right":"аварийный выход"},{"id":"P5","left":"to report to","right":"явиться к"},{"id":"P6","left":"in an orderly manner","right":"организованно"},{"id":"P7","left":"staff member","right":"сотрудник"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9d2e4d0a-fa0f-5621-ac86-e014646bb7c4', '2c64478c-dd8d-5bd9-b42f-072c26b8465b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should leave the building through the emergency exits.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should leave the building through the emergency exits."},{"id":"Q_B","is_correct":false,"text":"You should to leave it yesterday."},{"id":"Q_C","is_correct":false,"text":"You must leaving yesterday through exits."}],"question":"Which sentence gives a safety instruction?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f5e54403-e141-539a-9da3-039356aae90b', '2c64478c-dd8d-5bd9-b42f-072c26b8465b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you see an unattended bag, you should report it to a staff member.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если вы увидите оставленную без присмотра сумку, сообщите об этом персоналу.","target_language":"en","word_bank":["report","see","an","should","a","you","you","to","If","staff","did","it","unattended","saw","member.","bag,","yesterday"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd157421-86b6-5635-ba53-b6ce67c7f3c9', '2c64478c-dd8d-5bd9-b42f-072c26b8465b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"sounds","instruction":"Выберите подходящее слово.","options":["sounds","will sound","sounded"],"sentence_template":"If the alarm ___ , evacuate in an orderly manner.","translation_hint":"Если сработает сигнализация, эвакуируйтесь организованно."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ba123f65-6285-5482-be60-c9566e7c4d58', '2c64478c-dd8d-5bd9-b42f-072c26b8465b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","follow","the","instructions","of","the","staff."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["follow","should","the","of","You","went","the","instructions","staff.","mustn''t"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b3dc039-0e2d-5029-abba-d5b2c992b26f', '2c64478c-dd8d-5bd9-b42f-072c26b8465b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you cannot hear this announcement clearly, you should move closer to a staff member and ask for help.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a71f8274-bdcf-5dd6-ac35-fe739ee7c2b4', '2c64478c-dd8d-5bd9-b42f-072c26b8465b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you cannot hear this announcement clearly, you should move closer to a staff member and ask for help.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если вы плохо слышите объявление, подойдите ближе к сотруднику и попросите помощи."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('36cc01cf-ec19-56ad-a139-fff8f90438ce', '2c64478c-dd8d-5bd9-b42f-072c26b8465b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Announcement","text":"Attention: a bag has been found unattended near the main entrance.","translation":"Внимание: у главного входа найдена сумка без присмотра.","type":"dialogue"},{"character":"Passenger","text":"That is my bag! I left it by the pillar for a minute.","translation":"Это моя сумка! Я на минуту оставил её у колонны.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Report to the staff and describe the bag."},{"is_correct":false,"text":"To report it tomorrow yesterday again."},{"is_correct":false,"text":"The bag is announcing the passenger."}],"text":"What should the passenger do?","type":"choice"}],"title":"The Unattended Bag"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16ea2636-5c32-548a-a873-efd54d2dab0c', '2c64478c-dd8d-5bd9-b42f-072c26b8465b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to evacuate” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To leave a building or area quickly and safely"},{"id":"D_B","is_correct":false,"text":"To enter a station through the main doors"},{"id":"D_C","is_correct":false,"text":"To wait calmly for a delayed train"}],"word":"to evacuate"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9d6e06d9-00d9-531c-b2ae-57d92ce0bf5b', '2c64478c-dd8d-5bd9-b42f-072c26b8465b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If the alarm sounds, follow the green signs.","explanation":"The missing word is “sounds”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"sounds","id":"LW_A","is_correct":true},{"audio_text":"will sound","id":"LW_B","is_correct":false},{"audio_text":"sounded","id":"LW_C","is_correct":false}],"sentence_template":"If the alarm ___, follow the green signs."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5dea031-7bc7-5aff-8c45-338bc299f384', '2c64478c-dd8d-5bd9-b42f-072c26b8465b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"to","explanation":"The complete sentence is “Please report any unattended luggage to the staff.”.","hint_prefix":"to","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Please report any unattended luggage ___ the staff."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2e635f25-adf8-5aae-b810-532424334e34', '2c64478c-dd8d-5bd9-b42f-072c26b8465b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to follow instructions","id":"V1","text":"to follow instructions"},{"audio_text":"unattended","id":"V2","text":"unattended"},{"audio_text":"to evacuate","id":"V3","text":"to evacuate"},{"audio_text":"emergency exit","id":"V4","text":"emergency exit"},{"audio_text":"to report to","id":"V5","text":"to report to"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('72bddb66-4552-5fdc-a726-9cb7fc0a3481', '2c64478c-dd8d-5bd9-b42f-072c26b8465b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Announcement","text":"Will passenger Smith please report to the information desk?"}],"explanation":"“That''s me — if I go now, I will find out what happened to my connection.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"That''s me — if I go now, I will find out what happened to my connection."},{"id":"C_B","is_correct":false,"text":"I reported me yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The desk is passing me by."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('5f185bf5-64bd-57e4-bcec-7a5c2a5bb767', '2c64478c-dd8d-5bd9-b42f-072c26b8465b', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('00f8b481-460b-55ee-98d9-29fbb9959aae', 'en', 'attention, please', 'внимание, пожалуйста', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('75724ef6-7ab9-58a8-9613-e22ee043d15b', 'en', 'platform change', 'изменение платформы', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0c160113-9c28-5110-9b59-7debf30afbcb', 'en', 'to apologise for', 'извиниться за', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fd2c7af1-db85-5890-9817-36eb2267b8fb', 'en', 'delay', 'задержка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0def01eb-6231-55c7-b02d-d509bacdf5a3', 'en', 'final call', 'последний вызов (посадка)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3781b0ba-ef47-5428-9566-d1f6389203eb', 'en', 'to make one''s way to', 'проследовать к', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ff0c4d01-2caa-599f-9d89-2cf7e7c98a62', 'en', 'boarding', 'посадка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b236fdcc-0de5-5dac-84d5-87eb7196f026', 'en', 'replacement bus', 'автобус-заменитель', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8a555657-e258-5f04-9261-411621d5b189', 'en', 'more frequent', 'чаще', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('23ae06e6-3602-5147-85ed-7456c188db64', 'en', 'to run', 'ходить (о транспорте)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('68abbf0f-b57e-5d42-9ed2-a46adfa835da', 'en', 'every ten minutes', 'каждые десять минут', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d61b64eb-bc6a-5345-ac63-25e036664017', 'en', 'to be subject to', 'зависеть от (обстоятельств)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3b9c53d-8c88-5d34-b923-e0950aeef44c', 'en', 'at short notice', 'в последний момент', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('21f05542-9e71-519f-bfcd-506502f089fa', 'en', 'timetable', 'расписание', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4952dee3-6342-5830-b121-c729f3002c83', 'en', 'to follow instructions', 'следовать инструкциям', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6b23ba2e-f591-5e4b-80e1-17ed03eb4677', 'en', 'unattended', 'беспризорный (оставленный без присмотра)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('925e9b02-89fd-5ea5-a58e-e3204d89b79d', 'en', 'to evacuate', 'эвакуироваться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9677fcd5-d8e9-5345-8969-0db05fca2b94', 'en', 'emergency exit', 'аварийный выход', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('beb14026-8ed2-56e5-a9ff-563138433d0f', 'en', 'to report to', 'явиться к', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e17810bc-7f62-5fe5-87c0-14658d7fc66d', 'en', 'in an orderly manner', 'организованно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b469e958-7128-5b0f-bd55-59a7e58ec66d', 'en', 'staff member', 'сотрудник', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5f185bf5-64bd-57e4-bcec-7a5c2a5bb767', id, '87538408-32d4-5edb-ac9f-94072a5dca44', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'attention, please' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5f185bf5-64bd-57e4-bcec-7a5c2a5bb767', id, '87538408-32d4-5edb-ac9f-94072a5dca44', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'platform change' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5f185bf5-64bd-57e4-bcec-7a5c2a5bb767', id, '87538408-32d4-5edb-ac9f-94072a5dca44', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to apologise for' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5f185bf5-64bd-57e4-bcec-7a5c2a5bb767', id, '87538408-32d4-5edb-ac9f-94072a5dca44', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'delay' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5f185bf5-64bd-57e4-bcec-7a5c2a5bb767', id, '87538408-32d4-5edb-ac9f-94072a5dca44', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'final call' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5f185bf5-64bd-57e4-bcec-7a5c2a5bb767', id, '87538408-32d4-5edb-ac9f-94072a5dca44', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'to make one''s way to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5f185bf5-64bd-57e4-bcec-7a5c2a5bb767', id, '87538408-32d4-5edb-ac9f-94072a5dca44', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'boarding' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5f185bf5-64bd-57e4-bcec-7a5c2a5bb767', id, 'ef85ea70-5324-5fa2-acdf-6d3b701485da', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'replacement bus' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5f185bf5-64bd-57e4-bcec-7a5c2a5bb767', id, 'ef85ea70-5324-5fa2-acdf-6d3b701485da', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'more frequent' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5f185bf5-64bd-57e4-bcec-7a5c2a5bb767', id, 'ef85ea70-5324-5fa2-acdf-6d3b701485da', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to run' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5f185bf5-64bd-57e4-bcec-7a5c2a5bb767', id, 'ef85ea70-5324-5fa2-acdf-6d3b701485da', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'every ten minutes' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5f185bf5-64bd-57e4-bcec-7a5c2a5bb767', id, 'ef85ea70-5324-5fa2-acdf-6d3b701485da', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to be subject to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5f185bf5-64bd-57e4-bcec-7a5c2a5bb767', id, 'ef85ea70-5324-5fa2-acdf-6d3b701485da', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'at short notice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5f185bf5-64bd-57e4-bcec-7a5c2a5bb767', id, 'ef85ea70-5324-5fa2-acdf-6d3b701485da', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'timetable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5f185bf5-64bd-57e4-bcec-7a5c2a5bb767', id, '2c64478c-dd8d-5bd9-b42f-072c26b8465b', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to follow instructions' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5f185bf5-64bd-57e4-bcec-7a5c2a5bb767', id, '2c64478c-dd8d-5bd9-b42f-072c26b8465b', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'unattended' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5f185bf5-64bd-57e4-bcec-7a5c2a5bb767', id, '2c64478c-dd8d-5bd9-b42f-072c26b8465b', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to evacuate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5f185bf5-64bd-57e4-bcec-7a5c2a5bb767', id, '2c64478c-dd8d-5bd9-b42f-072c26b8465b', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'emergency exit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5f185bf5-64bd-57e4-bcec-7a5c2a5bb767', id, '2c64478c-dd8d-5bd9-b42f-072c26b8465b', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to report to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5f185bf5-64bd-57e4-bcec-7a5c2a5bb767', id, '2c64478c-dd8d-5bd9-b42f-072c26b8465b', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'in an orderly manner' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5f185bf5-64bd-57e4-bcec-7a5c2a5bb767', id, '2c64478c-dd8d-5bd9-b42f-072c26b8465b', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'staff member' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
