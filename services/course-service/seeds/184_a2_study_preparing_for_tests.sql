-- Track: A2_STUDY_PREPARING_FOR_TESTS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('2cacfaca-3fed-5a2c-a19b-5cb4a65c2a14', 'A2_STUDY_PREPARING_FOR_TESTS', 'Подготовка к тестам', 'Развивайте учебные навыки уровня A2 по теме «Подготовка к тестам».', '{"en":"Preparing for Tests","ru":"Подготовка к тестам"}'::jsonb, '{"en":"Develop A2 study skills for preparing for tests.","ru":"Развивайте учебные навыки уровня A2 по теме «Подготовка к тестам»."}'::jsonb, 'en', 'A2', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('8712fd42-221b-5113-9576-fff1a46fe7c7', NULL, 'Как я готовился к тесту', 'Рассказать о подготовке к тесту, используя past simple и present perfect.', '{"en":"How I Prepared for the Test","ru":"Как я готовился к тесту"}'::jsonb, '{"en":"Talk about test preparation using past simple and present perfect.","ru":"Рассказать о подготовке к тесту, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d04ccc4-a50c-5911-894c-d53a32ebc4ec', '8712fd42-221b-5113-9576-fff1a46fe7c7', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"mock test","right":"пробный тест"},{"id":"P2","left":"to revise","right":"повторять (материал)"},{"id":"P3","left":"weak spot","right":"слабое место"},{"id":"P4","left":"to pass","right":"сдать"},{"id":"P5","left":"to fail","right":"провалить"},{"id":"P6","left":"study plan","right":"план подготовки"},{"id":"P7","left":"flashcards","right":"карточки"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c72d8faa-d6d3-53cf-b7d0-9b1d68ed968e', '8712fd42-221b-5113-9576-fff1a46fe7c7', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I have already finished three mock tests.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I have already finished three mock tests."},{"id":"Q_B","is_correct":false,"text":"I have finished them last Friday."},{"id":"Q_C","is_correct":false,"text":"I finish three mocks already now."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9c149252-79a0-5657-b8b5-0071cfc107ff', '8712fd42-221b-5113-9576-fff1a46fe7c7', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I failed a mock test in March, but I have closed all my weak spots since then.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я провалил пробный тест в марте, но с тех пор закрыл все слабые места.","target_language":"en","word_bank":["in","since","all","did","my","spots","closed","I","failed","but","then.","mock","March,","tomorrow","I","have","weak","fail","a","test"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9892a47d-dc41-565b-bbd4-1923a764e67f', '8712fd42-221b-5113-9576-fff1a46fe7c7', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"revised","instruction":"Выберите подходящее слово.","options":["revised","has revise","revising"],"sentence_template":"Last week she ___ for the exam every evening.","translation_hint":"На прошлой неделе она повторяла материал каждый вечер."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1b625496-309c-572b-bc94-50879c6fe4aa', '8712fd42-221b-5113-9576-fff1a46fe7c7', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["He","has","passed","the","listening","part","already."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["did","part","the","He","was","already.","has","passed","listening"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fb15bbfb-4213-5b8a-a31f-d4f82bb6b793', '8712fd42-221b-5113-9576-fff1a46fe7c7', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I made a study plan a month ago and have stuck to it — two mock tests are still left before the real exam.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8621c3a0-8ff0-58c6-845c-c0d043472126', '8712fd42-221b-5113-9576-fff1a46fe7c7', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I made a study plan a month ago and have stuck to it — two mock tests are still left before the real exam.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Месяц назад я составил план подготовки и следовал ему — до настоящего экзамена осталось ещё два пробных теста."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('15d8a53e-0b21-5d00-82b5-487ee562b75e', '8712fd42-221b-5113-9576-fff1a46fe7c7', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"How was your mock test?","translation":"Как прошёл твой пробный тест?","type":"dialogue"},{"character":"Voice 2","text":"I passed overall, but the grammar part showed my weak spots.","translation":"В целом сдал, но часть по грамматике показала мои слабые места.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Have you made a plan to fix them before June?"},{"is_correct":false,"text":"Did you make a plan tomorrow yesterday?"},{"is_correct":false,"text":"Is the grammar mocking your weak spots?"}],"text":"What does Voice 1 ask?","type":"choice"}],"title":"After the Mock Test"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e4610344-fa8c-54fc-b842-11aaa70ba13a', '8712fd42-221b-5113-9576-fff1a46fe7c7', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“mock test” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A practice test before the real one"},{"id":"D_B","is_correct":false,"text":"The final exam that counts for your grade"},{"id":"D_C","is_correct":false,"text":"A short quiz during a regular lesson"}],"word":"mock test"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('97435bdd-c300-5501-806e-bb96262a47c6', '8712fd42-221b-5113-9576-fff1a46fe7c7', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have revised all the vocabulary cards.","explanation":"The missing word is “revised”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"revised","id":"LW_A","is_correct":true},{"audio_text":"revise","id":"LW_B","is_correct":false},{"audio_text":"revising","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ all the vocabulary cards."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4d377925-ae85-5440-acdf-f2fc6de0f44e', '8712fd42-221b-5113-9576-fff1a46fe7c7', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"passed","explanation":"The complete sentence is “She has passed the writing task twice.”.","hint_prefix":"pa","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"She has ___ the writing task twice."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('04d82a10-3ecd-5e39-a42f-56fe36079b4f', '8712fd42-221b-5113-9576-fff1a46fe7c7', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"mock test","id":"V1","text":"mock test"},{"audio_text":"to revise","id":"V2","text":"to revise"},{"audio_text":"weak spot","id":"V3","text":"weak spot"},{"audio_text":"to pass","id":"V4","text":"to pass"},{"audio_text":"to fail","id":"V5","text":"to fail"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3fdb5b9b-8fde-57d1-829c-d78fb6da6ef1', '8712fd42-221b-5113-9576-fff1a46fe7c7', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Did you pass the entrance test?"}],"explanation":"“Yes — I have just checked the results online!” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes — I have just checked the results online!"},{"id":"C_B","is_correct":false,"text":"I passed it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The test is entering me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2cacfaca-3fed-5a2c-a19b-5cb4a65c2a14', '8712fd42-221b-5113-9576-fff1a46fe7c7', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a651f90e-8e1e-564b-935c-b68791a3fd30', NULL, 'Готовимся к экзамену', 'Сравнить методы подготовки и спланировать ревизию.', '{"en":"Getting Ready for the Exam","ru":"Готовимся к экзамену"}'::jsonb, '{"en":"Compare revision methods and plan your revision.","ru":"Сравнить методы подготовки и спланировать ревизию."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3f300341-3216-532e-9fa1-e398abeebc6b', 'a651f90e-8e1e-564b-935c-b68791a3fd30', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"cramming","right":"зубрёжка (накануне)"},{"id":"P2","left":"more effective","right":"эффективнее"},{"id":"P3","left":"spaced repetition","right":"интервальное повторение"},{"id":"P4","left":"study session","right":"учебная сессия"},{"id":"P5","left":"to concentrate","right":"концентрироваться"},{"id":"P6","left":"practice papers","right":"прошлогольние варианты"},{"id":"P7","left":"break","right":"перерыв"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ecaaefec-5261-5ab5-ad75-4d113f42d678', 'a651f90e-8e1e-564b-935c-b68791a3fd30', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Spaced repetition is more effective than cramming the night before.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Spaced repetition is more effective than cramming the night before."},{"id":"Q_B","is_correct":false,"text":"Spaced repetition is effectiver than cramming."},{"id":"Q_C","is_correct":false,"text":"Spaced repetition is most effective than cramming."}],"question":"Which sentence compares two methods correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b51db0a3-5fff-580e-950e-d4fa6ea6b9ce', 'a651f90e-8e1e-564b-935c-b68791a3fd30', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"This time I am going to revise in forty-minute sessions with breaks.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"В этот раз я собираюсь повторять по 40 минут с перерывами.","target_language":"en","word_bank":["to","breaks.","I","with","revise","going","forty-minute","yesterday","This","revised","sessions","did","am","in","time"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21bbe90d-f6ec-5adc-85f5-24e5bb4c2fdf', 'a651f90e-8e1e-564b-935c-b68791a3fd30', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"better","instruction":"Выберите подходящее слово.","options":["better","best","more good"],"sentence_template":"Short daily sessions are ___ than one long Sunday.","translation_hint":"Короткие ежедневные занятия лучше одного долгого воскресенья."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('45f196a6-7593-53d8-9bc0-d9959770f7a9', 'a651f90e-8e1e-564b-935c-b68791a3fd30', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","going","to","do","two","practice","papers","this","week."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["did","are","papers","was","week.","going","practice","do","this","to","We","two"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd8a3153-a785-5328-99c7-a78e790047d9', 'a651f90e-8e1e-564b-935c-b68791a3fd30', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you use spaced repetition, the material will stay in your memory long after the exam.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16383fa6-8aaf-5a17-a4ad-057dee2cb205', 'a651f90e-8e1e-564b-935c-b68791a3fd30', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you use spaced repetition, the material will stay in your memory long after the exam.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если использовать интервальное повторение, материал останется в памяти надолго после экзамена."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dbcc89cc-e531-5863-8438-97763956db51', 'a651f90e-8e1e-564b-935c-b68791a3fd30', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"The exam is in two weeks. Should I start with the practice papers?","translation":"Экзамен через две недели. Начать с прошлогодних вариантов?","type":"dialogue"},{"character":"Voice 2","text":"Diagnose first — do one paper now to find the weak topics.","translation":"Сначала диагностика — сделай один вариант сейчас, чтобы найти слабые темы.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Good plan — I am going to do one paper this evening."},{"is_correct":false,"text":"I did one yesterday tomorrow already."},{"is_correct":false,"text":"The exam is papering my weak topics."}],"text":"What does Voice 1 decide?","type":"choice"}],"title":"Two Weeks Left"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e7bc043-7ad9-5294-a24b-7ceddae799ca', 'a651f90e-8e1e-564b-935c-b68791a3fd30', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“cramming” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Learning everything in a rush just before a test"},{"id":"D_B","is_correct":false,"text":"Studying a little every day for weeks"},{"id":"D_C","is_correct":false,"text":"Repeating material with a partner regularly"}],"word":"cramming"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b8f462e2-2ec2-5caa-8a4a-65069ad91dc2', 'a651f90e-8e1e-564b-935c-b68791a3fd30', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to concentrate on the listening tasks.","explanation":"The missing word is “concentrate”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"concentrate","id":"LW_A","is_correct":true},{"audio_text":"concentrated","id":"LW_B","is_correct":false},{"audio_text":"concentrating","id":"LW_C","is_correct":false}],"sentence_template":"I am going to ___ on the listening tasks."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e5a708ab-bd4c-5445-ad06-e1b5a4c28fbb', 'a651f90e-8e1e-564b-935c-b68791a3fd30', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"more","explanation":"The complete sentence is “Old exam papers are more useful than new textbooks.”.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Old exam papers are ___ useful than new textbooks."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c96b232b-f519-5138-b334-01862abb0508', 'a651f90e-8e1e-564b-935c-b68791a3fd30', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"cramming","id":"V1","text":"cramming"},{"audio_text":"more effective","id":"V2","text":"more effective"},{"audio_text":"spaced repetition","id":"V3","text":"spaced repetition"},{"audio_text":"study session","id":"V4","text":"study session"},{"audio_text":"to concentrate","id":"V5","text":"to concentrate"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e88f0aa5-00e3-597a-9a48-7ba80fa38652', 'a651f90e-8e1e-564b-935c-b68791a3fd30', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"I study six hours without a break."}],"explanation":"“Add breaks — if you rest every forty minutes, you will actually remember more.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Add breaks — if you rest every forty minutes, you will actually remember more."},{"id":"C_B","is_correct":false,"text":"I rested yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The hours are breaking me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2cacfaca-3fed-5a2c-a19b-5cb4a65c2a14', 'a651f90e-8e1e-564b-935c-b68791a3fd30', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('61e389b0-173c-5190-a2a2-e00c86b9937a', NULL, 'Если волнуешься перед тестом', 'Обсудить предэкзаменационную подготовку, используя should и первое условное.', '{"en":"If You Are Nervous Before a Test","ru":"Если волнуешься перед тестом"}'::jsonb, '{"en":"Discuss pre-test preparation using should and the first conditional.","ru":"Обсудить предэкзаменационную подготовку, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fccec30d-ed57-56e3-954a-2add461ae725', '61e389b0-173c-5190-a2a2-e00c86b9937a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to get nervous","right":"нервничать"},{"id":"P2","left":"night before","right":"вечер накануне"},{"id":"P3","left":"to sleep well","right":"выспаться"},{"id":"P4","left":"instructions","right":"инструкции"},{"id":"P5","left":"time limit","right":"лимит времени"},{"id":"P6","left":"to arrive early","right":"прийти заранее"},{"id":"P7","left":"confident","right":"уверенный"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8c14d1be-078d-51de-82f4-96a579ebf9b6', '61e389b0-173c-5190-a2a2-e00c86b9937a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should read all the instructions before starting.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should read all the instructions before starting."},{"id":"Q_B","is_correct":false,"text":"You should to read them yesterday."},{"id":"Q_C","is_correct":false,"text":"You must reading instructions last test."}],"question":"Which sentence gives correct pre-test advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('507d57b9-5827-5956-b2bd-559a87673d62', '61e389b0-173c-5190-a2a2-e00c86b9937a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you sleep well the night before, you will think faster and make fewer mistakes.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если выспишься накануне, думаешь быстрее и ошибаешься меньше.","target_language":"en","word_bank":["think","slept","night","If","mistakes.","you","faster","well","before,","did","you","sleep","will","fewer","make","the","and","yesterday"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bbe9394b-c19f-5032-ac5e-81cb81eab942', '61e389b0-173c-5190-a2a2-e00c86b9937a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"arrive","instruction":"Выберите подходящее слово.","options":["arrive","will arrive","arrived"],"sentence_template":"If you ___ early, you will have time to calm down.","translation_hint":"Если прийти заранее, будет время успокоиться."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b8d5ad85-87b2-5169-88f9-aa81d8536072', '61e389b0-173c-5190-a2a2-e00c86b9937a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","check","the","time","limit","first."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["You","should","check","went","time","first.","mustn''t","limit","the"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0183aa44-97c5-5816-acf5-5af396ca8947', '61e389b0-173c-5190-a2a2-e00c86b9937a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you have prepared steadily, the nervousness will fade after the first questions.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('40808812-7759-5ad3-a4d9-44ed264287dc', '61e389b0-173c-5190-a2a2-e00c86b9937a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you have prepared steadily, the nervousness will fade after the first questions.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если готовился стабильно, волнение уйдёт после первых вопросов."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18b8e610-2921-5237-a78b-a4435682e916', '61e389b0-173c-5190-a2a2-e00c86b9937a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"I always get nervous before tests, even easy ones.","translation":"Я всегда нервничаю перед тестами, даже лёгкими.","type":"dialogue"},{"character":"Voice 2","text":"Did you sleep last time, or did you revise all night?","translation":"В прошлый раз ты спала или повторяла всю ночь?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I revised all night and nearly fell asleep during the listening."},{"is_correct":false,"text":"I slept tomorrow yesterday all night."},{"is_correct":false,"text":"The test is sleeping through my listening."}],"text":"What does Voice 1 admit?","type":"choice"}],"title":"The Morning of the Test"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('67a6257d-a5cd-5516-999d-54a755baf87a', '61e389b0-173c-5190-a2a2-e00c86b9937a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“time limit” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"The maximum time you have to finish a test"},{"id":"D_B","is_correct":false,"text":"The date when results arrive"},{"id":"D_C","is_correct":false,"text":"The number of questions in one section"}],"word":"time limit"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6524a117-6c09-57d8-a096-cc0572a07119', '61e389b0-173c-5190-a2a2-e00c86b9937a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you skip the instructions, you lose points.","explanation":"The missing word is “skip”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"skip","id":"LW_A","is_correct":true},{"audio_text":"will skip","id":"LW_B","is_correct":false},{"audio_text":"skipped","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ the instructions, you lose points."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5f888cc8-dfc0-51be-a36e-ce3573c7eb2e', '61e389b0-173c-5190-a2a2-e00c86b9937a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"earlier","explanation":"The complete sentence is “You should arrive earlier than everyone else.”.","hint_prefix":"ea","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should arrive ___ than everyone else."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a1758c6-8f96-5249-ac3e-52da7c9d959b', '61e389b0-173c-5190-a2a2-e00c86b9937a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to get nervous","id":"V1","text":"to get nervous"},{"audio_text":"night before","id":"V2","text":"night before"},{"audio_text":"to sleep well","id":"V3","text":"to sleep well"},{"audio_text":"instructions","id":"V4","text":"instructions"},{"audio_text":"time limit","id":"V5","text":"time limit"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('920187ec-294a-5f73-99e0-f8cdb7b165b1', '61e389b0-173c-5190-a2a2-e00c86b9937a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"My hands shake before every exam."}],"explanation":"“Take a short walk before entering — if your body is calm, your mind will follow.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Take a short walk before entering — if your body is calm, your mind will follow."},{"id":"C_B","is_correct":false,"text":"I walked yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The exam is shaking my hands."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2cacfaca-3fed-5a2c-a19b-5cb4a65c2a14', '61e389b0-173c-5190-a2a2-e00c86b9937a', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7e973e91-d3a6-56f6-a8c1-61e25ad886f0', 'en', 'mock test', 'пробный тест', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e1335aca-7f0a-52eb-b63e-b71178092464', 'en', 'to revise', 'повторять (материал)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3c4bbfd5-9dc4-5c2d-990d-5f6e6e113fc6', 'en', 'weak spot', 'слабое место', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67acb286-7335-5521-b6cc-6797b87bce30', 'en', 'to pass', 'сдать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('35cd1e97-b7f9-5ced-a5fd-564aea1dfd6a', 'en', 'to fail', 'провалить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('32a41b1b-8006-58ba-9192-9d9ae7449fce', 'en', 'study plan', 'план подготовки', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fba3f348-fe50-5b4d-a1bb-d84428ea1658', 'en', 'flashcards', 'карточки', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('12403b2d-1e8d-5d9d-b307-1c111e721fb4', 'en', 'cramming', 'зубрёжка (накануне)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('39c35288-013b-5adf-9e6a-1b0383948aef', 'en', 'more effective', 'эффективнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7b091d71-096d-5c80-b1c3-c54a972bbb2b', 'en', 'spaced repetition', 'интервальное повторение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c79394cb-cc47-59ab-88d8-44b0a17c628f', 'en', 'study session', 'учебная сессия', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a1266590-2fa5-56f1-b3cb-f82fa2a31104', 'en', 'to concentrate', 'концентрироваться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fb217004-cd9e-5e46-9558-6341ef06fbba', 'en', 'practice papers', 'прошлогольние варианты', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('adc96f02-9d93-5d99-95c8-01f56d515942', 'en', 'break', 'перерыв', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4a53ef0f-e4cd-5662-a7fe-e80f2ada8ba3', 'en', 'to get nervous', 'нервничать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4128ac94-0bb3-50f4-bcf8-8a3a8c73654f', 'en', 'night before', 'вечер накануне', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1d90fb2b-22ff-56a3-baab-2b531c9da914', 'en', 'to sleep well', 'выспаться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('88c62f66-4cb0-561c-bc74-2dddc7fad727', 'en', 'instructions', 'инструкции', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('75518d56-803c-5cb7-b4e8-0f8d471bce2c', 'en', 'time limit', 'лимит времени', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0b07f4f7-0f88-52be-952f-be1cb2fb36d8', 'en', 'to arrive early', 'прийти заранее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c98f2097-6229-51a8-b5fd-7c825f35531d', 'en', 'confident', 'уверенный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2cacfaca-3fed-5a2c-a19b-5cb4a65c2a14', id, '8712fd42-221b-5113-9576-fff1a46fe7c7', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'mock test' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2cacfaca-3fed-5a2c-a19b-5cb4a65c2a14', id, '8712fd42-221b-5113-9576-fff1a46fe7c7', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to revise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2cacfaca-3fed-5a2c-a19b-5cb4a65c2a14', id, '8712fd42-221b-5113-9576-fff1a46fe7c7', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'weak spot' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2cacfaca-3fed-5a2c-a19b-5cb4a65c2a14', id, '8712fd42-221b-5113-9576-fff1a46fe7c7', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'to pass' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2cacfaca-3fed-5a2c-a19b-5cb4a65c2a14', id, '8712fd42-221b-5113-9576-fff1a46fe7c7', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to fail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2cacfaca-3fed-5a2c-a19b-5cb4a65c2a14', id, '8712fd42-221b-5113-9576-fff1a46fe7c7', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'study plan' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2cacfaca-3fed-5a2c-a19b-5cb4a65c2a14', id, '8712fd42-221b-5113-9576-fff1a46fe7c7', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'flashcards' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2cacfaca-3fed-5a2c-a19b-5cb4a65c2a14', id, 'a651f90e-8e1e-564b-935c-b68791a3fd30', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'cramming' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2cacfaca-3fed-5a2c-a19b-5cb4a65c2a14', id, 'a651f90e-8e1e-564b-935c-b68791a3fd30', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'more effective' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2cacfaca-3fed-5a2c-a19b-5cb4a65c2a14', id, 'a651f90e-8e1e-564b-935c-b68791a3fd30', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'spaced repetition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2cacfaca-3fed-5a2c-a19b-5cb4a65c2a14', id, 'a651f90e-8e1e-564b-935c-b68791a3fd30', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'study session' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2cacfaca-3fed-5a2c-a19b-5cb4a65c2a14', id, 'a651f90e-8e1e-564b-935c-b68791a3fd30', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to concentrate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2cacfaca-3fed-5a2c-a19b-5cb4a65c2a14', id, 'a651f90e-8e1e-564b-935c-b68791a3fd30', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'practice papers' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2cacfaca-3fed-5a2c-a19b-5cb4a65c2a14', id, 'a651f90e-8e1e-564b-935c-b68791a3fd30', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'break' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2cacfaca-3fed-5a2c-a19b-5cb4a65c2a14', id, '61e389b0-173c-5190-a2a2-e00c86b9937a', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to get nervous' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2cacfaca-3fed-5a2c-a19b-5cb4a65c2a14', id, '61e389b0-173c-5190-a2a2-e00c86b9937a', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'night before' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2cacfaca-3fed-5a2c-a19b-5cb4a65c2a14', id, '61e389b0-173c-5190-a2a2-e00c86b9937a', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to sleep well' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2cacfaca-3fed-5a2c-a19b-5cb4a65c2a14', id, '61e389b0-173c-5190-a2a2-e00c86b9937a', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'instructions' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2cacfaca-3fed-5a2c-a19b-5cb4a65c2a14', id, '61e389b0-173c-5190-a2a2-e00c86b9937a', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'time limit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2cacfaca-3fed-5a2c-a19b-5cb4a65c2a14', id, '61e389b0-173c-5190-a2a2-e00c86b9937a', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to arrive early' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2cacfaca-3fed-5a2c-a19b-5cb4a65c2a14', id, '61e389b0-173c-5190-a2a2-e00c86b9937a', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'confident' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
