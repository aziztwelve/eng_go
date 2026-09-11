-- Track: B1_STUDY_STUDY_GOALS_AND_TIME_MANAGEMENT. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('5a9df016-71fc-524a-a495-580430a25cd4', 'B1_STUDY_STUDY_GOALS_AND_TIME_MANAGEMENT', 'Учебные цели и управление временем', 'Развивайте учебные навыки уровня B1 по теме «Учебные цели и управление временем».', '{"en":"Study Goals and Time Management","ru":"Учебные цели и управление временем"}'::jsonb, '{"en":"Develop B1 study skills for study goals and time management.","ru":"Развивайте учебные навыки уровня B1 по теме «Учебные цели и управление временем»."}'::jsonb, 'en', 'B1', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2b13909f-7f9a-519a-acfb-126768f87a64', NULL, 'Учебная практика 1', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Setting Realistic Goals","ru":"Учебная практика 1"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1c437210-8497-50e7-8021-1d5c7d8553d4', '2b13909f-7f9a-519a-acfb-126768f87a64', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STSGAP_2","left":"homework","right":"домашняя работа"},{"id":"A2STSGAP_3","left":"exercise","right":"упражнение"},{"id":"A2STSGAP_4","left":"question","right":"вопрос"},{"id":"A2STSGAP_5","left":"answer","right":"ответ"},{"id":"A2STSGAP_6","left":"read a book","right":"читать книгу"},{"id":"A2STSGAP_7","left":"write a sentence","right":"написать предложение"},{"id":"A2STSGAP_8","left":"learn new words","right":"учить новые слова"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a7e292c-cbd0-529a-bd01-f958c0a0eebf', '2b13909f-7f9a-519a-acfb-126768f87a64', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"To write a sentence means to put a group of words on paper.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STSGAP_10","is_correct":true,"text":"Write a sentence"},{"id":"A2STSGAP_11","is_correct":false,"text":"Read a book"},{"id":"A2STSGAP_12","is_correct":false,"text":"Learn new words"}],"question":"Which activity means putting words on paper?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e2652795-82b2-5f33-834c-47956c43af09', '2b13909f-7f9a-519a-acfb-126768f87a64', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I have homework.","instruction":"Соберите перевод.","source_language":"ru","source_text":"У меня есть домашняя работа.","target_language":"en","word_bank":["homework.","have","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6068948b-e930-5cea-b465-cf2e47531ab1', '2b13909f-7f9a-519a-acfb-126768f87a64', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"read","instruction":"Выберите подходящее слово.","options":["read","desk","Monday"],"sentence_template":"I need to ___ a book."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e07495b-f926-5a4b-9597-2bad1e296501', '2b13909f-7f9a-519a-acfb-126768f87a64', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","learn","new","words."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["new","learn","I","words."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('745e9f2b-f954-59c4-928f-8e4903f5e98c', '2b13909f-7f9a-519a-acfb-126768f87a64', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I have English homework today.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f831a8f1-0374-5944-9095-389e779fc4d6', '2b13909f-7f9a-519a-acfb-126768f87a64', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I need to read a book and write two sentences. I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Мне нужно прочитать книгу и написать два предложения. Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e576530-8008-5816-9f00-558fa26d458a', '2b13909f-7f9a-519a-acfb-126768f87a64', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Kate","text":"What is your homework?","translation":"Какое у тебя домашнее задание?","type":"dialogue"},{"character":"Dan","text":"I need to read a book.","translation":"Мне нужно прочитать книгу.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I need to learn new words."},{"is_correct":false,"text":"My homework is a chair."}],"text":"What should Kate say?","type":"choice"}],"title":"Homework Time"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('244174cc-2be3-5a19-bbd3-2b7376696104', '2b13909f-7f9a-519a-acfb-126768f87a64', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"An exercise is a task that helps you practise something.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STSGAP_20","is_correct":true,"text":"A task that helps you practise something"},{"id":"A2STSGAP_21","is_correct":false,"text":"A person who teaches a class"},{"id":"A2STSGAP_22","is_correct":false,"text":"A day after Monday"}],"word":"exercise"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6e0a84c5-e5f6-5d0f-937e-f0b30d55d441', '2b13909f-7f9a-519a-acfb-126768f87a64', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have homework today.","explanation":"The complete sentence is “I have homework today.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"homework","id":"A2STSGAP_24","is_correct":true},{"audio_text":"Friday","id":"A2STSGAP_25","is_correct":false},{"audio_text":"pencil","id":"A2STSGAP_26","is_correct":false}],"sentence_template":"I have ___ today."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d961ee92-63a1-544f-9b9b-2a549dcf7d39', '2b13909f-7f9a-519a-acfb-126768f87a64', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"write","explanation":"The complete sentence is “I need to write a sentence.”","hint_prefix":"wr","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I need to ___ a sentence."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21d77faf-f2a7-5b49-85e2-e452d93d3416', '2b13909f-7f9a-519a-acfb-126768f87a64', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each audio item with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"homework","id":"A2STSGAP_29","text":"homework"},{"audio_text":"exercise","id":"A2STSGAP_30","text":"exercise"},{"audio_text":"answer","id":"A2STSGAP_31","text":"answer"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('be9c43c3-cc7f-58ed-8e63-453f351e744a', '2b13909f-7f9a-519a-acfb-126768f87a64', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Mila","text":"What is your English homework?"}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STSGAP_33","is_correct":true,"text":"I need to learn five new words."},{"id":"A2STSGAP_34","is_correct":false,"text":"I am five homework."},{"id":"A2STSGAP_35","is_correct":false,"text":"My words are Tuesday."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('5a9df016-71fc-524a-a495-580430a25cd4', '2b13909f-7f9a-519a-acfb-126768f87a64', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('8b9f7805-599c-597a-8d3a-f0e0b9555089', NULL, 'Учебная практика 2', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Planning Study Time","ru":"Учебная практика 2"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('86c095ed-276c-540d-af13-7297bd81a425', '8b9f7805-599c-597a-8d3a-f0e0b9555089', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STSGAP_37","left":"study","right":"заниматься"},{"id":"A2STSGAP_38","left":"after school","right":"после школы"},{"id":"A2STSGAP_39","left":"in the evening","right":"вечером"},{"id":"A2STSGAP_40","left":"every day","right":"каждый день"},{"id":"A2STSGAP_41","left":"at home","right":"дома"},{"id":"A2STSGAP_42","left":"at my desk","right":"за моей партой"},{"id":"A2STSGAP_43","left":"take a break","right":"сделать перерыв"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0db8935-e362-5fea-8851-377db9465190', '8b9f7805-599c-597a-8d3a-f0e0b9555089', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"“In the evening” describes a time late in the day.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STSGAP_45","is_correct":true,"text":"A time late in the day"},{"id":"A2STSGAP_46","is_correct":false,"text":"A place at school"},{"id":"A2STSGAP_47","is_correct":false,"text":"A school subject"}],"question":"When does “in the evening” describe?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c4fc75ae-b3c8-5b90-af82-79caa9bede0c', '8b9f7805-599c-597a-8d3a-f0e0b9555089', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I study at home every day.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я занимаюсь дома каждый день.","target_language":"en","word_bank":["day.","every","home","at","study","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('de55fb12-c831-5dcf-8542-f34b957157ef', '8b9f7805-599c-597a-8d3a-f0e0b9555089', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"after","instruction":"Выберите подходящее слово.","options":["after","book","science"],"sentence_template":"I study ___ school."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc03ea5e-ca2f-5bb2-996c-bfa88726f62e', '8b9f7805-599c-597a-8d3a-f0e0b9555089', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","study","in","the","evening."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["evening.","the","in","study","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e345dfe-be68-57d5-9609-423cfe5c9c85', '8b9f7805-599c-597a-8d3a-f0e0b9555089', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I study at home after school.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bcd36003-d397-512b-9c90-5dd89558f709', '8b9f7805-599c-597a-8d3a-f0e0b9555089', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I study at my desk every day, and then I take a break. I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я занимаюсь за своим столом каждый день, а затем делаю перерыв. Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d078fb93-9d11-5728-96fc-dabc33401ebc', '8b9f7805-599c-597a-8d3a-f0e0b9555089', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Leo","text":"Do you study after school?","translation":"Ты занимаешься после школы?","type":"dialogue"},{"character":"Nina","text":"Yes, I study at home.","translation":"Да, я занимаюсь дома.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Do you study every day?"},{"is_correct":false,"text":"Is your desk a Friday?"}],"text":"What should Leo ask next?","type":"choice"}],"title":"After School"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5b25c176-7c25-5ccf-ac81-c2b25f8b1ee3', '8b9f7805-599c-597a-8d3a-f0e0b9555089', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"A break is a short time when you stop working or studying.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STSGAP_55","is_correct":true,"text":"A short time when you stop working or studying"},{"id":"A2STSGAP_56","is_correct":false,"text":"A task from a teacher"},{"id":"A2STSGAP_57","is_correct":false,"text":"A room where students learn"}],"word":"break"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8773cb57-db79-51a4-bf9c-64b87b0a28f6', '8b9f7805-599c-597a-8d3a-f0e0b9555089', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I study at home.","explanation":"The complete sentence is “I study at home.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"home","id":"A2STSGAP_59","is_correct":true},{"audio_text":"history","id":"A2STSGAP_60","is_correct":false},{"audio_text":"answer","id":"A2STSGAP_61","is_correct":false}],"sentence_template":"I study at ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d644e0d2-0404-5fa3-9261-bbc726fbcdb8', '8b9f7805-599c-597a-8d3a-f0e0b9555089', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"day","explanation":"The complete sentence is “I study every day.”","hint_prefix":"da","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I study every ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1567ea4b-c990-517d-9ea3-92758613d119', '8b9f7805-599c-597a-8d3a-f0e0b9555089', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each audio item with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"study","id":"A2STSGAP_64","text":"study"},{"audio_text":"after school","id":"A2STSGAP_65","text":"after school"},{"audio_text":"take a break","id":"A2STSGAP_66","text":"take a break"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0918e1aa-76f7-5b96-93a4-c92ee9d77f99', '8b9f7805-599c-597a-8d3a-f0e0b9555089', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Sam","text":"When do you study?"}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STSGAP_68","is_correct":true,"text":"I study in the evening."},{"id":"A2STSGAP_69","is_correct":false,"text":"I am evening years old."},{"id":"A2STSGAP_70","is_correct":false,"text":"My study is a pencil."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('5a9df016-71fc-524a-a495-580430a25cd4', '8b9f7805-599c-597a-8d3a-f0e0b9555089', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c6a68e84-0b1f-5135-b3c9-4f19b8e24774', NULL, 'Учебная практика 3', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Reviewing Priorities","ru":"Учебная практика 3"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5fd1e389-1772-5d92-a962-c7b923da0d7d', 'c6a68e84-0b1f-5135-b3c9-4f19b8e24774', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STSGAP_72","left":"start","right":"начинать"},{"id":"A2STSGAP_73","left":"finish","right":"заканчивать"},{"id":"A2STSGAP_74","left":"check","right":"проверять"},{"id":"A2STSGAP_75","left":"correct","right":"правильный"},{"id":"A2STSGAP_76","left":"mistake","right":"ошибка"},{"id":"A2STSGAP_77","left":"ready","right":"готов"},{"id":"A2STSGAP_78","left":"Good job!","right":"Отличная работа!"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3271c21b-5774-5919-a10b-f7c7ef4009b4', 'c6a68e84-0b1f-5135-b3c9-4f19b8e24774', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"Checking your work helps you find mistakes.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STSGAP_80","is_correct":true,"text":"Check your work"},{"id":"A2STSGAP_81","is_correct":false,"text":"Start a break"},{"id":"A2STSGAP_82","is_correct":false,"text":"Close the answer"}],"question":"What should you do to look for mistakes?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a100ef2-b3af-5633-86f9-c1b77dee2624', 'c6a68e84-0b1f-5135-b3c9-4f19b8e24774', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I finished my homework.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я закончил домашнюю работу.","target_language":"en","word_bank":["homework.","my","finished","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e61ce3d9-f31f-5eb1-9f8e-f59a347ab9c2', 'c6a68e84-0b1f-5135-b3c9-4f19b8e24774', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"check","instruction":"Выберите подходящее слово.","options":["check","chair","music"],"sentence_template":"Please ___ your answers."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('907faac1-2a56-50c7-b433-d2bf03b92661', 'c6a68e84-0b1f-5135-b3c9-4f19b8e24774', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","am","ready."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["am","I","ready."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('75afc0d7-571c-517b-bd7d-345c6805fdec', 'c6a68e84-0b1f-5135-b3c9-4f19b8e24774', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I finished my homework.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6066622f-5212-5a1b-8050-29de193c8989', 'c6a68e84-0b1f-5135-b3c9-4f19b8e24774', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I check my answers and correct my mistakes. I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я проверяю ответы и исправляю ошибки. Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1464c786-ef12-5bb6-9ec3-6fad9c833105', 'c6a68e84-0b1f-5135-b3c9-4f19b8e24774', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Anna","text":"I finished my math homework.","translation":"Я закончила домашнюю работу по математике.","type":"dialogue"},{"character":"Dad","text":"Did you check your answers?","translation":"Ты проверила свои ответы?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes, I checked my answers."},{"is_correct":false,"text":"My answers can sing."}],"text":"What should Anna say?","type":"choice"}],"title":"Homework Is Finished"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb2026a2-f55b-5262-a70b-db18d05d900d', 'c6a68e84-0b1f-5135-b3c9-4f19b8e24774', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"A mistake is something that is not correct.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STSGAP_90","is_correct":true,"text":"Something that is not correct"},{"id":"A2STSGAP_91","is_correct":false,"text":"Something that is fully prepared"},{"id":"A2STSGAP_92","is_correct":false,"text":"The beginning of a task"}],"word":"mistake"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('106bcdc0-d184-5c5d-a42a-5258ca0d9289', 'c6a68e84-0b1f-5135-b3c9-4f19b8e24774', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Please check your work.","explanation":"The complete instruction is “Please check your work.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"check","id":"A2STSGAP_94","is_correct":true},{"audio_text":"subject","id":"A2STSGAP_95","is_correct":false},{"audio_text":"evening","id":"A2STSGAP_96","is_correct":false}],"sentence_template":"Please ___ your work."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('29fc8aec-13ca-54e6-90ae-59082bc8c5e1', 'c6a68e84-0b1f-5135-b3c9-4f19b8e24774', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"ready","explanation":"The complete sentence is “I am ready.”","hint_prefix":"re","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I am ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a86554d2-790b-59ec-a348-46e8cbf74a38', 'c6a68e84-0b1f-5135-b3c9-4f19b8e24774', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each audio item with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"finish","id":"A2STSGAP_99","text":"finish"},{"audio_text":"check","id":"A2STSGAP_100","text":"check"},{"audio_text":"mistake","id":"A2STSGAP_101","text":"mistake"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('800bdb72-8b68-5009-801a-6ac4389bbd96', 'c6a68e84-0b1f-5135-b3c9-4f19b8e24774', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Did you finish your homework?"}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STSGAP_103","is_correct":true,"text":"Yes, I finished it and checked my answers."},{"id":"A2STSGAP_104","is_correct":false,"text":"Yes, my homework is a city."},{"id":"A2STSGAP_105","is_correct":false,"text":"I am from an answer."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('5a9df016-71fc-524a-a495-580430a25cd4', 'c6a68e84-0b1f-5135-b3c9-4f19b8e24774', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1872420b-744d-5319-8350-63a75ee2e165', 'en', 'homework', 'домашняя работа', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4230f77f-3ca8-5346-9222-f8cebc6e6f7e', 'en', 'exercise', 'упражнение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d9432c21-0eda-5a57-ba61-f04226b77803', 'en', 'question', 'вопрос', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5055639a-2206-5c75-8bb8-807c6f2aaef6', 'en', 'answer', 'ответ', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c3a42819-3a85-54ae-a3a0-b70bed24cfa5', 'en', 'read a book', 'читать книгу', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ff1967b7-bfab-50df-a7e1-6a7f286d5f30', 'en', 'write a sentence', 'написать предложение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('706c4038-f45f-59e6-a358-323c963b517c', 'en', 'learn new words', 'учить новые слова', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8161a2e1-76d3-5c51-a1e2-57291c90d809', 'en', 'study', 'заниматься', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('92cd840e-2f2a-5fb7-aeb1-4335c97bbc52', 'en', 'after school', 'после школы', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('280db975-79a0-55b3-b7ee-589608963633', 'en', 'in the evening', 'вечером', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ccbdf5ac-322d-5053-9aa5-96b59b38520a', 'en', 'every day', 'каждый день', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cc68d4a2-4684-51b4-86a9-5afe2e6a5cfc', 'en', 'at home', 'дома', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d6cc1d78-7462-56e9-b099-c6785d35e2b9', 'en', 'at my desk', 'за моей партой', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ffd6d29f-ad69-534c-82a8-9afdf2abf14a', 'en', 'take a break', 'сделать перерыв', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('25f5d5e2-ee11-53ba-9552-e25e8bedd962', 'en', 'start', 'начинать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f97478e3-6aa0-54f6-844c-a7b07158c905', 'en', 'finish', 'заканчивать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0924b87c-15af-59ff-804d-5d50cfeeb710', 'en', 'check', 'проверять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fc713832-5a89-59d6-b762-94e39781576a', 'en', 'correct', 'правильный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2de0da2b-152d-58f7-b870-be54f4a8dfe9', 'en', 'mistake', 'ошибка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2c218f27-b023-5084-a651-ffb2f47fd4fb', 'en', 'ready', 'готов', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f89a4a7c-396a-5a92-88e8-51f49df4858a', 'en', 'Good job!', 'Отличная работа!', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a9df016-71fc-524a-a495-580430a25cd4', id, '2b13909f-7f9a-519a-acfb-126768f87a64', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'homework' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a9df016-71fc-524a-a495-580430a25cd4', id, '2b13909f-7f9a-519a-acfb-126768f87a64', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'exercise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a9df016-71fc-524a-a495-580430a25cd4', id, '2b13909f-7f9a-519a-acfb-126768f87a64', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a9df016-71fc-524a-a495-580430a25cd4', id, '2b13909f-7f9a-519a-acfb-126768f87a64', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'answer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a9df016-71fc-524a-a495-580430a25cd4', id, '2b13909f-7f9a-519a-acfb-126768f87a64', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'read a book' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a9df016-71fc-524a-a495-580430a25cd4', id, '2b13909f-7f9a-519a-acfb-126768f87a64', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'write a sentence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a9df016-71fc-524a-a495-580430a25cd4', id, '2b13909f-7f9a-519a-acfb-126768f87a64', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'learn new words' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a9df016-71fc-524a-a495-580430a25cd4', id, '8b9f7805-599c-597a-8d3a-f0e0b9555089', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'study' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a9df016-71fc-524a-a495-580430a25cd4', id, '8b9f7805-599c-597a-8d3a-f0e0b9555089', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'after school' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a9df016-71fc-524a-a495-580430a25cd4', id, '8b9f7805-599c-597a-8d3a-f0e0b9555089', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'in the evening' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a9df016-71fc-524a-a495-580430a25cd4', id, '8b9f7805-599c-597a-8d3a-f0e0b9555089', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'every day' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a9df016-71fc-524a-a495-580430a25cd4', id, '8b9f7805-599c-597a-8d3a-f0e0b9555089', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'at home' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a9df016-71fc-524a-a495-580430a25cd4', id, '8b9f7805-599c-597a-8d3a-f0e0b9555089', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'at my desk' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a9df016-71fc-524a-a495-580430a25cd4', id, '8b9f7805-599c-597a-8d3a-f0e0b9555089', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'take a break' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a9df016-71fc-524a-a495-580430a25cd4', id, 'c6a68e84-0b1f-5135-b3c9-4f19b8e24774', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'start' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a9df016-71fc-524a-a495-580430a25cd4', id, 'c6a68e84-0b1f-5135-b3c9-4f19b8e24774', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'finish' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a9df016-71fc-524a-a495-580430a25cd4', id, 'c6a68e84-0b1f-5135-b3c9-4f19b8e24774', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'check' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a9df016-71fc-524a-a495-580430a25cd4', id, 'c6a68e84-0b1f-5135-b3c9-4f19b8e24774', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'correct' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a9df016-71fc-524a-a495-580430a25cd4', id, 'c6a68e84-0b1f-5135-b3c9-4f19b8e24774', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'mistake' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a9df016-71fc-524a-a495-580430a25cd4', id, 'c6a68e84-0b1f-5135-b3c9-4f19b8e24774', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'ready' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a9df016-71fc-524a-a495-580430a25cd4', id, 'c6a68e84-0b1f-5135-b3c9-4f19b8e24774', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'Good job!' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
