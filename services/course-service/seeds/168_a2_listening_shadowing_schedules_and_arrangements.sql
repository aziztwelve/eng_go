-- Track: A2_LISTENING_SHADOWING_SCHEDULES_AND_ARRANGEMENTS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('4525316d-e359-58e3-a85f-ca5d3eb36822', 'A2_LISTENING_SHADOWING_SCHEDULES_AND_ARRANGEMENTS', 'Расписания и договорённости', 'Развивайте навыки аудирования и повторения уровня A2 по теме «Расписания и договорённости».', '{"en":"Schedules and Arrangements","ru":"Расписания и договорённости"}'::jsonb, '{"en":"Develop A2 listening and shadowing skills for schedules and arrangements.","ru":"Развивайте навыки аудирования и повторения уровня A2 по теме «Расписания и договорённости»."}'::jsonb, 'en', 'A2', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b4269f65-49b9-52a4-bdf1-d8c73f3a8646', NULL, 'Наши договорённости', 'Понимать договорённости, используя present continuous и present perfect.', '{"en":"Our Arrangements","ru":"Наши договорённости"}'::jsonb, '{"en":"Understand arrangements using present continuous and present perfect.","ru":"Понимать договорённости, используя present continuous и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('914ccdd1-6978-54e7-be0d-50020bb8e8fd', 'b4269f65-49b9-52a4-bdf1-d8c73f3a8646', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to make an appointment","right":"договориться о встрече"},{"id":"P2","left":"to reschedule","right":"перенести"},{"id":"P3","left":"to confirm","right":"подтвердить"},{"id":"P4","left":"agenda","right":"повестка"},{"id":"P5","left":"to pencil in","right":"предварительно записать (в график)"},{"id":"P6","left":"double booking","right":"двойное бронирование"},{"id":"P7","left":"calendar","right":"календарь"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b30aea6-34e2-5978-b3fe-276d1c199e67', 'b4269f65-49b9-52a4-bdf1-d8c73f3a8646', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “We are seeing the accountant at eleven on Tuesday.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"We are seeing the accountant at eleven on Tuesday."},{"id":"Q_B","is_correct":false,"text":"We see the accountant yesterday at eleven."},{"id":"Q_C","is_correct":false,"text":"We has seen them tomorrow already."}],"question":"Which sentence uses the present continuous for an arrangement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('01c46384-52cb-503f-b76e-d3629d7ea972', 'b4269f65-49b9-52a4-bdf1-d8c73f3a8646', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I rescheduled the dentist appointment to Thursday because of a double booking.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я перенёс встречу с зубным на четверг, потому что получилось двойное бронирование.","target_language":"en","word_bank":["the","I","a","rescheduled","booking.","double","Thursday","appointment","of","to","dentist","reschedule","tomorrow","because","did"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('97aeee68-b7ec-5a92-a69c-e4759cf0ad2a', 'b4269f65-49b9-52a4-bdf1-d8c73f3a8646', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"pencilled in","instruction":"Выберите подходящее слово.","options":["pencilled in","pencil in","pencilling in"],"sentence_template":"She has ___ the meeting in her calendar.","translation_hint":"Она предварительно записала встречу в календарь."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('03266aca-cce4-58a8-994e-429c7db25e19', 'b4269f65-49b9-52a4-bdf1-d8c73f3a8646', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","meeting","the","investors","on","Friday."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["investors","did","We","Friday.","on","are","meeting","the","was"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('680a1923-54bf-525c-beb4-e93131c4ed49', 'b4269f65-49b9-52a4-bdf1-d8c73f3a8646', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I have pencilled in a call for Wednesday, but if the agenda is not ready, we can reschedule to next week.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('95141f12-c5c3-5342-ac6d-6f1cbe3c08ec', 'b4269f65-49b9-52a4-bdf1-d8c73f3a8646', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I have pencilled in a call for Wednesday, but if the agenda is not ready, we can reschedule to next week.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Я предварительно записал звонок на среду, но если повестка не будет готова, перенесём на следующую неделю."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12ebc613-2c8f-505e-9ee2-c0dd247587d5', 'b4269f65-49b9-52a4-bdf1-d8c73f3a8646', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"Are we still on for lunch on Thursday?","translation":"Мы всё ещё встречаемся на обед в четверг?","type":"dialogue"},{"character":"Voice 2","text":"Ah — I have double-booked myself. Could we move to Friday?","translation":"Ох — у меня двойное бронирование. Можем перенести на пятницу?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Friday works — let me confirm in the evening."},{"is_correct":false,"text":"Friday worked yesterday already."},{"is_correct":false,"text":"The lunch is booking myself on Friday."}],"text":"What does Voice 1 answer?","type":"choice"}],"title":"The Double Booking"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c8bf37b7-7967-5e0a-896e-69cecc572dd3', 'b4269f65-49b9-52a4-bdf1-d8c73f3a8646', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to pencil in” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To add something to your diary, not finally"},{"id":"D_B","is_correct":false,"text":"To cancel a plan completely"},{"id":"D_C","is_correct":false,"text":"To confirm a booking with a payment"}],"word":"to pencil in"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('42876f62-a3a9-5eef-b16b-07ddfdc1e852', 'b4269f65-49b9-52a4-bdf1-d8c73f3a8646', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have moved the dentist to Monday.","explanation":"The missing word is “moved”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"moved","id":"LW_A","is_correct":true},{"audio_text":"move","id":"LW_B","is_correct":false},{"audio_text":"moving","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ the dentist to Monday."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('91ccb8ad-c017-5d0a-a32d-fd90e36eaf1b', 'b4269f65-49b9-52a4-bdf1-d8c73f3a8646', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"seeing","explanation":"The complete sentence is “We are seeing the lawyer at three.”.","hint_prefix":"se","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We are ___ the lawyer at three."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('80b98ed5-4368-53a1-a4cf-389a1a33886c', 'b4269f65-49b9-52a4-bdf1-d8c73f3a8646', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to make an appointment","id":"V1","text":"to make an appointment"},{"audio_text":"to reschedule","id":"V2","text":"to reschedule"},{"audio_text":"to confirm","id":"V3","text":"to confirm"},{"audio_text":"agenda","id":"V4","text":"agenda"},{"audio_text":"to pencil in","id":"V5","text":"to pencil in"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b2f1fc8-c0cb-56f0-8948-82805e9169db', 'b4269f65-49b9-52a4-bdf1-d8c73f3a8646', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Is our Friday plan still on?"}],"explanation":"“Yes — I have confirmed the table, and I am picking you up at seven.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes — I have confirmed the table, and I am picking you up at seven."},{"id":"C_B","is_correct":false,"text":"I confirmed it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"Friday is planning us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('4525316d-e359-58e3-a85f-ca5d3eb36822', 'b4269f65-49b9-52a4-bdf1-d8c73f3a8646', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('781550ed-7d02-5c51-a961-66c60fa7102d', NULL, 'Расписание на следующую неделю', 'Планировать неделю и сравнивать расписания.', '{"en":"Next Week''s Timetable","ru":"Расписание на следующую неделю"}'::jsonb, '{"en":"Plan the week and compare schedules.","ru":"Планировать неделю и сравнивать расписания."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fb0c2175-688e-5ae2-a0ce-c9a032858fec', '781550ed-7d02-5c51-a961-66c60fa7102d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"time block","right":"блок времени"},{"id":"P2","left":"back-to-back","right":"подряд (один за другим)"},{"id":"P3","left":"more productive","right":"продуктивнее"},{"id":"P4","left":"to leave a gap","right":"оставить окно"},{"id":"P5","left":"busier","right":"занятее"},{"id":"P6","left":"to plan ahead","right":"планировать заранее"},{"id":"P7","left":"buffer","right":"буфер (запас времени)"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fdf1873e-e370-565e-8a6d-c15f04251e59', '781550ed-7d02-5c51-a961-66c60fa7102d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Tuesday is busier than Monday this week.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Tuesday is busier than Monday this week."},{"id":"Q_B","is_correct":false,"text":"Tuesday is busierest than Monday."},{"id":"Q_C","is_correct":false,"text":"Tuesday is most busy than Monday."}],"question":"Which sentence compares two schedules correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3548ea85-5017-59cb-9c84-b0dede6faee4', '781550ed-7d02-5c51-a961-66c60fa7102d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"On Wednesday I have three back-to-back meetings, so I am going to leave a gap at lunch.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"В среду у меня три встречи подряд, поэтому я оставлю окно в обед.","target_language":"en","word_bank":["three","at","back-to-back","lunch.","Wednesday","I","have","On","yesterday","going","gap","had","leave","a","so","I","meetings,","to","am","did"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8e2509c-97e9-50bf-88e6-9e6fcc0bda06', '781550ed-7d02-5c51-a961-66c60fa7102d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"just as","instruction":"Выберите подходящее слово.","options":["just as","more most","much as"],"sentence_template":"Short breaks are ___ important than the meetings themselves.","translation_hint":"Короткие перерывы так же важны, как сами встречи."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a418b24f-9647-5523-a2ea-32e7874b26f3', '781550ed-7d02-5c51-a961-66c60fa7102d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","going","to","plan","the","trip","ahead","this","time."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["We","ahead","was","this","going","the","to","trip","time.","are","did","plan"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6e70e4b8-df8c-56d6-a742-32eb09a6861c', '781550ed-7d02-5c51-a961-66c60fa7102d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you leave a buffer between the calls, the day will be calmer and you will finish on time.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('452f1207-dafa-501b-a381-f72a6876431b', '781550ed-7d02-5c51-a961-66c60fa7102d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you leave a buffer between the calls, the day will be calmer and you will finish on time.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если оставлять буфер между звонками, день пройдёт спокойнее, и вы закончите вовремя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f78a3e37-adbb-5d2d-a7f1-efe702e34a31', '781550ed-7d02-5c51-a961-66c60fa7102d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"How does Wednesday look for the workshop?","translation":"Как среда выглядит для воркшопа?","type":"dialogue"},{"character":"Voice 2","text":"Busy — three calls back-to-back. But the afternoon has a gap.","translation":"Занята — три звонка подряд. Но во второй половине есть окно.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Then let''s put the workshop into that time block."},{"is_correct":false,"text":"Then we put it yesterday tomorrow."},{"is_correct":false,"text":"The Wednesday is workshoping the calls."}],"text":"What does Voice 1 suggest?","type":"choice"}],"title":"A Busy Wednesday"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('07c56ea0-0078-5522-9226-a0d77c5561d6', '781550ed-7d02-5c51-a961-66c60fa7102d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“back-to-back” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"One directly after another with no break"},{"id":"D_B","is_correct":false,"text":"Planned with long breaks between"},{"id":"D_C","is_correct":false,"text":"Spread across different weeks"}],"word":"back-to-back"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b7e5f442-fb07-5de1-bd3f-7c49308fae34', '781550ed-7d02-5c51-a961-66c60fa7102d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to plan ahead for December.","explanation":"The missing word is “plan”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"plan","id":"LW_A","is_correct":true},{"audio_text":"planned","id":"LW_B","is_correct":false},{"audio_text":"planning","id":"LW_C","is_correct":false}],"sentence_template":"I am going to ___ ahead for December."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5b5d14f2-81a8-538d-85e0-4753f71b33d5', '781550ed-7d02-5c51-a961-66c60fa7102d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"more","explanation":"The complete sentence is “Mornings are more productive for me.”.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Mornings are ___ productive for me."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('762fd252-6f09-570a-a327-b4b80e7220be', '781550ed-7d02-5c51-a961-66c60fa7102d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"time block","id":"V1","text":"time block"},{"audio_text":"back-to-back","id":"V2","text":"back-to-back"},{"audio_text":"more productive","id":"V3","text":"more productive"},{"audio_text":"to leave a gap","id":"V4","text":"to leave a gap"},{"audio_text":"busier","id":"V5","text":"busier"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8defba83-acbe-5c28-845a-144263096390', '781550ed-7d02-5c51-a961-66c60fa7102d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Can we meet early next week?"}],"explanation":"“Let''s see — if I move the Monday block, Tuesday morning will open up.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Let''s see — if I move the Monday block, Tuesday morning will open up."},{"id":"C_B","is_correct":false,"text":"We met yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The week is meeting us early."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('4525316d-e359-58e3-a85f-ca5d3eb36822', '781550ed-7d02-5c51-a961-66c60fa7102d', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('8eb22936-d6bf-545e-b68e-cd1af50085bb', NULL, 'Если планы рухнут', 'Понимать обсуждение переносов, используя should и первое условное.', '{"en":"If the Plans Fall Apart","ru":"Если планы рухнут"}'::jsonb, '{"en":"Understand rescheduling talks using should and the first conditional.","ru":"Понимать обсуждение переносов, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('59a03eaf-6f55-5ce7-9ba5-51d6d3f7da81', '8eb22936-d6bf-545e-b68e-cd1af50085bb', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to fall through","right":"сорваться (о планах)"},{"id":"P2","left":"plan B","right":"запасной план"},{"id":"P3","left":"to inform","right":"известить"},{"id":"P4","left":"last-minute","right":"в последний момент"},{"id":"P5","left":"to wait for","right":"ждать (подтверждения)"},{"id":"P6","left":"priority","right":"приоритет"},{"id":"P7","left":"as a backup","right":"как запасной вариант"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('91e680b4-43d2-55a2-8436-df0a0c645854', '8eb22936-d6bf-545e-b68e-cd1af50085bb', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should have a plan B for outdoor events.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should have a plan B for outdoor events."},{"id":"Q_B","is_correct":false,"text":"You should to have plan B yesterday."},{"id":"Q_C","is_correct":false,"text":"You must having plan B last event."}],"question":"Which sentence gives correct advice about plans?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7ce521ab-8553-5cfe-b1aa-f639220800a0', '8eb22936-d6bf-545e-b68e-cd1af50085bb', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If the picnic falls through at the last minute, we will have a plan B.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если пикник сорвётся в последний момент, у нас будет план Б.","target_language":"en","word_bank":["a","through","last","picnic","minute,","have","will","yesterday","the","If","falls","we","B.","the","fell","at","did","plan"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac24002f-0675-53bf-9515-e89be65f1253', '8eb22936-d6bf-545e-b68e-cd1af50085bb', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"cancels","instruction":"Выберите подходящее слово.","options":["cancels","will cancel","cancelled"],"sentence_template":"If the client ___ the meeting, we will use the time for the report.","translation_hint":"Если клиент отменит встречу, потратим время на отчёт."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('66b22bf1-e5ea-5504-be7c-8bc15af8b82e', '8eb22936-d6bf-545e-b68e-cd1af50085bb', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","inform","everyone","about","the","change","at","once."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["about","the","at","once.","mustn''t","You","should","inform","went","change","everyone"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0579d01a-fb92-5198-9f2d-bfac77219d72', '8eb22936-d6bf-545e-b68e-cd1af50085bb', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If the flights fall through, the train is our backup — it takes longer, but it is more reliable in winter.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1ed5fbea-7531-54af-8f0d-a182a52d6e01', '8eb22936-d6bf-545e-b68e-cd1af50085bb', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If the flights fall through, the train is our backup — it takes longer, but it is more reliable in winter.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если сорвутся перелёты, поезд — наш запасной вариант: он дольше, но зимой надёжнее."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('788e4a5f-b1a8-5766-bebf-7ce8044dae71', '8eb22936-d6bf-545e-b68e-cd1af50085bb', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"The client visit has fallen through for Thursday.","translation":"Визит клиента на четверг сорвался.","type":"dialogue"},{"character":"Voice 2","text":"Last minute again? What should we do with the booked room?","translation":"Опять в последний момент? Что делать с забронированным залом?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Let''s use it for the team workshop as a backup."},{"is_correct":false,"text":"We used it yesterday tomorrow already."},{"is_correct":false,"text":"The room is falling through the visit."}],"text":"What does Voice 1 propose?","type":"choice"}],"title":"The Cancelled Visit"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('98e54017-cd31-5df9-815d-c1de7b58252d', '8eb22936-d6bf-545e-b68e-cd1af50085bb', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to fall through” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To fail to happen as planned"},{"id":"D_B","is_correct":false,"text":"To happen exactly as planned"},{"id":"D_C","is_correct":false,"text":"To be postponed by one hour only"}],"word":"to fall through"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4d780c51-0137-58ea-bb69-9c7a7396bf5c', '8eb22936-d6bf-545e-b68e-cd1af50085bb', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If the event falls through, we will stay home.","explanation":"The missing word is “falls”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"falls","id":"LW_A","is_correct":true},{"audio_text":"will fall","id":"LW_B","is_correct":false},{"audio_text":"fell","id":"LW_C","is_correct":false}],"sentence_template":"If the event ___ through, we will stay home."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76f8e3a1-42d3-5be1-ba9f-f330e3834c41', '8eb22936-d6bf-545e-b68e-cd1af50085bb', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"as","explanation":"The complete sentence is “You should keep Friday as a backup.”.","hint_prefix":"as","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should keep Friday ___ a backup."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4bd69814-14b8-58bb-9f6c-155c8519d445', '8eb22936-d6bf-545e-b68e-cd1af50085bb', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to fall through","id":"V1","text":"to fall through"},{"audio_text":"plan B","id":"V2","text":"plan B"},{"audio_text":"to inform","id":"V3","text":"to inform"},{"audio_text":"last-minute","id":"V4","text":"last-minute"},{"audio_text":"to wait for","id":"V5","text":"to wait for"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('47031f86-8476-531d-9037-752536ae9208', '8eb22936-d6bf-545e-b68e-cd1af50085bb', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Our speaker just cancelled!"}],"explanation":"“Keep calm — if we split her talk into two shorter ones, the agenda will survive.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Keep calm — if we split her talk into two shorter ones, the agenda will survive."},{"id":"C_B","is_correct":false,"text":"She cancelled yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The talk is cancelling us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('4525316d-e359-58e3-a85f-ca5d3eb36822', '8eb22936-d6bf-545e-b68e-cd1af50085bb', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a3b4893a-ba1c-5530-8546-9086cdd42603', 'en', 'to make an appointment', 'договориться о встрече', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8af35da2-4929-51c9-ab53-2ea0f5f80873', 'en', 'to reschedule', 'перенести', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('479ada9b-5e03-574e-8749-5ae36cbb4e81', 'en', 'to confirm', 'подтвердить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f9a7faf2-77c0-549b-9eb6-f2dd0164c848', 'en', 'agenda', 'повестка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2fac1c58-900f-54f4-9961-61cb6de083ab', 'en', 'to pencil in', 'предварительно записать (в график)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('52266305-c57a-5305-ae9a-84d7dfd35911', 'en', 'double booking', 'двойное бронирование', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0cab6dad-b67d-5982-8150-9c12e58e63d4', 'en', 'calendar', 'календарь', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('732b4593-e441-5aee-8701-e79dde6570f1', 'en', 'time block', 'блок времени', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9699ea8f-4191-557f-96d0-1ff4ea7466ec', 'en', 'back-to-back', 'подряд (один за другим)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f40e9770-3080-5c0a-bcf9-b0b4d9e217fc', 'en', 'more productive', 'продуктивнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b5bfbf17-c083-5e54-9da1-5ab53e0183d3', 'en', 'to leave a gap', 'оставить окно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ca40591c-d745-5c85-9695-3b5d1fc30469', 'en', 'busier', 'занятее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5e3cb89e-bd14-514d-a6b1-af2602e37f47', 'en', 'to plan ahead', 'планировать заранее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dcc2d894-9ef8-5b2e-99cd-890bbe35f7bb', 'en', 'buffer', 'буфер (запас времени)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2c5c0f3c-c9c2-5e8f-9c3e-bc5539534ff2', 'en', 'to fall through', 'сорваться (о планах)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('17a1740f-266a-5fe5-8e11-f34afee896b4', 'en', 'plan B', 'запасной план', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('252967bf-df92-5901-bbb5-d1308816e523', 'en', 'to inform', 'известить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dc825e5a-4fa7-5c92-91e8-11f044667473', 'en', 'last-minute', 'в последний момент', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6a04cdd0-afee-51b2-92e5-a4d7067a7272', 'en', 'to wait for', 'ждать (подтверждения)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6a5d16a1-7f9e-5c34-bf92-150d61852a8b', 'en', 'priority', 'приоритет', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c1c58bb6-529e-5957-ad87-1de6621da915', 'en', 'as a backup', 'как запасной вариант', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4525316d-e359-58e3-a85f-ca5d3eb36822', id, 'b4269f65-49b9-52a4-bdf1-d8c73f3a8646', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'to make an appointment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4525316d-e359-58e3-a85f-ca5d3eb36822', id, 'b4269f65-49b9-52a4-bdf1-d8c73f3a8646', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to reschedule' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4525316d-e359-58e3-a85f-ca5d3eb36822', id, 'b4269f65-49b9-52a4-bdf1-d8c73f3a8646', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to confirm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4525316d-e359-58e3-a85f-ca5d3eb36822', id, 'b4269f65-49b9-52a4-bdf1-d8c73f3a8646', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'agenda' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4525316d-e359-58e3-a85f-ca5d3eb36822', id, 'b4269f65-49b9-52a4-bdf1-d8c73f3a8646', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to pencil in' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4525316d-e359-58e3-a85f-ca5d3eb36822', id, 'b4269f65-49b9-52a4-bdf1-d8c73f3a8646', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'double booking' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4525316d-e359-58e3-a85f-ca5d3eb36822', id, 'b4269f65-49b9-52a4-bdf1-d8c73f3a8646', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'calendar' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4525316d-e359-58e3-a85f-ca5d3eb36822', id, '781550ed-7d02-5c51-a961-66c60fa7102d', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'time block' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4525316d-e359-58e3-a85f-ca5d3eb36822', id, '781550ed-7d02-5c51-a961-66c60fa7102d', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'back-to-back' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4525316d-e359-58e3-a85f-ca5d3eb36822', id, '781550ed-7d02-5c51-a961-66c60fa7102d', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'more productive' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4525316d-e359-58e3-a85f-ca5d3eb36822', id, '781550ed-7d02-5c51-a961-66c60fa7102d', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to leave a gap' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4525316d-e359-58e3-a85f-ca5d3eb36822', id, '781550ed-7d02-5c51-a961-66c60fa7102d', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'busier' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4525316d-e359-58e3-a85f-ca5d3eb36822', id, '781550ed-7d02-5c51-a961-66c60fa7102d', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to plan ahead' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4525316d-e359-58e3-a85f-ca5d3eb36822', id, '781550ed-7d02-5c51-a961-66c60fa7102d', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'buffer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4525316d-e359-58e3-a85f-ca5d3eb36822', id, '8eb22936-d6bf-545e-b68e-cd1af50085bb', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to fall through' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4525316d-e359-58e3-a85f-ca5d3eb36822', id, '8eb22936-d6bf-545e-b68e-cd1af50085bb', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'plan B' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4525316d-e359-58e3-a85f-ca5d3eb36822', id, '8eb22936-d6bf-545e-b68e-cd1af50085bb', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to inform' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4525316d-e359-58e3-a85f-ca5d3eb36822', id, '8eb22936-d6bf-545e-b68e-cd1af50085bb', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'last-minute' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4525316d-e359-58e3-a85f-ca5d3eb36822', id, '8eb22936-d6bf-545e-b68e-cd1af50085bb', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to wait for' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4525316d-e359-58e3-a85f-ca5d3eb36822', id, '8eb22936-d6bf-545e-b68e-cd1af50085bb', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'priority' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4525316d-e359-58e3-a85f-ca5d3eb36822', id, '8eb22936-d6bf-545e-b68e-cd1af50085bb', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'as a backup' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
