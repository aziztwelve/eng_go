-- Track: A1_STUDY_HOMEWORK_STUDY_ROUTINES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('4a7f32f7-3d9e-5e0b-8867-0906315ed304', 'A1_STUDY_HOMEWORK_STUDY_ROUTINES', 'Домашняя работа и учебный распорядок', 'Научитесь говорить о домашних заданиях, времени занятий и выполнении учебных задач.', 'en', 'A1', '', ARRAY['study']::text[], true, 24, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('1742ac73-a364-5060-a6b6-9d7e7c5621f8', NULL, 'Моя домашняя работа', 'Научиться называть простые домашние задания и говорить, что нужно сделать.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0cc542ba-09d9-59fb-bc7c-4ff0a437854b', '1742ac73-a364-5060-a6b6-9d7e7c5621f8', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"HSR_L1_MP_P1","left":"homework","right":"домашняя работа"},{"id":"HSR_L1_MP_P2","left":"exercise","right":"упражнение"},{"id":"HSR_L1_MP_P3","left":"question","right":"вопрос"},{"id":"HSR_L1_MP_P4","left":"answer","right":"ответ"},{"id":"HSR_L1_MP_P5","left":"read a book","right":"читать книгу"},{"id":"HSR_L1_MP_P6","left":"write a sentence","right":"написать предложение"},{"id":"HSR_L1_MP_P7","left":"learn new words","right":"учить новые слова"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('95b96794-25bd-5682-a37f-7e9204a9f079', '1742ac73-a364-5060-a6b6-9d7e7c5621f8', 'quiz', 'Проверьте себя', '{"explanation":"To write a sentence means to put a group of words on paper.","instruction":"Выберите правильный ответ.","options":[{"id":"HSR_L1_Q_A","is_correct":true,"text":"Write a sentence"},{"id":"HSR_L1_Q_B","is_correct":false,"text":"Read a book"},{"id":"HSR_L1_Q_C","is_correct":false,"text":"Learn new words"}],"question":"Which activity means putting words on paper?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d15b05db-6543-5c93-b61b-89ff1fa8fd5a', '1742ac73-a364-5060-a6b6-9d7e7c5621f8', 'translate', 'Переведите', '{"correct_translation":"I have homework.","instruction":"Соберите перевод.","source_language":"ru","source_text":"У меня есть домашняя работа.","target_language":"en","word_bank":["homework.","have","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d420df52-ae19-506b-8ead-1603d1dca9f5', '1742ac73-a364-5060-a6b6-9d7e7c5621f8', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"read","instruction":"Выберите подходящее слово.","options":["read","desk","Monday"],"sentence_template":"I need to ___ a book."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d0e4ca6c-945f-5158-aa9b-634ee84e185b', '1742ac73-a364-5060-a6b6-9d7e7c5621f8', 'tap_words', 'Соберите фразу', '{"correct_words":["I","learn","new","words."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["new","learn","I","words."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('69fb91ce-02e4-57d0-bea2-ab4695053344', '1742ac73-a364-5060-a6b6-9d7e7c5621f8', 'listening', 'Послушайте', '{"audio_text":"I have English homework today.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7fb9e7cd-33c2-578d-8366-37340d621d42', '1742ac73-a364-5060-a6b6-9d7e7c5621f8', 'listening_shadowing', 'Повторите', '{"audio_text":"I need to read a book and write two sentences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Мне нужно прочитать книгу и написать два предложения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9cc1c230-a362-505c-a950-939f4d33a9e2', '1742ac73-a364-5060-a6b6-9d7e7c5621f8', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Kate","text":"What is your homework?","translation":"Какое у тебя домашнее задание?","type":"dialogue"},{"character":"Dan","text":"I need to read a book.","translation":"Мне нужно прочитать книгу.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I need to learn new words."},{"is_correct":false,"text":"My homework is a chair."}],"text":"What should Kate say?","type":"choice"}],"title":"Homework Time"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8ce3bd11-b6fe-5d17-9497-df8b2e4b279e', '1742ac73-a364-5060-a6b6-9d7e7c5621f8', 'choose_definition', 'Определение', '{"explanation":"An exercise is a task that helps you practise something.","instruction":"Выберите значение.","language":"en","options":[{"id":"HSR_L1_D_A","is_correct":true,"text":"A task that helps you practise something"},{"id":"HSR_L1_D_B","is_correct":false,"text":"A person who teaches a class"},{"id":"HSR_L1_D_C","is_correct":false,"text":"A day after Monday"}],"word":"exercise"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('42f03822-1e6c-5a91-be4b-addbc566200c', '1742ac73-a364-5060-a6b6-9d7e7c5621f8', 'listen_choose_word', 'Слово', '{"audio_text":"I have homework today.","explanation":"The complete sentence is “I have homework today.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"homework","id":"HSR_L1_LW_A","is_correct":true},{"audio_text":"Friday","id":"HSR_L1_LW_B","is_correct":false},{"audio_text":"pencil","id":"HSR_L1_LW_C","is_correct":false}],"sentence_template":"I have ___ today."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('02fcaaab-3db6-5b61-8a86-578992f7c6ca', '1742ac73-a364-5060-a6b6-9d7e7c5621f8', 'missing_word', 'Впишите', '{"correct_answer":"write","explanation":"The complete sentence is “I need to write a sentence.”","hint_prefix":"wr","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I need to ___ a sentence."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('2a6e3454-cfc9-545a-8c0a-0cfdd7a0a122', '1742ac73-a364-5060-a6b6-9d7e7c5621f8', 'match_pairs_voice', 'Звук', '{"explanation":"Match each audio item with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"homework","id":"HSR_L1_VM_P1","text":"homework"},{"audio_text":"exercise","id":"HSR_L1_VM_P2","text":"exercise"},{"audio_text":"answer","id":"HSR_L1_VM_P3","text":"answer"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('99a23e02-a1fd-5e5b-bc68-ce80c5156375', '1742ac73-a364-5060-a6b6-9d7e7c5621f8', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Mila","text":"What is your English homework?"}],"explanation":"This answer clearly describes the homework task.","instruction":"Ответьте.","options":[{"id":"HSR_L1_C_A","is_correct":true,"text":"I need to learn five new words."},{"id":"HSR_L1_C_B","is_correct":false,"text":"I am five homework."},{"id":"HSR_L1_C_C","is_correct":false,"text":"My words are Tuesday."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('4a7f32f7-3d9e-5e0b-8867-0906315ed304', '1742ac73-a364-5060-a6b6-9d7e7c5621f8', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('a6a278df-3f9a-503f-887b-8e124a1b3dd0', NULL, 'Мой учебный распорядок', 'Научиться рассказывать, когда и где вы обычно занимаетесь.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('719fc3e0-4777-5bfa-9599-5a64a8aa4744', 'a6a278df-3f9a-503f-887b-8e124a1b3dd0', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"HSR_L2_MP_P1","left":"study","right":"заниматься"},{"id":"HSR_L2_MP_P2","left":"after school","right":"после школы"},{"id":"HSR_L2_MP_P3","left":"in the evening","right":"вечером"},{"id":"HSR_L2_MP_P4","left":"every day","right":"каждый день"},{"id":"HSR_L2_MP_P5","left":"at home","right":"дома"},{"id":"HSR_L2_MP_P6","left":"at my desk","right":"за моей партой"},{"id":"HSR_L2_MP_P7","left":"take a break","right":"сделать перерыв"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8968ee85-1966-5d08-8600-7edb52efc0c4', 'a6a278df-3f9a-503f-887b-8e124a1b3dd0', 'quiz', 'Проверьте себя', '{"explanation":"“In the evening” describes a time late in the day.","instruction":"Выберите правильный ответ.","options":[{"id":"HSR_L2_Q_A","is_correct":true,"text":"A time late in the day"},{"id":"HSR_L2_Q_B","is_correct":false,"text":"A place at school"},{"id":"HSR_L2_Q_C","is_correct":false,"text":"A school subject"}],"question":"When does “in the evening” describe?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8a8cf47a-ea5e-5328-a8fe-9de34afdb5d9', 'a6a278df-3f9a-503f-887b-8e124a1b3dd0', 'translate', 'Переведите', '{"correct_translation":"I study at home every day.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я занимаюсь дома каждый день.","target_language":"en","word_bank":["day.","every","home","at","study","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6e88838d-5024-5fa7-92c4-98a710ba78dd', 'a6a278df-3f9a-503f-887b-8e124a1b3dd0', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"after","instruction":"Выберите подходящее слово.","options":["after","book","science"],"sentence_template":"I study ___ school."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('421acfcf-da53-54db-9634-b339901aab40', 'a6a278df-3f9a-503f-887b-8e124a1b3dd0', 'tap_words', 'Соберите фразу', '{"correct_words":["I","study","in","the","evening."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["evening.","the","in","study","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('bca4e14a-365a-5f01-8ef1-05039771b744', 'a6a278df-3f9a-503f-887b-8e124a1b3dd0', 'listening', 'Послушайте', '{"audio_text":"I study at home after school.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('760797f5-153c-5494-bfb6-530fc2c208fc', 'a6a278df-3f9a-503f-887b-8e124a1b3dd0', 'listening_shadowing', 'Повторите', '{"audio_text":"I study at my desk every day, and then I take a break.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я занимаюсь за своим столом каждый день, а затем делаю перерыв."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('247d7948-2af4-5414-847c-aab311231e9a', 'a6a278df-3f9a-503f-887b-8e124a1b3dd0', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Leo","text":"Do you study after school?","translation":"Ты занимаешься после школы?","type":"dialogue"},{"character":"Nina","text":"Yes, I study at home.","translation":"Да, я занимаюсь дома.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Do you study every day?"},{"is_correct":false,"text":"Is your desk a Friday?"}],"text":"What should Leo ask next?","type":"choice"}],"title":"After School"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('561b36f6-109c-5745-8f2e-1bbf363d6973', 'a6a278df-3f9a-503f-887b-8e124a1b3dd0', 'choose_definition', 'Определение', '{"explanation":"A break is a short time when you stop working or studying.","instruction":"Выберите значение.","language":"en","options":[{"id":"HSR_L2_D_A","is_correct":true,"text":"A short time when you stop working or studying"},{"id":"HSR_L2_D_B","is_correct":false,"text":"A task from a teacher"},{"id":"HSR_L2_D_C","is_correct":false,"text":"A room where students learn"}],"word":"break"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('abb62842-a272-57b3-a705-459ed6a702a3', 'a6a278df-3f9a-503f-887b-8e124a1b3dd0', 'listen_choose_word', 'Слово', '{"audio_text":"I study at home.","explanation":"The complete sentence is “I study at home.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"home","id":"HSR_L2_LW_A","is_correct":true},{"audio_text":"history","id":"HSR_L2_LW_B","is_correct":false},{"audio_text":"answer","id":"HSR_L2_LW_C","is_correct":false}],"sentence_template":"I study at ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a2cef69d-cff9-50ed-8c1f-5aa5bb356460', 'a6a278df-3f9a-503f-887b-8e124a1b3dd0', 'missing_word', 'Впишите', '{"correct_answer":"day","explanation":"The complete sentence is “I study every day.”","hint_prefix":"da","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I study every ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c2e3f32b-eeee-5366-9c02-cbe7cf4c9b1f', 'a6a278df-3f9a-503f-887b-8e124a1b3dd0', 'match_pairs_voice', 'Звук', '{"explanation":"Match each audio item with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"study","id":"HSR_L2_VM_P1","text":"study"},{"audio_text":"after school","id":"HSR_L2_VM_P2","text":"after school"},{"audio_text":"take a break","id":"HSR_L2_VM_P3","text":"take a break"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c329332f-9cec-5fe4-b741-8f0e2370971b', 'a6a278df-3f9a-503f-887b-8e124a1b3dd0', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Sam","text":"When do you study?"}],"explanation":"“I study in the evening” naturally answers a question about study time.","instruction":"Ответьте.","options":[{"id":"HSR_L2_C_A","is_correct":true,"text":"I study in the evening."},{"id":"HSR_L2_C_B","is_correct":false,"text":"I am evening years old."},{"id":"HSR_L2_C_C","is_correct":false,"text":"My study is a pencil."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('4a7f32f7-3d9e-5e0b-8867-0906315ed304', 'a6a278df-3f9a-503f-887b-8e124a1b3dd0', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('63ade9a6-d94c-5c74-844b-eb8d47254b42', NULL, 'Заканчиваем задания', 'Научиться говорить о начале, выполнении и проверке учебных заданий.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e85e614f-730d-59b7-a179-fc758011a32a', '63ade9a6-d94c-5c74-844b-eb8d47254b42', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"HSR_L3_MP_P1","left":"start","right":"начинать"},{"id":"HSR_L3_MP_P2","left":"finish","right":"заканчивать"},{"id":"HSR_L3_MP_P3","left":"check","right":"проверять"},{"id":"HSR_L3_MP_P4","left":"correct","right":"правильный"},{"id":"HSR_L3_MP_P5","left":"mistake","right":"ошибка"},{"id":"HSR_L3_MP_P6","left":"ready","right":"готов"},{"id":"HSR_L3_MP_P7","left":"Good job!","right":"Отличная работа!"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b3e963ac-5a44-533f-b3dc-3f6cb3bd2afa', '63ade9a6-d94c-5c74-844b-eb8d47254b42', 'quiz', 'Проверьте себя', '{"explanation":"Checking your work helps you find mistakes.","instruction":"Выберите правильный ответ.","options":[{"id":"HSR_L3_Q_A","is_correct":true,"text":"Check your work"},{"id":"HSR_L3_Q_B","is_correct":false,"text":"Start a break"},{"id":"HSR_L3_Q_C","is_correct":false,"text":"Close the answer"}],"question":"What should you do to look for mistakes?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('360b7380-5225-5d30-8c3c-7ea82ab5ed99', '63ade9a6-d94c-5c74-844b-eb8d47254b42', 'translate', 'Переведите', '{"correct_translation":"I finished my homework.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я закончил домашнюю работу.","target_language":"en","word_bank":["homework.","my","finished","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9b768cf6-08ee-5996-9b4d-eac7b4ef35e9', '63ade9a6-d94c-5c74-844b-eb8d47254b42', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"check","instruction":"Выберите подходящее слово.","options":["check","chair","music"],"sentence_template":"Please ___ your answers."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b9e38878-07dc-5cc3-b36f-ed5d95b120a8', '63ade9a6-d94c-5c74-844b-eb8d47254b42', 'tap_words', 'Соберите фразу', '{"correct_words":["I","am","ready."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["am","I","ready."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ce7b5678-44f0-5386-80e2-325c1ec491f3', '63ade9a6-d94c-5c74-844b-eb8d47254b42', 'listening', 'Послушайте', '{"audio_text":"I finished my homework.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a2b1e9ec-b891-5034-938a-a57e936fddcb', '63ade9a6-d94c-5c74-844b-eb8d47254b42', 'listening_shadowing', 'Повторите', '{"audio_text":"I check my answers and correct my mistakes.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я проверяю ответы и исправляю ошибки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('716dcb58-f78b-5639-9ed4-9d8fc2fd18dd', '63ade9a6-d94c-5c74-844b-eb8d47254b42', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Anna","text":"I finished my math homework.","translation":"Я закончила домашнюю работу по математике.","type":"dialogue"},{"character":"Dad","text":"Did you check your answers?","translation":"Ты проверила свои ответы?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes, I checked my answers."},{"is_correct":false,"text":"My answers can sing."}],"text":"What should Anna say?","type":"choice"}],"title":"Homework Is Finished"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8e33b827-7fd1-596b-a6eb-ca39a03a742b', '63ade9a6-d94c-5c74-844b-eb8d47254b42', 'choose_definition', 'Определение', '{"explanation":"A mistake is something that is not correct.","instruction":"Выберите значение.","language":"en","options":[{"id":"HSR_L3_D_A","is_correct":true,"text":"Something that is not correct"},{"id":"HSR_L3_D_B","is_correct":false,"text":"Something that is fully prepared"},{"id":"HSR_L3_D_C","is_correct":false,"text":"The beginning of a task"}],"word":"mistake"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('84fc2866-64e5-53fa-922c-95bb855ec6bf', '63ade9a6-d94c-5c74-844b-eb8d47254b42', 'listen_choose_word', 'Слово', '{"audio_text":"Please check your work.","explanation":"The complete instruction is “Please check your work.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"check","id":"HSR_L3_LW_A","is_correct":true},{"audio_text":"subject","id":"HSR_L3_LW_B","is_correct":false},{"audio_text":"evening","id":"HSR_L3_LW_C","is_correct":false}],"sentence_template":"Please ___ your work."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('18964d8d-0c90-51e7-90dd-5a2a336a5b7e', '63ade9a6-d94c-5c74-844b-eb8d47254b42', 'missing_word', 'Впишите', '{"correct_answer":"ready","explanation":"The complete sentence is “I am ready.”","hint_prefix":"re","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I am ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('87919c7e-88aa-55a3-83d8-768962050bd6', '63ade9a6-d94c-5c74-844b-eb8d47254b42', 'match_pairs_voice', 'Звук', '{"explanation":"Match each audio item with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"finish","id":"HSR_L3_VM_P1","text":"finish"},{"audio_text":"check","id":"HSR_L3_VM_P2","text":"check"},{"audio_text":"mistake","id":"HSR_L3_VM_P3","text":"mistake"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e3f2feed-97fe-5f38-b652-ec6c74efb263', '63ade9a6-d94c-5c74-844b-eb8d47254b42', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Did you finish your homework?"}],"explanation":"This response clearly says the homework is finished and checked.","instruction":"Ответьте.","options":[{"id":"HSR_L3_C_A","is_correct":true,"text":"Yes, I finished it and checked my answers."},{"id":"HSR_L3_C_B","is_correct":false,"text":"Yes, my homework is a city."},{"id":"HSR_L3_C_C","is_correct":false,"text":"I am from an answer."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('4a7f32f7-3d9e-5e0b-8867-0906315ed304', '63ade9a6-d94c-5c74-844b-eb8d47254b42', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1872420b-744d-5319-8350-63a75ee2e165', 'en', 'homework', 'домашняя работа', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4230f77f-3ca8-5346-9222-f8cebc6e6f7e', 'en', 'exercise', 'упражнение', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d9432c21-0eda-5a57-ba61-f04226b77803', 'en', 'question', 'вопрос', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5055639a-2206-5c75-8bb8-807c6f2aaef6', 'en', 'answer', 'ответ', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c3a42819-3a85-54ae-a3a0-b70bed24cfa5', 'en', 'read a book', 'читать книгу', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ff1967b7-bfab-50df-a7e1-6a7f286d5f30', 'en', 'write a sentence', 'написать предложение', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('706c4038-f45f-59e6-a358-323c963b517c', 'en', 'learn new words', 'учить новые слова', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8161a2e1-76d3-5c51-a1e2-57291c90d809', 'en', 'study', 'заниматься', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('92cd840e-2f2a-5fb7-aeb1-4335c97bbc52', 'en', 'after school', 'после школы', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('280db975-79a0-55b3-b7ee-589608963633', 'en', 'in the evening', 'вечером', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ccbdf5ac-322d-5053-9aa5-96b59b38520a', 'en', 'every day', 'каждый день', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cc68d4a2-4684-51b4-86a9-5afe2e6a5cfc', 'en', 'at home', 'дома', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d6cc1d78-7462-56e9-b099-c6785d35e2b9', 'en', 'at my desk', 'за моей партой', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ffd6d29f-ad69-534c-82a8-9afdf2abf14a', 'en', 'take a break', 'сделать перерыв', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('25f5d5e2-ee11-53ba-9552-e25e8bedd962', 'en', 'start', 'начинать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f97478e3-6aa0-54f6-844c-a7b07158c905', 'en', 'finish', 'заканчивать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0924b87c-15af-59ff-804d-5d50cfeeb710', 'en', 'check', 'проверять', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fc713832-5a89-59d6-b762-94e39781576a', 'en', 'correct', 'правильный', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2de0da2b-152d-58f7-b870-be54f4a8dfe9', 'en', 'mistake', 'ошибка', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2c218f27-b023-5084-a651-ffb2f47fd4fb', 'en', 'ready', 'готов', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f89a4a7c-396a-5a92-88e8-51f49df4858a', 'en', 'Good job!', 'Отличная работа!', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4a7f32f7-3d9e-5e0b-8867-0906315ed304', id, '1742ac73-a364-5060-a6b6-9d7e7c5621f8', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'homework' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4a7f32f7-3d9e-5e0b-8867-0906315ed304', id, '1742ac73-a364-5060-a6b6-9d7e7c5621f8', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'exercise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4a7f32f7-3d9e-5e0b-8867-0906315ed304', id, '1742ac73-a364-5060-a6b6-9d7e7c5621f8', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4a7f32f7-3d9e-5e0b-8867-0906315ed304', id, '1742ac73-a364-5060-a6b6-9d7e7c5621f8', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'answer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4a7f32f7-3d9e-5e0b-8867-0906315ed304', id, '1742ac73-a364-5060-a6b6-9d7e7c5621f8', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'read a book' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4a7f32f7-3d9e-5e0b-8867-0906315ed304', id, '1742ac73-a364-5060-a6b6-9d7e7c5621f8', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'write a sentence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4a7f32f7-3d9e-5e0b-8867-0906315ed304', id, '1742ac73-a364-5060-a6b6-9d7e7c5621f8', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'learn new words' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4a7f32f7-3d9e-5e0b-8867-0906315ed304', id, 'a6a278df-3f9a-503f-887b-8e124a1b3dd0', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'study' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4a7f32f7-3d9e-5e0b-8867-0906315ed304', id, 'a6a278df-3f9a-503f-887b-8e124a1b3dd0', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'after school' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4a7f32f7-3d9e-5e0b-8867-0906315ed304', id, 'a6a278df-3f9a-503f-887b-8e124a1b3dd0', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'in the evening' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4a7f32f7-3d9e-5e0b-8867-0906315ed304', id, 'a6a278df-3f9a-503f-887b-8e124a1b3dd0', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'every day' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4a7f32f7-3d9e-5e0b-8867-0906315ed304', id, 'a6a278df-3f9a-503f-887b-8e124a1b3dd0', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'at home' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4a7f32f7-3d9e-5e0b-8867-0906315ed304', id, 'a6a278df-3f9a-503f-887b-8e124a1b3dd0', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'at my desk' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4a7f32f7-3d9e-5e0b-8867-0906315ed304', id, 'a6a278df-3f9a-503f-887b-8e124a1b3dd0', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'take a break' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4a7f32f7-3d9e-5e0b-8867-0906315ed304', id, '63ade9a6-d94c-5c74-844b-eb8d47254b42', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'start' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4a7f32f7-3d9e-5e0b-8867-0906315ed304', id, '63ade9a6-d94c-5c74-844b-eb8d47254b42', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'finish' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4a7f32f7-3d9e-5e0b-8867-0906315ed304', id, '63ade9a6-d94c-5c74-844b-eb8d47254b42', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'check' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4a7f32f7-3d9e-5e0b-8867-0906315ed304', id, '63ade9a6-d94c-5c74-844b-eb8d47254b42', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'correct' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4a7f32f7-3d9e-5e0b-8867-0906315ed304', id, '63ade9a6-d94c-5c74-844b-eb8d47254b42', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'mistake' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4a7f32f7-3d9e-5e0b-8867-0906315ed304', id, '63ade9a6-d94c-5c74-844b-eb8d47254b42', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'ready' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4a7f32f7-3d9e-5e0b-8867-0906315ed304', id, '63ade9a6-d94c-5c74-844b-eb8d47254b42', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'Good job!' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
