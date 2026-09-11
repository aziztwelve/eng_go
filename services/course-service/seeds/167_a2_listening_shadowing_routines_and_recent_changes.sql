-- Track: A2_LISTENING_SHADOWING_ROUTINES_AND_RECENT_CHANGES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('4f90e3ec-8263-58d6-8f65-a4104d5f7798', 'A2_LISTENING_SHADOWING_ROUTINES_AND_RECENT_CHANGES', 'Распорядок и недавние изменения', 'Развивайте навыки аудирования и повторения уровня A2 по теме «Распорядок и недавние изменения».', '{"en":"Routines and Recent Changes","ru":"Распорядок и недавние изменения"}'::jsonb, '{"en":"Develop A2 listening and shadowing skills for routines and recent changes.","ru":"Развивайте навыки аудирования и повторения уровня A2 по теме «Распорядок и недавние изменения»."}'::jsonb, 'en', 'A2', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('11108ea2-3bf2-5629-bcf6-aa402195071d', NULL, 'Что изменилось в режиме', 'Понимать рассказы об изменениях режима, используя past simple и present perfect.', '{"en":"What Has Changed in the Routine","ru":"Что изменилось в режиме"}'::jsonb, '{"en":"Understand routine changes using past simple and present perfect.","ru":"Понимать рассказы об изменениях режима, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ea7e3dfd-d3fb-50d2-9780-838cddd436ae', '11108ea2-3bf2-5629-bcf6-aa402195071d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to switch to","right":"переключиться на"},{"id":"P2","left":"daily routine","right":"ежедневный режим"},{"id":"P3","left":"to work from home","right":"работать из дома"},{"id":"P4","left":"used to","right":"раньше"},{"id":"P5","left":"to give up","right":"отказаться от"},{"id":"P6","left":"schedule","right":"расписание"},{"id":"P7","left":"noticeable","right":"заметный"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ca5d836e-d2ca-542b-b835-e215410650ee', '11108ea2-3bf2-5629-bcf6-aa402195071d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I have switched to morning workouts this month.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I have switched to morning workouts this month."},{"id":"Q_B","is_correct":false,"text":"I have switched to them last month."},{"id":"Q_C","is_correct":false,"text":"I switch to workouts already this month."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('05df0530-0c93-5e2c-a185-499674e16caf', '11108ea2-3bf2-5629-bcf6-aa402195071d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I used to work from the office, but now I have switched to working from home.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Раньше я работал из офиса, а теперь перешёл на удалёнку.","target_language":"en","word_bank":["from","used","tomorrow","I","working","work","the","use","have","I","home.","now","to","to","from","but","office,","did","switched"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('199d77d3-44f7-53de-9f65-3fa5e0c6978b', '11108ea2-3bf2-5629-bcf6-aa402195071d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"gave","instruction":"Выберите подходящее слово.","options":["gave","has give","giving"],"sentence_template":"Last spring she ___ up her evening coffee.","translation_hint":"Прошлой весной она отказалась от вечернего кофе."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('30e3a38d-8ce9-5317-b2d0-0eb7ef752659', '11108ea2-3bf2-5629-bcf6-aa402195071d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","change","in","his","schedule","has","been","noticeable."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["his","in","been","change","was","The","did","has","schedule","noticeable."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c547fe79-5598-5cca-8966-bbf4c553564a', '11108ea2-3bf2-5629-bcf6-aa402195071d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I used to start my day with news scrolling, but I have given it up, and my mornings have become much calmer.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f4650431-a89e-54f3-9fae-fdd0117846e3', '11108ea2-3bf2-5629-bcf6-aa402195071d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I used to start my day with news scrolling, but I have given it up, and my mornings have become much calmer.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Раньше я начинал день с ленты новостей, но отказался от этого, и мои утра стали гораздо спокойнее."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1c8b486d-07ef-5eed-a9e6-636845759ff4', '11108ea2-3bf2-5629-bcf6-aa402195071d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"You are at the gym so early these days!","translation":"Ты в последнее время так рано в зале!","type":"dialogue"},{"character":"Voice 2","text":"Yes, I have switched to morning sessions — my evenings are free now.","translation":"Да, я перешёл на утренние тренировки — вечера теперь свободны.","type":"dialogue"},{"options":[{"is_correct":true,"text":"How long have you kept the new routine?"},{"is_correct":false,"text":"How long did you kept it tomorrow?"},{"is_correct":false,"text":"Is the gym switching you mornings?"}],"text":"What does Voice 1 ask?","type":"choice"}],"title":"New Schedule"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b0a201b3-48d9-5455-8439-3bb817cfcbf6', '11108ea2-3bf2-5629-bcf6-aa402195071d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“noticeable” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Easy to see or feel"},{"id":"D_B","is_correct":false,"text":"Very small and hard to see"},{"id":"D_C","is_correct":false,"text":"Hidden behind other changes"}],"word":"noticeable"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('75865dc2-984c-5b4e-aa64-081dec850f3f', '11108ea2-3bf2-5629-bcf6-aa402195071d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have switched to a new schedule.","explanation":"The missing word is “switched”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"switched","id":"LW_A","is_correct":true},{"audio_text":"switch","id":"LW_B","is_correct":false},{"audio_text":"switching","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ to a new schedule."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4dc432e2-d05f-5979-ae23-0d05692af3ac', '11108ea2-3bf2-5629-bcf6-aa402195071d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"to","explanation":"The complete sentence is “She used to work evenings.”.","hint_prefix":"to","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"She used ___ work evenings."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3727b60c-b987-515b-ab12-f481b408de04', '11108ea2-3bf2-5629-bcf6-aa402195071d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to switch to","id":"V1","text":"to switch to"},{"audio_text":"daily routine","id":"V2","text":"daily routine"},{"audio_text":"to work from home","id":"V3","text":"to work from home"},{"audio_text":"used to","id":"V4","text":"used to"},{"audio_text":"to give up","id":"V5","text":"to give up"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1fa5b6bd-e458-518d-87f3-ae6dbf7423b9', '11108ea2-3bf2-5629-bcf6-aa402195071d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Do you still commute every day?"}],"explanation":"“No — I have been working from home since spring, and it has changed everything.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"No — I have been working from home since spring, and it has changed everything."},{"id":"C_B","is_correct":false,"text":"I commuted yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The commute is homing me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('4f90e3ec-8263-58d6-8f65-a4104d5f7798', '11108ea2-3bf2-5629-bcf6-aa402195071d', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e4074e6e-baf3-5c6a-af5d-87ea9a40fdcc', NULL, 'Новый режим с месяца', 'Понимать планы изменения режима и сравнивать расписания.', '{"en":"A New Regime From This Month","ru":"Новый режим с месяца"}'::jsonb, '{"en":"Understand routine plans and compare schedules.","ru":"Понимать планы изменения режима и сравнивать расписания."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65ca4914-d0ce-539d-8912-c558b15e1cb5', 'e4074e6e-baf3-5c6a-af5d-87ea9a40fdcc', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to adjust","right":"подстроить"},{"id":"P2","left":"more balanced","right":"сбалансированнее"},{"id":"P3","left":"sleep pattern","right":"режим сна"},{"id":"P4","left":"to squeeze in","right":"втиснуть (в расписание)"},{"id":"P5","left":"flexible","right":"гибкий"},{"id":"P6","left":"time slot","right":"временной слот"},{"id":"P7","left":"earlier","right":"раньше"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('14f419cd-8e6e-58c7-abd8-fc14c940ec8a', 'e4074e6e-baf3-5c6a-af5d-87ea9a40fdcc', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The new timetable is more balanced than the old one.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The new timetable is more balanced than the old one."},{"id":"Q_B","is_correct":false,"text":"The new timetable is balanceder than old."},{"id":"Q_C","is_correct":false,"text":"The timetable is most balanced than old."}],"question":"Which sentence compares two schedules correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('48e14e25-0b07-592c-98e2-760626ff42c6', 'e4074e6e-baf3-5c6a-af5d-87ea9a40fdcc', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"From this month I am going to get up earlier and squeeze in some sport before work.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"С этого месяца я собираюсь вставать раньше и втискивать спорт до работы.","target_language":"en","word_bank":["before","sport","got","work.","earlier","yesterday","From","some","month","this","get","am","going","up","in","I","to","squeeze","did","and"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('169489ee-dc73-50e5-95e4-66a3f75ac39c', 'e4074e6e-baf3-5c6a-af5d-87ea9a40fdcc', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"better","instruction":"Выберите подходящее слово.","options":["better","best","more good"],"sentence_template":"A flexible schedule is ___ for parents.","translation_hint":"Гибкий график лучше для родителей."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('57119e56-919e-52fc-b3d4-90e2eb272618', 'e4074e6e-baf3-5c6a-af5d-87ea9a40fdcc', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","going","to","adjust","our","sleep","patterns."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["sleep","was","are","to","did","our","going","adjust","We","patterns."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('82a252aa-fa47-5b9b-b6f7-d79a0c020edd', 'e4074e6e-baf3-5c6a-af5d-87ea9a40fdcc', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If I move my time slot to the morning, my afternoons will be calmer and I will sleep better.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da3129ea-7a3b-5316-be21-f5d7719fcf0c', 'e4074e6e-baf3-5c6a-af5d-87ea9a40fdcc', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If I move my time slot to the morning, my afternoons will be calmer and I will sleep better.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если перенести мой слот на утро, вечера будут спокойнее, и я стану лучше спать."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd7911ee-afb2-5203-86c7-4eb6aa9ebb85', 'e4074e6e-baf3-5c6a-af5d-87ea9a40fdcc', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"How are you going to fit in the course with your job?","translation":"Как ты впишешь курс в график с работой?","type":"dialogue"},{"character":"Voice 2","text":"I am going to use the morning slot — seven to eight, before the office.","translation":"Собираюсь занять утренний слот — с семи до восьми, до офиса.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That sounds more balanced than evening classes."},{"is_correct":false,"text":"It sounded balanced yesterday tomorrow."},{"is_correct":false,"text":"The course is slotting your job."}],"text":"What does Voice 1 say?","type":"choice"}],"title":"Adjusting the Day"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3251901e-7cb3-5f31-89b9-513ebe6d43cf', 'e4074e6e-baf3-5c6a-af5d-87ea9a40fdcc', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to squeeze in” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To find time for something in a busy day"},{"id":"D_B","is_correct":false,"text":"To cancel an activity to free your evening"},{"id":"D_C","is_correct":false,"text":"To make your lunch break longer"}],"word":"to squeeze in"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e71e482a-7c9c-5a69-aec4-5d89177a0c21', 'e4074e6e-baf3-5c6a-af5d-87ea9a40fdcc', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to squeeze in a walk at lunch.","explanation":"The missing word is “squeeze”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"squeeze","id":"LW_A","is_correct":true},{"audio_text":"squeezed","id":"LW_B","is_correct":false},{"audio_text":"squeezing","id":"LW_C","is_correct":false}],"sentence_template":"I am going to ___ in a walk at lunch."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c6e4d7f5-6b7f-5777-b920-9aa476754168', 'e4074e6e-baf3-5c6a-af5d-87ea9a40fdcc', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"easier","explanation":"The complete sentence is “Mornings are easier for me than evenings.”.","hint_prefix":"ea","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Mornings are ___ for me than evenings."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ffb20a80-a47e-5891-80bf-7a55d0ab98a5', 'e4074e6e-baf3-5c6a-af5d-87ea9a40fdcc', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to adjust","id":"V1","text":"to adjust"},{"audio_text":"more balanced","id":"V2","text":"more balanced"},{"audio_text":"sleep pattern","id":"V3","text":"sleep pattern"},{"audio_text":"to squeeze in","id":"V4","text":"to squeeze in"},{"audio_text":"flexible","id":"V5","text":"flexible"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f78ac2c7-d330-5166-8e52-ae3118916b46', 'e4074e6e-baf3-5c6a-af5d-87ea9a40fdcc', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"When will you start the new routine?"}],"explanation":"“Next week — if I prepare everything on Sunday, Monday will be easy.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Next week — if I prepare everything on Sunday, Monday will be easy."},{"id":"C_B","is_correct":false,"text":"I started it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The routine is starting me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('4f90e3ec-8263-58d6-8f65-a4104d5f7798', 'e4074e6e-baf3-5c6a-af5d-87ea9a40fdcc', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('81b6d5e3-721d-50df-8ef3-ad33ad2dd4ba', NULL, 'Если режим не работает', 'Понимать советы о режиме дня, используя should и первое условное.', '{"en":"If the Routine Does Not Work","ru":"Если режим не работает"}'::jsonb, '{"en":"Understand routine advice using should and the first conditional.","ru":"Понимать советы о режиме дня, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('30665f7d-518d-50f0-979d-c33e5646ef5a', '81b6d5e3-721d-50df-8ef3-ad33ad2dd4ba', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to stick to","right":"придерживаться"},{"id":"P2","left":"to slip back","right":"скатиться обратно (к старому)"},{"id":"P3","left":"willpower","right":"сила воли"},{"id":"P4","left":"reminder","right":"напоминание"},{"id":"P5","left":"small win","right":"маленькая победа"},{"id":"P6","left":"to give up","right":"бросить"},{"id":"P7","left":"consistently","right":"последовательно"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('be489f68-2150-5e09-a800-d19a3eee6866', '81b6d5e3-721d-50df-8ef3-ad33ad2dd4ba', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should stick to the same time every day.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should stick to the same time every day."},{"id":"Q_B","is_correct":false,"text":"You should to stick it yesterday."},{"id":"Q_C","is_correct":false,"text":"You must sticking same time last week."}],"question":"Which sentence gives correct routine advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3d449c6b-3a34-5ac4-a1e8-5a11f87a0582', '81b6d5e3-721d-50df-8ef3-ad33ad2dd4ba', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you follow the routine consistently, you will slip back less often.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если ты будешь следовать режиму последовательно, срывов станет меньше.","target_language":"en","word_bank":["you","follow","followed","consistently,","routine","less","back","slip","will","If","did","the","often.","you","yesterday"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d448963e-f77b-5f22-838d-49a80ef51436', '81b6d5e3-721d-50df-8ef3-ad33ad2dd4ba', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"continue","instruction":"Выберите подходящее слово.","options":["continue","will continue","continued"],"sentence_template":"If you miss a day, just ___ the next one.","translation_hint":"Если пропустил день, просто продолжай со следующего."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('db7c0427-ffbc-553b-aa40-734932f7b406', '81b6d5e3-721d-50df-8ef3-ad33ad2dd4ba', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","count","every","small","win."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["win.","You","went","every","mustn''t","count","should","small"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('426bf35a-0a40-540d-bbc7-180339d646f5', '81b6d5e3-721d-50df-8ef3-ad33ad2dd4ba', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you set a reminder for the first month, the routine will become a habit before your willpower runs out.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9f4274d-a4f0-5284-84c1-7b0f44b69f37', '81b6d5e3-721d-50df-8ef3-ad33ad2dd4ba', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you set a reminder for the first month, the routine will become a habit before your willpower runs out.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если поставить напоминание на первый месяц, режим станет привычкой до того, как закончится сила воли."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('07cac569-6281-586d-940e-578a65a9cdb4', '81b6d5e3-721d-50df-8ef3-ad33ad2dd4ba', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"I slipped back into late nights last week.","translation":"На прошлой неделе я снова скатился в поздние отбои.","type":"dialogue"},{"character":"Voice 2","text":"It happens. What should you change?","translation":"Бывает. Что стоит изменить?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Set an evening reminder — it has helped me a lot."},{"is_correct":false,"text":"You must set it yesterday already."},{"is_correct":false,"text":"The late nights are slipping you back."}],"text":"What is the good advice?","type":"choice"}],"title":"The Slipped Week"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ca3dcb72-3301-5875-bce6-9fe4a9263f77', '81b6d5e3-721d-50df-8ef3-ad33ad2dd4ba', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“consistently” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"In the same regular way over time"},{"id":"D_B","is_correct":false,"text":"Only on Mondays and holidays"},{"id":"D_C","is_correct":false,"text":"Whenever you feel like it"}],"word":"consistently"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f3952510-45be-542f-b09a-bd1151e04da8', '81b6d5e3-721d-50df-8ef3-ad33ad2dd4ba', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you stick to the plan, results will come.","explanation":"The missing word is “stick”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"stick","id":"LW_A","is_correct":true},{"audio_text":"will stick","id":"LW_B","is_correct":false},{"audio_text":"stuck","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ to the plan, results will come."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9eba878d-267a-56c3-a370-a7ef3e13fcae', '81b6d5e3-721d-50df-8ef3-ad33ad2dd4ba', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"small","explanation":"The complete sentence is “Every small win counts.”.","hint_prefix":"sm","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Every ___ win counts."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('99869991-4b1e-55a6-9ab8-a2e156b68d95', '81b6d5e3-721d-50df-8ef3-ad33ad2dd4ba', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to stick to","id":"V1","text":"to stick to"},{"audio_text":"to slip back","id":"V2","text":"to slip back"},{"audio_text":"willpower","id":"V3","text":"willpower"},{"audio_text":"reminder","id":"V4","text":"reminder"},{"audio_text":"small win","id":"V5","text":"small win"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f6696217-b3ba-5b9a-bec4-154b62c46554', '81b6d5e3-721d-50df-8ef3-ad33ad2dd4ba', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"I keep breaking my evening routine."}],"explanation":"“Make it smaller — if the routine takes ten minutes, you will rarely skip it.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Make it smaller — if the routine takes ten minutes, you will rarely skip it."},{"id":"C_B","is_correct":false,"text":"I broke it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The routine is breaking me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('4f90e3ec-8263-58d6-8f65-a4104d5f7798', '81b6d5e3-721d-50df-8ef3-ad33ad2dd4ba', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1f9bca27-0391-5b8b-a634-daf6abffe507', 'en', 'to switch to', 'переключиться на', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5836422f-a5af-5dad-ad36-f15769c320a2', 'en', 'daily routine', 'ежедневный режим', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ea1fa9cc-48e1-5a27-9241-c510d949fb3f', 'en', 'to work from home', 'работать из дома', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('343d4964-2251-51dd-bfc1-db0be8e0541e', 'en', 'used to', 'раньше', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('89c7cda6-468f-56ac-a7c3-7417df662dca', 'en', 'to give up', 'отказаться от', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d002d42c-cc36-5eb2-992f-c808826121c6', 'en', 'schedule', 'расписание', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('185a6acb-50da-5e09-9277-6247d0d7e18a', 'en', 'noticeable', 'заметный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e8e8f49f-b90a-5551-a45a-b054acb1a962', 'en', 'to adjust', 'подстроить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b895a6ee-0bfe-510f-bf3f-ec493fc58fb0', 'en', 'more balanced', 'сбалансированнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf97a319-8424-5360-8532-f4010a5dadb8', 'en', 'sleep pattern', 'режим сна', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1634c3f6-b0bb-5e7f-90d2-8c7c8e0e3ad0', 'en', 'to squeeze in', 'втиснуть (в расписание)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e6153a88-fa2d-5aa4-b8bc-887ae363ef91', 'en', 'flexible', 'гибкий', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c67e23f6-a5da-52f9-8ad7-b52d97b620a2', 'en', 'time slot', 'временной слот', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('91aa292d-0d4b-58f7-a029-07d791531f6b', 'en', 'earlier', 'раньше', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ba787372-fdae-5a07-bd4a-8b075aab99fc', 'en', 'to stick to', 'придерживаться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('567a2f4f-c402-5116-abb8-d8d22af13f2a', 'en', 'to slip back', 'скатиться обратно (к старому)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c2c17c37-b1f1-5912-adc4-6bc98d96e128', 'en', 'willpower', 'сила воли', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dda183fc-9af6-5fc3-a65e-d7ff842a9af3', 'en', 'reminder', 'напоминание', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b383b41d-080f-5796-a90d-b809b5e31c03', 'en', 'small win', 'маленькая победа', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('89c7cda6-468f-56ac-a7c3-7417df662dca', 'en', 'to give up', 'бросить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b019d00e-1d55-57eb-8786-7e7789b91688', 'en', 'consistently', 'последовательно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4f90e3ec-8263-58d6-8f65-a4104d5f7798', id, '11108ea2-3bf2-5629-bcf6-aa402195071d', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'to switch to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4f90e3ec-8263-58d6-8f65-a4104d5f7798', id, '11108ea2-3bf2-5629-bcf6-aa402195071d', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'daily routine' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4f90e3ec-8263-58d6-8f65-a4104d5f7798', id, '11108ea2-3bf2-5629-bcf6-aa402195071d', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to work from home' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4f90e3ec-8263-58d6-8f65-a4104d5f7798', id, '11108ea2-3bf2-5629-bcf6-aa402195071d', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'used to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4f90e3ec-8263-58d6-8f65-a4104d5f7798', id, '11108ea2-3bf2-5629-bcf6-aa402195071d', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to give up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4f90e3ec-8263-58d6-8f65-a4104d5f7798', id, '11108ea2-3bf2-5629-bcf6-aa402195071d', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'schedule' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4f90e3ec-8263-58d6-8f65-a4104d5f7798', id, '11108ea2-3bf2-5629-bcf6-aa402195071d', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'noticeable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4f90e3ec-8263-58d6-8f65-a4104d5f7798', id, 'e4074e6e-baf3-5c6a-af5d-87ea9a40fdcc', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to adjust' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4f90e3ec-8263-58d6-8f65-a4104d5f7798', id, 'e4074e6e-baf3-5c6a-af5d-87ea9a40fdcc', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'more balanced' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4f90e3ec-8263-58d6-8f65-a4104d5f7798', id, 'e4074e6e-baf3-5c6a-af5d-87ea9a40fdcc', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'sleep pattern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4f90e3ec-8263-58d6-8f65-a4104d5f7798', id, 'e4074e6e-baf3-5c6a-af5d-87ea9a40fdcc', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to squeeze in' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4f90e3ec-8263-58d6-8f65-a4104d5f7798', id, 'e4074e6e-baf3-5c6a-af5d-87ea9a40fdcc', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'flexible' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4f90e3ec-8263-58d6-8f65-a4104d5f7798', id, 'e4074e6e-baf3-5c6a-af5d-87ea9a40fdcc', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'time slot' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4f90e3ec-8263-58d6-8f65-a4104d5f7798', id, 'e4074e6e-baf3-5c6a-af5d-87ea9a40fdcc', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'earlier' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4f90e3ec-8263-58d6-8f65-a4104d5f7798', id, '81b6d5e3-721d-50df-8ef3-ad33ad2dd4ba', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to stick to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4f90e3ec-8263-58d6-8f65-a4104d5f7798', id, '81b6d5e3-721d-50df-8ef3-ad33ad2dd4ba', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to slip back' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4f90e3ec-8263-58d6-8f65-a4104d5f7798', id, '81b6d5e3-721d-50df-8ef3-ad33ad2dd4ba', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'willpower' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4f90e3ec-8263-58d6-8f65-a4104d5f7798', id, '81b6d5e3-721d-50df-8ef3-ad33ad2dd4ba', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'reminder' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4f90e3ec-8263-58d6-8f65-a4104d5f7798', id, '81b6d5e3-721d-50df-8ef3-ad33ad2dd4ba', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'small win' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4f90e3ec-8263-58d6-8f65-a4104d5f7798', id, '81b6d5e3-721d-50df-8ef3-ad33ad2dd4ba', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to give up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4f90e3ec-8263-58d6-8f65-a4104d5f7798', id, '81b6d5e3-721d-50df-8ef3-ad33ad2dd4ba', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'consistently' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
