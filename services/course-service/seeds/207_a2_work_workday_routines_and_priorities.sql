-- Track: A2_WORK_WORKDAY_ROUTINES_AND_PRIORITIES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('49c76251-0221-5f2d-9179-24b9d1f4911b', 'A2_WORK_WORKDAY_ROUTINES_AND_PRIORITIES', 'Рабочий день и приоритеты', 'Развивайте практический английский уровня A2 для работы по теме «Рабочий день и приоритеты».', '{"en":"Workday Routines and Priorities","ru":"Рабочий день и приоритеты"}'::jsonb, '{"en":"Develop practical A2 workplace English for workday routines and priorities.","ru":"Развивайте практический английский уровня A2 для работы по теме «Рабочий день и приоритеты»."}'::jsonb, 'en', 'A2', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('236a3f58-8058-5b94-b3f0-35f76643af1c', NULL, 'Мой обычный рабочий день', 'Описать рабочий день и изменения в нём, используя past simple и present perfect.', '{"en":"My Usual Workday","ru":"Мой обычный рабочий день"}'::jsonb, '{"en":"Describe a workday and its changes using past simple and present perfect.","ru":"Описать рабочий день и изменения в нём, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a2ba0c6-56c3-5c94-a6fb-5d33232c0e8b', '236a3f58-8058-5b94-b3f0-35f76643af1c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"routine","right":"порядок дня"},{"id":"P2","left":"to plan the day","right":"планировать день"},{"id":"P3","left":"most important task","right":"самая важная задача"},{"id":"P4","left":"before lunch","right":"до обеда"},{"id":"P5","left":"to check emails","right":"проверить почту"},{"id":"P6","left":"focus time","right":"время для концентрации"},{"id":"P7","left":"so far","right":"до сих пор"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a66d0d1a-d6d5-53c5-b5a5-f060e05fe458', '236a3f58-8058-5b94-b3f0-35f76643af1c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I have checked my emails twice so far today.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I have checked my emails twice so far today."},{"id":"Q_B","is_correct":false,"text":"I have checked my emails yesterday twice."},{"id":"Q_C","is_correct":false,"text":"I check my emails already so far."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('99470949-af96-5f92-8f5a-936c10b1f6f9', '236a3f58-8058-5b94-b3f0-35f76643af1c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I used to check my emails first, but now I have started with the most important task.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Раньше я проверял почту первым делом, но теперь я начинаю с самой важной задачи.","target_language":"en","word_bank":["did","I","to","important","check","yesterday","first,","now","the","most","I","started","use","but","task.","my","used","emails","have","with"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('004e0c2a-88f7-538b-97f7-7d72c912e8f3', '236a3f58-8058-5b94-b3f0-35f76643af1c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"started","instruction":"Выберите подходящее слово.","options":["started","has start","starting"],"sentence_template":"Last year my working day ___ at eight o''clock.","translation_hint":"В прошлом году мой рабочий день начинался в восемь."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('91932b65-9f9f-57a3-b0ae-ff9f2eeb0f40', '236a3f58-8058-5b94-b3f0-35f76643af1c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["This","morning","I","have","already","planned","the","whole","day."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["already","day.","was","have","morning","This","I","whole","planned","did","the"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f51299cb-2c79-567b-aefc-d2fdb60a1698', '236a3f58-8058-5b94-b3f0-35f76643af1c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I have already answered the most important emails, and it is only ten o''clock.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b321edd-90a0-529f-b41b-43d76e872c82', '236a3f58-8058-5b94-b3f0-35f76643af1c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I have already answered the most important emails, and it is only ten o''clock.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Я уже ответил на самые важные письма, а сейчас только десять часов."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b577dd4-985e-5cdf-9493-a0ae01cf2422', '236a3f58-8058-5b94-b3f0-35f76643af1c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"You look much more organised this month. What has changed?","translation":"Ты выглядишь гораздо организованнее в этом месяце. Что изменилось?","type":"dialogue"},{"character":"Tom","text":"I have started to plan my day the evening before.","translation":"Я начал планировать день накануне вечером.","type":"dialogue"},{"options":[{"is_correct":true,"text":"And what do you do first in the morning now?"},{"is_correct":false,"text":"And what did you did first tomorrow?"},{"is_correct":false,"text":"Is the routine planning you now?"}],"text":"What does Anna ask?","type":"choice"}],"title":"A New Routine"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd2159e8-6d98-56f3-b6c7-276039ccbdee', '236a3f58-8058-5b94-b3f0-35f76643af1c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“routine” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Things you regularly do in the same order"},{"id":"D_B","is_correct":false,"text":"Something you do only once a year"},{"id":"D_C","is_correct":false,"text":"A surprise meeting without a plan"}],"word":"routine"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a6c1dfb-4e83-5b9f-bc0d-cafeab5d5e50', '236a3f58-8058-5b94-b3f0-35f76643af1c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have planned my day before lunch today.","explanation":"The missing word is “planned”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"planned","id":"LW_A","is_correct":true},{"audio_text":"plan","id":"LW_B","is_correct":false},{"audio_text":"planning","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ my day before lunch today."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4f6ebc29-2c9f-56fe-a5e2-76326f602aef', '236a3f58-8058-5b94-b3f0-35f76643af1c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"so","explanation":"The complete sentence is “She has answered ten emails so far.”.","hint_prefix":"so","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"She has answered ten emails ___ far."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a76fd68c-5606-5633-8556-6d096b4e8b6d', '236a3f58-8058-5b94-b3f0-35f76643af1c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"routine","id":"V1","text":"routine"},{"audio_text":"to plan the day","id":"V2","text":"to plan the day"},{"audio_text":"most important task","id":"V3","text":"most important task"},{"audio_text":"before lunch","id":"V4","text":"before lunch"},{"audio_text":"to check emails","id":"V5","text":"to check emails"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b9427468-80be-5b67-9774-610b5c496907', '236a3f58-8058-5b94-b3f0-35f76643af1c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"When do you check your emails?"}],"explanation":"“I used to check them all morning, but now I do it twice a day.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"I used to check them all morning, but now I do it twice a day."},{"id":"C_B","is_correct":false,"text":"Yes, I check them yesterday."},{"id":"C_C","is_correct":false,"text":"The emails are checking me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('49c76251-0221-5f2d-9179-24b9d1f4911b', '236a3f58-8058-5b94-b3f0-35f76643af1c', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('6b6622fd-58ae-5eb7-bbdf-0bf838cca753', NULL, 'Завтра по плану', 'Рассказать о планах на день и сравнить задачи по важности.', '{"en":"Tomorrow''s Plan","ru":"Завтра по плану"}'::jsonb, '{"en":"Talk about tomorrow''s plans and compare tasks by importance.","ru":"Рассказать о планах на день и сравнить задачи по важности."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4d8da670-c8c7-5d85-87ed-d740be398a53', '6b6622fd-58ae-5eb7-bbdf-0bf838cca753', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"first thing","right":"первым делом"},{"id":"P2","left":"to-do list","right":"список дел"},{"id":"P3","left":"urgent task","right":"срочная задача"},{"id":"P4","left":"later","right":"позже"},{"id":"P5","left":"as early as possible","right":"как можно раньше"},{"id":"P6","left":"to schedule","right":"запланировать"},{"id":"P7","left":"quieter","right":"тише (спокойнее)"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('27d1b888-4ae4-53ff-9f6c-f0323496d7ed', '6b6622fd-58ae-5eb7-bbdf-0bf838cca753', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I am going to write the report first thing tomorrow.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I am going to write the report first thing tomorrow."},{"id":"Q_B","is_correct":false,"text":"I wrote the report first thing yesterday."},{"id":"Q_C","is_correct":false,"text":"I have write the report first thing already."}],"question":"Which sentence talks about tomorrow''s plan?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('80423aa2-b78d-5ac9-904d-02f7ee9c025d', '6b6622fd-58ae-5eb7-bbdf-0bf838cca753', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I am going to arrive earlier tomorrow because the office is quieter in the morning.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Завтра я собираюсь прийти пораньше, потому что утром в офисе тише.","target_language":"en","word_bank":["earlier","arrives","yesterday","I","quieter","the","arrive","in","going","because","am","to","office","did","the","morning.","is","tomorrow"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fdf47987-3181-50d3-9b2b-3e23e9ce2fcf', '6b6622fd-58ae-5eb7-bbdf-0bf838cca753', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"better","instruction":"Выберите подходящее слово.","options":["better","best","more good"],"sentence_template":"The morning is ___ for focused work than the afternoon.","translation_hint":"Утро лучше подходит для концентрированной работы, чем день."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0933b8f6-ece8-528b-b634-0ffe2fac9305', '6b6622fd-58ae-5eb7-bbdf-0bf838cca753', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","am","going","to","schedule","all","my","meetings","for","the","afternoon."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["all","my","did","I","meetings","to","for","afternoon.","was","am","going","schedule","the"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ec85d8f2-36df-568f-b24a-86186f1f9766', '6b6622fd-58ae-5eb7-bbdf-0bf838cca753', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If I finish the urgent task in the morning, I will have a quieter afternoon tomorrow.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0f6d2e74-a5b3-5a0f-a3d5-bb864f52d930', '6b6622fd-58ae-5eb7-bbdf-0bf838cca753', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If I finish the urgent task in the morning, I will have a quieter afternoon tomorrow.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если я закончу срочную задачу утром, завтра во второй половине дня будет спокойнее."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d271bef7-8ade-5581-aa9c-1136fb4e2837', '6b6622fd-58ae-5eb7-bbdf-0bf838cca753', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Tom","text":"What are you going to do first thing tomorrow?","translation":"Что ты сделаешь первым делом завтра?","type":"dialogue"},{"character":"Anna","text":"The quarterly report — it is more urgent than the emails.","translation":"Квартальный отчёт — он срочнее почты.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Good idea — you should schedule it before lunch."},{"is_correct":false,"text":"You must to schedule it yesterday evening."},{"is_correct":false,"text":"The report is going you first tomorrow."}],"text":"What does Tom advise?","type":"choice"}],"title":"The Evening Plan"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c73f3ffe-c2c5-51d6-a6b4-c778f6df03d1', '6b6622fd-58ae-5eb7-bbdf-0bf838cca753', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to-do list” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A list of tasks that you need to do"},{"id":"D_B","is_correct":false,"text":"A list of people invited to a party"},{"id":"D_C","is_correct":false,"text":"A report about finished work only"}],"word":"to-do list"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('781edc40-47e7-5760-b81a-b36bae51fe4b', '6b6622fd-58ae-5eb7-bbdf-0bf838cca753', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to write the to-do list this evening.","explanation":"The missing word is “list”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"list","id":"LW_A","is_correct":true},{"audio_text":"listed","id":"LW_B","is_correct":false},{"audio_text":"listing","id":"LW_C","is_correct":false}],"sentence_template":"I am going to write the to-do ___ this evening."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd7b77a3-42ca-57f0-81e9-5bf647281fc8', '6b6622fd-58ae-5eb7-bbdf-0bf838cca753', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"more","explanation":"The complete sentence is “The urgent task is more important than the rest.”.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The urgent task is ___ important than the rest."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('effa1f02-f1e2-5b17-9e16-7fd546e12670', '6b6622fd-58ae-5eb7-bbdf-0bf838cca753', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"first thing","id":"V1","text":"first thing"},{"audio_text":"to-do list","id":"V2","text":"to-do list"},{"audio_text":"urgent task","id":"V3","text":"urgent task"},{"audio_text":"later","id":"V4","text":"later"},{"audio_text":"as early as possible","id":"V5","text":"as early as possible"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('207b4b08-2ea3-56cc-a5af-ba87586a618f', '6b6622fd-58ae-5eb7-bbdf-0bf838cca753', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Are you free for a call tomorrow at eight?"}],"explanation":"“Eight is a bit early — could we schedule it after ten instead?” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Eight is a bit early — could we schedule it after ten instead?"},{"id":"C_B","is_correct":false,"text":"Yes, I called you tomorrow already."},{"id":"C_C","is_correct":false,"text":"The call is scheduling me at eight."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('49c76251-0221-5f2d-9179-24b9d1f4911b', '6b6622fd-58ae-5eb7-bbdf-0bf838cca753', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('68d3a190-ca99-5612-bb91-17bde59083d2', NULL, 'Как правильно расставить приоритеты', 'Дать советы о приоритетах, используя should и первое условное.', '{"en":"How to Prioritise Well","ru":"Как правильно расставить приоритеты"}'::jsonb, '{"en":"Give prioritisation advice using should and the first conditional.","ru":"Дать советы о приоритетах, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e11150e7-9b84-501f-938e-0fdc1142fc61', '68d3a190-ca99-5612-bb91-17bde59083d2', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to manage time","right":"управлять временем"},{"id":"P2","left":"distraction","right":"отвлекающий фактор"},{"id":"P3","left":"to turn off notifications","right":"выключить уведомления"},{"id":"P4","left":"one task at a time","right":"одна задача за раз"},{"id":"P5","left":"to be worth","right":"стоить того"},{"id":"P6","left":"regularly","right":"регулярно"},{"id":"P7","left":"habit","right":"привычка"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2f00015e-741d-5cb6-8fa0-369e993348e9', '68d3a190-ca99-5612-bb91-17bde59083d2', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should turn off notifications when you do focused work.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should turn off notifications when you do focused work."},{"id":"Q_B","is_correct":false,"text":"You should to turn off notifications yesterday."},{"id":"Q_C","is_correct":false,"text":"You must turning off notifications last week."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b005a5cd-fcc8-5fc7-9f9d-6af75f59889e', '68d3a190-ca99-5612-bb91-17bde59083d2', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you do one task at a time, you will finish your work faster.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если ты будешь делать одну задачу за раз, ты закончишь работу быстрее.","target_language":"en","word_bank":["did","at","yesterday","finish","you","one","does","task","do","will","If","faster.","work","you","time,","your","a"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('562420c4-6d66-5d33-9253-632aa7b2cab2', '68d3a190-ca99-5612-bb91-17bde59083d2', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"interrupts","instruction":"Выберите подходящее слово.","options":["interrupts","will interrupt","interrupted"],"sentence_template":"If a distraction ___ you every five minutes, you will lose your focus.","translation_hint":"Если отвлекающий фактор мешает тебе каждые пять минут, ты потеряешь концентрацию."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b06c8b8f-6363-5e5c-8848-b508b56e4183', '68d3a190-ca99-5612-bb91-17bde59083d2', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","check","your","emails","at","fixed","times","of","the","day."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["check","You","day.","at","mustn''t","times","fixed","your","of","should","went","the","emails"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8bd4393a-3108-555c-a626-3cdff962b66a', '68d3a190-ca99-5612-bb91-17bde59083d2', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you plan your day regularly, prioritising will become a habit very quickly.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('62cf2e3d-3dda-52b9-96e5-d949533c828c', '68d3a190-ca99-5612-bb91-17bde59083d2', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you plan your day regularly, prioritising will become a habit very quickly.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если ты будешь регулярно планировать день, расстановка приоритетов быстро станет привычкой."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('880a3895-0814-5f63-ab31-5307d7530fde', '68d3a190-ca99-5612-bb91-17bde59083d2', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"I never finish my to-do list. What should I do?","translation":"Я никогда не заканчиваю список дел. Что мне делать?","type":"dialogue"},{"character":"Tom","text":"How many tasks do you put on it?","translation":"Сколько задач ты в него записываешь?","type":"dialogue"},{"options":[{"is_correct":true,"text":"About fifteen — maybe that is too many."},{"is_correct":false,"text":"About fifteen, and I finished them all yesterday."},{"is_correct":false,"text":"The list is doing itself the tasks."}],"text":"What does Anna say?","type":"choice"}],"title":"Time Management Tips"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9fcbef8b-ff18-58df-ac27-d419d5d9da34', '68d3a190-ca99-5612-bb91-17bde59083d2', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“distraction” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Something that takes your attention away from work"},{"id":"D_B","is_correct":false,"text":"A quiet room where nobody interrupts you"},{"id":"D_C","is_correct":false,"text":"A short break between two meetings"}],"word":"distraction"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a1f67819-1605-5e34-922a-41d19e8ae925', '68d3a190-ca99-5612-bb91-17bde59083d2', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you turn off notifications, you will focus better.","explanation":"The missing word is “turn off”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"turn off","id":"LW_A","is_correct":true},{"audio_text":"will turn off","id":"LW_B","is_correct":false},{"audio_text":"turned off","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ notifications, you will focus better."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b5e8ae8-5526-5ca8-91c2-f48f6e2071c3', '68d3a190-ca99-5612-bb91-17bde59083d2', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"one","explanation":"The complete sentence is “You should do one task at a time.”.","hint_prefix":"on","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should do ___ task at a time."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c8996af9-84e2-531d-b210-ff1e47135489', '68d3a190-ca99-5612-bb91-17bde59083d2', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to manage time","id":"V1","text":"to manage time"},{"audio_text":"distraction","id":"V2","text":"distraction"},{"audio_text":"to turn off notifications","id":"V3","text":"to turn off notifications"},{"audio_text":"one task at a time","id":"V4","text":"one task at a time"},{"audio_text":"to be worth","id":"V5","text":"to be worth"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7464a996-12a4-52a9-8040-550ee38b9723', '68d3a190-ca99-5612-bb91-17bde59083d2', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"I start many tasks but finish few."}],"explanation":"“You should try one task at a time — it is worth building the habit.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"You should try one task at a time — it is worth building the habit."},{"id":"C_B","is_correct":false,"text":"You must to try it yesterday."},{"id":"C_C","is_correct":false,"text":"The tasks are starting you."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('49c76251-0221-5f2d-9179-24b9d1f4911b', '68d3a190-ca99-5612-bb91-17bde59083d2', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e3dd4615-c46c-550b-92b6-880dcf30814a', 'en', 'routine', 'порядок дня', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8cbc4524-4112-5d6e-bb3a-47a453073820', 'en', 'to plan the day', 'планировать день', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d17d042b-2bcb-5a79-a51a-08da873fea5e', 'en', 'most important task', 'самая важная задача', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('51df78a0-c409-5dee-be83-293be2f9f50d', 'en', 'before lunch', 'до обеда', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('21e3adf7-74f2-52ec-91b4-8f72e3d7fda9', 'en', 'to check emails', 'проверить почту', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('24d0214f-5be9-55c4-9544-a997eb4aaab4', 'en', 'focus time', 'время для концентрации', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('478640e0-c4e8-5234-9e00-ca9b74dde93b', 'en', 'so far', 'до сих пор', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2e3ea477-34ef-5756-9691-da497558c2b9', 'en', 'first thing', 'первым делом', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2d8b05d6-24bf-57d9-986d-d23830cb9d15', 'en', 'to-do list', 'список дел', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6d6266ef-4e9b-573a-8050-2711a3060ec9', 'en', 'urgent task', 'срочная задача', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2031a517-3fd2-5477-ad5d-426925135c6c', 'en', 'later', 'позже', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3d25c180-9272-5b35-bd2a-4a2c6aee90cb', 'en', 'as early as possible', 'как можно раньше', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('841f0028-5c32-575a-93ee-fd958fe411ff', 'en', 'to schedule', 'запланировать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c6b48ef6-8e68-55c0-af34-fee291907be6', 'en', 'quieter', 'тише (спокойнее)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3a665d84-4ad5-5276-a25e-bee1da75c5b3', 'en', 'to manage time', 'управлять временем', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e31eac69-ece1-580b-9ab3-85a36fed44d8', 'en', 'distraction', 'отвлекающий фактор', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a1e275f1-22ea-562f-a646-9ecf36173958', 'en', 'to turn off notifications', 'выключить уведомления', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8e942d4a-ee8c-5f2d-8d77-5bba22b5b76a', 'en', 'one task at a time', 'одна задача за раз', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e203e6c8-0046-5021-941d-c2146d410cc5', 'en', 'to be worth', 'стоить того', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b91591cb-a38e-5ed2-bc8e-f05b47a31e0e', 'en', 'regularly', 'регулярно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('96ae1f02-779f-5fe4-9ac5-6870c5f42c5e', 'en', 'habit', 'привычка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '49c76251-0221-5f2d-9179-24b9d1f4911b', id, '236a3f58-8058-5b94-b3f0-35f76643af1c', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'routine' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '49c76251-0221-5f2d-9179-24b9d1f4911b', id, '236a3f58-8058-5b94-b3f0-35f76643af1c', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to plan the day' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '49c76251-0221-5f2d-9179-24b9d1f4911b', id, '236a3f58-8058-5b94-b3f0-35f76643af1c', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'most important task' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '49c76251-0221-5f2d-9179-24b9d1f4911b', id, '236a3f58-8058-5b94-b3f0-35f76643af1c', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'before lunch' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '49c76251-0221-5f2d-9179-24b9d1f4911b', id, '236a3f58-8058-5b94-b3f0-35f76643af1c', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to check emails' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '49c76251-0221-5f2d-9179-24b9d1f4911b', id, '236a3f58-8058-5b94-b3f0-35f76643af1c', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'focus time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '49c76251-0221-5f2d-9179-24b9d1f4911b', id, '236a3f58-8058-5b94-b3f0-35f76643af1c', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'so far' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '49c76251-0221-5f2d-9179-24b9d1f4911b', id, '6b6622fd-58ae-5eb7-bbdf-0bf838cca753', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'first thing' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '49c76251-0221-5f2d-9179-24b9d1f4911b', id, '6b6622fd-58ae-5eb7-bbdf-0bf838cca753', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to-do list' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '49c76251-0221-5f2d-9179-24b9d1f4911b', id, '6b6622fd-58ae-5eb7-bbdf-0bf838cca753', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'urgent task' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '49c76251-0221-5f2d-9179-24b9d1f4911b', id, '6b6622fd-58ae-5eb7-bbdf-0bf838cca753', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'later' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '49c76251-0221-5f2d-9179-24b9d1f4911b', id, '6b6622fd-58ae-5eb7-bbdf-0bf838cca753', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'as early as possible' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '49c76251-0221-5f2d-9179-24b9d1f4911b', id, '6b6622fd-58ae-5eb7-bbdf-0bf838cca753', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to schedule' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '49c76251-0221-5f2d-9179-24b9d1f4911b', id, '6b6622fd-58ae-5eb7-bbdf-0bf838cca753', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'quieter' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '49c76251-0221-5f2d-9179-24b9d1f4911b', id, '68d3a190-ca99-5612-bb91-17bde59083d2', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to manage time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '49c76251-0221-5f2d-9179-24b9d1f4911b', id, '68d3a190-ca99-5612-bb91-17bde59083d2', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'distraction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '49c76251-0221-5f2d-9179-24b9d1f4911b', id, '68d3a190-ca99-5612-bb91-17bde59083d2', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to turn off notifications' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '49c76251-0221-5f2d-9179-24b9d1f4911b', id, '68d3a190-ca99-5612-bb91-17bde59083d2', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'one task at a time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '49c76251-0221-5f2d-9179-24b9d1f4911b', id, '68d3a190-ca99-5612-bb91-17bde59083d2', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to be worth' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '49c76251-0221-5f2d-9179-24b9d1f4911b', id, '68d3a190-ca99-5612-bb91-17bde59083d2', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'regularly' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '49c76251-0221-5f2d-9179-24b9d1f4911b', id, '68d3a190-ca99-5612-bb91-17bde59083d2', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'habit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
