-- Track: A2_WORK_TASKS_AND_PROGRESS_UPDATES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('9d0836d0-f2e7-5fff-ba8d-37818ec14efb', 'A2_WORK_TASKS_AND_PROGRESS_UPDATES', 'Задачи и отчёты о ходе работы', 'Развивайте практический английский уровня A2 для работы по теме «Задачи и отчёты о ходе работы».', '{"en":"Tasks and Progress Updates","ru":"Задачи и отчёты о ходе работы"}'::jsonb, '{"en":"Develop practical A2 workplace English for tasks and progress updates.","ru":"Развивайте практический английский уровня A2 для работы по теме «Задачи и отчёты о ходе работы»."}'::jsonb, 'en', 'A2', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('cc16ddee-d9ba-5292-8b26-94e60f0f672d', NULL, 'Статус задач', 'Сообщить о прогрессе задач, используя past simple и present perfect.', '{"en":"Task Status","ru":"Статус задач"}'::jsonb, '{"en":"Give task progress updates using past simple and present perfect.","ru":"Сообщить о прогрессе задач, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc007994-8375-5571-b600-ca14ce8a2cb2', 'cc16ddee-d9ba-5292-8b26-94e60f0f672d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"in progress","right":"в процессе"},{"id":"P2","left":"completed","right":"завершённый"},{"id":"P3","left":"to update","right":"обновить / сообщить новости"},{"id":"P4","left":"status","right":"статус"},{"id":"P5","left":"task list","right":"список задач"},{"id":"P6","left":"so far","right":"до сих пор"},{"id":"P7","left":"to finish","right":"закончить"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a83888c-4849-5f96-95f1-9698e35a116e', 'cc16ddee-d9ba-5292-8b26-94e60f0f672d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “We have completed two tasks and started the third one.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"We have completed two tasks and started the third one."},{"id":"Q_B","is_correct":false,"text":"We have completed two tasks yesterday."},{"id":"Q_C","is_correct":false,"text":"We completes two tasks so far already."}],"question":"Which sentence reports progress correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5bb68d0-330c-5759-b91c-c374296bf05d', 'cc16ddee-d9ba-5292-8b26-94e60f0f672d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We finished the design last week, and the testing has already started.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мы закончили дизайн на прошлой неделе, а тестирование уже началось.","target_language":"en","word_bank":["finished","already","started.","design","the","testing","We","and","did","has","finish","week,","the","yesterday","last"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('990e6dd5-8214-592f-be0d-ce1415a20885', 'cc16ddee-d9ba-5292-8b26-94e60f0f672d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"updated","instruction":"Выберите подходящее слово.","options":["updated","have update","updating"],"sentence_template":"I ___ the task list before the meeting yesterday.","translation_hint":"Я обновил список задач перед вчерашней встречей."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e71a64e4-55de-5898-b6b7-2247c586645c', 'cc16ddee-d9ba-5292-8b26-94e60f0f672d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","marketing","team","has","already","updated","the","project","status."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["marketing","was","updated","The","already","has","project","team","did","the","status."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7fa828d9-33c4-5942-aa94-c473b9677f69', 'cc16ddee-d9ba-5292-8b26-94e60f0f672d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Here is a quick update: we have finished the first stage, and the second stage is in progress.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('07072b13-ab77-554e-9ecf-32a9d5cf7ee7', 'cc16ddee-d9ba-5292-8b26-94e60f0f672d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Here is a quick update: we have finished the first stage, and the second stage is in progress.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Короткий апдейт: мы закончили первый этап, а второй уже в процессе."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('279cd683-e2da-5ce4-9dbe-fb7ee36e2aaf', 'cc16ddee-d9ba-5292-8b26-94e60f0f672d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Manager","text":"What is the status of the website tasks?","translation":"Как статус задач по сайту?","type":"dialogue"},{"character":"Anna","text":"The design is completed, and the texts are in progress.","translation":"Дизайн завершён, тексты в процессе.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Have you updated the task list in the system?"},{"is_correct":false,"text":"Did you has updated it yesterday?"},{"is_correct":false,"text":"Is the status updating the tasks itself?"}],"text":"What does the manager ask next?","type":"choice"}],"title":"The Monday Update"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5652bdb9-ff14-5d43-a0da-87e100758a30', 'cc16ddee-d9ba-5292-8b26-94e60f0f672d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“in progress” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Happening now but not finished yet"},{"id":"D_B","is_correct":false,"text":"Finished successfully some time ago"},{"id":"D_C","is_correct":false,"text":"Cancelled by the manager last week"}],"word":"in progress"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('06aed1ed-a3aa-565c-8a4f-a1b9a80dded0', 'cc16ddee-d9ba-5292-8b26-94e60f0f672d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We have completed the first task on the list.","explanation":"The missing word is “completed”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"completed","id":"LW_A","is_correct":true},{"audio_text":"complete","id":"LW_B","is_correct":false},{"audio_text":"completing","id":"LW_C","is_correct":false}],"sentence_template":"We have ___ the first task on the list."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a10b8487-772d-5ba3-8f12-56fbf72c49e0', 'cc16ddee-d9ba-5292-8b26-94e60f0f672d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"in","explanation":"The complete sentence is “The report is in progress at the moment.”.","hint_prefix":"in","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The report is ___ progress at the moment."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e1ede0d-7178-58fa-8694-db537054b989', 'cc16ddee-d9ba-5292-8b26-94e60f0f672d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"in progress","id":"V1","text":"in progress"},{"audio_text":"completed","id":"V2","text":"completed"},{"audio_text":"to update","id":"V3","text":"to update"},{"audio_text":"status","id":"V4","text":"status"},{"audio_text":"task list","id":"V5","text":"task list"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d474735-182f-5a40-b35c-ae2053a8e05b', 'cc16ddee-d9ba-5292-8b26-94e60f0f672d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Where are we with the presentation?"}],"explanation":"“I have finished the slides, and Ben has already checked the numbers.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"I have finished the slides, and Ben has already checked the numbers."},{"id":"C_B","is_correct":false,"text":"I finished them tomorrow already."},{"id":"C_C","is_correct":false,"text":"The slides are presenting us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('9d0836d0-f2e7-5fff-ba8d-37818ec14efb', 'cc16ddee-d9ba-5292-8b26-94e60f0f672d', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('4ed5a7a7-5878-562e-a08e-5a4fbe7dfaa3', NULL, 'Что дальше по плану', 'Рассказать о следующих задачах и сравнить их приоритет.', '{"en":"What Comes Next","ru":"Что дальше по плану"}'::jsonb, '{"en":"Talk about upcoming tasks and compare their priority.","ru":"Рассказать о следующих задачах и сравнить их приоритет."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d225d660-8e3b-54ae-8516-8b9236f68ef8', '4ed5a7a7-5878-562e-a08e-5a4fbe7dfaa3', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"next step","right":"следующий шаг"},{"id":"P2","left":"priority","right":"приоритет"},{"id":"P3","left":"more important","right":"важнее"},{"id":"P4","left":"to focus on","right":"сосредоточиться на"},{"id":"P5","left":"first of all","right":"прежде всего"},{"id":"P6","left":"to expect","right":"ожидать"},{"id":"P7","left":"estimate","right":"оценка (сроков)"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0d49dc7b-0e5c-5db3-8119-81e67d229e03', '4ed5a7a7-5878-562e-a08e-5a4fbe7dfaa3', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Fixing the bug is more important than adding new colours.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Fixing the bug is more important than adding new colours."},{"id":"Q_B","is_correct":false,"text":"Fixing the bug is importanter than adding colours."},{"id":"Q_C","is_correct":false,"text":"Fixing the bug is most important than colours."}],"question":"Which sentence compares priorities correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('035c45dc-2bdd-59b9-acae-2040583ecb28', '4ed5a7a7-5878-562e-a08e-5a4fbe7dfaa3', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Next week we are going to focus on the most important tasks first of all.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"На следующей неделе мы сначала сосредоточимся на самых важных задачах.","target_language":"en","word_bank":["all.","yesterday","going","on","of","Next","did","tasks","week","the","to","important","most","are","focus","focused","first","we"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c2c077e4-4846-553a-92f8-58d061eff8d4', '4ed5a7a7-5878-562e-a08e-5a4fbe7dfaa3', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"less","instruction":"Выберите подходящее слово.","options":["less","least","little"],"sentence_template":"This task is ___ important than the weekly report.","translation_hint":"Эта задача менее важная, чем еженедельный отчёт."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc006f21-850f-578a-800f-86bc26da672b', '4ed5a7a7-5878-562e-a08e-5a4fbe7dfaa3', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","team","is","going","to","focus","on","quality","first","of","all."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["focus","on","going","to","first","was","team","of","is","all.","did","quality","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('237ec736-0e88-5901-bafa-7f99710716fb', '4ed5a7a7-5878-562e-a08e-5a4fbe7dfaa3', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If we finish the priority tasks early, we will start the next stage sooner than expected.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('02508f1d-809a-58b9-98d7-4d0d0b473d09', '4ed5a7a7-5878-562e-a08e-5a4fbe7dfaa3', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If we finish the priority tasks early, we will start the next stage sooner than expected.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если мы рано закончим приоритетные задачи, то начнём следующий этап раньше ожидаемого."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5527c990-cbe8-54ab-85c1-457ecabaa775', '4ed5a7a7-5878-562e-a08e-5a4fbe7dfaa3', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"We have two days left. What is the priority?","translation":"У нас осталось два дня. Что в приоритете?","type":"dialogue"},{"character":"Tom","text":"The client demo is more important than the internal report.","translation":"Демо для клиента важнее внутреннего отчёта.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Then we should focus on the demo first of all."},{"is_correct":false,"text":"Then we must to focus on the report yesterday."},{"is_correct":false,"text":"The priority is focusing the team tomorrow."}],"text":"What does Anna decide?","type":"choice"}],"title":"Planning the Sprint"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('956e6196-2e84-5434-a524-0c8717899633', '4ed5a7a7-5878-562e-a08e-5a4fbe7dfaa3', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“priority” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Something that is more important and must be done first"},{"id":"D_B","is_correct":false,"text":"A task that you can skip every week"},{"id":"D_C","is_correct":false,"text":"A meeting without an agenda"}],"word":"priority"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('45a140f4-24b0-5012-953f-fd6366c4ef19', '4ed5a7a7-5878-562e-a08e-5a4fbe7dfaa3', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We are going to focus on the main task.","explanation":"The missing word is “focus”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"focus","id":"LW_A","is_correct":true},{"audio_text":"focused","id":"LW_B","is_correct":false},{"audio_text":"focusing","id":"LW_C","is_correct":false}],"sentence_template":"We are going to ___ on the main task."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6a34fa17-2759-5488-951a-56e87618c0e2', '4ed5a7a7-5878-562e-a08e-5a4fbe7dfaa3', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"more","explanation":"The complete sentence is “The demo is more important than the slides.”.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The demo is ___ important than the slides."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e0760d70-d130-59b0-add8-43eb6c9aba0b', '4ed5a7a7-5878-562e-a08e-5a4fbe7dfaa3', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"next step","id":"V1","text":"next step"},{"audio_text":"priority","id":"V2","text":"priority"},{"audio_text":"more important","id":"V3","text":"more important"},{"audio_text":"to focus on","id":"V4","text":"to focus on"},{"audio_text":"first of all","id":"V5","text":"first of all"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('74973afd-0b77-592b-ac96-1dc9ac391f62', '4ed5a7a7-5878-562e-a08e-5a4fbe7dfaa3', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What is the next step after testing?"}],"explanation":"“We are going to fix the small bugs and then release the update.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"We are going to fix the small bugs and then release the update."},{"id":"C_B","is_correct":false,"text":"We fixed them tomorrow already."},{"id":"C_C","is_correct":false,"text":"The step is going us next."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('9d0836d0-f2e7-5fff-ba8d-37818ec14efb', '4ed5a7a7-5878-562e-a08e-5a4fbe7dfaa3', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ee2c7a40-a430-5fc4-bcc9-8cebb4e21948', NULL, 'Если задача буксует', 'Обсудить проблемы с задачами, используя should и первое условное.', '{"en":"When a Task Is Stuck","ru":"Если задача буксует"}'::jsonb, '{"en":"Discuss task problems using should and the first conditional.","ru":"Обсудить проблемы с задачами, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('025e9c3e-7c4c-594d-8011-ae77400cbded', 'ee2c7a40-a430-5fc4-bcc9-8cebb4e21948', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"stuck","right":"застрявший (о задаче)"},{"id":"P2","left":"blocker","right":"блокер / препятствие"},{"id":"P3","left":"to escalate","right":"передать вопрос выше"},{"id":"P4","left":"to wait","right":"ждать"},{"id":"P5","left":"to inform","right":"проинформировать"},{"id":"P6","left":"as early as possible","right":"как можно раньше"},{"id":"P7","left":"solution","right":"решение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5448762a-fa1e-52dd-a36c-19d8e11847f2', 'ee2c7a40-a430-5fc4-bcc9-8cebb4e21948', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should tell your manager about the blocker as early as possible.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should tell your manager about the blocker as early as possible."},{"id":"Q_B","is_correct":false,"text":"You should to tell the manager yesterday."},{"id":"Q_C","is_correct":false,"text":"You must telling the manager last week."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d7cf9a8-5357-5c72-b9c9-7665dde1d4c7', 'ee2c7a40-a430-5fc4-bcc9-8cebb4e21948', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If a task is stuck, you should inform your manager as early as possible.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если задача застряла, стоит сообщить об этом как можно раньше.","target_language":"en","word_bank":["early","you","is","stucked","inform","your","as","yesterday","a","possible.","did","stuck,","task","manager","should","as","If"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d2b3b58-987b-52f2-993a-07b7cccf0354', 'ee2c7a40-a430-5fc4-bcc9-8cebb4e21948', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"wait","instruction":"Выберите подходящее слово.","options":["wait","will wait","waited"],"sentence_template":"If you ___ for an answer too long, you will lose a day.","translation_hint":"Если будешь слишком долго ждать ответа, потеряешь день."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0e65a56-00b4-5895-8822-a11949bb2b65', 'ee2c7a40-a430-5fc4-bcc9-8cebb4e21948', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","escalate","the","problem","if","there","is","no","solution."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["the","is","You","solution.","no","there","if","problem","mustn''t","escalate","went","should"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('162d8321-58ba-51be-b677-7590e17a48e3', 'ee2c7a40-a430-5fc4-bcc9-8cebb4e21948', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If we do not find a solution today, we will ask the senior engineer for help tomorrow.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7c91a96a-b0ce-5813-8664-ff083927b1c6', 'ee2c7a40-a430-5fc4-bcc9-8cebb4e21948', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If we do not find a solution today, we will ask the senior engineer for help tomorrow.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если мы не найдём решение сегодня, завтра попросим помощи у старшего инженера."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('93eeb921-97f4-585f-81b3-f1c7773c955a', 'ee2c7a40-a430-5fc4-bcc9-8cebb4e21948', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Tom","text":"The integration task has been stuck since Tuesday.","translation":"Задача по интеграции застряла со вторника.","type":"dialogue"},{"character":"Anna","text":"What is blocking it?","translation":"Что её блокирует?","type":"dialogue"},{"options":[{"is_correct":true,"text":"If the other team does not reply, we will escalate it."},{"is_correct":false,"text":"If the team will not reply, we escalated it yesterday."},{"is_correct":false,"text":"The blocker is tasking the team."}],"text":"What does Tom explain?","type":"choice"}],"title":"The Blocker"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e3a0178e-883b-5c83-8acf-f722b79ca9f4', 'ee2c7a40-a430-5fc4-bcc9-8cebb4e21948', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to escalate” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To pass a problem to a more senior person"},{"id":"D_B","is_correct":false,"text":"To solve a problem completely alone"},{"id":"D_C","is_correct":false,"text":"To forget about a problem for a week"}],"word":"to escalate"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd52c676-c884-5d1a-aef6-af0054a4d85c', 'ee2c7a40-a430-5fc4-bcc9-8cebb4e21948', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If the task gets stuck, ask for help.","explanation":"The missing word is “gets”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"gets","id":"LW_A","is_correct":true},{"audio_text":"will get","id":"LW_B","is_correct":false},{"audio_text":"got","id":"LW_C","is_correct":false}],"sentence_template":"If the task ___ stuck, ask for help."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8022633c-7d45-5238-8203-4432f64ae41f', 'ee2c7a40-a430-5fc4-bcc9-8cebb4e21948', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"as","explanation":"The complete sentence is “You should inform the team as early as possible.”.","hint_prefix":"as","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should inform the team ___ early as possible."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c053f2cc-acb9-598c-a1da-c5e8275e99ed', 'ee2c7a40-a430-5fc4-bcc9-8cebb4e21948', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"stuck","id":"V1","text":"stuck"},{"audio_text":"blocker","id":"V2","text":"blocker"},{"audio_text":"to escalate","id":"V3","text":"to escalate"},{"audio_text":"to wait","id":"V4","text":"to wait"},{"audio_text":"to inform","id":"V5","text":"to inform"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b048765d-dcd3-5c50-ab12-0fd71fee027b', 'ee2c7a40-a430-5fc4-bcc9-8cebb4e21948', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"I have been waiting for the data for two days."}],"explanation":"“You should escalate it — if you wait longer, we will miss the deadline.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"You should escalate it — if you wait longer, we will miss the deadline."},{"id":"C_B","is_correct":false,"text":"You must to wait more yesterday."},{"id":"C_C","is_correct":false,"text":"The data is waiting for you."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('9d0836d0-f2e7-5fff-ba8d-37818ec14efb', 'ee2c7a40-a430-5fc4-bcc9-8cebb4e21948', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('77b310e3-00bc-5dc6-8737-51ee00145c14', 'en', 'in progress', 'в процессе', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3ef5ca38-1792-5ef4-9ca0-28d5e5372d06', 'en', 'completed', 'завершённый', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8afa3630-8a6a-5058-a67c-74afea634230', 'en', 'to update', 'обновить / сообщить новости', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8f793e1a-645c-5059-82ca-93199f73e6b8', 'en', 'status', 'статус', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5ab64384-a6fd-5355-a772-960198cbd431', 'en', 'task list', 'список задач', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('478640e0-c4e8-5234-9e00-ca9b74dde93b', 'en', 'so far', 'до сих пор', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('23fe9f8a-09d0-5b15-bb24-4df2d96d8e6d', 'en', 'to finish', 'закончить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f493effe-75fe-5aa6-bd65-d498034aae13', 'en', 'next step', 'следующий шаг', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6a5d16a1-7f9e-5c34-bf92-150d61852a8b', 'en', 'priority', 'приоритет', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('371d8c6c-7065-5167-b6c0-39ef72dd1758', 'en', 'more important', 'важнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3e9e3f1d-2e39-5e66-8882-8931e4a1662a', 'en', 'to focus on', 'сосредоточиться на', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3ceb8885-c098-566e-95d7-b5f6035dc78a', 'en', 'first of all', 'прежде всего', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e74a997d-c5ff-5098-8361-be03257f961b', 'en', 'to expect', 'ожидать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2fec883d-5ac5-5974-8704-59db4df775d7', 'en', 'estimate', 'оценка (сроков)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4f3d8830-1789-5d69-968c-59a414149d12', 'en', 'stuck', 'застрявший (о задаче)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf90da6e-3fa4-5fd5-8d73-d803d4aba69c', 'en', 'blocker', 'блокер / препятствие', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fe7b4a79-1cc5-5acb-938d-ef16983f733b', 'en', 'to escalate', 'передать вопрос выше', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6bb03ff2-8559-5ae3-a871-afcffa057038', 'en', 'to wait', 'ждать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('252967bf-df92-5901-bbb5-d1308816e523', 'en', 'to inform', 'проинформировать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3d25c180-9272-5b35-bd2a-4a2c6aee90cb', 'en', 'as early as possible', 'как можно раньше', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3a74332-dbe4-5a74-98a9-c09242c4a534', 'en', 'solution', 'решение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9d0836d0-f2e7-5fff-ba8d-37818ec14efb', id, 'cc16ddee-d9ba-5292-8b26-94e60f0f672d', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'in progress' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9d0836d0-f2e7-5fff-ba8d-37818ec14efb', id, 'cc16ddee-d9ba-5292-8b26-94e60f0f672d', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'completed' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9d0836d0-f2e7-5fff-ba8d-37818ec14efb', id, 'cc16ddee-d9ba-5292-8b26-94e60f0f672d', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to update' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9d0836d0-f2e7-5fff-ba8d-37818ec14efb', id, 'cc16ddee-d9ba-5292-8b26-94e60f0f672d', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'status' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9d0836d0-f2e7-5fff-ba8d-37818ec14efb', id, 'cc16ddee-d9ba-5292-8b26-94e60f0f672d', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'task list' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9d0836d0-f2e7-5fff-ba8d-37818ec14efb', id, 'cc16ddee-d9ba-5292-8b26-94e60f0f672d', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'so far' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9d0836d0-f2e7-5fff-ba8d-37818ec14efb', id, 'cc16ddee-d9ba-5292-8b26-94e60f0f672d', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'to finish' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9d0836d0-f2e7-5fff-ba8d-37818ec14efb', id, '4ed5a7a7-5878-562e-a08e-5a4fbe7dfaa3', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'next step' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9d0836d0-f2e7-5fff-ba8d-37818ec14efb', id, '4ed5a7a7-5878-562e-a08e-5a4fbe7dfaa3', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'priority' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9d0836d0-f2e7-5fff-ba8d-37818ec14efb', id, '4ed5a7a7-5878-562e-a08e-5a4fbe7dfaa3', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'more important' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9d0836d0-f2e7-5fff-ba8d-37818ec14efb', id, '4ed5a7a7-5878-562e-a08e-5a4fbe7dfaa3', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to focus on' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9d0836d0-f2e7-5fff-ba8d-37818ec14efb', id, '4ed5a7a7-5878-562e-a08e-5a4fbe7dfaa3', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'first of all' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9d0836d0-f2e7-5fff-ba8d-37818ec14efb', id, '4ed5a7a7-5878-562e-a08e-5a4fbe7dfaa3', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to expect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9d0836d0-f2e7-5fff-ba8d-37818ec14efb', id, '4ed5a7a7-5878-562e-a08e-5a4fbe7dfaa3', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'estimate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9d0836d0-f2e7-5fff-ba8d-37818ec14efb', id, 'ee2c7a40-a430-5fc4-bcc9-8cebb4e21948', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'stuck' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9d0836d0-f2e7-5fff-ba8d-37818ec14efb', id, 'ee2c7a40-a430-5fc4-bcc9-8cebb4e21948', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'blocker' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9d0836d0-f2e7-5fff-ba8d-37818ec14efb', id, 'ee2c7a40-a430-5fc4-bcc9-8cebb4e21948', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to escalate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9d0836d0-f2e7-5fff-ba8d-37818ec14efb', id, 'ee2c7a40-a430-5fc4-bcc9-8cebb4e21948', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to wait' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9d0836d0-f2e7-5fff-ba8d-37818ec14efb', id, 'ee2c7a40-a430-5fc4-bcc9-8cebb4e21948', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to inform' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9d0836d0-f2e7-5fff-ba8d-37818ec14efb', id, 'ee2c7a40-a430-5fc4-bcc9-8cebb4e21948', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'as early as possible' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9d0836d0-f2e7-5fff-ba8d-37818ec14efb', id, 'ee2c7a40-a430-5fc4-bcc9-8cebb4e21948', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'solution' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
