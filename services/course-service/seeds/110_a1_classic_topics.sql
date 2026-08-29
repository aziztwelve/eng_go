-- Track: A1_T01_GREETINGS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('18511b00-9c66-5d4e-a26f-71fa80a01aea', 'A1_T01_GREETINGS', 'Приветствия', 'Первые слова: поздороваться, спросить дела, познакомиться и попрощаться.', 'en', 'A1', '', '{}'::text[], true, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('4306f7a9-eb53-564d-b985-d325f8c6822b', NULL, 'Здравствуйте!', 'Выучить базовые приветствия и прощания.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5d89fe43-ab54-5f74-8153-e8c117435022', '4306f7a9-eb53-564d-b985-d325f8c6822b', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"hello","right":"здравствуйте"},{"id":"P2","left":"hi","right":"привет"},{"id":"P3","left":"goodbye","right":"до свидания"},{"id":"P4","left":"bye","right":"пока"},{"id":"P5","left":"good morning","right":"доброе утро"},{"id":"P6","left":"good night","right":"доброй ночи"},{"id":"P7","left":"see you","right":"до встречи"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a1a9fb98-8423-5d33-81c8-4eab2da1edd1', '4306f7a9-eb53-564d-b985-d325f8c6822b', 'quiz', 'Проверьте себя', '{"explanation":"Goodbye — «до свидания», так прощаются.","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":false,"text":"Good night"},{"id":"B","is_correct":true,"text":"Goodbye"},{"id":"C","is_correct":false,"text":"Good morning"},{"id":"D","is_correct":false,"text":"Hello"}],"question":"Как сказать «до свидания»?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ef88179c-04e2-56c2-9313-6a9178076c86', '4306f7a9-eb53-564d-b985-d325f8c6822b', 'translate', 'Переведите фразу', '{"correct_translation":"Good morning!","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Доброе утро!","target_language":"en","word_bank":["morning","evening","night","Good"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('94d7a9ee-59ec-55bd-9fa0-679558f112ce', '4306f7a9-eb53-564d-b985-d325f8c6822b', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"morning","instruction":"Выберите подходящее слово.","options":["morning","night","bye"],"sentence_template":"Good ___!","translation_hint":"Доброе утро!"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('220d7aca-af79-562e-8df7-e21b198acc62', '4306f7a9-eb53-564d-b985-d325f8c6822b', 'tap_words', 'Соберите фразу', '{"correct_words":["Good","night"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["Good","morning","see","night"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('1e04516a-97bb-55e2-9512-178457ce2f98', '4306f7a9-eb53-564d-b985-d325f8c6822b', 'listening', 'Послушайте', '{"audio_text":"Hello! Goodbye!","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('160288e7-3b29-5374-962d-bb51624c98e9', '4306f7a9-eb53-564d-b985-d325f8c6822b', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"Good morning!","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Доброе утро!"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6909ac07-7f9b-5dda-8cdd-37faffe429cb', '4306f7a9-eb53-564d-b985-d325f8c6822b', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"Hello!","translation":"Привет!","type":"dialogue"},{"character":"Tom","text":"Hi! Good morning!","translation":"Привет! Доброе утро!","type":"dialogue"},{"options":[{"is_correct":true,"text":"Goodbye!"},{"is_correct":false,"text":"Good morning!"},{"is_correct":false,"text":"Good night!"}],"text":"Анна уходит. Что сказать Тому?","type":"choice"}],"title":"First Day"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d1c0d845-948d-53a8-b3da-05a833f93852', '4306f7a9-eb53-564d-b985-d325f8c6822b', 'choose_definition', 'Выберите определение', '{"explanation":"hello — «здравствуйте», слово-приветствие.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":false,"text":"число"},{"id":"B","is_correct":false,"text":"слово для прощания"},{"id":"C","is_correct":false,"text":"время суток"},{"id":"D","is_correct":true,"text":"слово для приветствия"}],"word":"hello"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d35652c3-27ed-520a-a1d8-6d43e3908329', '4306f7a9-eb53-564d-b985-d325f8c6822b', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"Good morning!","explanation":"morning — «утро».","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"morning","id":"A","is_correct":true},{"audio_text":"night","id":"B","is_correct":false},{"audio_text":"bye","id":"C","is_correct":false}],"sentence_template":"Good ___!"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('584a0fe2-ef14-5890-bd3f-be7832851cc2', '4306f7a9-eb53-564d-b985-d325f8c6822b', 'missing_word', 'Впишите слово', '{"correct_answer":"morning","explanation":"morning — утро.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Good ___!"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('2f1e9aba-a284-51d0-aa60-6a203f3a375c', '4306f7a9-eb53-564d-b985-d325f8c6822b', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"hello","id":"V1","text":"hello"},{"audio_text":"hi","id":"V2","text":"hi"},{"audio_text":"morning","id":"V3","text":"morning"},{"audio_text":"night","id":"V4","text":"night"},{"audio_text":"goodbye","id":"V5","text":"goodbye"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6fc15739-50da-58b8-aa16-b4a9637128f8', '4306f7a9-eb53-564d-b985-d325f8c6822b', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Anna","text":"Hello! I am Anna."}],"explanation":"На приветствие отвечают приветствием: Hi, Anna!","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":false,"text":"Goodbye, Anna!"},{"id":"B","is_correct":true,"text":"Hi, Anna!"},{"id":"C","is_correct":false,"text":"Good night, Anna!"}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('18511b00-9c66-5d4e-a26f-71fa80a01aea', '4306f7a9-eb53-564d-b985-d325f8c6822b', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('842d3841-cdde-543e-be74-582a3af42c11', NULL, 'Как дела?', 'Спрашивать и отвечать о делах, благодарить.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b0c61a08-48cc-5b93-b2c4-d419da3270ec', '842d3841-cdde-543e-be74-582a3af42c11', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"how","right":"как"},{"id":"P2","left":"fine","right":"отлично"},{"id":"P3","left":"thanks","right":"спасибо"},{"id":"P4","left":"please","right":"пожалуйста"},{"id":"P5","left":"welcome","right":"добро пожаловать"},{"id":"P6","left":"OK","right":"в порядке"},{"id":"P7","left":"and you","right":"а у тебя"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f7afacd9-3acd-5323-946c-8a991e055f06', '842d3841-cdde-543e-be74-582a3af42c11', 'quiz', 'Проверьте себя', '{"explanation":"How are you? — «Как дела?»","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":false,"text":"How old are you?"},{"id":"B","is_correct":false,"text":"What is your name?"},{"id":"C","is_correct":true,"text":"How are you?"},{"id":"D","is_correct":false,"text":"Where are you from?"}],"question":"Как спросить «Как дела?»"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d85159b9-0f15-5a46-b195-1b68bf74a580', '842d3841-cdde-543e-be74-582a3af42c11', 'translate', 'Переведите фразу', '{"correct_translation":"Thanks, I am fine!","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Спасибо, у меня всё отлично!","target_language":"en","word_bank":["fine","am","Thanks","I","how","you"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5841aa61-a16c-5a66-be7b-5d694857229a', '842d3841-cdde-543e-be74-582a3af42c11', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"fine","instruction":"Выберите подходящее слово.","options":["fine","how","please"],"sentence_template":"I am ___, thanks.","translation_hint":"Я в порядке, спасибо."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4f72af63-8b44-55c4-b745-e39cb9d019b4', '842d3841-cdde-543e-be74-582a3af42c11', 'tap_words', 'Соберите фразу', '{"correct_words":["How","are","you"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["is","you","what","How","are"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ce0655b1-6558-5c4e-a579-f1f2c7d3d5cb', '842d3841-cdde-543e-be74-582a3af42c11', 'listening', 'Послушайте', '{"audio_text":"I am fine, thanks!","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5af4de98-fcb6-5481-9e70-177adb175c7c', '842d3841-cdde-543e-be74-582a3af42c11', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"How are you?","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Как дела?"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('cfd6cc7a-81cc-5896-9fd2-608b23f4eecd', '842d3841-cdde-543e-be74-582a3af42c11', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"Hi, Tom! How are you?","translation":"Привет, Том! Как дела?","type":"dialogue"},{"character":"Tom","text":"I am fine, thanks. And you?","translation":"Отлично, спасибо. А у тебя?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I am fine too!"},{"is_correct":false,"text":"Good night!"},{"is_correct":false,"text":"You are welcome!"}],"text":"Что ответить Анне?","type":"choice"}],"title":"Small Talk"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a6aba4ec-a6bb-59f8-a636-40c910875346', '842d3841-cdde-543e-be74-582a3af42c11', 'choose_definition', 'Выберите определение', '{"explanation":"thanks — «спасибо».","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":false,"text":"прощание"},{"id":"B","is_correct":false,"text":"вопрос о делах"},{"id":"C","is_correct":true,"text":"слово благодарности"},{"id":"D","is_correct":false,"text":"приветствие"}],"word":"thanks"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3b957805-ab78-559f-ac23-88c33dbe2f17', '842d3841-cdde-543e-be74-582a3af42c11', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"I am fine, thanks.","explanation":"fine — «отлично, в порядке».","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"how","id":"A","is_correct":false},{"audio_text":"fine","id":"B","is_correct":true},{"audio_text":"please","id":"C","is_correct":false}],"sentence_template":"I am ___, thanks."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('818312a9-0604-5850-b9b8-fb14a843a8d7', '842d3841-cdde-543e-be74-582a3af42c11', 'missing_word', 'Впишите слово', '{"correct_answer":"How","explanation":"How are you? — Как дела?","hint_prefix":"ho","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ are you?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a4381dcc-760f-55eb-bab3-b9a6ce972711', '842d3841-cdde-543e-be74-582a3af42c11', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"how","id":"V1","text":"how"},{"audio_text":"fine","id":"V2","text":"fine"},{"audio_text":"thanks","id":"V3","text":"thanks"},{"audio_text":"please","id":"V4","text":"please"},{"audio_text":"welcome","id":"V5","text":"welcome"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f9d27f19-be45-5ce6-b4f7-6f3aecd8e06e', '842d3841-cdde-543e-be74-582a3af42c11', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Anna","text":"How are you?"}],"explanation":"На вопрос о делах отвечаем: I am fine, thanks!","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":false,"text":"My name is Anna."},{"id":"B","is_correct":false,"text":"Good morning!"},{"id":"C","is_correct":true,"text":"I am fine, thanks!"}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('18511b00-9c66-5d4e-a26f-71fa80a01aea', '842d3841-cdde-543e-be74-582a3af42c11', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('8c62e8fd-c008-57f5-88a7-63289ccd2225', NULL, 'Как тебя зовут?', 'Знакомиться: спрашивать и называть имя.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d353bb0e-38f6-5ef6-a8c2-119b639a11a9', '8c62e8fd-c008-57f5-88a7-63289ccd2225', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"name","right":"имя"},{"id":"P2","left":"my","right":"мой"},{"id":"P3","left":"your","right":"твой"},{"id":"P4","left":"who","right":"кто"},{"id":"P5","left":"nice","right":"приятно"},{"id":"P6","left":"meet","right":"знакомиться"},{"id":"P7","left":"friend","right":"друг"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c52a11ed-82a3-5898-808b-a55190f642f2', '8c62e8fd-c008-57f5-88a7-63289ccd2225', 'quiz', 'Проверьте себя', '{"explanation":"What is your name? — «Как тебя зовут?»","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":false,"text":"How are you?"},{"id":"B","is_correct":false,"text":"Where do you live?"},{"id":"C","is_correct":true,"text":"What is your name?"},{"id":"D","is_correct":false,"text":"How old are you?"}],"question":"Как спросить имя?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d8d36b4f-fb1b-5780-9265-204f9c9a634a', '8c62e8fd-c008-57f5-88a7-63289ccd2225', 'translate', 'Переведите фразу', '{"correct_translation":"My name is Anna.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Меня зовут Анна.","target_language":"en","word_bank":["is","Anna","who","name","her","My"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('121926fb-3dd4-5584-9c31-108757abcdb3', '8c62e8fd-c008-57f5-88a7-63289ccd2225', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"name","instruction":"Выберите подходящее слово.","options":["name","friend","fine"],"sentence_template":"My ___ is Tom.","translation_hint":"Моё имя — Том."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('60d46120-bc03-5fef-b470-5925806e3b36', '8c62e8fd-c008-57f5-88a7-63289ccd2225', 'tap_words', 'Соберите фразу', '{"correct_words":["Nice","to","meet","you"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["see","meet","Nice","you","good","to"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('1ee2b651-2197-56c6-8381-df31e6d608d6', '8c62e8fd-c008-57f5-88a7-63289ccd2225', 'listening', 'Послушайте', '{"audio_text":"What is your name?","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('cea863cd-a3bc-5076-9abe-0ef51dc7db58', '8c62e8fd-c008-57f5-88a7-63289ccd2225', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"My name is Anna.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Меня зовут Анна."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('1576012e-1794-5067-9462-d389640ad14a', '8c62e8fd-c008-57f5-88a7-63289ccd2225', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"Hello! What is your name?","translation":"Привет! Как тебя зовут?","type":"dialogue"},{"character":"Tom","text":"My name is Tom. Nice to meet you!","translation":"Меня зовут Том. Приятно познакомиться!","type":"dialogue"},{"options":[{"is_correct":true,"text":"Nice to meet you too!"},{"is_correct":false,"text":"Good night!"},{"is_correct":false,"text":"I am fine!"}],"text":"Что ответить Тому?","type":"choice"}],"title":"New Friend"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8ebc39b2-fa26-5abc-8a69-3061f544c0ae', '8c62e8fd-c008-57f5-88a7-63289ccd2225', 'choose_definition', 'Выберите определение', '{"explanation":"friend — «друг».","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":false,"text":"член семьи"},{"id":"B","is_correct":true,"text":"человек, с которым дружат"},{"id":"C","is_correct":false,"text":"еда"},{"id":"D","is_correct":false,"text":"город"}],"word":"friend"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b823a18f-4790-54f6-9618-7e68861be316', '8c62e8fd-c008-57f5-88a7-63289ccd2225', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"My name is Anna.","explanation":"name — «имя».","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"fine","id":"A","is_correct":false},{"audio_text":"friend","id":"B","is_correct":false},{"audio_text":"name","id":"C","is_correct":true}],"sentence_template":"My ___ is Anna."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b541e993-5433-5cbc-8d85-b75230ac0507', '8c62e8fd-c008-57f5-88a7-63289ccd2225', 'missing_word', 'Впишите слово', '{"correct_answer":"meet","explanation":"Nice to meet you! — Приятно познакомиться!","hint_prefix":"me","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Nice to ___ you!"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('990947f8-3006-5b08-9b25-0794d3326435', '8c62e8fd-c008-57f5-88a7-63289ccd2225', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"name","id":"V1","text":"name"},{"audio_text":"my","id":"V2","text":"my"},{"audio_text":"your","id":"V3","text":"your"},{"audio_text":"nice","id":"V4","text":"nice"},{"audio_text":"meet","id":"V5","text":"meet"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('46c91375-8452-5396-837d-426792fafdf5', '8c62e8fd-c008-57f5-88a7-63289ccd2225', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Tom","text":"What is your name?"}],"explanation":"На вопрос об имени отвечаем: My name is …","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":false,"text":"I am fine!"},{"id":"B","is_correct":false,"text":"Goodbye!"},{"id":"C","is_correct":true,"text":"My name is Anna."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('18511b00-9c66-5d4e-a26f-71fa80a01aea', '8c62e8fd-c008-57f5-88a7-63289ccd2225', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c85dc617-d83f-51fe-b18c-82805ed9a67e', 'en', 'hello', 'здравствуйте', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9b446421-56f0-5b44-98f0-65e9c1c876df', 'en', 'hi', 'привет', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('efed2b1f-8bdc-5cfd-ba58-b27167f068ab', 'en', 'goodbye', 'до свидания', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aa78a351-a56b-5b8b-beb4-156812191b79', 'en', 'bye', 'пока', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('777dc687-03b4-5f9c-8375-8f436101a373', 'en', 'good morning', 'доброе утро', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('42acd71d-0658-59ee-8da1-450ecfa34ba8', 'en', 'good night', 'доброй ночи', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dbf75d5f-0ca7-5373-b5d0-9da6eb0c133d', 'en', 'see you', 'до встречи', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4ad3f0c1-bb5e-5658-a7bd-5ea91d1d7d62', 'en', 'how', 'как', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9f387e47-1c4a-5cba-898b-b3abd9f4d5d5', 'en', 'fine', 'отлично', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3fc179dd-07bc-5731-948f-c583de5e4fe6', 'en', 'thanks', 'спасибо', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('597a96d3-92fe-58a8-885f-b283b2745e8b', 'en', 'please', 'пожалуйста', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('90dc135f-0906-5a2d-a9d0-bdb45f03e55f', 'en', 'welcome', 'добро пожаловать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fde5776e-5e88-5c34-88d1-036bd2fba3db', 'en', 'OK', 'в порядке', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2ac2bb64-7dc0-55ee-844a-13e392326f1f', 'en', 'and you', 'а у тебя', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4060b2dd-4a78-5bae-b4fb-33a4613c94aa', 'en', 'name', 'имя', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4e28483b-40da-53cc-99ca-ced3c08b0e44', 'en', 'my', 'мой', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8451a894-032f-5d8d-924e-815aa7ac6240', 'en', 'your', 'твой', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('32057c5e-8576-52ed-9b7c-7bf9cd26fdbe', 'en', 'who', 'кто', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8be5897f-4d6b-5dba-85af-f7a695f032c8', 'en', 'nice', 'приятно', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('39db6cf9-cf7c-59c7-87a3-6202279f17c6', 'en', 'meet', 'знакомиться', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cd75c44-4f87-5783-9614-619d962ba6c5', 'en', 'friend', 'друг', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18511b00-9c66-5d4e-a26f-71fa80a01aea', id, '4306f7a9-eb53-564d-b985-d325f8c6822b', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'hello' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18511b00-9c66-5d4e-a26f-71fa80a01aea', id, '4306f7a9-eb53-564d-b985-d325f8c6822b', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'hi' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18511b00-9c66-5d4e-a26f-71fa80a01aea', id, '4306f7a9-eb53-564d-b985-d325f8c6822b', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'goodbye' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18511b00-9c66-5d4e-a26f-71fa80a01aea', id, '4306f7a9-eb53-564d-b985-d325f8c6822b', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'bye' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18511b00-9c66-5d4e-a26f-71fa80a01aea', id, '4306f7a9-eb53-564d-b985-d325f8c6822b', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'good morning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18511b00-9c66-5d4e-a26f-71fa80a01aea', id, '4306f7a9-eb53-564d-b985-d325f8c6822b', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'good night' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18511b00-9c66-5d4e-a26f-71fa80a01aea', id, '4306f7a9-eb53-564d-b985-d325f8c6822b', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'see you' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18511b00-9c66-5d4e-a26f-71fa80a01aea', id, '842d3841-cdde-543e-be74-582a3af42c11', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'how' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18511b00-9c66-5d4e-a26f-71fa80a01aea', id, '842d3841-cdde-543e-be74-582a3af42c11', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'fine' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18511b00-9c66-5d4e-a26f-71fa80a01aea', id, '842d3841-cdde-543e-be74-582a3af42c11', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'thanks' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18511b00-9c66-5d4e-a26f-71fa80a01aea', id, '842d3841-cdde-543e-be74-582a3af42c11', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'please' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18511b00-9c66-5d4e-a26f-71fa80a01aea', id, '842d3841-cdde-543e-be74-582a3af42c11', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'welcome' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18511b00-9c66-5d4e-a26f-71fa80a01aea', id, '842d3841-cdde-543e-be74-582a3af42c11', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'OK' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18511b00-9c66-5d4e-a26f-71fa80a01aea', id, '842d3841-cdde-543e-be74-582a3af42c11', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'and you' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18511b00-9c66-5d4e-a26f-71fa80a01aea', id, '8c62e8fd-c008-57f5-88a7-63289ccd2225', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'name' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18511b00-9c66-5d4e-a26f-71fa80a01aea', id, '8c62e8fd-c008-57f5-88a7-63289ccd2225', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'my' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18511b00-9c66-5d4e-a26f-71fa80a01aea', id, '8c62e8fd-c008-57f5-88a7-63289ccd2225', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'your' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18511b00-9c66-5d4e-a26f-71fa80a01aea', id, '8c62e8fd-c008-57f5-88a7-63289ccd2225', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'who' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18511b00-9c66-5d4e-a26f-71fa80a01aea', id, '8c62e8fd-c008-57f5-88a7-63289ccd2225', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'nice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18511b00-9c66-5d4e-a26f-71fa80a01aea', id, '8c62e8fd-c008-57f5-88a7-63289ccd2225', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'meet' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '18511b00-9c66-5d4e-a26f-71fa80a01aea', id, '8c62e8fd-c008-57f5-88a7-63289ccd2225', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'friend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
-- Track: A1_T02_FAMILY. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('0a1ac051-2e8f-568c-bd7f-03168f18dbcb', 'A1_T02_FAMILY', 'Семья', 'Члены семьи, родственники и разговоры о семье.', 'en', 'A1', '', '{}'::text[], true, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('d31b0cf9-a5a4-5e82-988a-f7720d4117b2', NULL, 'Моя семья', 'Назвать членов семьи.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('18b54879-3d68-5da0-9632-a1f95df007ad', 'd31b0cf9-a5a4-5e82-988a-f7720d4117b2', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"mother","right":"мама"},{"id":"P2","left":"father","right":"папа"},{"id":"P3","left":"sister","right":"сестра"},{"id":"P4","left":"brother","right":"брат"},{"id":"P5","left":"son","right":"сын"},{"id":"P6","left":"daughter","right":"дочь"},{"id":"P7","left":"family","right":"семья"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('97a499bc-480a-5025-86d3-36c6de9fe980', 'd31b0cf9-a5a4-5e82-988a-f7720d4117b2', 'quiz', 'Проверьте себя', '{"explanation":"daughter — «дочь».","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":false,"text":"мама"},{"id":"B","is_correct":false,"text":"сестра"},{"id":"C","is_correct":true,"text":"дочь"},{"id":"D","is_correct":false,"text":"сын"}],"question":"Кто такая daughter?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('43d4cab2-d203-5efa-bf97-d9fe74042904', 'd31b0cf9-a5a4-5e82-988a-f7720d4117b2', 'translate', 'Переведите фразу', '{"correct_translation":"This is my mother.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Это моя мама.","target_language":"en","word_bank":["is","my","This","mother","father","your"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('62defdc1-ff52-54eb-a272-b14e3c91f3b1', 'd31b0cf9-a5a4-5e82-988a-f7720d4117b2', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"brother","instruction":"Выберите подходящее слово.","options":["family","mother","brother"],"sentence_template":"I have one ___ and one sister.","translation_hint":"У меня есть брат и сестра."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('dd65304c-8cd1-576b-9d48-a8b4edae7ba3', 'd31b0cf9-a5a4-5e82-988a-f7720d4117b2', 'tap_words', 'Соберите фразу', '{"correct_words":["This","is","my","family"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["the","are","my","This","is","family"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0e26a6d7-94d5-5a71-8abe-25db89d041f7', 'd31b0cf9-a5a4-5e82-988a-f7720d4117b2', 'listening', 'Послушайте', '{"audio_text":"I have a brother and a sister.","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d4d0491f-e79d-52b8-9d2e-56e1eeea1799', 'd31b0cf9-a5a4-5e82-988a-f7720d4117b2', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"This is my mother.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Это моя мама."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d91d575f-d450-56b6-948f-0aea522eb75f', 'd31b0cf9-a5a4-5e82-988a-f7720d4117b2', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"text":"Tom shows a photo.","translation":"Том показывает фото.","type":"narration"},{"character":"Anna","text":"Who is this?","translation":"Кто это?","type":"dialogue"},{"character":"Tom","text":"This is my sister. Her name is Kate.","translation":"Это моя сестра. Её зовут Кейт.","type":"dialogue"},{"options":[{"is_correct":true,"text":"His sister"},{"is_correct":false,"text":"His mother"},{"is_correct":false,"text":"His daughter"}],"text":"Кто Кейт для Тома?","type":"choice"}],"title":"Family Photo"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('dd976790-d577-5c87-842b-11a2f604af71', 'd31b0cf9-a5a4-5e82-988a-f7720d4117b2', 'choose_definition', 'Выберите определение', '{"explanation":"family — «семья».","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":false,"text":"школа"},{"id":"B","is_correct":false,"text":"город"},{"id":"C","is_correct":true,"text":"родители и дети вместе"},{"id":"D","is_correct":false,"text":"работа"}],"word":"family"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('cf4cc899-0a4c-5821-8540-68d2ef202540', 'd31b0cf9-a5a4-5e82-988a-f7720d4117b2', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"My father and my mother are my parents.","explanation":"mother — «мама».","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"daughter","id":"A","is_correct":false},{"audio_text":"mother","id":"B","is_correct":true},{"audio_text":"sister","id":"C","is_correct":false}],"sentence_template":"My father and my ___ are my parents."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7a99c2a8-7912-5c3b-8e66-86b867ff9c3d', 'd31b0cf9-a5a4-5e82-988a-f7720d4117b2', 'missing_word', 'Впишите слово', '{"correct_answer":"brother","explanation":"brother — брат.","hint_prefix":"br","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"My mother''s son is my ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('91d33dee-ce53-56a3-8c67-2cb67b55b64c', 'd31b0cf9-a5a4-5e82-988a-f7720d4117b2', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"mother","id":"V1","text":"mother"},{"audio_text":"father","id":"V2","text":"father"},{"audio_text":"sister","id":"V3","text":"sister"},{"audio_text":"brother","id":"V4","text":"brother"},{"audio_text":"family","id":"V5","text":"family"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('229ced4f-f724-5a33-8687-a339f195e568', 'd31b0cf9-a5a4-5e82-988a-f7720d4117b2', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Anna","text":"Is Kate your sister?"}],"explanation":"Кейт — она (she), поэтому отвечаем про сестру.","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":false,"text":"Yes, she is my mother."},{"id":"B","is_correct":true,"text":"Yes, she is my sister."},{"id":"C","is_correct":false,"text":"No, he is my brother."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0a1ac051-2e8f-568c-bd7f-03168f18dbcb', 'd31b0cf9-a5a4-5e82-988a-f7720d4117b2', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('c6dc9d9d-2a95-502d-879d-f7d43d51c6aa', NULL, 'Родственники', 'Назвать родственников: бабушка, дедушка, тётя, дядя.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a7bea8e7-5a1a-5528-ab1a-e57bce1e68d3', 'c6dc9d9d-2a95-502d-879d-f7d43d51c6aa', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"grandmother","right":"бабушка"},{"id":"P2","left":"grandfather","right":"дедушка"},{"id":"P3","left":"aunt","right":"тётя"},{"id":"P4","left":"uncle","right":"дядя"},{"id":"P5","left":"cousin","right":"двоюродный брат"},{"id":"P6","left":"parents","right":"родители"},{"id":"P7","left":"wife","right":"жена"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('1778daec-b7af-541e-831c-7bcea8d99c43', 'c6dc9d9d-2a95-502d-879d-f7d43d51c6aa', 'quiz', 'Проверьте себя', '{"explanation":"grandfather — «дедушка».","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":false,"text":"отец"},{"id":"B","is_correct":true,"text":"дедушка"},{"id":"C","is_correct":false,"text":"дядя"},{"id":"D","is_correct":false,"text":"сын"}],"question":"Кто такой grandfather?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0b464a16-4b84-5f22-a45e-7d3ee527805c', 'c6dc9d9d-2a95-502d-879d-f7d43d51c6aa', 'translate', 'Переведите фразу', '{"correct_translation":"My parents live in London.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мои родители живут в Лондоне.","target_language":"en","word_bank":["his","parents","London","My","lives","in","live"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4d194e50-b1c2-5ee6-a509-d74713395e82', 'c6dc9d9d-2a95-502d-879d-f7d43d51c6aa', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"grandmother","instruction":"Выберите подходящее слово.","options":["grandmother","aunt","wife"],"sentence_template":"My father''s mother is my ___.","translation_hint":"Бабушка — мама папы."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('73196eb1-d324-5caa-8972-2578e79bc82f', 'c6dc9d9d-2a95-502d-879d-f7d43d51c6aa', 'tap_words', 'Соберите фразу', '{"correct_words":["My","grandmother","is","old"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["is","old","grandmother","young","My","are"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9622798d-28fe-5155-be4b-1d83b455cd13', 'c6dc9d9d-2a95-502d-879d-f7d43d51c6aa', 'listening', 'Послушайте', '{"audio_text":"My aunt and my uncle live near us.","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ef10b7c7-0cd6-5b73-854f-c04774670cf6', 'c6dc9d9d-2a95-502d-879d-f7d43d51c6aa', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"I love my grandmother.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Я люблю свою бабушку."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3dfa3e80-e3b1-54a7-9a93-762bd92ab866', 'c6dc9d9d-2a95-502d-879d-f7d43d51c6aa', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"text":"Anna visits her grandparents.","translation":"Анна навещает бабушку и дедушку.","type":"narration"},{"character":"Grandmother","text":"Hello, Anna! How are you?","translation":"Привет, Анна! Как дела?","type":"dialogue"},{"character":"Anna","text":"I am fine, thanks! And you?","translation":"Отлично, спасибо! А у вас?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Her grandmother and grandfather"},{"is_correct":false,"text":"Her aunt and uncle"},{"is_correct":false,"text":"Her parents"}],"text":"Кого навещает Анна?","type":"choice"}],"title":"Visit to Grandparents"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('28915dce-6e8c-51d1-ad6f-7db834337bf8', 'c6dc9d9d-2a95-502d-879d-f7d43d51c6aa', 'choose_definition', 'Выберите определение', '{"explanation":"parents — «родители».","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":false,"text":"брат и сестра"},{"id":"B","is_correct":false,"text":"бабушка и дедушка"},{"id":"C","is_correct":true,"text":"мама и папа"},{"id":"D","is_correct":false,"text":"тётя и дядя"}],"word":"parents"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d984cff6-e716-51fb-bbde-fd5bb4eb36a9', 'c6dc9d9d-2a95-502d-879d-f7d43d51c6aa', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"My mother''s brother is my uncle.","explanation":"uncle — «дядя».","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"cousin","id":"A","is_correct":false},{"audio_text":"uncle","id":"B","is_correct":true},{"audio_text":"father","id":"C","is_correct":false}],"sentence_template":"My mother''s brother is my ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ccb51c5d-1409-5b83-ab5d-cc3250f42721', 'c6dc9d9d-2a95-502d-879d-f7d43d51c6aa', 'missing_word', 'Впишите слово', '{"correct_answer":"aunt","explanation":"aunt — тётя.","hint_prefix":"au","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"My mother''s sister is my ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b19421fb-bf9f-5416-a4d8-0b7c2912c9c5', 'c6dc9d9d-2a95-502d-879d-f7d43d51c6aa', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"grandmother","id":"V1","text":"grandmother"},{"audio_text":"grandfather","id":"V2","text":"grandfather"},{"audio_text":"aunt","id":"V3","text":"aunt"},{"audio_text":"uncle","id":"V4","text":"uncle"},{"audio_text":"cousin","id":"V5","text":"cousin"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8bb4975c-402c-5a9f-b6ec-34e6a6fc8532', 'c6dc9d9d-2a95-502d-879d-f7d43d51c6aa', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Tom","text":"This is my uncle John."}],"explanation":"При знакомстве говорят: Nice to meet you!","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":false,"text":"I am fine!"},{"id":"B","is_correct":false,"text":"Good night!"},{"id":"C","is_correct":true,"text":"Nice to meet you!"}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0a1ac051-2e8f-568c-bd7f-03168f18dbcb', 'c6dc9d9d-2a95-502d-879d-f7d43d51c6aa', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('9e302db9-f00c-5934-ac25-c5b1edd718a0', NULL, 'Семейная жизнь', 'Рассказать о семье простыми фразами.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('48db7351-ab4c-5392-afe9-a29de7e70e07', '9e302db9-f00c-5934-ac25-c5b1edd718a0', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"love","right":"любить"},{"id":"P2","left":"live","right":"жить"},{"id":"P3","left":"together","right":"вместе"},{"id":"P4","left":"married","right":"женаты"},{"id":"P5","left":"child","right":"ребёнок"},{"id":"P6","left":"old","right":"старый"},{"id":"P7","left":"young","right":"молодой"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b8162e7c-3022-569b-a51b-482d8072101c', '9e302db9-f00c-5934-ac25-c5b1edd718a0', 'quiz', 'Проверьте себя', '{"explanation":"live — «жить», together — «вместе».","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":false,"text":"We love together"},{"id":"B","is_correct":false,"text":"We are together old"},{"id":"C","is_correct":false,"text":"We live married"},{"id":"D","is_correct":true,"text":"We live together"}],"question":"Как сказать «Мы живём вместе»?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('67ea0e3f-b823-528c-abbe-ad0564406431', '9e302db9-f00c-5934-ac25-c5b1edd718a0', 'translate', 'Переведите фразу', '{"correct_translation":"I love my family.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я люблю свою семью.","target_language":"en","word_bank":["my","family","love","live","likes","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4aecfb59-a8f5-5759-8fcf-10d443b5daa1', '9e302db9-f00c-5934-ac25-c5b1edd718a0', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"old","instruction":"Выберите подходящее слово.","options":["together","old","young"],"sentence_template":"My grandfather is ___.","translation_hint":"Мой дедушка старый."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3f8e3b20-583d-5b23-8b45-24b5f7ce873a', '9e302db9-f00c-5934-ac25-c5b1edd718a0', 'tap_words', 'Соберите фразу', '{"correct_words":["We","live","together"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["live","are","We","together","love"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('38a2228f-ec77-5bf6-a86f-d35d835df31f', '9e302db9-f00c-5934-ac25-c5b1edd718a0', 'listening', 'Послушайте', '{"audio_text":"They are married and live together.","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('170f2774-1e63-539f-aa9a-e3fa94669c99', '9e302db9-f00c-5934-ac25-c5b1edd718a0', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"I love my family.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Я люблю свою семью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('bcdf1de8-2fe9-5e92-b9da-72eff312b75e', '9e302db9-f00c-5934-ac25-c5b1edd718a0', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"text":"Tom''s family is big.","translation":"Семья Тома большая.","type":"narration"},{"character":"Anna","text":"Do you have brothers or sisters?","translation":"У тебя есть братья или сёстры?","type":"dialogue"},{"character":"Tom","text":"Yes, I have two sisters and one brother.","translation":"Да, у меня две сестры и один брат.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Two"},{"is_correct":false,"text":"One"},{"is_correct":false,"text":"Three"}],"text":"Сколько сестёр у Тома?","type":"choice"}],"title":"A Big Family"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('500f9413-c490-5bac-a9fc-a0686f45854c', '9e302db9-f00c-5934-ac25-c5b1edd718a0', 'choose_definition', 'Выберите определение', '{"explanation":"together — «вместе».","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":false,"text":"по одному"},{"id":"B","is_correct":false,"text":"быстро"},{"id":"C","is_correct":false,"text":"далеко"},{"id":"D","is_correct":true,"text":"вместе, не поодиночке"}],"word":"together"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('21dad7f5-3fae-5b97-bf02-9a711e1f753c', '9e302db9-f00c-5934-ac25-c5b1edd718a0', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"We live together.","explanation":"live — «жить» (love — любить: похожие слова!).","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"love","id":"A","is_correct":false},{"audio_text":"old","id":"B","is_correct":false},{"audio_text":"live","id":"C","is_correct":true}],"sentence_template":"We ___ together."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('78b22e00-7163-5333-a14d-d5236b67cf82', '9e302db9-f00c-5934-ac25-c5b1edd718a0', 'missing_word', 'Впишите слово', '{"correct_answer":"married","explanation":"married — женаты/замужем.","hint_prefix":"ma","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"My parents are ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('03c5f9c5-b230-5001-b449-ff13e5cee01b', '9e302db9-f00c-5934-ac25-c5b1edd718a0', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"love","id":"V1","text":"love"},{"audio_text":"live","id":"V2","text":"live"},{"audio_text":"together","id":"V3","text":"together"},{"audio_text":"young","id":"V4","text":"young"},{"audio_text":"old","id":"V5","text":"old"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('246e8176-3194-5c44-a0f8-9ef12b4e67b8', '9e302db9-f00c-5934-ac25-c5b1edd718a0', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Anna","text":"Do you live with your parents?"}],"explanation":"Отвечаем: Yes, we live together.","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":false,"text":"We love together."},{"id":"B","is_correct":false,"text":"We are old."},{"id":"C","is_correct":true,"text":"Yes, we live together."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0a1ac051-2e8f-568c-bd7f-03168f18dbcb', '9e302db9-f00c-5934-ac25-c5b1edd718a0', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ab339f41-320c-5eb1-9b26-1832eb3d8272', 'en', 'mother', 'мама', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a5af4b89-a1d1-5906-ab2b-fe678f16429a', 'en', 'father', 'папа', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e6916daf-478b-5060-8bc2-63090e01ae36', 'en', 'sister', 'сестра', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8a5b6189-e084-599b-944b-1cbbbc7374f4', 'en', 'brother', 'брат', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fc307bd8-d6dc-5f36-a6d1-02567859b0ee', 'en', 'son', 'сын', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6205cd95-c9f9-569d-a57c-8f7bb2a0bbae', 'en', 'daughter', 'дочь', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('794e29c5-321e-5516-b895-58f53c78766e', 'en', 'family', 'семья', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4543fd3e-34fa-5736-b55e-a65342024ca1', 'en', 'grandmother', 'бабушка', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('011b5fe6-d92c-5bf4-a761-799b3bf41f0e', 'en', 'grandfather', 'дедушка', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('91b2fc3d-ebf8-519e-84d4-f3a8c501f1aa', 'en', 'aunt', 'тётя', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fcd14af6-4072-5c04-8788-cba3c8815a69', 'en', 'uncle', 'дядя', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4940cfe9-1301-5eae-9208-177df84d723b', 'en', 'cousin', 'двоюродный брат', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c4bf0470-d40e-560d-bdd8-891f18721b7f', 'en', 'parents', 'родители', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('84cbdce5-e882-50d1-b66d-d63bd7f52cb0', 'en', 'wife', 'жена', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2131ca47-0216-5acf-a9ce-bcbeb29331c1', 'en', 'love', 'любить', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cb51ce95-b009-5e4d-a94e-0db02fcdc4b4', 'en', 'live', 'жить', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('db018796-3862-5061-b6d4-8ec0270e2812', 'en', 'together', 'вместе', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('685817e7-775e-58d0-87f2-fa04986b950a', 'en', 'married', 'женаты', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('90040228-5d6b-5863-b6d3-41a910dffc47', 'en', 'child', 'ребёнок', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6f356357-3eaa-5a8e-a5d7-2cdd99df1927', 'en', 'old', 'старый', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b35ed0ca-d8dd-54b1-af3d-54c37694c6fe', 'en', 'young', 'молодой', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0a1ac051-2e8f-568c-bd7f-03168f18dbcb', id, 'd31b0cf9-a5a4-5e82-988a-f7720d4117b2', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'mother' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0a1ac051-2e8f-568c-bd7f-03168f18dbcb', id, 'd31b0cf9-a5a4-5e82-988a-f7720d4117b2', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'father' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0a1ac051-2e8f-568c-bd7f-03168f18dbcb', id, 'd31b0cf9-a5a4-5e82-988a-f7720d4117b2', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'sister' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0a1ac051-2e8f-568c-bd7f-03168f18dbcb', id, 'd31b0cf9-a5a4-5e82-988a-f7720d4117b2', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'brother' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0a1ac051-2e8f-568c-bd7f-03168f18dbcb', id, 'd31b0cf9-a5a4-5e82-988a-f7720d4117b2', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'son' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0a1ac051-2e8f-568c-bd7f-03168f18dbcb', id, 'd31b0cf9-a5a4-5e82-988a-f7720d4117b2', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'daughter' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0a1ac051-2e8f-568c-bd7f-03168f18dbcb', id, 'd31b0cf9-a5a4-5e82-988a-f7720d4117b2', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'family' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0a1ac051-2e8f-568c-bd7f-03168f18dbcb', id, 'c6dc9d9d-2a95-502d-879d-f7d43d51c6aa', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'grandmother' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0a1ac051-2e8f-568c-bd7f-03168f18dbcb', id, 'c6dc9d9d-2a95-502d-879d-f7d43d51c6aa', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'grandfather' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0a1ac051-2e8f-568c-bd7f-03168f18dbcb', id, 'c6dc9d9d-2a95-502d-879d-f7d43d51c6aa', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'aunt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0a1ac051-2e8f-568c-bd7f-03168f18dbcb', id, 'c6dc9d9d-2a95-502d-879d-f7d43d51c6aa', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'uncle' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0a1ac051-2e8f-568c-bd7f-03168f18dbcb', id, 'c6dc9d9d-2a95-502d-879d-f7d43d51c6aa', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'cousin' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0a1ac051-2e8f-568c-bd7f-03168f18dbcb', id, 'c6dc9d9d-2a95-502d-879d-f7d43d51c6aa', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'parents' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0a1ac051-2e8f-568c-bd7f-03168f18dbcb', id, 'c6dc9d9d-2a95-502d-879d-f7d43d51c6aa', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'wife' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0a1ac051-2e8f-568c-bd7f-03168f18dbcb', id, '9e302db9-f00c-5934-ac25-c5b1edd718a0', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'love' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0a1ac051-2e8f-568c-bd7f-03168f18dbcb', id, '9e302db9-f00c-5934-ac25-c5b1edd718a0', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'live' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0a1ac051-2e8f-568c-bd7f-03168f18dbcb', id, '9e302db9-f00c-5934-ac25-c5b1edd718a0', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'together' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0a1ac051-2e8f-568c-bd7f-03168f18dbcb', id, '9e302db9-f00c-5934-ac25-c5b1edd718a0', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'married' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0a1ac051-2e8f-568c-bd7f-03168f18dbcb', id, '9e302db9-f00c-5934-ac25-c5b1edd718a0', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'child' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0a1ac051-2e8f-568c-bd7f-03168f18dbcb', id, '9e302db9-f00c-5934-ac25-c5b1edd718a0', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'old' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0a1ac051-2e8f-568c-bd7f-03168f18dbcb', id, '9e302db9-f00c-5934-ac25-c5b1edd718a0', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'young' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
-- Track: A1_T03_FOOD. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('61d06faa-853d-5b70-9e6e-449ef0408163', 'A1_T03_FOOD', 'Еда и напитки', 'Еда, напитки, приёмы пищи и заказ в кафе.', 'en', 'A1', '', '{}'::text[], true, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('8c624816-3d13-5396-a185-b8e39558cf8a', NULL, 'Еда', 'Назвать базовые продукты.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('25374dc8-b88b-534e-8e19-c453b4b662c1', '8c624816-3d13-5396-a185-b8e39558cf8a', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"bread","right":"хлеб"},{"id":"P2","left":"milk","right":"молоко"},{"id":"P3","left":"water","right":"вода"},{"id":"P4","left":"apple","right":"яблоко"},{"id":"P5","left":"cheese","right":"сыр"},{"id":"P6","left":"egg","right":"яйцо"},{"id":"P7","left":"rice","right":"рис"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('da597cc1-c56e-5242-813a-666de919fd40', '8c624816-3d13-5396-a185-b8e39558cf8a', 'quiz', 'Проверьте себя', '{"explanation":"water — «вода».","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":false,"text":"хлеб"},{"id":"B","is_correct":true,"text":"вода"},{"id":"C","is_correct":false,"text":"молоко"},{"id":"D","is_correct":false,"text":"сок"}],"question":"Что такое water?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9131ea40-3290-5b87-8e97-b61bd4551e6c', '8c624816-3d13-5396-a185-b8e39558cf8a', 'translate', 'Переведите фразу', '{"correct_translation":"I want water.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я хочу воды.","target_language":"en","word_bank":["bread","want","I","water","milk"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d2bfaa8a-e0ed-5f2b-ba10-c8ddbd76dcf7', '8c624816-3d13-5396-a185-b8e39558cf8a', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"bread","instruction":"Выберите подходящее слово.","options":["bread","milk","water"],"sentence_template":"I eat ___ for breakfast.","translation_hint":"Я ем хлеб на завтрак."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('1ca637d1-9fa5-5e05-a42d-2d8ead46fd8b', '8c624816-3d13-5396-a185-b8e39558cf8a', 'tap_words', 'Соберите фразу', '{"correct_words":["I","like","cheese"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["my","like","cheese","I","eat"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ffed97b1-74ba-5f2f-ad19-b26f0251b38c', '8c624816-3d13-5396-a185-b8e39558cf8a', 'listening', 'Послушайте', '{"audio_text":"I drink water.","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4417defd-d2af-50ef-bc88-b373f5872a47', '8c624816-3d13-5396-a185-b8e39558cf8a', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"I want bread and cheese.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Я хочу хлеба и сыра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c83192a6-9b2e-50ed-b2b8-dab50a26a3d1', '8c624816-3d13-5396-a185-b8e39558cf8a', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"text":"It is morning. Tom is hungry.","translation":"Утро. Том голоден.","type":"narration"},{"character":"Anna","text":"What do you want for breakfast?","translation":"Что ты хочешь на завтрак?","type":"dialogue"},{"character":"Tom","text":"I want bread and cheese, please.","translation":"Я хочу хлеба и сыра, пожалуйста.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Bread and cheese"},{"is_correct":false,"text":"Milk and rice"},{"is_correct":false,"text":"Water and an egg"}],"text":"Что Том хочет на завтрак?","type":"choice"}],"title":"Breakfast"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8d9a3493-eec1-51a7-a286-248e844131ec', '8c624816-3d13-5396-a185-b8e39558cf8a', 'choose_definition', 'Выберите определение', '{"explanation":"apple — «яблоко».","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":false,"text":"мясо"},{"id":"B","is_correct":true,"text":"фрукт — красный или зелёный"},{"id":"C","is_correct":false,"text":"овощ"},{"id":"D","is_correct":false,"text":"напиток"}],"word":"apple"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7ecaf418-0d9b-59b8-845f-85119fdc2b5d', '8c624816-3d13-5396-a185-b8e39558cf8a', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"I drink milk.","explanation":"milk пьют — drink milk.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"cheese","id":"A","is_correct":false},{"audio_text":"bread","id":"B","is_correct":false},{"audio_text":"milk","id":"C","is_correct":true}],"sentence_template":"I drink ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b26436af-ea54-5fd8-bb73-ca6cea699b7f', '8c624816-3d13-5396-a185-b8e39558cf8a', 'missing_word', 'Впишите слово', '{"correct_answer":"apple","explanation":"an apple — яблоко.","hint_prefix":"ap","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I eat an ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('01099dfd-a936-5a90-b918-cf8a9b38a1db', '8c624816-3d13-5396-a185-b8e39558cf8a', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"bread","id":"V1","text":"bread"},{"audio_text":"milk","id":"V2","text":"milk"},{"audio_text":"water","id":"V3","text":"water"},{"audio_text":"apple","id":"V4","text":"apple"},{"audio_text":"cheese","id":"V5","text":"cheese"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('81a89336-65a8-5bdf-a9fb-66ee5115cd1b', '8c624816-3d13-5396-a185-b8e39558cf8a', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Anna","text":"Do you want water or milk?"}],"explanation":"Выбираем напиток: Water, please.","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":false,"text":"Bread, please."},{"id":"B","is_correct":true,"text":"Water, please."},{"id":"C","is_correct":false,"text":"I eat water."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('61d06faa-853d-5b70-9e6e-449ef0408163', '8c624816-3d13-5396-a185-b8e39558cf8a', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('ed52e104-7f58-5620-8622-69e950a76fad', NULL, 'Приёмы пищи', 'Назвать приёмы пищи и напитки.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7cefe1ec-f2fb-5049-a774-18e00928b10c', 'ed52e104-7f58-5620-8622-69e950a76fad', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"breakfast","right":"завтрак"},{"id":"P2","left":"lunch","right":"обед"},{"id":"P3","left":"dinner","right":"ужин"},{"id":"P4","left":"tea","right":"чай"},{"id":"P5","left":"coffee","right":"кофе"},{"id":"P6","left":"juice","right":"сок"},{"id":"P7","left":"hungry","right":"голодный"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ab5ca1d4-1407-55b3-836e-7f54287f7b87', 'ed52e104-7f58-5620-8622-69e950a76fad', 'quiz', 'Проверьте себя', '{"explanation":"dinner — «ужин».","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":false,"text":"lunch"},{"id":"B","is_correct":false,"text":"breakfast"},{"id":"C","is_correct":true,"text":"dinner"},{"id":"D","is_correct":false,"text":"tea"}],"question":"Какой приём пищи вечером?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f1f67fdd-195c-532f-b3e8-8955a9cf3486', 'ed52e104-7f58-5620-8622-69e950a76fad', 'translate', 'Переведите фразу', '{"correct_translation":"For breakfast I drink coffee.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"На завтрак я пью кофе.","target_language":"en","word_bank":["I","drink","breakfast","For","drinks","coffee","tea"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c96f56c3-9b8c-5a30-bf6a-519a53c79ef6', 'ed52e104-7f58-5620-8622-69e950a76fad', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"hungry","instruction":"Выберите подходящее слово.","options":["dinner","hungry","juice"],"sentence_template":"I am ___! Let''s eat.","translation_hint":"Я голоден!"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7c96dac8-c6df-5d0e-bec3-0c17cb1d26e3', 'ed52e104-7f58-5620-8622-69e950a76fad', 'tap_words', 'Соберите фразу', '{"correct_words":["I","drink","tea","in","the","morning"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["the","eat","morning","drink","I","coffee","in","tea"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('36cab9b6-bf32-520d-b8b6-2c29c62b72b8', 'ed52e104-7f58-5620-8622-69e950a76fad', 'listening', 'Послушайте', '{"audio_text":"I have lunch with my sister.","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('005134c0-07a7-56a2-a7ba-12e57b2d86d6', 'ed52e104-7f58-5620-8622-69e950a76fad', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"I am hungry!","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Я голоден!"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('420c0b36-36a5-5e10-8930-a2f2f76cd9d5', 'ed52e104-7f58-5620-8622-69e950a76fad', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"text":"It is lunch time.","translation":"Время обеда.","type":"narration"},{"character":"Anna","text":"Are you hungry?","translation":"Ты голодна?","type":"dialogue"},{"character":"Tom","text":"Yes! I want rice and juice.","translation":"Да! Я хочу рис и сок.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Rice and juice"},{"is_correct":false,"text":"Tea and coffee"},{"is_correct":false,"text":"Bread and water"}],"text":"Что Том хочет?","type":"choice"}],"title":"At Lunch"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f8aafe1a-365b-5a3f-b5e1-d57487389de1', 'ed52e104-7f58-5620-8622-69e950a76fad', 'choose_definition', 'Выберите определение', '{"explanation":"hungry — «голодный».","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":false,"text":"устал"},{"id":"B","is_correct":true,"text":"хочет есть"},{"id":"C","is_correct":false,"text":"хочет пить"},{"id":"D","is_correct":false,"text":"сытый"}],"word":"hungry"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('beead0d0-5f62-51b5-bd31-5b809bb06b6f', 'ed52e104-7f58-5620-8622-69e950a76fad', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"I am hungry.","explanation":"hungry — «голодный».","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"dinner","id":"A","is_correct":false},{"audio_text":"lunch","id":"B","is_correct":false},{"audio_text":"hungry","id":"C","is_correct":true}],"sentence_template":"I am ___. I want food."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('225668e5-7b97-5d14-8c58-c3c60b47246f', 'ed52e104-7f58-5620-8622-69e950a76fad', 'missing_word', 'Впишите слово', '{"correct_answer":"Breakfast","explanation":"breakfast — завтрак, первый приём пищи.","hint_prefix":"br","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ is the first meal of the day."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('55241d5f-9dfb-56ce-97bd-2987df94d2f9', 'ed52e104-7f58-5620-8622-69e950a76fad', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"breakfast","id":"V1","text":"breakfast"},{"audio_text":"lunch","id":"V2","text":"lunch"},{"audio_text":"dinner","id":"V3","text":"dinner"},{"audio_text":"tea","id":"V4","text":"tea"},{"audio_text":"coffee","id":"V5","text":"coffee"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('60f238ed-28ee-505b-825e-b36096819b21', 'ed52e104-7f58-5620-8622-69e950a76fad', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Anna","text":"Are you hungry?"}],"explanation":"hungry — прилагательное: I am hungry.","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":false,"text":"No, I am dinner."},{"id":"B","is_correct":false,"text":"Yes, I am lunch!"},{"id":"C","is_correct":true,"text":"Yes, I am hungry!"}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('61d06faa-853d-5b70-9e6e-449ef0408163', 'ed52e104-7f58-5620-8622-69e950a76fad', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('b81c785b-4518-5473-a92c-e98fabc7440b', NULL, 'В кафе', 'Заказать напиток и попросить счёт.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4d1d39f4-ee57-5c57-9c1a-83e5602c842e', 'b81c785b-4518-5473-a92c-e98fabc7440b', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"menu","right":"меню"},{"id":"P2","left":"order","right":"заказ"},{"id":"P3","left":"bill","right":"счёт"},{"id":"P4","left":"delicious","right":"вкусный"},{"id":"P5","left":"thirsty","right":"хочет пить"},{"id":"P6","left":"waiter","right":"официант"},{"id":"P7","left":"sugar","right":"сахар"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('60bc3177-c3b4-521a-acb8-28cfb020d1c1', 'b81c785b-4518-5473-a92c-e98fabc7440b', 'quiz', 'Проверьте себя', '{"explanation":"waiter — «официант».","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":true,"text":"waiter"},{"id":"B","is_correct":false,"text":"menu"},{"id":"C","is_correct":false,"text":"sugar"},{"id":"D","is_correct":false,"text":"bill"}],"question":"Кто приносит меню в кафе?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ef22db6d-ee56-54b5-a1e5-96e836403b0e', 'b81c785b-4518-5473-a92c-e98fabc7440b', 'translate', 'Переведите фразу', '{"correct_translation":"The bill, please.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Можно счёт, пожалуйста?","target_language":"en","word_bank":["delicious","The","please","bill","menu"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e055b914-1e2e-50e2-b9b5-2986a787eabc', 'b81c785b-4518-5473-a92c-e98fabc7440b', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"delicious","instruction":"Выберите подходящее слово.","options":["order","hungry","delicious"],"sentence_template":"This tea is ___!","translation_hint":"Этот чай вкусный!"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('48e31b13-0e04-5bca-8ec5-218dd4c0d401', 'b81c785b-4518-5473-a92c-e98fabc7440b', 'tap_words', 'Соберите фразу', '{"correct_words":["I","want","coffee","with","sugar"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["tea","sugar","coffee","eat","with","I","want"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d0d87f11-ecc4-572b-8d8a-dbaaff825739', 'b81c785b-4518-5473-a92c-e98fabc7440b', 'listening', 'Послушайте', '{"audio_text":"Can I have the menu, please?","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f1ee8ae9-68a0-56d7-8395-0541ada73075', 'b81c785b-4518-5473-a92c-e98fabc7440b', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"The bill, please.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Счёт, пожалуйста."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8cb64a09-a39a-5628-b7f2-766e8f824b95', 'b81c785b-4518-5473-a92c-e98fabc7440b', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"text":"Anna and Tom are in a cafe.","translation":"Анна и Том в кафе.","type":"narration"},{"character":"Waiter","text":"Hello! Do you want tea or coffee?","translation":"Здравствуйте! Чай или кофе?","type":"dialogue"},{"character":"Anna","text":"Tea with sugar, please.","translation":"Чай с сахаром, пожалуйста.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tea with sugar"},{"is_correct":false,"text":"Coffee with milk"},{"is_correct":false,"text":"Bread with cheese"}],"text":"Что заказала Анна?","type":"choice"}],"title":"In a Cafe"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9cb7a8a2-e00e-5725-aabb-ee8cf6b9c5c9', 'b81c785b-4518-5473-a92c-e98fabc7440b', 'choose_definition', 'Выберите определение', '{"explanation":"bill — «счёт» для оплаты.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":false,"text":"список блюд"},{"id":"B","is_correct":false,"text":"напиток"},{"id":"C","is_correct":true,"text":"бумажка с суммой за еду"},{"id":"D","is_correct":false,"text":"официант"}],"word":"bill"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ce47fe5f-1160-575c-877d-453db5540c7a', 'b81c785b-4518-5473-a92c-e98fabc7440b', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"I want sugar in my tea.","explanation":"sugar — «сахар», его кладут в чай.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"sugar","id":"A","is_correct":true},{"audio_text":"menu","id":"B","is_correct":false},{"audio_text":"bill","id":"C","is_correct":false}],"sentence_template":"I want ___ in my tea."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3f2c1dcf-cc32-5131-85be-2273dd882c3a', 'b81c785b-4518-5473-a92c-e98fabc7440b', 'missing_word', 'Впишите слово', '{"correct_answer":"waiter","explanation":"waiter — официант.","hint_prefix":"wa","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ brings the menu."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('66971aae-6060-5216-9ded-c6f1767feeaf', 'b81c785b-4518-5473-a92c-e98fabc7440b', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"menu","id":"V1","text":"menu"},{"audio_text":"order","id":"V2","text":"order"},{"audio_text":"bill","id":"V3","text":"bill"},{"audio_text":"delicious","id":"V4","text":"delicious"},{"audio_text":"sugar","id":"V5","text":"sugar"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a7dcaa34-2f19-5c1f-bd57-1899a5b3b624', 'b81c785b-4518-5473-a92c-e98fabc7440b', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Waiter","text":"Do you want coffee or tea?"}],"explanation":"Напиток заказывают так: Coffee, please.","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":false,"text":"Bill, please."},{"id":"B","is_correct":false,"text":"Hungry, please."},{"id":"C","is_correct":true,"text":"Coffee, please."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('61d06faa-853d-5b70-9e6e-449ef0408163', 'b81c785b-4518-5473-a92c-e98fabc7440b', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e2b1214f-98ab-513a-82e7-2d559842ccbb', 'en', 'bread', 'хлеб', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('97a76864-6f7b-57fe-aa2f-3f78553a4084', 'en', 'milk', 'молоко', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8fda92cb-44de-5dbd-a2b6-b8741952b655', 'en', 'water', 'вода', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9c4e2ee9-a46a-5d7c-84e2-438785aa9714', 'en', 'apple', 'яблоко', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f8d7af2b-8e40-5af8-ab34-d395213378d1', 'en', 'cheese', 'сыр', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3125885-0479-5f15-a86f-d79aee08444c', 'en', 'egg', 'яйцо', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('97e58ed1-c8b4-5216-a98c-10e49e0ea69a', 'en', 'rice', 'рис', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8ccf6750-d205-5e2e-a2a1-0de0a1d876d2', 'en', 'breakfast', 'завтрак', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0b569cb3-9410-5ed6-8a43-0c325bcf0232', 'en', 'lunch', 'обед', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('829e649b-70c0-5c3f-affc-8bb8ae2a05ab', 'en', 'dinner', 'ужин', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('79118c55-945c-56d9-9329-0cf06fb939b8', 'en', 'tea', 'чай', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('df92c2a6-ae3b-5820-adf7-fc85d3d9b6aa', 'en', 'coffee', 'кофе', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('089f9b49-b298-5f64-af10-cc1944c00214', 'en', 'juice', 'сок', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('062ad61a-de86-5fe7-ab90-e60c6450dd7a', 'en', 'hungry', 'голодный', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ae6ee5b9-be49-5709-8c63-9a020f7a8e8e', 'en', 'menu', 'меню', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c41c3f90-be0a-5a93-a241-79a4038c81b5', 'en', 'order', 'заказ', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6fe155ac-164e-5dc9-a684-a3577f404d4b', 'en', 'bill', 'счёт', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('133118c2-6c47-5847-a91b-bfa4a928da3b', 'en', 'delicious', 'вкусный', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4b9c4cc8-6384-5e31-8ec7-1a9f46d28f18', 'en', 'thirsty', 'хочет пить', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f19dcdc4-184a-504c-9796-8f82b71800e0', 'en', 'waiter', 'официант', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('be98349f-d291-58bc-8336-b228f16ae4e1', 'en', 'sugar', 'сахар', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61d06faa-853d-5b70-9e6e-449ef0408163', id, '8c624816-3d13-5396-a185-b8e39558cf8a', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'bread' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61d06faa-853d-5b70-9e6e-449ef0408163', id, '8c624816-3d13-5396-a185-b8e39558cf8a', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'milk' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61d06faa-853d-5b70-9e6e-449ef0408163', id, '8c624816-3d13-5396-a185-b8e39558cf8a', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'water' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61d06faa-853d-5b70-9e6e-449ef0408163', id, '8c624816-3d13-5396-a185-b8e39558cf8a', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'apple' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61d06faa-853d-5b70-9e6e-449ef0408163', id, '8c624816-3d13-5396-a185-b8e39558cf8a', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'cheese' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61d06faa-853d-5b70-9e6e-449ef0408163', id, '8c624816-3d13-5396-a185-b8e39558cf8a', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'egg' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61d06faa-853d-5b70-9e6e-449ef0408163', id, '8c624816-3d13-5396-a185-b8e39558cf8a', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'rice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61d06faa-853d-5b70-9e6e-449ef0408163', id, 'ed52e104-7f58-5620-8622-69e950a76fad', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'breakfast' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61d06faa-853d-5b70-9e6e-449ef0408163', id, 'ed52e104-7f58-5620-8622-69e950a76fad', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'lunch' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61d06faa-853d-5b70-9e6e-449ef0408163', id, 'ed52e104-7f58-5620-8622-69e950a76fad', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'dinner' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61d06faa-853d-5b70-9e6e-449ef0408163', id, 'ed52e104-7f58-5620-8622-69e950a76fad', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'tea' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61d06faa-853d-5b70-9e6e-449ef0408163', id, 'ed52e104-7f58-5620-8622-69e950a76fad', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'coffee' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61d06faa-853d-5b70-9e6e-449ef0408163', id, 'ed52e104-7f58-5620-8622-69e950a76fad', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'juice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61d06faa-853d-5b70-9e6e-449ef0408163', id, 'ed52e104-7f58-5620-8622-69e950a76fad', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'hungry' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61d06faa-853d-5b70-9e6e-449ef0408163', id, 'b81c785b-4518-5473-a92c-e98fabc7440b', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'menu' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61d06faa-853d-5b70-9e6e-449ef0408163', id, 'b81c785b-4518-5473-a92c-e98fabc7440b', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'order' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61d06faa-853d-5b70-9e6e-449ef0408163', id, 'b81c785b-4518-5473-a92c-e98fabc7440b', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'bill' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61d06faa-853d-5b70-9e6e-449ef0408163', id, 'b81c785b-4518-5473-a92c-e98fabc7440b', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'delicious' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61d06faa-853d-5b70-9e6e-449ef0408163', id, 'b81c785b-4518-5473-a92c-e98fabc7440b', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'thirsty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61d06faa-853d-5b70-9e6e-449ef0408163', id, 'b81c785b-4518-5473-a92c-e98fabc7440b', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'waiter' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61d06faa-853d-5b70-9e6e-449ef0408163', id, 'b81c785b-4518-5473-a92c-e98fabc7440b', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'sugar' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
-- Track: A1_T04_NUMBERS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('d163345f-3a2f-5228-8294-4706afdc20c0', 'A1_T04_NUMBERS', 'Числа', 'Счёт от нуля до двенадцати, «сколько?», первый и второй.', 'en', 'A1', '', '{}'::text[], true, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('c455ad47-7b93-5ffa-a7fb-ed592eb83e93', NULL, 'От одного до семи', 'Считать от одного до семи.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('1e2cee6d-57de-566f-8c69-d5b41602da6f', 'c455ad47-7b93-5ffa-a7fb-ed592eb83e93', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"one","right":"один"},{"id":"P2","left":"two","right":"два"},{"id":"P3","left":"three","right":"три"},{"id":"P4","left":"four","right":"четыре"},{"id":"P5","left":"five","right":"пять"},{"id":"P6","left":"six","right":"шесть"},{"id":"P7","left":"seven","right":"семь"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('72470d82-1530-57e7-9099-420ce709ad27', 'c455ad47-7b93-5ffa-a7fb-ed592eb83e93', 'quiz', 'Проверьте себя', '{"explanation":"3 + 2 = 5 (five).","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":false,"text":"seven"},{"id":"B","is_correct":true,"text":"five"},{"id":"C","is_correct":false,"text":"six"},{"id":"D","is_correct":false,"text":"four"}],"question":"Сколько будет three + two?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d0190ed4-41bb-593f-9a40-3ff953388003', 'c455ad47-7b93-5ffa-a7fb-ed592eb83e93', 'translate', 'Переведите фразу', '{"correct_translation":"I have two brothers.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"У меня два брата.","target_language":"en","word_bank":["two","one","three","have","I","brothers"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e5436860-355f-5184-b655-5d4c85d20f9a', 'c455ad47-7b93-5ffa-a7fb-ed592eb83e93', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"three","instruction":"Выберите подходящее слово.","options":["five","three","seven"],"sentence_template":"One, two, ___, four.","translation_hint":"Раз, два, три, четыре."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d1dedde3-2e17-5340-8bbe-ab195c4f42f3', 'c455ad47-7b93-5ffa-a7fb-ed592eb83e93', 'tap_words', 'Соберите фразу', '{"correct_words":["I","have","three","apples"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["two","apples","I","three","have","eat"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b7b25f29-3375-51f6-ac09-263813a91792', 'c455ad47-7b93-5ffa-a7fb-ed592eb83e93', 'listening', 'Послушайте', '{"audio_text":"Five, six, seven.","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('36c212f7-c435-59f8-9e28-33104de24e5f', 'c455ad47-7b93-5ffa-a7fb-ed592eb83e93', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"One, two, three!","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Раз, два, три!"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d91d665d-1fd8-5ae1-9aaa-e4d99801cae6', 'c455ad47-7b93-5ffa-a7fb-ed592eb83e93', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"text":"Anna has apples.","translation":"У Анны есть яблоки.","type":"narration"},{"character":"Tom","text":"How many apples do you have?","translation":"Сколько у тебя яблок?","type":"dialogue"},{"character":"Anna","text":"I have five apples!","translation":"У меня пять яблок!","type":"dialogue"},{"options":[{"is_correct":true,"text":"Five"},{"is_correct":false,"text":"Four"},{"is_correct":false,"text":"Seven"}],"text":"Сколько яблок у Анны?","type":"choice"}],"title":"Counting Apples"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('02eea8fe-a040-5d72-ba5b-5a50a32ca52e', 'c455ad47-7b93-5ffa-a7fb-ed592eb83e93', 'choose_definition', 'Выберите определение', '{"explanation":"seven — «семь», идёт после six.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":false,"text":"число один"},{"id":"B","is_correct":false,"text":"число перед пятью"},{"id":"C","is_correct":true,"text":"число после шести"},{"id":"D","is_correct":false,"text":"число после четырёх"}],"word":"seven"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('546a9c29-d1f1-52b0-bf8b-315dc2a9346f', 'c455ad47-7b93-5ffa-a7fb-ed592eb83e93', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"One, two, three.","explanation":"Порядок: one, two, three.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"five","id":"A","is_correct":false},{"audio_text":"one","id":"B","is_correct":true},{"audio_text":"six","id":"C","is_correct":false}],"sentence_template":"___, two, three."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('01bc2dfc-2b65-56e3-b64f-13c7b71c9992', 'c455ad47-7b93-5ffa-a7fb-ed592eb83e93', 'missing_word', 'Впишите слово', '{"correct_answer":"four","explanation":"2 + 2 = 4 (four).","hint_prefix":"fo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Two and two is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4a12a967-599e-5c0d-8352-e6edfed07489', 'c455ad47-7b93-5ffa-a7fb-ed592eb83e93', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"one","id":"V1","text":"one"},{"audio_text":"two","id":"V2","text":"two"},{"audio_text":"three","id":"V3","text":"three"},{"audio_text":"four","id":"V4","text":"four"},{"audio_text":"five","id":"V5","text":"five"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('38ccaf8b-336c-509e-987b-116c9cb9bc5d', 'c455ad47-7b93-5ffa-a7fb-ed592eb83e93', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Tom","text":"How many sisters do you have?"}],"explanation":"Отвечаем с числом: I have one sister.","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":true,"text":"I have one sister."},{"id":"B","is_correct":false,"text":"I have sister five."},{"id":"C","is_correct":false,"text":"I am one sister."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d163345f-3a2f-5228-8294-4706afdc20c0', 'c455ad47-7b93-5ffa-a7fb-ed592eb83e93', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('0a5b9f4d-9d88-586b-86ae-1c6ff5e9722a', NULL, 'От восьми до двенадцати', 'Считать от восьми до двенадцати, узнать возраст.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c379fbc2-54bf-54b1-8311-2a0e3a5e0dea', '0a5b9f4d-9d88-586b-86ae-1c6ff5e9722a', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"eight","right":"восемь"},{"id":"P2","left":"nine","right":"девять"},{"id":"P3","left":"ten","right":"десять"},{"id":"P4","left":"eleven","right":"одиннадцать"},{"id":"P5","left":"twelve","right":"двенадцать"},{"id":"P6","left":"zero","right":"ноль"},{"id":"P7","left":"number","right":"число"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0a1e9198-9ad2-5423-b7a6-d6ed5343143d', '0a5b9f4d-9d88-586b-86ae-1c6ff5e9722a', 'quiz', 'Проверьте себя', '{"explanation":"После 10 идёт 11 (eleven).","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":true,"text":"eleven"},{"id":"B","is_correct":false,"text":"twelve"},{"id":"C","is_correct":false,"text":"nine"},{"id":"D","is_correct":false,"text":"zero"}],"question":"Какое число идёт после ten?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5c8b298b-dd26-5833-914b-8ac9fa7c7ab1', '0a5b9f4d-9d88-586b-86ae-1c6ff5e9722a', 'translate', 'Переведите фразу', '{"correct_translation":"I am nine.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мне девять лет.","target_language":"en","word_bank":["am","eight","I","nine","ten"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e78b7087-9ce2-5b42-96f6-879b5abab302', '0a5b9f4d-9d88-586b-86ae-1c6ff5e9722a', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"eleven","instruction":"Выберите подходящее слово.","options":["zero","eleven","eight"],"sentence_template":"Nine, ten, ___, twelve.","translation_hint":"9, 10, 11, 12."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5b2d1b9b-b35d-5dd7-9d72-db619cb91051', '0a5b9f4d-9d88-586b-86ae-1c6ff5e9722a', 'tap_words', 'Соберите фразу', '{"correct_words":["I","am","eleven","years","old"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["am","old","nine","eleven","I","ten","years"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4a27161d-605d-5888-8ce2-89de62018ac7', '0a5b9f4d-9d88-586b-86ae-1c6ff5e9722a', 'listening', 'Послушайте', '{"audio_text":"Eight, nine, ten.","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e4ee7e7f-1cab-5099-90ba-87f68003c051', '0a5b9f4d-9d88-586b-86ae-1c6ff5e9722a', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"Ten, eleven, twelve.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Десять, одиннадцать, двенадцать."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c97198d6-e6e5-5184-83f7-18c03db93127', '0a5b9f4d-9d88-586b-86ae-1c6ff5e9722a', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"How old are you, Tom?","translation":"Сколько тебе лет, Том?","type":"dialogue"},{"character":"Tom","text":"I am eleven. And you?","translation":"Мне одиннадцать. А тебе?","type":"dialogue"},{"character":"Anna","text":"I am twelve!","translation":"Мне двенадцать!","type":"dialogue"},{"options":[{"is_correct":true,"text":"Twelve"},{"is_correct":false,"text":"Eleven"},{"is_correct":false,"text":"Ten"}],"text":"Сколько лет Анне?","type":"choice"}],"title":"Age"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b01a39ae-cd56-52c7-99c4-4e60933c409e', '0a5b9f4d-9d88-586b-86ae-1c6ff5e9722a', 'choose_definition', 'Выберите определение', '{"explanation":"zero — «ноль».","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":false,"text":"число после девяти"},{"id":"B","is_correct":false,"text":"десять"},{"id":"C","is_correct":false,"text":"число перед двумя"},{"id":"D","is_correct":true,"text":"число «ничего»"}],"word":"zero"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('077d77bd-1a57-598b-a895-0862c27b97d6', '0a5b9f4d-9d88-586b-86ae-1c6ff5e9722a', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"Twelve is after eleven.","explanation":"twelve — «двенадцать», после eleven.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"ten","id":"A","is_correct":false},{"audio_text":"zero","id":"B","is_correct":false},{"audio_text":"twelve","id":"C","is_correct":true}],"sentence_template":"___ is after eleven."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d889ffec-6a96-5918-b014-dd8928dca878', '0a5b9f4d-9d88-586b-86ae-1c6ff5e9722a', 'missing_word', 'Впишите слово', '{"correct_answer":"eight","explanation":"eight — восемь.","hint_prefix":"ei","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___, nine, ten."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4756bd1e-8af1-5f0d-a50a-25e56e08e6af', '0a5b9f4d-9d88-586b-86ae-1c6ff5e9722a', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"eight","id":"V1","text":"eight"},{"audio_text":"nine","id":"V2","text":"nine"},{"audio_text":"ten","id":"V3","text":"ten"},{"audio_text":"eleven","id":"V4","text":"eleven"},{"audio_text":"twelve","id":"V5","text":"twelve"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f12d84df-102b-5550-8a02-086e48e8d4cb', '0a5b9f4d-9d88-586b-86ae-1c6ff5e9722a', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Anna","text":"How old are you?"}],"explanation":"Возраст: I am + число (+ years old).","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":true,"text":"I am ten years old."},{"id":"B","is_correct":false,"text":"I have ten years."},{"id":"C","is_correct":false,"text":"I am years ten."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d163345f-3a2f-5228-8294-4706afdc20c0', '0a5b9f4d-9d88-586b-86ae-1c6ff5e9722a', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('ce4e051f-6229-5b8b-9c63-eb4febf6345a', NULL, 'Сколько?', 'Спрашивать количество, сравнивать: больше, меньше, половина.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('545e7464-1073-545e-a4c8-a20a7bfb45f0', 'ce4e051f-6229-5b8b-9c63-eb4febf6345a', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"how many","right":"сколько"},{"id":"P2","left":"count","right":"считать"},{"id":"P3","left":"more","right":"больше"},{"id":"P4","left":"less","right":"меньше"},{"id":"P5","left":"first","right":"первый"},{"id":"P6","left":"second","right":"второй"},{"id":"P7","left":"half","right":"половина"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('276afcb6-37ce-55d2-947b-7249e81b7921', 'ce4e051f-6229-5b8b-9c63-eb4febf6345a', 'quiz', 'Проверьте себя', '{"explanation":"How many? — «сколько?» про количество.","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":false,"text":"What is your name?"},{"id":"B","is_correct":false,"text":"How old are you?"},{"id":"C","is_correct":false,"text":"How are you?"},{"id":"D","is_correct":true,"text":"How many?"}],"question":"Как спросить количество?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7a15319c-a02a-567b-b266-f08d3260ea1b', 'ce4e051f-6229-5b8b-9c63-eb4febf6345a', 'translate', 'Переведите фразу', '{"correct_translation":"I have more apples.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"У меня больше яблок.","target_language":"en","word_bank":["more","I","have","less","many","apples"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0a4defdb-5a54-5063-95bb-039ea417fe2d', 'ce4e051f-6229-5b8b-9c63-eb4febf6345a', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"half","instruction":"Выберите подходящее слово.","options":["more","first","half"],"sentence_template":"Cut the apple in ___.","translation_hint":"Разрежь яблоко пополам."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('2b788009-467b-5fbd-bb2c-615cd8d8843e', 'ce4e051f-6229-5b8b-9c63-eb4febf6345a', 'tap_words', 'Соберите фразу', '{"correct_words":["How","many","eggs","do","you","have"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["is","have","How","you","much","do","many","eggs"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e8a3cb71-410d-5b4e-b86b-97839e92b58f', 'ce4e051f-6229-5b8b-9c63-eb4febf6345a', 'listening', 'Послушайте', '{"audio_text":"I have more bread.","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f8110b0b-d2df-5001-9dbf-d33558e7f4e2', 'ce4e051f-6229-5b8b-9c63-eb4febf6345a', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"How many apples do you have?","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Сколько у тебя яблок?"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7da4d11d-004c-5ce4-b9bc-e4d2e14741aa', 'ce4e051f-6229-5b8b-9c63-eb4febf6345a', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"text":"Tom counts his books.","translation":"Том считает свои книги.","type":"narration"},{"character":"Anna","text":"How many books do you have?","translation":"Сколько у тебя книг?","type":"dialogue"},{"character":"Tom","text":"I have twelve books!","translation":"У меня двенадцать книг!","type":"dialogue"},{"options":[{"is_correct":true,"text":"He counts his books"},{"is_correct":false,"text":"He eats his books"},{"is_correct":false,"text":"He reads the menu"}],"text":"Что делает Том?","type":"choice"}],"title":"Counting Books"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('dd8b3e51-1a18-54e8-b647-fd9b1d1187f5', 'ce4e051f-6229-5b8b-9c63-eb4febf6345a', 'choose_definition', 'Выберите определение', '{"explanation":"half — «половина».","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":true,"text":"одна из двух равных частей"},{"id":"B","is_correct":false,"text":"первая часть"},{"id":"C","is_correct":false,"text":"все части"},{"id":"D","is_correct":false,"text":"две части"}],"word":"half"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ac30084c-bada-51bc-825a-99295c95f9f0', 'ce4e051f-6229-5b8b-9c63-eb4febf6345a', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"How many brothers do you have?","explanation":"how many — «сколько» про количество.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"how are","id":"A","is_correct":false},{"audio_text":"how old","id":"B","is_correct":false},{"audio_text":"how many","id":"C","is_correct":true}],"sentence_template":"___ brothers do you have?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('719c0c66-d406-5563-aef8-6a35355ce853', 'ce4e051f-6229-5b8b-9c63-eb4febf6345a', 'missing_word', 'Впишите слово', '{"correct_answer":"count","explanation":"count — считать.","hint_prefix":"co","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"One, two, three — I can ___!"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d8ea62aa-6400-5a39-a052-6de334eaafc1', 'ce4e051f-6229-5b8b-9c63-eb4febf6345a', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"count","id":"V1","text":"count"},{"audio_text":"more","id":"V2","text":"more"},{"audio_text":"less","id":"V3","text":"less"},{"audio_text":"first","id":"V4","text":"first"},{"audio_text":"second","id":"V5","text":"second"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4152514c-a195-5c0d-8e48-ec10318e06eb', 'ce4e051f-6229-5b8b-9c63-eb4febf6345a', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Anna","text":"How many books do you have?"}],"explanation":"Отвечаем количеством: I have twelve books.","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":true,"text":"I have twelve books."},{"id":"B","is_correct":false,"text":"I am twelve books."},{"id":"C","is_correct":false,"text":"I have count books."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d163345f-3a2f-5228-8294-4706afdc20c0', 'ce4e051f-6229-5b8b-9c63-eb4febf6345a', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('30d5758b-f35a-575b-a5a2-0c1f2037909a', 'en', 'one', 'один', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('01d9d4c0-dcd2-5924-aa0c-f425a9f28ca5', 'en', 'two', 'два', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('885dd86c-6bd2-595c-917c-627fd7f71559', 'en', 'three', 'три', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('10faa2c8-c7bd-5344-bcda-675f6dfd5906', 'en', 'four', 'четыре', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9bc18fcb-2902-5a1b-a4aa-5dcbde880fbe', 'en', 'five', 'пять', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d862f445-9665-5c77-9aa0-85291a7dd520', 'en', 'six', 'шесть', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5755b49c-b6ad-5dbe-a8bb-8c22791252e5', 'en', 'seven', 'семь', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e6e4df2e-b6a5-5746-8e07-52e5cac21040', 'en', 'eight', 'восемь', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2035dcf4-abdd-51c4-a619-e2ea204f0751', 'en', 'nine', 'девять', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ca4dd2bb-58a8-5fbe-8636-76ef4b00f58d', 'en', 'ten', 'десять', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0f0db6af-f00f-5c5f-bc3f-f859dacc412c', 'en', 'eleven', 'одиннадцать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fdfc3b05-5ef8-5fd7-be75-39735b87cc7e', 'en', 'twelve', 'двенадцать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4529c997-8982-5b56-bd00-dea41c32ea83', 'en', 'zero', 'ноль', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e24687f5-d2c1-5c96-ac35-d72113c622a2', 'en', 'number', 'число', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5c103364-4afe-5e45-abd3-dbc39001a13c', 'en', 'how many', 'сколько', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('975c966e-fcaf-5a10-833f-67810b6f2484', 'en', 'count', 'считать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f0e3bcfc-e1d6-5d24-ac5b-66b59d0c1066', 'en', 'more', 'больше', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('03af71a8-3d47-51e9-8b83-398e81c1bbf8', 'en', 'less', 'меньше', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1fe2547a-c3f5-53f4-82c2-2b7694be321f', 'en', 'first', 'первый', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4b03f454-999e-5dab-b643-a54fe540c4d4', 'en', 'second', 'второй', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('85cd9c38-dfbd-5f93-bdf0-b3c507ed20b2', 'en', 'half', 'половина', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd163345f-3a2f-5228-8294-4706afdc20c0', id, 'c455ad47-7b93-5ffa-a7fb-ed592eb83e93', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'one' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd163345f-3a2f-5228-8294-4706afdc20c0', id, 'c455ad47-7b93-5ffa-a7fb-ed592eb83e93', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'two' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd163345f-3a2f-5228-8294-4706afdc20c0', id, 'c455ad47-7b93-5ffa-a7fb-ed592eb83e93', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'three' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd163345f-3a2f-5228-8294-4706afdc20c0', id, 'c455ad47-7b93-5ffa-a7fb-ed592eb83e93', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'four' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd163345f-3a2f-5228-8294-4706afdc20c0', id, 'c455ad47-7b93-5ffa-a7fb-ed592eb83e93', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'five' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd163345f-3a2f-5228-8294-4706afdc20c0', id, 'c455ad47-7b93-5ffa-a7fb-ed592eb83e93', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'six' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd163345f-3a2f-5228-8294-4706afdc20c0', id, 'c455ad47-7b93-5ffa-a7fb-ed592eb83e93', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'seven' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd163345f-3a2f-5228-8294-4706afdc20c0', id, '0a5b9f4d-9d88-586b-86ae-1c6ff5e9722a', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'eight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd163345f-3a2f-5228-8294-4706afdc20c0', id, '0a5b9f4d-9d88-586b-86ae-1c6ff5e9722a', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'nine' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd163345f-3a2f-5228-8294-4706afdc20c0', id, '0a5b9f4d-9d88-586b-86ae-1c6ff5e9722a', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'ten' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd163345f-3a2f-5228-8294-4706afdc20c0', id, '0a5b9f4d-9d88-586b-86ae-1c6ff5e9722a', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'eleven' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd163345f-3a2f-5228-8294-4706afdc20c0', id, '0a5b9f4d-9d88-586b-86ae-1c6ff5e9722a', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'twelve' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd163345f-3a2f-5228-8294-4706afdc20c0', id, '0a5b9f4d-9d88-586b-86ae-1c6ff5e9722a', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'zero' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd163345f-3a2f-5228-8294-4706afdc20c0', id, '0a5b9f4d-9d88-586b-86ae-1c6ff5e9722a', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'number' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd163345f-3a2f-5228-8294-4706afdc20c0', id, 'ce4e051f-6229-5b8b-9c63-eb4febf6345a', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'how many' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd163345f-3a2f-5228-8294-4706afdc20c0', id, 'ce4e051f-6229-5b8b-9c63-eb4febf6345a', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'count' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd163345f-3a2f-5228-8294-4706afdc20c0', id, 'ce4e051f-6229-5b8b-9c63-eb4febf6345a', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'more' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd163345f-3a2f-5228-8294-4706afdc20c0', id, 'ce4e051f-6229-5b8b-9c63-eb4febf6345a', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'less' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd163345f-3a2f-5228-8294-4706afdc20c0', id, 'ce4e051f-6229-5b8b-9c63-eb4febf6345a', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'first' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd163345f-3a2f-5228-8294-4706afdc20c0', id, 'ce4e051f-6229-5b8b-9c63-eb4febf6345a', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'second' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd163345f-3a2f-5228-8294-4706afdc20c0', id, 'ce4e051f-6229-5b8b-9c63-eb4febf6345a', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'half' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
-- Track: A1_T05_COLORS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('ae4a5872-5ce7-5662-ad9c-b7a42e2b213c', 'A1_T05_COLORS', 'Цвета', 'Основные цвета и описание предметов: большой, новый, красивый.', 'en', 'A1', '', '{}'::text[], true, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('94a5af05-6fbc-595b-b322-34605c3f742e', NULL, 'Основные цвета', 'Назвать основные цвета.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5004b727-b403-5e33-b429-8f136c1efeaa', '94a5af05-6fbc-595b-b322-34605c3f742e', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"red","right":"красный"},{"id":"P2","left":"blue","right":"синий"},{"id":"P3","left":"green","right":"зелёный"},{"id":"P4","left":"yellow","right":"жёлтый"},{"id":"P5","left":"black","right":"чёрный"},{"id":"P6","left":"white","right":"белый"},{"id":"P7","left":"color","right":"цвет"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a6bfb78d-a8e2-59b0-9354-6d01c291616a', '94a5af05-6fbc-595b-b322-34605c3f742e', 'quiz', 'Проверьте себя', '{"explanation":"Банан жёлтый — yellow.","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":false,"text":"white"},{"id":"B","is_correct":false,"text":"red"},{"id":"C","is_correct":true,"text":"yellow"},{"id":"D","is_correct":false,"text":"black"}],"question":"Какого цвета банан?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d3a9d90e-595b-5a08-a263-fbb3ee820290', '94a5af05-6fbc-595b-b322-34605c3f742e', 'translate', 'Переведите фразу', '{"correct_translation":"I have a green apple.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"У меня зелёное яблоко.","target_language":"en","word_bank":["I","have","a","red","apple","blue","green"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('34086d6a-3e61-5d96-b4ef-d9b61616885b', '94a5af05-6fbc-595b-b322-34605c3f742e', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"blue","instruction":"Выберите подходящее слово.","options":["black","blue","yellow"],"sentence_template":"The sky is ___.","translation_hint":"Небо синее."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d8097be7-6769-510f-bed0-5b3bd7e98361', '94a5af05-6fbc-595b-b322-34605c3f742e', 'tap_words', 'Соберите фразу', '{"correct_words":["I","like","the","red","apple"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["eat","green","like","the","apple","I","red"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4cf1d9aa-7ee5-5560-911a-946a5f688579', '94a5af05-6fbc-595b-b322-34605c3f742e', 'listening', 'Послушайте', '{"audio_text":"Black and white.","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('398f7249-0912-5e3c-8d02-45844adf5904', '94a5af05-6fbc-595b-b322-34605c3f742e', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"What is your favorite color?","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Какой твой любимый цвет?"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('55d87558-f10e-5030-ba80-016a487b1a13', '94a5af05-6fbc-595b-b322-34605c3f742e', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"text":"Anna looks around.","translation":"Анна смотрит вокруг.","type":"narration"},{"character":"Tom","text":"What color is the apple?","translation":"Какого цвета яблоко?","type":"dialogue"},{"character":"Anna","text":"It is red!","translation":"Оно красное!","type":"dialogue"},{"options":[{"is_correct":true,"text":"Red"},{"is_correct":false,"text":"Blue"},{"is_correct":false,"text":"Black"}],"text":"Какого цвета яблоко?","type":"choice"}],"title":"Colors Around"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ebf95814-946c-5805-ae65-676d7148d31a', '94a5af05-6fbc-595b-b322-34605c3f742e', 'choose_definition', 'Выберите определение', '{"explanation":"color — «цвет».","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":false,"text":"еда"},{"id":"B","is_correct":false,"text":"число"},{"id":"C","is_correct":true,"text":"то, что видим: красный, синий…"},{"id":"D","is_correct":false,"text":"имя"}],"word":"color"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5ad641e0-8d2e-5e02-8566-8342d6367557', '94a5af05-6fbc-595b-b322-34605c3f742e', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"The sun is yellow.","explanation":"Солнце жёлтое — yellow.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"green","id":"A","is_correct":false},{"audio_text":"white","id":"B","is_correct":false},{"audio_text":"yellow","id":"C","is_correct":true}],"sentence_template":"The sun is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('2cc8cd00-23bf-5280-af8c-0432a8332093', '94a5af05-6fbc-595b-b322-34605c3f742e', 'missing_word', 'Впишите слово', '{"correct_answer":"red","explanation":"red — красный.","hint_prefix":"re","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The apple is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a1dc0088-c57d-51b8-87d5-0f3e0488d569', '94a5af05-6fbc-595b-b322-34605c3f742e', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"red","id":"V1","text":"red"},{"audio_text":"blue","id":"V2","text":"blue"},{"audio_text":"green","id":"V3","text":"green"},{"audio_text":"yellow","id":"V4","text":"yellow"},{"audio_text":"black","id":"V5","text":"black"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e9c1c9f0-c62c-5d82-8dd1-f6a8e1e0cf6a', '94a5af05-6fbc-595b-b322-34605c3f742e', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Tom","text":"What color do you like?"}],"explanation":"like + цвет: I like green.","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":false,"text":"I am green."},{"id":"B","is_correct":false,"text":"I eat green."},{"id":"C","is_correct":true,"text":"I like green."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ae4a5872-5ce7-5662-ad9c-b7a42e2b213c', '94a5af05-6fbc-595b-b322-34605c3f742e', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('99eaead5-b1df-573f-b93c-b92179c68fb0', NULL, 'Ещё цвета', 'Назвать дополнительные цвета, светлый и тёмный.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('cc62ba46-8299-558e-ad84-5c1c53e7c1e3', '99eaead5-b1df-573f-b93c-b92179c68fb0', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"orange","right":"оранжевый"},{"id":"P2","left":"pink","right":"розовый"},{"id":"P3","left":"purple","right":"фиолетовый"},{"id":"P4","left":"brown","right":"коричневый"},{"id":"P5","left":"grey","right":"серый"},{"id":"P6","left":"light","right":"светлый"},{"id":"P7","left":"dark","right":"тёмный"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b2ac1a39-4fbb-5065-867a-f2a16168b804', '99eaead5-b1df-573f-b93c-b92179c68fb0', 'quiz', 'Проверьте себя', '{"explanation":"orange — «оранжевый».","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":true,"text":"orange"},{"id":"B","is_correct":false,"text":"pink"},{"id":"C","is_correct":false,"text":"brown"},{"id":"D","is_correct":false,"text":"grey"}],"question":"Какого цвета солнце и апельсин?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('641a7608-eddf-528d-913e-bfbb1013ebaf', '99eaead5-b1df-573f-b93c-b92179c68fb0', 'translate', 'Переведите фразу', '{"correct_translation":"The cat is grey.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Кот серый.","target_language":"en","word_bank":["brown","cat","dark","grey","The","is"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('2fee9190-bd98-5a37-a918-b49d198ca23f', '99eaead5-b1df-573f-b93c-b92179c68fb0', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"dark","instruction":"Выберите подходящее слово.","options":["purple","dark","pink"],"sentence_template":"The night is ___, the day is light.","translation_hint":"Ночь тёмная, день светлый."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6f3b5338-ca67-570f-802f-68520c885fdd', '99eaead5-b1df-573f-b93c-b92179c68fb0', 'tap_words', 'Соберите фразу', '{"correct_words":["I","have","a","brown","cat"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["I","brown","have","cat","black","dog","a"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0fab78f0-e021-5298-bd15-9cb34f6f8bbd', '99eaead5-b1df-573f-b93c-b92179c68fb0', 'listening', 'Послушайте', '{"audio_text":"The brown cat is small.","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6b2f2847-16d6-50a4-b1d8-6202b2bd45aa', '99eaead5-b1df-573f-b93c-b92179c68fb0', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"I like purple.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Мне нравится фиолетовый."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('92276150-fbe1-58ff-815a-08da20a9bfc3', '99eaead5-b1df-573f-b93c-b92179c68fb0', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"text":"Tom paints a picture.","translation":"Том рисует картину.","type":"narration"},{"character":"Anna","text":"What colors do you have?","translation":"Какие цвета у тебя есть?","type":"dialogue"},{"character":"Tom","text":"Red, blue, orange and brown!","translation":"Красный, синий, оранжевый и коричневый!","type":"dialogue"},{"options":[{"is_correct":true,"text":"Purple"},{"is_correct":false,"text":"Red"},{"is_correct":false,"text":"Brown"}],"text":"Какого цвета НЕТ у Тома?","type":"choice"}],"title":"New Paint"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('82ce8afb-443f-508c-ac81-63340daad4c9', '99eaead5-b1df-573f-b93c-b92179c68fb0', 'choose_definition', 'Выберите определение', '{"explanation":"grey — «серый».","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":false,"text":"цвет банана"},{"id":"B","is_correct":false,"text":"цвет неба летом"},{"id":"C","is_correct":false,"text":"цвет травы"},{"id":"D","is_correct":true,"text":"цвет туч и мышей"}],"word":"grey"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5d1a12a6-9c6c-5452-b404-a9fc3c6332f5', '99eaead5-b1df-573f-b93c-b92179c68fb0', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"My grey cat is big.","explanation":"grey — «серый».","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"grey","id":"A","is_correct":true},{"audio_text":"pink","id":"B","is_correct":false},{"audio_text":"light","id":"C","is_correct":false}],"sentence_template":"My ___ cat is big."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('00db32fe-f000-55b4-9895-59c1ce33ebea', '99eaead5-b1df-573f-b93c-b92179c68fb0', 'missing_word', 'Впишите слово', '{"correct_answer":"orange","explanation":"orange — оранжевый (и фрукт, и цвет).","hint_prefix":"or","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"An orange is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0d3d9d76-5eb0-57a4-b725-8ce6e1209653', '99eaead5-b1df-573f-b93c-b92179c68fb0', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"orange","id":"V1","text":"orange"},{"audio_text":"pink","id":"V2","text":"pink"},{"audio_text":"purple","id":"V3","text":"purple"},{"audio_text":"brown","id":"V4","text":"brown"},{"audio_text":"grey","id":"V5","text":"grey"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('58a019aa-c50b-5259-b0da-d27c0197ac31', '99eaead5-b1df-573f-b93c-b92179c68fb0', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Anna","text":"Do you like pink?"}],"explanation":"Отвечаем о вкусе: I like blue.","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":true,"text":"No, I like blue."},{"id":"B","is_correct":false,"text":"No, I am blue."},{"id":"C","is_correct":false,"text":"Yes, I eat pink."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ae4a5872-5ce7-5662-ad9c-b7a42e2b213c', '99eaead5-b1df-573f-b93c-b92179c68fb0', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('f21fcddb-6e0e-56b3-abe9-463b5ce8b905', NULL, 'Описываем предметы', 'Описать предметы: большой, маленький, новый, любимый.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6ecd1344-0336-5a90-a0c2-4bf9f4896d14', 'f21fcddb-6e0e-56b3-abe9-463b5ce8b905', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"big","right":"большой"},{"id":"P2","left":"small","right":"маленький"},{"id":"P3","left":"new","right":"новый"},{"id":"P4","left":"old","right":"старый"},{"id":"P5","left":"beautiful","right":"красивый"},{"id":"P6","left":"bright","right":"яркий"},{"id":"P7","left":"favorite","right":"любимый"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('60379308-41e9-58c3-8012-4011a27b8fe8', 'f21fcddb-6e0e-56b3-abe9-463b5ce8b905', 'quiz', 'Проверьте себя', '{"explanation":"big — «большой», антоним small.","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":false,"text":"new"},{"id":"B","is_correct":false,"text":"bright"},{"id":"C","is_correct":true,"text":"big"},{"id":"D","is_correct":false,"text":"favorite"}],"question":"Антоним к small?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('380f5adb-95d3-54bb-8d22-56626685ac29', 'f21fcddb-6e0e-56b3-abe9-463b5ce8b905', 'translate', 'Переведите фразу', '{"correct_translation":"What a beautiful color!","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Какой красивый цвет!","target_language":"en","word_bank":["a","What","color","new","big","beautiful"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('190002e2-ff0d-5b40-8801-9c7450b61ee2', 'f21fcddb-6e0e-56b3-abe9-463b5ce8b905', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"favorite","instruction":"Выберите подходящее слово.","options":["favorite","old","small"],"sentence_template":"My ___ color is blue.","translation_hint":"Мой любимый цвет — синий."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0d2e1637-9aac-5e5d-9cca-d7a70c958980', 'f21fcddb-6e0e-56b3-abe9-463b5ce8b905', 'tap_words', 'Соберите фразу', '{"correct_words":["I","have","a","small","green","apple"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["have","red","apple","small","big","green","I","a"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('90e12093-1fc3-5850-9c4b-934683f6e206', 'f21fcddb-6e0e-56b3-abe9-463b5ce8b905', 'listening', 'Послушайте', '{"audio_text":"My cat is small and black.","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a6384be1-1fad-50da-8593-3947cc481d9c', 'f21fcddb-6e0e-56b3-abe9-463b5ce8b905', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"It is my favorite color!","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Это мой любимый цвет!"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8fbbccd7-c2dc-586d-b536-f86336ea5f82', 'f21fcddb-6e0e-56b3-abe9-463b5ce8b905', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"text":"Anna has two cats.","translation":"У Анны два кота.","type":"narration"},{"character":"Tom","text":"Tell me about your cats!","translation":"Расскажи о своих котах!","type":"dialogue"},{"character":"Anna","text":"One is big and brown, one is small and black.","translation":"Один большой и коричневый, другой маленький и чёрный.","type":"dialogue"},{"options":[{"is_correct":true,"text":"The small cat"},{"is_correct":false,"text":"The big cat"},{"is_correct":false,"text":"The brown cat"}],"text":"Какой кот чёрный?","type":"choice"}],"title":"Two Cats"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5cdd6f39-ae2e-5e69-8097-cf0010535947', 'f21fcddb-6e0e-56b3-abe9-463b5ce8b905', 'choose_definition', 'Выберите определение', '{"explanation":"bright — «яркий».","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":false,"text":"очень старый"},{"id":"B","is_correct":true,"text":"очень светлый, много света"},{"id":"C","is_correct":false,"text":"очень тёмный"},{"id":"D","is_correct":false,"text":"очень маленький"}],"word":"bright"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('bd8b36fe-5052-5d54-ab71-1da6e43498a6', 'f21fcddb-6e0e-56b3-abe9-463b5ce8b905', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"My new car is red.","explanation":"new — «новый».","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"old","id":"A","is_correct":false},{"audio_text":"small","id":"B","is_correct":false},{"audio_text":"new","id":"C","is_correct":true}],"sentence_template":"My ___ car is red."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('642a8229-42b3-5228-ace2-4ab9b26782cb', 'f21fcddb-6e0e-56b3-abe9-463b5ce8b905', 'missing_word', 'Впишите слово', '{"correct_answer":"bright","explanation":"bright — яркий.","hint_prefix":"br","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The sun is ___ and yellow."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5fb9527c-f54d-5d4d-8f25-ed58c6f387b8', 'f21fcddb-6e0e-56b3-abe9-463b5ce8b905', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"big","id":"V1","text":"big"},{"audio_text":"small","id":"V2","text":"small"},{"audio_text":"new","id":"V3","text":"new"},{"audio_text":"old","id":"V4","text":"old"},{"audio_text":"beautiful","id":"V5","text":"beautiful"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('31e32d00-0fa4-5254-a03a-f2f9fed8526b', 'f21fcddb-6e0e-56b3-abe9-463b5ce8b905', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Tom","text":"What is your favorite color?"}],"explanation":"Порядок слов: My favorite color is …","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":false,"text":"Green favorite my is."},{"id":"B","is_correct":true,"text":"My favorite color is green."},{"id":"C","is_correct":false,"text":"I favorite green."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ae4a5872-5ce7-5662-ad9c-b7a42e2b213c', 'f21fcddb-6e0e-56b3-abe9-463b5ce8b905', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e9dc8a73-bd61-5159-869c-a088422b3ad9', 'en', 'red', 'красный', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e2507616-ec1d-575c-b3ab-f6ff14d0dea8', 'en', 'blue', 'синий', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3c3f1e59-fa0b-564d-a320-d5e7108ed6f4', 'en', 'green', 'зелёный', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bd0b0f1a-29e1-5d24-ac73-03bc2666c5a9', 'en', 'yellow', 'жёлтый', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b41c962a-3faa-5bfd-84fa-3c063d9deb7a', 'en', 'black', 'чёрный', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('248f18d0-cb23-55fd-9788-71376afb4c88', 'en', 'white', 'белый', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ddc03bf0-0012-58ee-acd6-44c518a9e6ea', 'en', 'color', 'цвет', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0b46a82a-04cf-5608-96c1-210a77e202af', 'en', 'orange', 'оранжевый', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1ee19abd-729e-59fb-9a0a-69b2dc27f057', 'en', 'pink', 'розовый', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4692bea6-4b38-5886-9b26-97bec45a2723', 'en', 'purple', 'фиолетовый', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('32339d60-a0a3-505e-87f5-ecea71b7f378', 'en', 'brown', 'коричневый', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2b746628-777e-5035-8fd0-2bb80629b4c6', 'en', 'grey', 'серый', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('77178bf0-93ba-5da9-bd24-8cc204261c4b', 'en', 'light', 'светлый', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('72c94ecc-550d-59c8-81c0-3e92fe5e02bf', 'en', 'dark', 'тёмный', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('40797942-7e16-597a-9c5c-7c59c723fdf2', 'en', 'big', 'большой', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3f905eed-a6d9-5d4e-9e8e-32065cb8f178', 'en', 'small', 'маленький', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cea61e47-0ba2-5d85-a8f7-4ab91213e27f', 'en', 'new', 'новый', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6f356357-3eaa-5a8e-a5d7-2cdd99df1927', 'en', 'old', 'старый', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ee53c78b-b05f-590b-b90c-b3b815b82710', 'en', 'beautiful', 'красивый', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5c787feb-ce1f-5e13-8fca-55d056eb63f3', 'en', 'bright', 'яркий', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3da2c5c5-91f8-533c-8fde-65cf69af6f00', 'en', 'favorite', 'любимый', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ae4a5872-5ce7-5662-ad9c-b7a42e2b213c', id, '94a5af05-6fbc-595b-b322-34605c3f742e', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'red' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ae4a5872-5ce7-5662-ad9c-b7a42e2b213c', id, '94a5af05-6fbc-595b-b322-34605c3f742e', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'blue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ae4a5872-5ce7-5662-ad9c-b7a42e2b213c', id, '94a5af05-6fbc-595b-b322-34605c3f742e', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'green' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ae4a5872-5ce7-5662-ad9c-b7a42e2b213c', id, '94a5af05-6fbc-595b-b322-34605c3f742e', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'yellow' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ae4a5872-5ce7-5662-ad9c-b7a42e2b213c', id, '94a5af05-6fbc-595b-b322-34605c3f742e', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'black' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ae4a5872-5ce7-5662-ad9c-b7a42e2b213c', id, '94a5af05-6fbc-595b-b322-34605c3f742e', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'white' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ae4a5872-5ce7-5662-ad9c-b7a42e2b213c', id, '94a5af05-6fbc-595b-b322-34605c3f742e', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'color' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ae4a5872-5ce7-5662-ad9c-b7a42e2b213c', id, '99eaead5-b1df-573f-b93c-b92179c68fb0', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'orange' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ae4a5872-5ce7-5662-ad9c-b7a42e2b213c', id, '99eaead5-b1df-573f-b93c-b92179c68fb0', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'pink' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ae4a5872-5ce7-5662-ad9c-b7a42e2b213c', id, '99eaead5-b1df-573f-b93c-b92179c68fb0', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'purple' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ae4a5872-5ce7-5662-ad9c-b7a42e2b213c', id, '99eaead5-b1df-573f-b93c-b92179c68fb0', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'brown' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ae4a5872-5ce7-5662-ad9c-b7a42e2b213c', id, '99eaead5-b1df-573f-b93c-b92179c68fb0', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'grey' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ae4a5872-5ce7-5662-ad9c-b7a42e2b213c', id, '99eaead5-b1df-573f-b93c-b92179c68fb0', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'light' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ae4a5872-5ce7-5662-ad9c-b7a42e2b213c', id, '99eaead5-b1df-573f-b93c-b92179c68fb0', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'dark' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ae4a5872-5ce7-5662-ad9c-b7a42e2b213c', id, 'f21fcddb-6e0e-56b3-abe9-463b5ce8b905', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'big' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ae4a5872-5ce7-5662-ad9c-b7a42e2b213c', id, 'f21fcddb-6e0e-56b3-abe9-463b5ce8b905', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'small' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ae4a5872-5ce7-5662-ad9c-b7a42e2b213c', id, 'f21fcddb-6e0e-56b3-abe9-463b5ce8b905', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'new' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ae4a5872-5ce7-5662-ad9c-b7a42e2b213c', id, 'f21fcddb-6e0e-56b3-abe9-463b5ce8b905', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'old' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ae4a5872-5ce7-5662-ad9c-b7a42e2b213c', id, 'f21fcddb-6e0e-56b3-abe9-463b5ce8b905', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'beautiful' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ae4a5872-5ce7-5662-ad9c-b7a42e2b213c', id, 'f21fcddb-6e0e-56b3-abe9-463b5ce8b905', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'bright' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ae4a5872-5ce7-5662-ad9c-b7a42e2b213c', id, 'f21fcddb-6e0e-56b3-abe9-463b5ce8b905', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'favorite' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
-- Track: A1_T06_HOME. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('3ba79f86-fd87-5ba6-88db-d8b544573e73', 'A1_T06_HOME', 'Дом', 'Комнаты, мебель и дела по дому.', 'en', 'A1', '', '{}'::text[], true, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('95cd9c54-2af5-5322-86dc-2014302701ae', NULL, 'Комнаты', 'Назвать комнаты в доме.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('aee2b34e-13bb-5a2f-af70-ef8e49bcbda4', '95cd9c54-2af5-5322-86dc-2014302701ae', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"house","right":"дом"},{"id":"P2","left":"room","right":"комната"},{"id":"P3","left":"kitchen","right":"кухня"},{"id":"P4","left":"bathroom","right":"ванная"},{"id":"P5","left":"bedroom","right":"спальня"},{"id":"P6","left":"garden","right":"сад"},{"id":"P7","left":"door","right":"дверь"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7fa67af8-595f-5dd7-b6a3-9d0f359d97c6', '95cd9c54-2af5-5322-86dc-2014302701ae', 'quiz', 'Проверьте себя', '{"explanation":"kitchen — «кухня».","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":false,"text":"in the bathroom"},{"id":"B","is_correct":false,"text":"in the garden"},{"id":"C","is_correct":false,"text":"in the bedroom"},{"id":"D","is_correct":true,"text":"in the kitchen"}],"question":"Где готовят еду?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('2235a050-eb33-58c0-a6ee-ea4190e67e07', '95cd9c54-2af5-5322-86dc-2014302701ae', 'translate', 'Переведите фразу', '{"correct_translation":"My house is big.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мой дом большой.","target_language":"en","word_bank":["are","small","big","house","My","is"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('fed69532-ee19-54f5-911c-5245d386dfd6', '95cd9c54-2af5-5322-86dc-2014302701ae', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"bedroom","instruction":"Выберите подходящее слово.","options":["garden","kitchen","bedroom"],"sentence_template":"I sleep in my ___.","translation_hint":"Я сплю в спальне."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b7e4ac37-35bc-5b01-af68-f6f425d43410', '95cd9c54-2af5-5322-86dc-2014302701ae', 'tap_words', 'Соберите фразу', '{"correct_words":["The","kitchen","is","small"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["house","small","is","kitchen","The","big"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('43b70259-a8a1-59eb-8742-7d54e0448095', '95cd9c54-2af5-5322-86dc-2014302701ae', 'listening', 'Послушайте', '{"audio_text":"My house has five rooms.","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('71e63079-e498-57b8-9acc-0cf0b8a675b8', '95cd9c54-2af5-5322-86dc-2014302701ae', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"Welcome to my house!","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Добро пожаловать в мой дом!"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('81d0b3c2-773e-5f2f-82a6-fce19251f045', '95cd9c54-2af5-5322-86dc-2014302701ae', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"text":"Tom has a new house.","translation":"У Тома новый дом.","type":"narration"},{"character":"Anna","text":"How many rooms are in your house?","translation":"Сколько комнат в твоём доме?","type":"dialogue"},{"character":"Tom","text":"Five rooms and a small garden!","translation":"Пять комнат и маленький сад!","type":"dialogue"},{"options":[{"is_correct":true,"text":"A garden"},{"is_correct":false,"text":"A pool"},{"is_correct":false,"text":"Ten rooms"}],"text":"Что есть у дома Тома?","type":"choice"}],"title":"New House"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('55dd925c-bcb4-5ff0-a803-2493c2a4bc2a', '95cd9c54-2af5-5322-86dc-2014302701ae', 'choose_definition', 'Выберите определение', '{"explanation":"garden — «сад».","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":false,"text":"место для еды"},{"id":"B","is_correct":false,"text":"место для сна"},{"id":"C","is_correct":true,"text":"место с растениями у дома"},{"id":"D","is_correct":false,"text":"место для машины"}],"word":"garden"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6bce027c-f1cd-591b-a98b-63cb3373406a', '95cd9c54-2af5-5322-86dc-2014302701ae', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"I cook in the kitchen.","explanation":"Готовят на кухне — kitchen.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"bathroom","id":"A","is_correct":false},{"audio_text":"kitchen","id":"B","is_correct":true},{"audio_text":"door","id":"C","is_correct":false}],"sentence_template":"I cook in the ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7d33031b-e21d-5cab-96fa-6e703e9f1715', '95cd9c54-2af5-5322-86dc-2014302701ae', 'missing_word', 'Впишите слово', '{"correct_answer":"door","explanation":"door — дверь.","hint_prefix":"do","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Open the ___, please!"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8d57b491-b0d7-57eb-9d8b-3aca08b37f84', '95cd9c54-2af5-5322-86dc-2014302701ae', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"house","id":"V1","text":"house"},{"audio_text":"room","id":"V2","text":"room"},{"audio_text":"kitchen","id":"V3","text":"kitchen"},{"audio_text":"bathroom","id":"V4","text":"bathroom"},{"audio_text":"garden","id":"V5","text":"garden"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('038b53fa-7a8c-5084-a325-bf294a8f4176', '95cd9c54-2af5-5322-86dc-2014302701ae', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Anna","text":"Do you have a garden?"}],"explanation":"have + существительное: I have a small garden.","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":false,"text":"I am garden small."},{"id":"B","is_correct":false,"text":"Yes, I am a garden."},{"id":"C","is_correct":true,"text":"Yes, I have a small garden."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3ba79f86-fd87-5ba6-88db-d8b544573e73', '95cd9c54-2af5-5322-86dc-2014302701ae', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('315f50ee-2003-523c-aa90-322ff96c9f85', NULL, 'Мебель', 'Назвать мебель.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('15dc9750-4040-5dc7-9ab5-d15922704618', '315f50ee-2003-523c-aa90-322ff96c9f85', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"table","right":"стол"},{"id":"P2","left":"chair","right":"стул"},{"id":"P3","left":"bed","right":"кровать"},{"id":"P4","left":"sofa","right":"диван"},{"id":"P5","left":"window","right":"окно"},{"id":"P6","left":"lamp","right":"лампа"},{"id":"P7","left":"mirror","right":"зеркало"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('31426091-4154-5ed9-9e8e-04751b19b33b', '315f50ee-2003-523c-aa90-322ff96c9f85', 'quiz', 'Проверьте себя', '{"explanation":"bed — «кровать».","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":true,"text":"a bed"},{"id":"B","is_correct":false,"text":"a chair"},{"id":"C","is_correct":false,"text":"a table"},{"id":"D","is_correct":false,"text":"a mirror"}],"question":"На чём спят?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9804c9b6-3757-541c-b6cd-0dc0bd5fe7d6', '315f50ee-2003-523c-aa90-322ff96c9f85', 'translate', 'Переведите фразу', '{"correct_translation":"The cat is on the sofa.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Кот на диване.","target_language":"en","word_bank":["the","cat","on","table","sofa","is","in","The"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a2164c66-7480-5865-a49c-87419a280b77', '315f50ee-2003-523c-aa90-322ff96c9f85', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"chair","instruction":"Выберите подходящее слово.","options":["lamp","bed","chair"],"sentence_template":"I sit on a ___.","translation_hint":"Я сижу на стуле."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3cfd77ab-3961-5c5b-a285-1d928ce9e678', '315f50ee-2003-523c-aa90-322ff96c9f85', 'tap_words', 'Соберите фразу', '{"correct_words":["The","lamp","is","near","the","window"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["the","lamp","The","table","window","is","near","door"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('44fe1ecd-99d1-5227-997e-9c3a473f25c3', '315f50ee-2003-523c-aa90-322ff96c9f85', 'listening', 'Послушайте', '{"audio_text":"My bed is near the window.","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('73068a78-48ef-554f-92bd-982d87384520', '315f50ee-2003-523c-aa90-322ff96c9f85', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"The book is on the table.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Книга на столе."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('2b98a079-6f06-5295-ad27-7342aa2b473c', '315f50ee-2003-523c-aa90-322ff96c9f85', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"text":"Anna looks for her cat.","translation":"Анна ищет своего кота.","type":"narration"},{"character":"Anna","text":"Tom! Where is my cat?","translation":"Том! Где мой кот?","type":"dialogue"},{"character":"Tom","text":"It is on your bed!","translation":"Он на твоей кровати!","type":"dialogue"},{"options":[{"is_correct":true,"text":"On the bed"},{"is_correct":false,"text":"On the table"},{"is_correct":false,"text":"In the garden"}],"text":"Где кот?","type":"choice"}],"title":"Where Is the Cat?"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e167186b-f807-58b3-af73-c8370a0f2364', '315f50ee-2003-523c-aa90-322ff96c9f85', 'choose_definition', 'Выберите определение', '{"explanation":"mirror — «зеркало».","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":false,"text":"на нём спят"},{"id":"B","is_correct":false,"text":"на нём сидят"},{"id":"C","is_correct":false,"text":"через него смотрят на улицу"},{"id":"D","is_correct":true,"text":"видишь в нём себя"}],"word":"mirror"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f55909a9-8889-5331-9d0c-97cd60843a82', '315f50ee-2003-523c-aa90-322ff96c9f85', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"The lamp is on the table.","explanation":"Лампа маленькая — она стоит на столе.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"sofa","id":"A","is_correct":false},{"audio_text":"lamp","id":"B","is_correct":true},{"audio_text":"chair","id":"C","is_correct":false}],"sentence_template":"The ___ is on the table."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e9833bd1-01b2-57cf-b879-b9f9bb1d17c9', '315f50ee-2003-523c-aa90-322ff96c9f85', 'missing_word', 'Впишите слово', '{"correct_answer":"mirror","explanation":"mirror — зеркало.","hint_prefix":"mi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I look at my face in the ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('cc1182e4-d7ed-5c61-9119-fddaf048f074', '315f50ee-2003-523c-aa90-322ff96c9f85', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"table","id":"V1","text":"table"},{"audio_text":"chair","id":"V2","text":"chair"},{"audio_text":"bed","id":"V3","text":"bed"},{"audio_text":"window","id":"V4","text":"window"},{"audio_text":"mirror","id":"V5","text":"mirror"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('cb6f8743-c8a2-5244-a5c9-048a17352124', '315f50ee-2003-523c-aa90-322ff96c9f85', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Anna","text":"Where is the lamp?"}],"explanation":"Отвечаем местом: It is on the table.","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":true,"text":"It is on the table."},{"id":"B","is_correct":false,"text":"It is a lamp."},{"id":"C","is_correct":false,"text":"I am on the table."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3ba79f86-fd87-5ba6-88db-d8b544573e73', '315f50ee-2003-523c-aa90-322ff96c9f85', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('29f0ae4d-561c-57df-b48b-5abf594841ae', NULL, 'Дома', 'Рассказать, что вы делаете дома.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('35f24f43-efcb-50d5-9afb-98152259c34d', '29f0ae4d-561c-57df-b48b-5abf594841ae', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"cook","right":"готовить"},{"id":"P2","left":"clean","right":"убирать"},{"id":"P3","left":"rest","right":"отдыхать"},{"id":"P4","left":"sleep","right":"спать"},{"id":"P5","left":"watch","right":"смотреть"},{"id":"P6","left":"quiet","right":"тихий"},{"id":"P7","left":"cozy","right":"уютный"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8571ac4d-7fcb-5e29-8ed4-02d80a188387', '29f0ae4d-561c-57df-b48b-5abf594841ae', 'quiz', 'Проверьте себя', '{"explanation":"cook — «готовить».","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":false,"text":"watch"},{"id":"B","is_correct":false,"text":"clean"},{"id":"C","is_correct":false,"text":"rest"},{"id":"D","is_correct":true,"text":"cook"}],"question":"Что делают с едой на кухне?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('aee98ab7-adba-5c4c-a406-060f346821b9', '29f0ae4d-561c-57df-b48b-5abf594841ae', 'translate', 'Переведите фразу', '{"correct_translation":"I watch TV in the evening.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я смотрю телевизор вечером.","target_language":"en","word_bank":["evening","morning","the","I","TV","cook","watch","in"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5cf7730d-43a9-5454-bc37-552982fa8772', '29f0ae4d-561c-57df-b48b-5abf594841ae', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"clean","instruction":"Выберите подходящее слово.","options":["cook","watch","clean"],"sentence_template":"I ___ my room on Sunday.","translation_hint":"Я убираю комнату в воскресенье."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('685f9549-1a88-5dbf-9c63-4adc0f8fd208', '29f0ae4d-561c-57df-b48b-5abf594841ae', 'tap_words', 'Соберите фразу', '{"correct_words":["I","sleep","in","my","cozy","bed"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["sleep","my","I","bed","cozy","in","eat","kitchen"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('36e28aa7-43a2-5c8b-affb-cc2d99a93e46', '29f0ae4d-561c-57df-b48b-5abf594841ae', 'listening', 'Послушайте', '{"audio_text":"I cook dinner and watch TV.","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e98be8b8-19c5-5157-865e-951101d9ec1d', '29f0ae4d-561c-57df-b48b-5abf594841ae', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"My home is quiet and cozy.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Мой дом тихий и уютный."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7b601abb-ab41-5321-9948-9f7196f4856d', '29f0ae4d-561c-57df-b48b-5abf594841ae', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"text":"It is Sunday. Tom is at home.","translation":"Воскресенье. Том дома.","type":"narration"},{"character":"Anna","text":"What do you do at home?","translation":"Что ты делаешь дома?","type":"dialogue"},{"character":"Tom","text":"I cook, clean and rest!","translation":"Я готовлю, убираю и отдыхаю!","type":"dialogue"},{"options":[{"is_correct":true,"text":"He cooks and rests"},{"is_correct":false,"text":"He sleeps all day"},{"is_correct":false,"text":"He is not at home"}],"text":"Что делает Том дома?","type":"choice"}],"title":"Sunday at Home"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('1d6f9f87-7d6f-5be1-a6f2-5107568d9fd3', '29f0ae4d-561c-57df-b48b-5abf594841ae', 'choose_definition', 'Выберите определение', '{"explanation":"cozy — «уютный».","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":false,"text":"холодный и тёмный"},{"id":"B","is_correct":true,"text":"тёплый и удобный"},{"id":"C","is_correct":false,"text":"громкий и большой"},{"id":"D","is_correct":false,"text":"новый и быстрый"}],"word":"cozy"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('69c1cef7-e5c6-5c0e-af53-2e47e1d4e65f', '29f0ae4d-561c-57df-b48b-5abf594841ae', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"I watch TV in the evening.","explanation":"watch TV — смотреть телевизор.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"sleep","id":"A","is_correct":false},{"audio_text":"cook","id":"B","is_correct":false},{"audio_text":"watch","id":"C","is_correct":true}],"sentence_template":"I ___ TV in the evening."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('fb34602b-5a93-5478-9059-6c003c2b4db0', '29f0ae4d-561c-57df-b48b-5abf594841ae', 'missing_word', 'Впишите слово', '{"correct_answer":"quiet","explanation":"quiet — тихий.","hint_prefix":"qu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Be ___! The baby sleeps."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('90ee7bb9-08fd-56e7-bfe1-208ccbd1be8e', '29f0ae4d-561c-57df-b48b-5abf594841ae', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"cook","id":"V1","text":"cook"},{"audio_text":"clean","id":"V2","text":"clean"},{"audio_text":"rest","id":"V3","text":"rest"},{"audio_text":"watch","id":"V4","text":"watch"},{"audio_text":"quiet","id":"V5","text":"quiet"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('06e2fa44-496d-59d7-800c-bfb609e54a4d', '29f0ae4d-561c-57df-b48b-5abf594841ae', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Anna","text":"What do you do in the evening?"}],"explanation":"Глаголы подряд: watch TV and rest.","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":true,"text":"I watch TV and rest."},{"id":"B","is_correct":false,"text":"I am watch evening."},{"id":"C","is_correct":false,"text":"I sleep TV."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3ba79f86-fd87-5ba6-88db-d8b544573e73', '29f0ae4d-561c-57df-b48b-5abf594841ae', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b01d99b3-86bd-54ca-a2c5-a09a3430d2da', 'en', 'house', 'дом', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a58adf52-5ad8-5ea5-87c7-c583f7abf62e', 'en', 'room', 'комната', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4506b10c-36bb-53d9-8ed7-232525d4a333', 'en', 'kitchen', 'кухня', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bcf3a106-75d6-5e65-89be-b3f4372333eb', 'en', 'bathroom', 'ванная', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cbdbd862-ae92-59bc-9da9-7705ee013ac8', 'en', 'bedroom', 'спальня', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ea1942e-33f8-5107-9ce2-357d63e4a924', 'en', 'garden', 'сад', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e26a931b-b3fa-5b58-bbfb-c340c2ee5a76', 'en', 'door', 'дверь', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('59133b4a-606c-554e-9842-6d608aa8b8ef', 'en', 'table', 'стол', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('09053cc6-9fb8-5b0a-b200-f223459c5537', 'en', 'chair', 'стул', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('314547c7-dd28-5c60-8e83-4c71871ce0a2', 'en', 'bed', 'кровать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('878e7cd8-60a8-5e51-97c7-39faa1d977b8', 'en', 'sofa', 'диван', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f7574fa3-911c-53c8-95a5-612d2e49f877', 'en', 'window', 'окно', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('868b7347-6e60-5098-b112-5401a1a8c712', 'en', 'lamp', 'лампа', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('90ff2885-f7f5-5b3d-a6c7-4ad5e3937432', 'en', 'mirror', 'зеркало', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d6ff9124-73ea-56d4-923b-8296aaf36222', 'en', 'cook', 'готовить', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('afb76cb7-2f66-5e65-bae9-69850b83caa3', 'en', 'clean', 'убирать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ca79bbd8-257e-5464-b4c5-a24985fced4e', 'en', 'rest', 'отдыхать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('db11cd99-aeb7-5f5a-b36e-445230dade91', 'en', 'sleep', 'спать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3073b68c-792c-5e1d-b341-1ab623b063b4', 'en', 'watch', 'смотреть', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2d3f9f36-6fc7-5ffc-a1b3-70e34f6de4e4', 'en', 'quiet', 'тихий', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e0bf73e1-a231-5eb2-b64a-1d5f7e312f8d', 'en', 'cozy', 'уютный', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ba79f86-fd87-5ba6-88db-d8b544573e73', id, '95cd9c54-2af5-5322-86dc-2014302701ae', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'house' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ba79f86-fd87-5ba6-88db-d8b544573e73', id, '95cd9c54-2af5-5322-86dc-2014302701ae', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'room' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ba79f86-fd87-5ba6-88db-d8b544573e73', id, '95cd9c54-2af5-5322-86dc-2014302701ae', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'kitchen' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ba79f86-fd87-5ba6-88db-d8b544573e73', id, '95cd9c54-2af5-5322-86dc-2014302701ae', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'bathroom' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ba79f86-fd87-5ba6-88db-d8b544573e73', id, '95cd9c54-2af5-5322-86dc-2014302701ae', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'bedroom' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ba79f86-fd87-5ba6-88db-d8b544573e73', id, '95cd9c54-2af5-5322-86dc-2014302701ae', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'garden' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ba79f86-fd87-5ba6-88db-d8b544573e73', id, '95cd9c54-2af5-5322-86dc-2014302701ae', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'door' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ba79f86-fd87-5ba6-88db-d8b544573e73', id, '315f50ee-2003-523c-aa90-322ff96c9f85', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'table' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ba79f86-fd87-5ba6-88db-d8b544573e73', id, '315f50ee-2003-523c-aa90-322ff96c9f85', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'chair' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ba79f86-fd87-5ba6-88db-d8b544573e73', id, '315f50ee-2003-523c-aa90-322ff96c9f85', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'bed' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ba79f86-fd87-5ba6-88db-d8b544573e73', id, '315f50ee-2003-523c-aa90-322ff96c9f85', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'sofa' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ba79f86-fd87-5ba6-88db-d8b544573e73', id, '315f50ee-2003-523c-aa90-322ff96c9f85', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'window' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ba79f86-fd87-5ba6-88db-d8b544573e73', id, '315f50ee-2003-523c-aa90-322ff96c9f85', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'lamp' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ba79f86-fd87-5ba6-88db-d8b544573e73', id, '315f50ee-2003-523c-aa90-322ff96c9f85', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'mirror' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ba79f86-fd87-5ba6-88db-d8b544573e73', id, '29f0ae4d-561c-57df-b48b-5abf594841ae', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'cook' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ba79f86-fd87-5ba6-88db-d8b544573e73', id, '29f0ae4d-561c-57df-b48b-5abf594841ae', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'clean' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ba79f86-fd87-5ba6-88db-d8b544573e73', id, '29f0ae4d-561c-57df-b48b-5abf594841ae', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'rest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ba79f86-fd87-5ba6-88db-d8b544573e73', id, '29f0ae4d-561c-57df-b48b-5abf594841ae', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'sleep' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ba79f86-fd87-5ba6-88db-d8b544573e73', id, '29f0ae4d-561c-57df-b48b-5abf594841ae', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'watch' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ba79f86-fd87-5ba6-88db-d8b544573e73', id, '29f0ae4d-561c-57df-b48b-5abf594841ae', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'quiet' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ba79f86-fd87-5ba6-88db-d8b544573e73', id, '29f0ae4d-561c-57df-b48b-5abf594841ae', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'cozy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
-- Track: A1_T07_ROUTINE. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('b983a670-964a-52e1-ab82-648cbe6f3caf', 'A1_T07_ROUTINE', 'Мой день', 'Утро, день и вечер: распорядок дня простыми фразами.', 'en', 'A1', '', '{}'::text[], true, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('cccb4bef-57cf-5ebe-8ce0-1eec21dd9e38', NULL, 'Утро', 'Рассказать о утренних делах.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('41b03314-5449-5795-8a5f-b276551398fc', 'cccb4bef-57cf-5ebe-8ce0-1eec21dd9e38', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"morning","right":"утро"},{"id":"P2","left":"wake up","right":"просыпаться"},{"id":"P3","left":"get up","right":"вставать"},{"id":"P4","left":"wash","right":"умываться"},{"id":"P5","left":"dress","right":"одеваться"},{"id":"P6","left":"early","right":"рано"},{"id":"P7","left":"alarm","right":"будильник"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5d8ce4db-eb29-5fb9-befc-1fe593b6917e', 'cccb4bef-57cf-5ebe-8ce0-1eec21dd9e38', 'quiz', 'Проверьте себя', '{"explanation":"alarm — «будильник».","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":false,"text":"the evening"},{"id":"B","is_correct":false,"text":"the breakfast"},{"id":"C","is_correct":false,"text":"the bed"},{"id":"D","is_correct":true,"text":"the alarm"}],"question":"Что звенит утром?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7b200622-267d-534c-86c9-dc62526f9e65', 'cccb4bef-57cf-5ebe-8ce0-1eec21dd9e38', 'translate', 'Переведите фразу', '{"correct_translation":"I get up early.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я встаю рано.","target_language":"en","word_bank":["up","night","early","get","morning","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('354e3f78-1fc6-57c6-8c6b-7d5209243669', 'cccb4bef-57cf-5ebe-8ce0-1eec21dd9e38', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"wake up","instruction":"Выберите подходящее слово.","options":["wash","dress","wake up"],"sentence_template":"I ___ at seven in the morning.","translation_hint":"Я просыпаюсь в семь утра."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6a3dd00e-f07c-5bc3-a478-33d2c81779b5', 'cccb4bef-57cf-5ebe-8ce0-1eec21dd9e38', 'tap_words', 'Соберите фразу', '{"correct_words":["I","wash","and","dress"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["dress","and","eat","I","wash","sleep"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c83ca5b0-bd3e-59e9-9099-b552519699f8', 'cccb4bef-57cf-5ebe-8ce0-1eec21dd9e38', 'listening', 'Послушайте', '{"audio_text":"My alarm rings early!","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0dd50bf1-11dc-5950-90d6-eedb7a5dc7b8', 'cccb4bef-57cf-5ebe-8ce0-1eec21dd9e38', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"I wake up early.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Я просыпаюсь рано."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a7dbb526-f14c-5e71-af89-2d6c73ec7322', 'cccb4bef-57cf-5ebe-8ce0-1eec21dd9e38', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"text":"The alarm rings.","translation":"Будильник звенит.","type":"narration"},{"text":"Tom wakes up and gets up.","translation":"Том просыпается и встаёт.","type":"narration"},{"character":"Tom","text":"Good morning! I wash, dress and eat breakfast!","translation":"Доброе утро! Я умываюсь, одеваюсь и завтракаю!","type":"dialogue"},{"options":[{"is_correct":true,"text":"He gets up"},{"is_correct":false,"text":"He sleeps"},{"is_correct":false,"text":"He cooks dinner"}],"text":"Что делает Том после будильника?","type":"choice"}],"title":"Tom''s Morning"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9718d588-a236-5a9f-a052-d89e5f36c804', 'cccb4bef-57cf-5ebe-8ce0-1eec21dd9e38', 'choose_definition', 'Выберите определение', '{"explanation":"early — «рано».","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":false,"text":"вечером"},{"id":"B","is_correct":true,"text":"до обычного времени, не поздно"},{"id":"C","is_correct":false,"text":"ночью"},{"id":"D","is_correct":false,"text":"после обычного времени"}],"word":"early"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('33b59f02-6f75-5165-973a-7b0e3dc1ac52', 'cccb4bef-57cf-5ebe-8ce0-1eec21dd9e38', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"I wash with cold water.","explanation":"wash — «умываться».","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"dress","id":"A","is_correct":false},{"audio_text":"wash","id":"B","is_correct":true},{"audio_text":"get up","id":"C","is_correct":false}],"sentence_template":"I ___ with cold water."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a13042d3-1601-5c70-8c24-baecd8abd1c7', 'cccb4bef-57cf-5ebe-8ce0-1eec21dd9e38', 'missing_word', 'Впишите слово', '{"correct_answer":"alarm","explanation":"alarm — будильник.","hint_prefix":"al","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"My ___ rings at six!"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('158f1291-18d2-59fc-8586-25ea500c76fe', 'cccb4bef-57cf-5ebe-8ce0-1eec21dd9e38', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"morning","id":"V1","text":"morning"},{"audio_text":"early","id":"V2","text":"early"},{"audio_text":"wash","id":"V3","text":"wash"},{"audio_text":"dress","id":"V4","text":"dress"},{"audio_text":"alarm","id":"V5","text":"alarm"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b5b2f21b-9b6a-5324-9cb4-a17f891ce821', 'cccb4bef-57cf-5ebe-8ce0-1eec21dd9e38', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Anna","text":"Do you wake up early?"}],"explanation":"Порядок: wake up early / at six.","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":false,"text":"Yes, I early wake."},{"id":"B","is_correct":false,"text":"I am early."},{"id":"C","is_correct":true,"text":"Yes, I wake up at six."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b983a670-964a-52e1-ab82-648cbe6f3caf', 'cccb4bef-57cf-5ebe-8ce0-1eec21dd9e38', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('7117c111-06e6-539e-8090-773b3b3fc112', NULL, 'День и работа', 'Рассказать о занятиях днём.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8f97c0dc-f294-5763-83d2-a48ad3c52261', '7117c111-06e6-539e-8090-773b3b3fc112', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"day","right":"день"},{"id":"P2","left":"work","right":"работать"},{"id":"P3","left":"study","right":"учиться"},{"id":"P4","left":"busy","right":"занятый"},{"id":"P5","left":"tired","right":"уставший"},{"id":"P6","left":"meeting","right":"встреча"},{"id":"P7","left":"break","right":"перерыв"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a11a7d31-46fe-595c-ad46-b51851fab69c', '7117c111-06e6-539e-8090-773b3b3fc112', 'quiz', 'Проверьте себя', '{"explanation":"work — «работать» (глагол).","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":false,"text":"I tired"},{"id":"B","is_correct":false,"text":"I meeting"},{"id":"C","is_correct":false,"text":"I busy"},{"id":"D","is_correct":true,"text":"I work"}],"question":"Как сказать «я работаю»?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('314db4cc-8974-5e6c-ad79-026dae78a9d5', '7117c111-06e6-539e-8090-773b3b3fc112', 'translate', 'Переведите фразу', '{"correct_translation":"I am busy all day.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я занят весь день.","target_language":"en","word_bank":["day","I","am","work","all","tired","busy"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8337d369-9c91-582e-a6b5-443ff3f01854', '7117c111-06e6-539e-8090-773b3b3fc112', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"busy","instruction":"Выберите подходящее слово.","options":["tired","busy","break"],"sentence_template":"I am ___: I work and study!","translation_hint":"Я занят: работаю и учусь!"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ff99a35b-c390-57e6-82c9-2342caa1665b', '7117c111-06e6-539e-8090-773b3b3fc112', 'tap_words', 'Соберите фразу', '{"correct_words":["I","work","in","the","day"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["work","night","the","I","am","day","in"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5ea2ec2b-cd64-5f36-bdb5-d767db4a54db', '7117c111-06e6-539e-8090-773b3b3fc112', 'listening', 'Послушайте', '{"audio_text":"I have a short break at work.","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('eed92ddd-1bdf-5e56-966c-c300ff3d9d3b', '7117c111-06e6-539e-8090-773b3b3fc112', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"I am busy all day.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Я занят весь день."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f6258a33-81ed-50c6-a586-43e2db5966ff', '7117c111-06e6-539e-8090-773b3b3fc112', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"text":"Tom has a busy day.","translation":"У Тома насыщенный день.","type":"narration"},{"character":"Anna","text":"Are you tired?","translation":"Ты устал?","type":"dialogue"},{"character":"Tom","text":"Yes! I work, study and have three meetings!","translation":"Да! Я работаю, учусь и у меня три встречи!","type":"dialogue"},{"options":[{"is_correct":true,"text":"He is busy"},{"is_correct":false,"text":"He is hungry"},{"is_correct":false,"text":"He is early"}],"text":"Почему Том устал?","type":"choice"}],"title":"Busy Day"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4c676985-82ef-5ae6-8207-aa1b727dd455', '7117c111-06e6-539e-8090-773b3b3fc112', 'choose_definition', 'Выберите определение', '{"explanation":"break — «перерыв».","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":true,"text":"короткий отдых от работы"},{"id":"B","is_correct":false,"text":"встреча"},{"id":"C","is_correct":false,"text":"долгий сон"},{"id":"D","is_correct":false,"text":"новая работа"}],"word":"break"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('23ce800f-26b7-5b84-b7a6-391eae6557da', '7117c111-06e6-539e-8090-773b3b3fc112', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"I am tired after work.","explanation":"tired — «уставший».","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"study","id":"A","is_correct":false},{"audio_text":"busy","id":"B","is_correct":false},{"audio_text":"tired","id":"C","is_correct":true}],"sentence_template":"I am ___ after work."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('da9e9616-411b-55d5-9a6b-a934653c4276', '7117c111-06e6-539e-8090-773b3b3fc112', 'missing_word', 'Впишите слово', '{"correct_answer":"break","explanation":"take a break — взять перерыв.","hint_prefix":"br","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Let''s take a ___!"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('985acde9-99d6-57bb-a401-10c53384d887', '7117c111-06e6-539e-8090-773b3b3fc112', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"work","id":"V1","text":"work"},{"audio_text":"study","id":"V2","text":"study"},{"audio_text":"busy","id":"V3","text":"busy"},{"audio_text":"tired","id":"V4","text":"tired"},{"audio_text":"meeting","id":"V5","text":"meeting"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('49cb2f0c-c111-5d73-beaa-d42a597466d1', '7117c111-06e6-539e-8090-773b3b3fc112', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Anna","text":"Are you busy today?"}],"explanation":"have + a meeting: у меня встреча.","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":false,"text":"I busy am."},{"id":"B","is_correct":false,"text":"Yes, I am meeting have."},{"id":"C","is_correct":true,"text":"Yes, I have a meeting."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b983a670-964a-52e1-ab82-648cbe6f3caf', '7117c111-06e6-539e-8090-773b3b3fc112', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('49c9bf12-2ce6-5ddb-b0c1-ba73ca31e9ef', NULL, 'Вечер', 'Рассказать о вечере и отходе ко сну.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f22d1172-72fc-50d7-b00f-4c49ff5a047d', '49c9bf12-2ce6-5ddb-b0c1-ba73ca31e9ef', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"evening","right":"вечер"},{"id":"P2","left":"night","right":"ночь"},{"id":"P3","left":"come home","right":"приходить домой"},{"id":"P4","left":"relax","right":"расслабляться"},{"id":"P5","left":"go to bed","right":"ложиться спать"},{"id":"P6","left":"usually","right":"обычно"},{"id":"P7","left":"late","right":"поздно"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('77ce6f91-f284-511e-80c1-e66aba9e7a12', '49c9bf12-2ce6-5ddb-b0c1-ba73ca31e9ef', 'quiz', 'Проверьте себя', '{"explanation":"go to bed at night — ложатся спать ночью.","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":false,"text":"in the kitchen"},{"id":"B","is_correct":false,"text":"early morning"},{"id":"C","is_correct":true,"text":"at night"},{"id":"D","is_correct":false,"text":"at work"}],"question":"Когда ложатся спать — утром или …?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6134bc97-b1ea-50b4-87c1-b8503634afb3', '49c9bf12-2ce6-5ddb-b0c1-ba73ca31e9ef', 'translate', 'Переведите фразу', '{"correct_translation":"Usually I come home late.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Обычно я прихожу домой поздно.","target_language":"en","word_bank":["night","early","Usually","late","I","home","come"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('882412ef-0f83-58e6-9f9f-765f33d4955d', '49c9bf12-2ce6-5ddb-b0c1-ba73ca31e9ef', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"bed","instruction":"Выберите подходящее слово.","options":["work","bed","home"],"sentence_template":"I go to ___ at ten.","translation_hint":"Я ложусь спать в десять."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('50f3b234-d0ab-5603-96c0-4673c6246d81', '49c9bf12-2ce6-5ddb-b0c1-ba73ca31e9ef', 'tap_words', 'Соберите фразу', '{"correct_words":["In","the","evening","I","relax"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["relax","evening","morning","In","the","I","cook"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ed9978f2-9d85-59f5-9554-a1613e81e12b', '49c9bf12-2ce6-5ddb-b0c1-ba73ca31e9ef', 'listening', 'Послушайте', '{"audio_text":"I usually come home at six.","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('62992c79-7a9d-5852-a74c-2f6b6963b95a', '49c9bf12-2ce6-5ddb-b0c1-ba73ca31e9ef', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"Good night! I go to bed.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Доброй ночи! Я ложусь спать."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('599bd894-a652-5797-8222-33f72d46ca2e', '49c9bf12-2ce6-5ddb-b0c1-ba73ca31e9ef', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"text":"It is evening. Anna comes home.","translation":"Вечер. Анна приходит домой.","type":"narration"},{"text":"She cooks dinner and relaxes.","translation":"Она готовит ужин и отдыхает.","type":"narration"},{"character":"Anna","text":"Usually I go to bed late, but not today!","translation":"Обычно я ложусь поздно, но не сегодня!","type":"dialogue"},{"options":[{"is_correct":true,"text":"She relaxes"},{"is_correct":false,"text":"She works"},{"is_correct":false,"text":"She wakes up"}],"text":"Что делает Анна вечером?","type":"choice"}],"title":"Evening Routine"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('dac6cc92-c162-58b5-a990-ee4b3620491d', '49c9bf12-2ce6-5ddb-b0c1-ba73ca31e9ef', 'choose_definition', 'Выберите определение', '{"explanation":"usually — «обычно».","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":true,"text":"большую часть времени, как всегда"},{"id":"B","is_correct":false,"text":"сегодня"},{"id":"C","is_correct":false,"text":"никогда"},{"id":"D","is_correct":false,"text":"один раз"}],"word":"usually"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0b9c1dc7-a4a7-5512-8e21-ce22cb89869f', '49c9bf12-2ce6-5ddb-b0c1-ba73ca31e9ef', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"I come home late on Saturday.","explanation":"come home — «приходить домой».","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"come home","id":"A","is_correct":true},{"audio_text":"relax","id":"B","is_correct":false},{"audio_text":"go to bed","id":"C","is_correct":false}],"sentence_template":"I ___ late on Saturday."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('90b37594-6d4c-5026-85da-27bfe10eea98', '49c9bf12-2ce6-5ddb-b0c1-ba73ca31e9ef', 'missing_word', 'Впишите слово', '{"correct_answer":"usually","explanation":"usually — «обычно», стоит перед глаголом.","hint_prefix":"us","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I ___ watch TV in the evening."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('99528eec-4e3e-5948-83d2-70d4c7cf45f0', '49c9bf12-2ce6-5ddb-b0c1-ba73ca31e9ef', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"evening","id":"V1","text":"evening"},{"audio_text":"night","id":"V2","text":"night"},{"audio_text":"usually","id":"V3","text":"usually"},{"audio_text":"late","id":"V4","text":"late"},{"audio_text":"relax","id":"V5","text":"relax"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('1f3e00e7-0cb5-5f84-9c65-18aa89f9fb42', '49c9bf12-2ce6-5ddb-b0c1-ba73ca31e9ef', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Tom","text":"When do you go to bed?"}],"explanation":"usually стоит перед go.","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":true,"text":"I usually go to bed at eleven."},{"id":"B","is_correct":false,"text":"I go usually bed at eleven."},{"id":"C","is_correct":false,"text":"I bed at eleven usually go."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b983a670-964a-52e1-ab82-648cbe6f3caf', '49c9bf12-2ce6-5ddb-b0c1-ba73ca31e9ef', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c6677565-4fe9-533d-a9e4-5aae2162b24e', 'en', 'morning', 'утро', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5acbf705-a900-5a11-b7e6-b87e8e6c7c9d', 'en', 'wake up', 'просыпаться', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('720777b9-407c-5f51-9f62-f574b0aee55c', 'en', 'get up', 'вставать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5209c67b-c1fc-548e-8aea-299a2b73408c', 'en', 'wash', 'умываться', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8433eb8c-138d-544a-af70-d4d4447b959a', 'en', 'dress', 'одеваться', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('853c10ff-ee59-5aa5-beb2-489eaa82f8a8', 'en', 'early', 'рано', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4f3ba88b-11b9-548a-96a6-c87e26147cd2', 'en', 'alarm', 'будильник', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d2d12056-8667-5f1f-ad65-89bb32a12423', 'en', 'day', 'день', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c813599b-6b82-59d9-9fad-a7ac126886f7', 'en', 'work', 'работать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8161a2e1-76d3-5c51-a1e2-57291c90d809', 'en', 'study', 'учиться', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f343c5ee-04c6-5e9d-811d-b6d8069022fd', 'en', 'busy', 'занятый', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('26fc03ec-e43f-5954-90a6-3cacc3c208c9', 'en', 'tired', 'уставший', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('837b9a5c-fc04-5e07-b8ef-e67aee76a4c3', 'en', 'meeting', 'встреча', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('adc96f02-9d93-5d99-95c8-01f56d515942', 'en', 'break', 'перерыв', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cd9c830-3d2c-5669-939d-1b534d06e12f', 'en', 'evening', 'вечер', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c732cc9a-c84b-5c06-85e4-b26996ecb913', 'en', 'night', 'ночь', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9312de4c-c088-5d77-9118-90180d49c506', 'en', 'come home', 'приходить домой', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8e20c767-b006-560e-b846-1119177fff86', 'en', 'relax', 'расслабляться', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('afea089f-1692-5533-afe7-db139203a109', 'en', 'go to bed', 'ложиться спать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3b152ac3-ded9-5980-870a-aff7b692f7d9', 'en', 'usually', 'обычно', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b88631d7-b15a-50e0-8061-594df693c0d8', 'en', 'late', 'поздно', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b983a670-964a-52e1-ab82-648cbe6f3caf', id, 'cccb4bef-57cf-5ebe-8ce0-1eec21dd9e38', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'morning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b983a670-964a-52e1-ab82-648cbe6f3caf', id, 'cccb4bef-57cf-5ebe-8ce0-1eec21dd9e38', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'wake up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b983a670-964a-52e1-ab82-648cbe6f3caf', id, 'cccb4bef-57cf-5ebe-8ce0-1eec21dd9e38', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'get up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b983a670-964a-52e1-ab82-648cbe6f3caf', id, 'cccb4bef-57cf-5ebe-8ce0-1eec21dd9e38', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'wash' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b983a670-964a-52e1-ab82-648cbe6f3caf', id, 'cccb4bef-57cf-5ebe-8ce0-1eec21dd9e38', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'dress' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b983a670-964a-52e1-ab82-648cbe6f3caf', id, 'cccb4bef-57cf-5ebe-8ce0-1eec21dd9e38', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'early' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b983a670-964a-52e1-ab82-648cbe6f3caf', id, 'cccb4bef-57cf-5ebe-8ce0-1eec21dd9e38', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'alarm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b983a670-964a-52e1-ab82-648cbe6f3caf', id, '7117c111-06e6-539e-8090-773b3b3fc112', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'day' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b983a670-964a-52e1-ab82-648cbe6f3caf', id, '7117c111-06e6-539e-8090-773b3b3fc112', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'work' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b983a670-964a-52e1-ab82-648cbe6f3caf', id, '7117c111-06e6-539e-8090-773b3b3fc112', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'study' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b983a670-964a-52e1-ab82-648cbe6f3caf', id, '7117c111-06e6-539e-8090-773b3b3fc112', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'busy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b983a670-964a-52e1-ab82-648cbe6f3caf', id, '7117c111-06e6-539e-8090-773b3b3fc112', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'tired' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b983a670-964a-52e1-ab82-648cbe6f3caf', id, '7117c111-06e6-539e-8090-773b3b3fc112', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'meeting' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b983a670-964a-52e1-ab82-648cbe6f3caf', id, '7117c111-06e6-539e-8090-773b3b3fc112', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'break' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b983a670-964a-52e1-ab82-648cbe6f3caf', id, '49c9bf12-2ce6-5ddb-b0c1-ba73ca31e9ef', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'evening' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b983a670-964a-52e1-ab82-648cbe6f3caf', id, '49c9bf12-2ce6-5ddb-b0c1-ba73ca31e9ef', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'night' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b983a670-964a-52e1-ab82-648cbe6f3caf', id, '49c9bf12-2ce6-5ddb-b0c1-ba73ca31e9ef', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'come home' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b983a670-964a-52e1-ab82-648cbe6f3caf', id, '49c9bf12-2ce6-5ddb-b0c1-ba73ca31e9ef', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'relax' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b983a670-964a-52e1-ab82-648cbe6f3caf', id, '49c9bf12-2ce6-5ddb-b0c1-ba73ca31e9ef', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'go to bed' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b983a670-964a-52e1-ab82-648cbe6f3caf', id, '49c9bf12-2ce6-5ddb-b0c1-ba73ca31e9ef', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'usually' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b983a670-964a-52e1-ab82-648cbe6f3caf', id, '49c9bf12-2ce6-5ddb-b0c1-ba73ca31e9ef', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'late' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
-- Track: A1_T08_CITY. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('8980c3c7-52bf-5268-8b67-273c5d031b16', 'A1_T08_CITY', 'Город', 'Места в городе, направления и транспорт.', 'en', 'A1', '', '{}'::text[], true, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('9f29d20f-93d3-5fea-a34f-2e5bce987914', NULL, 'Места', 'Назвать места в городе.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('07370069-e4fb-5f24-87dc-dc9d90a08935', '9f29d20f-93d3-5fea-a34f-2e5bce987914', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"city","right":"город"},{"id":"P2","left":"street","right":"улица"},{"id":"P3","left":"shop","right":"магазин"},{"id":"P4","left":"school","right":"школа"},{"id":"P5","left":"park","right":"парк"},{"id":"P6","left":"hospital","right":"больница"},{"id":"P7","left":"cafe","right":"кафе"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0aa2a3b2-09fe-57b8-9537-83d9f656b23a', '9f29d20f-93d3-5fea-a34f-2e5bce987914', 'quiz', 'Проверьте себя', '{"explanation":"school — «школа».","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":false,"text":"to the hospital"},{"id":"B","is_correct":false,"text":"to the park"},{"id":"C","is_correct":false,"text":"to the shop"},{"id":"D","is_correct":true,"text":"to school"}],"question":"Куда идут учиться дети?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c90aeba9-5b33-5a83-a5a5-cd9c3115cb7f', '9f29d20f-93d3-5fea-a34f-2e5bce987914', 'translate', 'Переведите фразу', '{"correct_translation":"The park is near my house.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Парк рядом с моим домом.","target_language":"en","word_bank":["park","near","far","my","house","The","is","street"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('50bd2e03-d3ec-532e-8d92-20e8081ed4c7', '9f29d20f-93d3-5fea-a34f-2e5bce987914', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"shop","instruction":"Выберите подходящее слово.","options":["school","shop","park"],"sentence_template":"I buy bread in the ___.","translation_hint":"Я покупаю хлеб в магазине."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('971c207d-fb2e-5ab4-afaa-255f959455cc', '9f29d20f-93d3-5fea-a34f-2e5bce987914', 'tap_words', 'Соберите фразу', '{"correct_words":["My","school","is","on","this","street"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["on","city","school","is","this","My","house","street"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d708b1ce-a331-5f9c-b037-f6da4ac8b876', '9f29d20f-93d3-5fea-a34f-2e5bce987914', 'listening', 'Послушайте', '{"audio_text":"The hospital is a big building.","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('fcfb519e-f2ab-5ace-9603-fd79eb509eae', '9f29d20f-93d3-5fea-a34f-2e5bce987914', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"I walk in the park.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Я гуляю в парке."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c3868332-b126-5453-930e-ca8aaef1e79e', '9f29d20f-93d3-5fea-a34f-2e5bce987914', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"text":"Anna walks in the city.","translation":"Анна гуляет по городу.","type":"narration"},{"character":"Tom","text":"What is in your city?","translation":"Что есть в твоём городе?","type":"dialogue"},{"character":"Anna","text":"A big park, two schools and many shops!","translation":"Большой парк, две школы и много магазинов!","type":"dialogue"},{"options":[{"is_correct":true,"text":"A park and shops"},{"is_correct":false,"text":"A hospital and cafes"},{"is_correct":false,"text":"A garden and rooms"}],"text":"Что есть в городе Анны?","type":"choice"}],"title":"In the City"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('03914899-73a4-522b-8b08-90508650561d', '9f29d20f-93d3-5fea-a34f-2e5bce987914', 'choose_definition', 'Выберите определение', '{"explanation":"hospital — «больница».","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":false,"text":"место, где покупают еду"},{"id":"B","is_correct":false,"text":"место, где учатся"},{"id":"C","is_correct":false,"text":"место, где гуляют"},{"id":"D","is_correct":true,"text":"место, где лечат людей"}],"word":"hospital"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8c8aa81d-ea85-5582-989e-a972871cbcbd', '9f29d20f-93d3-5fea-a34f-2e5bce987914', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"The cafe is near my house.","explanation":"cafe — «кафе».","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"city","id":"A","is_correct":false},{"audio_text":"cafe","id":"B","is_correct":true},{"audio_text":"school","id":"C","is_correct":false}],"sentence_template":"The ___ is near my house."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8a287646-65c5-5b83-9915-e35623346b50', '9f29d20f-93d3-5fea-a34f-2e5bce987914', 'missing_word', 'Впишите слово', '{"correct_answer":"school","explanation":"school — школа.","hint_prefix":"sc","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Children learn at ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b3aaf710-ba56-5bb0-b469-78bb144bae91', '9f29d20f-93d3-5fea-a34f-2e5bce987914', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"city","id":"V1","text":"city"},{"audio_text":"street","id":"V2","text":"street"},{"audio_text":"shop","id":"V3","text":"shop"},{"audio_text":"school","id":"V4","text":"school"},{"audio_text":"park","id":"V5","text":"park"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d2f11bc2-2ec8-5c0f-b73f-dd7f825ce93c', '9f29d20f-93d3-5fea-a34f-2e5bce987914', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Anna","text":"Is there a cafe near here?"}],"explanation":"Отвечаем, где: on Green Street.","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":false,"text":"The street is a cafe."},{"id":"B","is_correct":true,"text":"Yes, the cafe is on Green Street."},{"id":"C","is_correct":false,"text":"Yes, I am a cafe."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8980c3c7-52bf-5268-8b67-273c5d031b16', '9f29d20f-93d3-5fea-a34f-2e5bce987914', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('22edf357-ffca-540b-bd93-f731c92f3a1d', NULL, 'Направления', 'Понимать указания: налево, направо, прямо.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9f199c69-bd48-5f21-ac48-383728c0ebbe', '22edf357-ffca-540b-bd93-f731c92f3a1d', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"left","right":"налево"},{"id":"P2","left":"right","right":"направо"},{"id":"P3","left":"straight","right":"прямо"},{"id":"P4","left":"near","right":"рядом"},{"id":"P5","left":"far","right":"далеко"},{"id":"P6","left":"corner","right":"угол"},{"id":"P7","left":"map","right":"карта"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('de070db7-7e2d-5115-ab32-bc5d2b36433e', '22edf357-ffca-540b-bd93-f731c92f3a1d', 'quiz', 'Проверьте себя', '{"explanation":"left — «налево».","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":true,"text":"left"},{"id":"B","is_correct":false,"text":"straight"},{"id":"C","is_correct":false,"text":"near"},{"id":"D","is_correct":false,"text":"corner"}],"question":"Противоположность right (направо)?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d0eef24f-a15d-5882-8a77-fb3d22b51882', '22edf357-ffca-540b-bd93-f731c92f3a1d', 'translate', 'Переведите фразу', '{"correct_translation":"Go straight and then left.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Иди прямо и потом налево.","target_language":"en","word_bank":["and","right","then","left","straight","Go","far"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b8efa6b8-0a81-5339-812b-77cd1c5d1ee3', '22edf357-ffca-540b-bd93-f731c92f3a1d', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"near","instruction":"Выберите подходящее слово.","options":["far","straight","near"],"sentence_template":"The shop is ___: I walk two minutes!","translation_hint":"Магазин рядом: иду две минуты!"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('2c5fb67c-0aa5-532d-936b-775d7688bf2a', '22edf357-ffca-540b-bd93-f731c92f3a1d', 'tap_words', 'Соберите фразу', '{"correct_words":["Turn","right","at","the","corner"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["corner","Turn","right","at","street","map","the"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e128d20b-5b19-5e7c-a180-9ac5196079a6', '22edf357-ffca-540b-bd93-f731c92f3a1d', 'listening', 'Послушайте', '{"audio_text":"The park is far from my house.","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('406d32eb-b573-52a3-a75f-12f094ede76e', '22edf357-ffca-540b-bd93-f731c92f3a1d', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"Go straight, then turn left.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Идите прямо, потом налево."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c256b19e-6fe8-59ef-984e-7187488bfaed', '22edf357-ffca-540b-bd93-f731c92f3a1d', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"text":"Tom looks for a cafe.","translation":"Том ищет кафе.","type":"narration"},{"character":"Tom","text":"Excuse me! Where is the cafe?","translation":"Извините! Где кафе?","type":"dialogue"},{"character":"Woman","text":"Go straight and turn left at the corner.","translation":"Идите прямо и поверните налево на углу.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Left at the corner"},{"is_correct":false,"text":"Right at the park"},{"is_correct":false,"text":"Straight to the hospital"}],"text":"Куда повернуть Тому?","type":"choice"}],"title":"Looking for the Cafe"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('90c77e31-c512-57ce-9da0-1c6a83b9e87d', '22edf357-ffca-540b-bd93-f731c92f3a1d', 'choose_definition', 'Выберите определение', '{"explanation":"map — «карта».","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":true,"text":"показывает улицы и дороги"},{"id":"B","is_correct":false,"text":"показывает еду"},{"id":"C","is_correct":false,"text":"показывает время"},{"id":"D","is_correct":false,"text":"лечит людей"}],"word":"map"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('985b5843-60bf-570e-8a27-df97488cfb00', '22edf357-ffca-540b-bd93-f731c92f3a1d', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"Turn right at the corner.","explanation":"turn right — повернуть направо.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"right","id":"A","is_correct":true},{"audio_text":"map","id":"B","is_correct":false},{"audio_text":"near","id":"C","is_correct":false}],"sentence_template":"Turn ___ at the corner."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9421bf08-f010-5de7-a06a-034634fc9aad', '22edf357-ffca-540b-bd93-f731c92f3a1d', 'missing_word', 'Впишите слово', '{"correct_answer":"far","explanation":"far — далеко.","hint_prefix":"fa","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"My house is ___: ten minutes by bus."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ee93af83-6c60-51f0-8e05-8223642eb015', '22edf357-ffca-540b-bd93-f731c92f3a1d', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"left","id":"V1","text":"left"},{"audio_text":"right","id":"V2","text":"right"},{"audio_text":"straight","id":"V3","text":"straight"},{"audio_text":"near","id":"V4","text":"near"},{"audio_text":"far","id":"V5","text":"far"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('80a80b45-c9a2-598c-8130-cb0c02cef524', '22edf357-ffca-540b-bd93-f731c92f3a1d', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Tom","text":"Where is the park?"}],"explanation":"Даём направление: Go straight, then turn right.","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":true,"text":"Go straight, then turn right."},{"id":"B","is_correct":false,"text":"The park goes straight."},{"id":"C","is_correct":false,"text":"Right is the park turn."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8980c3c7-52bf-5268-8b67-273c5d031b16', '22edf357-ffca-540b-bd93-f731c92f3a1d', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('fc27eef6-2ea4-5ba9-abdf-1332d6f6ed67', NULL, 'Транспорт', 'Назвать транспорт и рассказать, как вы ездите.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ecd567dc-aead-5f3d-b9f4-4da3e735e9b0', 'fc27eef6-2ea4-5ba9-abdf-1332d6f6ed67', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"bus","right":"автобус"},{"id":"P2","left":"car","right":"машина"},{"id":"P3","left":"train","right":"поезд"},{"id":"P4","left":"taxi","right":"такси"},{"id":"P5","left":"walk","right":"идти пешком"},{"id":"P6","left":"stop","right":"остановка"},{"id":"P7","left":"station","right":"станция"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3aa5f4e0-a610-500f-8e5e-d9814b3a9232', 'fc27eef6-2ea4-5ba9-abdf-1332d6f6ed67', 'quiz', 'Проверьте себя', '{"explanation":"train — «поезд».","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":true,"text":"a train"},{"id":"B","is_correct":false,"text":"a bus"},{"id":"C","is_correct":false,"text":"a taxi"},{"id":"D","is_correct":false,"text":"a car"}],"question":"На чём ездят по рельсам?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b2d5f667-7f12-5555-b341-93b0dc243cdd', 'fc27eef6-2ea4-5ba9-abdf-1332d6f6ed67', 'translate', 'Переведите фразу', '{"correct_translation":"I go by bus.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я еду на автобусе.","target_language":"en","word_bank":["go","train","car","I","by","bus"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b2f709d7-6faa-5482-a325-e8d49ad034a0', 'fc27eef6-2ea4-5ba9-abdf-1332d6f6ed67', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"stop","instruction":"Выберите подходящее слово.","options":["walk","stop","station"],"sentence_template":"The bus ___ is near the shop.","translation_hint":"Остановка автобуса рядом с магазином."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('73b84cba-7685-5f6d-a844-b9c10d258f43', 'fc27eef6-2ea4-5ba9-abdf-1332d6f6ed67', 'tap_words', 'Соберите фразу', '{"correct_words":["I","walk","to","school"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["bus","drive","school","walk","I","to"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('13bbbd19-dd3e-5a36-b8c7-e2fb20c24890', 'fc27eef6-2ea4-5ba9-abdf-1332d6f6ed67', 'listening', 'Послушайте', '{"audio_text":"The train comes at eight.","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c417bfcc-17d5-5dae-bd65-f1ef84d3b9fd', 'fc27eef6-2ea4-5ba9-abdf-1332d6f6ed67', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"I go by taxi.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Я еду на такси."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e5ec55c4-25be-5ecb-bbe1-09e18f1bb39d', 'fc27eef6-2ea4-5ba9-abdf-1332d6f6ed67', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"text":"Anna goes to the station.","translation":"Анна едет на станцию.","type":"narration"},{"character":"Tom","text":"Do you go by bus?","translation":"Ты едешь на автобусе?","type":"dialogue"},{"character":"Anna","text":"No, I walk. The station is near!","translation":"Нет, я иду пешком. Станция рядом!","type":"dialogue"},{"options":[{"is_correct":true,"text":"She walks"},{"is_correct":false,"text":"By bus"},{"is_correct":false,"text":"By taxi"}],"text":"Как Анна добирается?","type":"choice"}],"title":"To the Station"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('36c46f41-0e35-5f8d-b355-f066a46ecca4', 'fc27eef6-2ea4-5ba9-abdf-1332d6f6ed67', 'choose_definition', 'Выберите определение', '{"explanation":"walk — «идти пешком».","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":false,"text":"спать"},{"id":"B","is_correct":true,"text":"идти пешком"},{"id":"C","is_correct":false,"text":"летать"},{"id":"D","is_correct":false,"text":"ехать на машине"}],"word":"walk"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5ace72aa-b28b-5e1b-8e7f-d381a12e0489', 'fc27eef6-2ea4-5ba9-abdf-1332d6f6ed67', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"I go to work by car.","explanation":"by car — «на машине».","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"car","id":"A","is_correct":true},{"audio_text":"station","id":"B","is_correct":false},{"audio_text":"stop","id":"C","is_correct":false}],"sentence_template":"I go to work by ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9b17c66a-ded1-5e0e-a493-1a90d60b24e5', 'fc27eef6-2ea4-5ba9-abdf-1332d6f6ed67', 'missing_word', 'Впишите слово', '{"correct_answer":"stop","explanation":"bus stop — автобусная остановка.","hint_prefix":"st","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We wait for the bus at the ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('aa5f87e7-0151-5458-b432-4f65eebeae4c', 'fc27eef6-2ea4-5ba9-abdf-1332d6f6ed67', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"bus","id":"V1","text":"bus"},{"audio_text":"car","id":"V2","text":"car"},{"audio_text":"train","id":"V3","text":"train"},{"audio_text":"taxi","id":"V4","text":"taxi"},{"audio_text":"walk","id":"V5","text":"walk"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ced817f7-6a1c-5427-9ef1-91d5d61a068b', 'fc27eef6-2ea4-5ba9-abdf-1332d6f6ed67', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Anna","text":"How do you go to school?"}],"explanation":"by + транспорт: I go by bus.","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":false,"text":"I bus go."},{"id":"B","is_correct":true,"text":"I go by bus."},{"id":"C","is_correct":false,"text":"I am by bus school."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8980c3c7-52bf-5268-8b67-273c5d031b16', 'fc27eef6-2ea4-5ba9-abdf-1332d6f6ed67', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1008785a-c291-5dc4-a7f8-9a8323ab8391', 'en', 'city', 'город', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9a76dc60-741b-5113-b3e4-77a22e4a1273', 'en', 'street', 'улица', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a839839e-c6a7-582f-8444-edce5569661a', 'en', 'shop', 'магазин', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0d35ef1b-ed4c-5bb5-932f-0646e8b39596', 'en', 'school', 'школа', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('af123bcd-d040-5415-ad71-a5b40742a333', 'en', 'park', 'парк', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('feb921b3-d737-5fd0-ba38-fbef1086f3d5', 'en', 'hospital', 'больница', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6076a437-cdb0-5f39-bf7d-3bc63ccc6765', 'en', 'cafe', 'кафе', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eed7f8ff-c798-5fd7-8e96-e053707e678b', 'en', 'left', 'налево', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c7d7e021-26f2-5992-8bc5-b4652f8d31ef', 'en', 'right', 'направо', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('259b134f-e7e6-5088-8215-42283d09dcf7', 'en', 'straight', 'прямо', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2739f974-ecf0-56f0-a334-7cb9af495add', 'en', 'near', 'рядом', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9f420535-aeef-5570-b884-8d93cfaf473b', 'en', 'far', 'далеко', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('588e1f58-1278-512d-9bb2-1d336ad500f8', 'en', 'corner', 'угол', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('633e6902-cfc5-5c1e-83c6-30e353a41a75', 'en', 'map', 'карта', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('729ba069-6b95-593d-9725-b09b6d425645', 'en', 'bus', 'автобус', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f7b5790d-54c2-508e-a617-1bd2c8671767', 'en', 'car', 'машина', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('09f8bfbc-d304-5788-9c24-60e3c7482b85', 'en', 'train', 'поезд', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c05a118d-00c7-538c-948d-d7b6ec39dcfc', 'en', 'taxi', 'такси', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('101b9710-ae3a-50ee-ac42-50928eb08dba', 'en', 'walk', 'идти пешком', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a39b5a60-f1d7-541f-82f1-500e829aed2d', 'en', 'stop', 'остановка', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3d96a1e-c495-5492-9ef1-0a6d3a16ede0', 'en', 'station', 'станция', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8980c3c7-52bf-5268-8b67-273c5d031b16', id, '9f29d20f-93d3-5fea-a34f-2e5bce987914', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'city' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8980c3c7-52bf-5268-8b67-273c5d031b16', id, '9f29d20f-93d3-5fea-a34f-2e5bce987914', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'street' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8980c3c7-52bf-5268-8b67-273c5d031b16', id, '9f29d20f-93d3-5fea-a34f-2e5bce987914', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'shop' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8980c3c7-52bf-5268-8b67-273c5d031b16', id, '9f29d20f-93d3-5fea-a34f-2e5bce987914', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'school' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8980c3c7-52bf-5268-8b67-273c5d031b16', id, '9f29d20f-93d3-5fea-a34f-2e5bce987914', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'park' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8980c3c7-52bf-5268-8b67-273c5d031b16', id, '9f29d20f-93d3-5fea-a34f-2e5bce987914', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'hospital' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8980c3c7-52bf-5268-8b67-273c5d031b16', id, '9f29d20f-93d3-5fea-a34f-2e5bce987914', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'cafe' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8980c3c7-52bf-5268-8b67-273c5d031b16', id, '22edf357-ffca-540b-bd93-f731c92f3a1d', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'left' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8980c3c7-52bf-5268-8b67-273c5d031b16', id, '22edf357-ffca-540b-bd93-f731c92f3a1d', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'right' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8980c3c7-52bf-5268-8b67-273c5d031b16', id, '22edf357-ffca-540b-bd93-f731c92f3a1d', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'straight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8980c3c7-52bf-5268-8b67-273c5d031b16', id, '22edf357-ffca-540b-bd93-f731c92f3a1d', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'near' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8980c3c7-52bf-5268-8b67-273c5d031b16', id, '22edf357-ffca-540b-bd93-f731c92f3a1d', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'far' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8980c3c7-52bf-5268-8b67-273c5d031b16', id, '22edf357-ffca-540b-bd93-f731c92f3a1d', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'corner' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8980c3c7-52bf-5268-8b67-273c5d031b16', id, '22edf357-ffca-540b-bd93-f731c92f3a1d', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'map' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8980c3c7-52bf-5268-8b67-273c5d031b16', id, 'fc27eef6-2ea4-5ba9-abdf-1332d6f6ed67', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'bus' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8980c3c7-52bf-5268-8b67-273c5d031b16', id, 'fc27eef6-2ea4-5ba9-abdf-1332d6f6ed67', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'car' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8980c3c7-52bf-5268-8b67-273c5d031b16', id, 'fc27eef6-2ea4-5ba9-abdf-1332d6f6ed67', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'train' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8980c3c7-52bf-5268-8b67-273c5d031b16', id, 'fc27eef6-2ea4-5ba9-abdf-1332d6f6ed67', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'taxi' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8980c3c7-52bf-5268-8b67-273c5d031b16', id, 'fc27eef6-2ea4-5ba9-abdf-1332d6f6ed67', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'walk' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8980c3c7-52bf-5268-8b67-273c5d031b16', id, 'fc27eef6-2ea4-5ba9-abdf-1332d6f6ed67', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'stop' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8980c3c7-52bf-5268-8b67-273c5d031b16', id, 'fc27eef6-2ea4-5ba9-abdf-1332d6f6ed67', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'station' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
-- Track: A1_T09_SHOPPING. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('229921eb-f694-5251-9555-befea404bd13', 'A1_T09_SHOPPING', 'Покупки', 'Магазины, одежда, цены и оплата.', 'en', 'A1', '', '{}'::text[], true, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('4aa2ac13-72f8-5e99-bfb9-d9fef5694c3b', NULL, 'В магазине', 'Говорить о покупках и ценах.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('981bdba3-e447-5d60-985b-18e11a778933', '4aa2ac13-72f8-5e99-bfb9-d9fef5694c3b', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"buy","right":"покупать"},{"id":"P2","left":"sell","right":"продавать"},{"id":"P3","left":"price","right":"цена"},{"id":"P4","left":"money","right":"деньги"},{"id":"P5","left":"cheap","right":"дешёвый"},{"id":"P6","left":"expensive","right":"дорогой"},{"id":"P7","left":"market","right":"рынок"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('08c3e9ce-ea4e-57ee-b18d-784ad8cc8401', '4aa2ac13-72f8-5e99-bfb9-d9fef5694c3b', 'quiz', 'Проверьте себя', '{"explanation":"cheap — «дешёвый», антоним expensive.","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":false,"text":"price"},{"id":"B","is_correct":true,"text":"cheap"},{"id":"C","is_correct":false,"text":"money"},{"id":"D","is_correct":false,"text":"market"}],"question":"Антоним к expensive?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('10205a72-3855-52b2-b36a-2572c918323f', '4aa2ac13-72f8-5e99-bfb9-d9fef5694c3b', 'translate', 'Переведите фразу', '{"correct_translation":"I have no money.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"У меня нет денег.","target_language":"en","word_bank":["no","buy","price","money","I","have"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ef96e049-f61e-552d-ab9d-70483e435077', '4aa2ac13-72f8-5e99-bfb9-d9fef5694c3b', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"price","instruction":"Выберите подходящее слово.","options":["market","money","price"],"sentence_template":"What is the ___ of this bread?","translation_hint":"Какова цена этого хлеба?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('191b12d3-310f-53b0-be8d-9401769fd6d2', '4aa2ac13-72f8-5e99-bfb9-d9fef5694c3b', 'tap_words', 'Соберите фразу', '{"correct_words":["I","buy","bread","at","the","market"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["shop","sell","the","buy","market","I","bread","at"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('03819fd1-e632-5738-ac0d-48f7a96cb9d4', '4aa2ac13-72f8-5e99-bfb9-d9fef5694c3b', 'listening', 'Послушайте', '{"audio_text":"This apple is cheap!","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('534d1f91-338a-59c2-a0c7-945c19e58833', '4aa2ac13-72f8-5e99-bfb9-d9fef5694c3b', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"I want to buy cheese.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Я хочу купить сыр."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e0e81301-8210-517d-a42e-c982eb87b44f', '4aa2ac13-72f8-5e99-bfb9-d9fef5694c3b', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"text":"Anna is at the market.","translation":"Анна на рынке.","type":"narration"},{"character":"Seller","text":"Apples! Cheap apples!","translation":"Яблоки! Дешёвые яблоки!","type":"dialogue"},{"character":"Anna","text":"I buy five apples, please!","translation":"Пять яблок, пожалуйста!","type":"dialogue"},{"options":[{"is_correct":true,"text":"She buys apples"},{"is_correct":false,"text":"She sells apples"},{"is_correct":false,"text":"She eats money"}],"text":"Что делает Анна?","type":"choice"}],"title":"At the Market"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('bc5ad243-830e-572d-865c-817d4390721d', '4aa2ac13-72f8-5e99-bfb9-d9fef5694c3b', 'choose_definition', 'Выберите определение', '{"explanation":"market — «рынок».","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":false,"text":"цвет"},{"id":"B","is_correct":true,"text":"место, где продают еду и вещи"},{"id":"C","is_correct":false,"text":"место, где спят"},{"id":"D","is_correct":false,"text":"вид транспорта"}],"word":"market"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4d83123f-e185-54e0-89b1-8f145d72bf4b', '4aa2ac13-72f8-5e99-bfb9-d9fef5694c3b', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"This car is expensive!","explanation":"expensive — «дорогой».","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"expensive","id":"A","is_correct":true},{"audio_text":"cheap","id":"B","is_correct":false},{"audio_text":"market","id":"C","is_correct":false}],"sentence_template":"This car is ___!"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f7d4e241-f8ba-5681-af88-f761d26194b6', '4aa2ac13-72f8-5e99-bfb9-d9fef5694c3b', 'missing_word', 'Впишите слово', '{"correct_answer":"buy","explanation":"buy — покупать.","hint_prefix":"bu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I ___ bread and milk."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('fc870944-e338-5dac-add4-4d5109dad958', '4aa2ac13-72f8-5e99-bfb9-d9fef5694c3b', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"buy","id":"V1","text":"buy"},{"audio_text":"sell","id":"V2","text":"sell"},{"audio_text":"price","id":"V3","text":"price"},{"audio_text":"money","id":"V4","text":"money"},{"audio_text":"cheap","id":"V5","text":"cheap"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('24ce3bce-1336-517e-9a8a-1dbd4685c572', '4aa2ac13-72f8-5e99-bfb9-d9fef5694c3b', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Anna","text":"Is this bread cheap?"}],"explanation":"Отвечаем: Yes, it is cheap!","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":false,"text":"Yes, it is expensive cheap."},{"id":"B","is_correct":true,"text":"Yes, it is cheap!"},{"id":"C","is_correct":false,"text":"It cheap is."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('229921eb-f694-5251-9555-befea404bd13', '4aa2ac13-72f8-5e99-bfb9-d9fef5694c3b', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('60efabf6-1f5c-5a2e-a81d-c809c7b6f9f8', NULL, 'Одежда', 'Назвать одежду и размер.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e7428149-e5d2-55a8-a42f-f33a6d166352', '60efabf6-1f5c-5a2e-a81d-c809c7b6f9f8', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"shirt","right":"рубашка"},{"id":"P2","left":"shoes","right":"обувь"},{"id":"P3","left":"size","right":"размер"},{"id":"P4","left":"jacket","right":"куртка"},{"id":"P5","left":"hat","right":"шляпа"},{"id":"P6","left":"dress","right":"платье"},{"id":"P7","left":"wear","right":"носить"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c5ab909d-79e3-58ce-994d-0246bc3e0224', '60efabf6-1f5c-5a2e-a81d-c809c7b6f9f8', 'quiz', 'Проверьте себя', '{"explanation":"hat — «шляпа».","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":true,"text":"a hat"},{"id":"B","is_correct":false,"text":"a dress"},{"id":"C","is_correct":false,"text":"shoes"},{"id":"D","is_correct":false,"text":"a shirt"}],"question":"Что надевают на голову?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('88afedfb-1af6-515c-ba79-750003680f55', '60efabf6-1f5c-5a2e-a81d-c809c7b6f9f8', 'translate', 'Переведите фразу', '{"correct_translation":"I have a new jacket.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"У меня новая куртка.","target_language":"en","word_bank":["old","new","I","have","a","jacket","wear"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('1d9982a0-868c-57e4-af02-2db9619a9223', '60efabf6-1f5c-5a2e-a81d-c809c7b6f9f8', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"size","instruction":"Выберите подходящее слово.","options":["market","price","size"],"sentence_template":"What ___ do you wear: small or big?","translation_hint":"Какой размер вы носите: маленький или большой?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9d3da111-c919-51c4-bbaf-a1d3340b2a67', '60efabf6-1f5c-5a2e-a81d-c809c7b6f9f8', 'tap_words', 'Соберите фразу', '{"correct_words":["I","wear","a","white","shirt"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["buy","a","black","shirt","white","wear","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('2516abb6-094b-5c28-ab95-cece0edb7c13', '60efabf6-1f5c-5a2e-a81d-c809c7b6f9f8', 'listening', 'Послушайте', '{"audio_text":"Her dress is beautiful!","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6ab0ff0f-ea1d-5cb4-b969-63ba1ec5bb8e', '60efabf6-1f5c-5a2e-a81d-c809c7b6f9f8', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"I like your new shoes!","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Мне нравятся твои новые туфли!"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b847b382-7396-5967-9ae3-e6adb228d59a', '60efabf6-1f5c-5a2e-a81d-c809c7b6f9f8', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"text":"Tom buys a new shirt.","translation":"Том покупает новую рубашку.","type":"narration"},{"character":"Anna","text":"What size is it?","translation":"Какой это размер?","type":"dialogue"},{"character":"Tom","text":"It is my size. And it is cheap!","translation":"Это мой размер. И она дешёвая!","type":"dialogue"},{"options":[{"is_correct":true,"text":"New and cheap"},{"is_correct":false,"text":"Old and expensive"},{"is_correct":false,"text":"Big and black"}],"text":"Какая рубашка у Тома?","type":"choice"}],"title":"New Shirt"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('103f49f9-d52a-5154-844b-38762fea4972', '60efabf6-1f5c-5a2e-a81d-c809c7b6f9f8', 'choose_definition', 'Выберите определение', '{"explanation":"wear — «носить» (одежду).","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":false,"text":"стирать одежду"},{"id":"B","is_correct":false,"text":"покупать одежду"},{"id":"C","is_correct":true,"text":"иметь на себе одежду"},{"id":"D","is_correct":false,"text":"продавать одежду"}],"word":"wear"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9ecc4034-83ad-5243-90f1-7746de4dd809', '60efabf6-1f5c-5a2e-a81d-c809c7b6f9f8', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"I wear a hat on my head.","explanation":"hat — «на голове».","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"shoes","id":"A","is_correct":false},{"audio_text":"hat","id":"B","is_correct":true},{"audio_text":"dress","id":"C","is_correct":false}],"sentence_template":"I wear a ___ on my head."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('2859fc55-be08-5c6a-b942-4c130ee685d0', '60efabf6-1f5c-5a2e-a81d-c809c7b6f9f8', 'missing_word', 'Впишите слово', '{"correct_answer":"shirt","explanation":"shirt — рубашка.","hint_prefix":"sh","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I wear a blue ___ to school."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c21dc8ca-0c11-5759-88f0-398928d004c1', '60efabf6-1f5c-5a2e-a81d-c809c7b6f9f8', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"shirt","id":"V1","text":"shirt"},{"audio_text":"shoes","id":"V2","text":"shoes"},{"audio_text":"jacket","id":"V3","text":"jacket"},{"audio_text":"dress","id":"V4","text":"dress"},{"audio_text":"wear","id":"V5","text":"wear"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3295d494-a0e1-5ba3-9b34-06969cb534c0', '60efabf6-1f5c-5a2e-a81d-c809c7b6f9f8', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Anna","text":"I like your jacket!"}],"explanation":"Благодарим: Thank you! It is new.","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":true,"text":"Thank you! It is new."},{"id":"B","is_correct":false,"text":"Yes, I wear your jacket."},{"id":"C","is_correct":false,"text":"I jacket thanks."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('229921eb-f694-5251-9555-befea404bd13', '60efabf6-1f5c-5a2e-a81d-c809c7b6f9f8', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('19195900-bbb3-5a3b-a019-e4104c0f67d6', NULL, 'Оплата', 'Спросить цену и оплатить покупку.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9a240c03-d325-5d14-9064-2e7c380817c9', '19195900-bbb3-5a3b-a019-e4104c0f67d6', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"pay","right":"платить"},{"id":"P2","left":"card","right":"карта"},{"id":"P3","left":"cash","right":"наличные"},{"id":"P4","left":"discount","right":"скидка"},{"id":"P5","left":"receipt","right":"чек"},{"id":"P6","left":"how much","right":"сколько стоит"},{"id":"P7","left":"change","right":"сдача"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('10655db2-5d4c-579e-bec6-8d7c212a917a', '19195900-bbb3-5a3b-a019-e4104c0f67d6', 'quiz', 'Проверьте себя', '{"explanation":"cash — «наличные»; card — «карта».","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":false,"text":"discount"},{"id":"B","is_correct":false,"text":"change"},{"id":"C","is_correct":true,"text":"cash"},{"id":"D","is_correct":false,"text":"receipt"}],"question":"Чем платят: картой или …?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('285e6367-f45a-562d-b98a-97e5e1db137b', '19195900-bbb3-5a3b-a019-e4104c0f67d6', 'translate', 'Переведите фразу', '{"correct_translation":"How much is this hat?","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Сколько стоит эта шляпа?","target_language":"en","word_bank":["How","this","buy","hat","price","much","is"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f1a28192-d50b-5aeb-a40b-09ae32fbd3bc', '19195900-bbb3-5a3b-a019-e4104c0f67d6', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"card","instruction":"Выберите подходящее слово.","options":["card","receipt","discount"],"sentence_template":"Can I pay by ___?","translation_hint":"Можно заплатить картой?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8cb1143c-c6a5-5cdf-82e3-a5d6f67c738f', '19195900-bbb3-5a3b-a019-e4104c0f67d6', 'tap_words', 'Соберите фразу', '{"correct_words":["How","much","is","this","dress"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["is","much","this","dress","How","hat","buy"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9c878f16-7514-57fd-b49b-ce03cba75341', '19195900-bbb3-5a3b-a019-e4104c0f67d6', 'listening', 'Послушайте', '{"audio_text":"I pay cash and take my change.","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('38d4ef39-6305-5a45-8f90-256663ba9f4a', '19195900-bbb3-5a3b-a019-e4104c0f67d6', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"How much is it?","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Сколько это стоит?"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('62fca753-d75e-542f-a951-e5e6409d0e0a', '19195900-bbb3-5a3b-a019-e4104c0f67d6', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"text":"Anna buys a hat.","translation":"Анна покупает шляпу.","type":"narration"},{"character":"Seller","text":"The hat is cheap today: big discount!","translation":"Шляпа сегодня дешёвая: большая скидка!","type":"dialogue"},{"character":"Anna","text":"Great! I pay by card.","translation":"Отлично! Плачу картой.","type":"dialogue"},{"options":[{"is_correct":true,"text":"By card"},{"is_correct":false,"text":"Cash"},{"is_correct":false,"text":"With change"}],"text":"Чем платит Анна?","type":"choice"}],"title":"Paying"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b934686c-12cf-5393-b366-dd2430e8ad7e', '19195900-bbb3-5a3b-a019-e4104c0f67d6', 'choose_definition', 'Выберите определение', '{"explanation":"discount — «скидка».","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":false,"text":"плата за доставку"},{"id":"B","is_correct":false,"text":"цена становится больше"},{"id":"C","is_correct":false,"text":"новая цена"},{"id":"D","is_correct":true,"text":"цена становится меньше"}],"word":"discount"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e84b36ac-2062-5117-9974-32b09dd12fad', '19195900-bbb3-5a3b-a019-e4104c0f67d6', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"Take your receipt, please.","explanation":"receipt — «чек», его дают после оплаты.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"receipt","id":"A","is_correct":true},{"audio_text":"card","id":"B","is_correct":false},{"audio_text":"discount","id":"C","is_correct":false}],"sentence_template":"Take your ___, please."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e80aa384-1e27-5fab-87ce-1a33eedbda99', '19195900-bbb3-5a3b-a019-e4104c0f67d6', 'missing_word', 'Впишите слово', '{"correct_answer":"cash","explanation":"cash — наличные.","hint_prefix":"ca","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I pay with money in my hands: I pay ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4a1a762b-36c8-5322-9391-cabeee90a972', '19195900-bbb3-5a3b-a019-e4104c0f67d6', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"pay","id":"V1","text":"pay"},{"audio_text":"card","id":"V2","text":"card"},{"audio_text":"cash","id":"V3","text":"cash"},{"audio_text":"receipt","id":"V4","text":"receipt"},{"audio_text":"change","id":"V5","text":"change"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7f1202d0-50d5-509f-a1e4-c37014d2eabe', '19195900-bbb3-5a3b-a019-e4104c0f67d6', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Seller","text":"Cash or card?"}],"explanation":"Отвечаем способом оплаты: Card, please.","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":false,"text":"Receipt, please."},{"id":"B","is_correct":true,"text":"Card, please."},{"id":"C","is_correct":false,"text":"I am card."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('229921eb-f694-5251-9555-befea404bd13', '19195900-bbb3-5a3b-a019-e4104c0f67d6', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('048548b4-3e34-5015-ae5b-4ad6c71ca03a', 'en', 'buy', 'покупать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('539347d0-4262-530b-82aa-0eefd4a212a4', 'en', 'sell', 'продавать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('310c3d46-489c-5625-8277-15295f6aabf0', 'en', 'price', 'цена', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c8df4f38-aad1-5299-b984-ed768d36be02', 'en', 'money', 'деньги', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5550e868-90ba-565b-8087-4d2c3334fd9e', 'en', 'cheap', 'дешёвый', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('19a72870-962d-52ab-b690-6bf36061182a', 'en', 'expensive', 'дорогой', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('549c6b96-2a2f-5cd8-84a4-e21cc897e522', 'en', 'market', 'рынок', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('366f6c58-3001-583b-8d90-6f6c118e421d', 'en', 'shirt', 'рубашка', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('50e128b8-8ea1-5a50-b87d-b19dc3fb18ac', 'en', 'shoes', 'обувь', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5cf317a5-f099-5831-a983-ec97f72f15d7', 'en', 'size', 'размер', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b2ec36e9-c21d-5e4f-a8ba-41b6bb066cb2', 'en', 'jacket', 'куртка', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('06e76789-234a-59f1-9fd9-fcc65af2461a', 'en', 'hat', 'шляпа', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8433eb8c-138d-544a-af70-d4d4447b959a', 'en', 'dress', 'платье', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e37970f0-23c3-587e-b1d5-3f25bf3bb2d2', 'en', 'wear', 'носить', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1819abe7-8db8-5189-a37d-3b3266e4a3fb', 'en', 'pay', 'платить', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('078b172d-8324-5a0f-9f66-65c282d485c1', 'en', 'card', 'карта', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5c7193f5-e486-5df8-a5cc-a05102b20d02', 'en', 'cash', 'наличные', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9a8474a4-2ce5-580f-8eb2-7959cdfc4e60', 'en', 'discount', 'скидка', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('975a1a75-48ca-58e3-b77e-58fbe6c26542', 'en', 'receipt', 'чек', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('39f45ee2-f74f-5543-abf2-a4d098562a7e', 'en', 'how much', 'сколько стоит', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('29edec5a-8470-5156-93fd-8c23d8cb4246', 'en', 'change', 'сдача', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '229921eb-f694-5251-9555-befea404bd13', id, '4aa2ac13-72f8-5e99-bfb9-d9fef5694c3b', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'buy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '229921eb-f694-5251-9555-befea404bd13', id, '4aa2ac13-72f8-5e99-bfb9-d9fef5694c3b', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'sell' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '229921eb-f694-5251-9555-befea404bd13', id, '4aa2ac13-72f8-5e99-bfb9-d9fef5694c3b', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'price' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '229921eb-f694-5251-9555-befea404bd13', id, '4aa2ac13-72f8-5e99-bfb9-d9fef5694c3b', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'money' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '229921eb-f694-5251-9555-befea404bd13', id, '4aa2ac13-72f8-5e99-bfb9-d9fef5694c3b', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'cheap' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '229921eb-f694-5251-9555-befea404bd13', id, '4aa2ac13-72f8-5e99-bfb9-d9fef5694c3b', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'expensive' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '229921eb-f694-5251-9555-befea404bd13', id, '4aa2ac13-72f8-5e99-bfb9-d9fef5694c3b', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'market' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '229921eb-f694-5251-9555-befea404bd13', id, '60efabf6-1f5c-5a2e-a81d-c809c7b6f9f8', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'shirt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '229921eb-f694-5251-9555-befea404bd13', id, '60efabf6-1f5c-5a2e-a81d-c809c7b6f9f8', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'shoes' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '229921eb-f694-5251-9555-befea404bd13', id, '60efabf6-1f5c-5a2e-a81d-c809c7b6f9f8', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'size' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '229921eb-f694-5251-9555-befea404bd13', id, '60efabf6-1f5c-5a2e-a81d-c809c7b6f9f8', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'jacket' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '229921eb-f694-5251-9555-befea404bd13', id, '60efabf6-1f5c-5a2e-a81d-c809c7b6f9f8', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'hat' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '229921eb-f694-5251-9555-befea404bd13', id, '60efabf6-1f5c-5a2e-a81d-c809c7b6f9f8', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'dress' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '229921eb-f694-5251-9555-befea404bd13', id, '60efabf6-1f5c-5a2e-a81d-c809c7b6f9f8', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'wear' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '229921eb-f694-5251-9555-befea404bd13', id, '19195900-bbb3-5a3b-a019-e4104c0f67d6', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'pay' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '229921eb-f694-5251-9555-befea404bd13', id, '19195900-bbb3-5a3b-a019-e4104c0f67d6', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'card' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '229921eb-f694-5251-9555-befea404bd13', id, '19195900-bbb3-5a3b-a019-e4104c0f67d6', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'cash' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '229921eb-f694-5251-9555-befea404bd13', id, '19195900-bbb3-5a3b-a019-e4104c0f67d6', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'discount' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '229921eb-f694-5251-9555-befea404bd13', id, '19195900-bbb3-5a3b-a019-e4104c0f67d6', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'receipt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '229921eb-f694-5251-9555-befea404bd13', id, '19195900-bbb3-5a3b-a019-e4104c0f67d6', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'how much' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '229921eb-f694-5251-9555-befea404bd13', id, '19195900-bbb3-5a3b-a019-e4104c0f67d6', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'change' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
-- Track: A1_T10_TIME. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('59dc794b-eb17-5835-81ff-3eccc664539d', 'A1_T10_TIME', 'Время', 'Дни недели, «сегодня и завтра», месяцы и времена года.', 'en', 'A1', '', '{}'::text[], true, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('982cad03-c1a4-5eed-96a3-d7e8b79f48e3', NULL, 'Дни недели', 'Назвать семь дней недели.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('14e81b7d-85bb-5100-a0d3-25acc856badc', '982cad03-c1a4-5eed-96a3-d7e8b79f48e3', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"Monday","right":"понедельник"},{"id":"P2","left":"Tuesday","right":"вторник"},{"id":"P3","left":"Wednesday","right":"среда"},{"id":"P4","left":"Thursday","right":"четверг"},{"id":"P5","left":"Friday","right":"пятница"},{"id":"P6","left":"Saturday","right":"суббота"},{"id":"P7","left":"Sunday","right":"воскресенье"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f3e5b5be-bd1c-5695-803d-e976e36c1abb', '982cad03-c1a4-5eed-96a3-d7e8b79f48e3', 'quiz', 'Проверьте себя', '{"explanation":"После понедельника — вторник (Tuesday).","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":true,"text":"Tuesday"},{"id":"B","is_correct":false,"text":"Friday"},{"id":"C","is_correct":false,"text":"Sunday"},{"id":"D","is_correct":false,"text":"Wednesday"}],"question":"Какой день после Monday?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('bae67755-61db-50e2-b18e-e3188fb8c277', '982cad03-c1a4-5eed-96a3-d7e8b79f48e3', 'translate', 'Переведите фразу', '{"correct_translation":"On Saturday I am at home.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"В субботу я дома.","target_language":"en","word_bank":["I","home","Saturday","Monday","week","On","at","am"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('2f592ea6-99f5-5c48-92b9-16dc32ea67d8', '982cad03-c1a4-5eed-96a3-d7e8b79f48e3', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"Monday","instruction":"Выберите подходящее слово.","options":["Sunday","Friday","Monday"],"sentence_template":"___ is the first day of the week.","translation_hint":"Понедельник — первый день недели."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('403806ea-500d-5c54-9b45-701cc5c8d520', '982cad03-c1a4-5eed-96a3-d7e8b79f48e3', 'tap_words', 'Соберите фразу', '{"correct_words":["I","rest","on","Sunday"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["Sunday","work","on","I","rest","Saturday"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9fda7c05-13e1-56b2-95e4-de6738527e25', '982cad03-c1a4-5eed-96a3-d7e8b79f48e3', 'listening', 'Послушайте', '{"audio_text":"We meet on Friday.","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e2183bd3-2ebe-551b-a9e9-46cbeb0d1b43', '982cad03-c1a4-5eed-96a3-d7e8b79f48e3', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"See you on Monday!","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Увидимся в понедельник!"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('04f24e03-b18b-52d3-8ff6-a98886678636', '982cad03-c1a4-5eed-96a3-d7e8b79f48e3', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"text":"Tom plans his week.","translation":"Том планирует неделю.","type":"narration"},{"character":"Anna","text":"What do you do on Monday?","translation":"Что ты делаешь в понедельник?","type":"dialogue"},{"character":"Tom","text":"I work on Monday and study on Wednesday.","translation":"Я работаю в понедельник и учусь в среду.","type":"dialogue"},{"options":[{"is_correct":true,"text":"On Wednesday"},{"is_correct":false,"text":"On Monday"},{"is_correct":false,"text":"On Sunday"}],"text":"Когда Том учится?","type":"choice"}],"title":"Busy Week"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('fc82df2d-9601-5dff-acbc-af38e1522934', '982cad03-c1a4-5eed-96a3-d7e8b79f48e3', 'choose_definition', 'Выберите определение', '{"explanation":"Saturday — «суббота», выходной.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":false,"text":"день перед пятницей"},{"id":"B","is_correct":false,"text":"первый день недели"},{"id":"C","is_correct":false,"text":"рабочий день после среды"},{"id":"D","is_correct":true,"text":"шестой день недели, выходной"}],"word":"Saturday"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('09d63841-c32d-56b4-b19b-632a882343cb', '982cad03-c1a4-5eed-96a3-d7e8b79f48e3', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"We have a meeting on Thursday.","explanation":"Thursday — четверг.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"Sunday","id":"A","is_correct":false},{"audio_text":"Thursday","id":"B","is_correct":true},{"audio_text":"Tuesday","id":"C","is_correct":false}],"sentence_template":"We have a meeting on ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0568ebb8-51ed-5034-87f9-c5700adfd98e', '982cad03-c1a4-5eed-96a3-d7e8b79f48e3', 'missing_word', 'Впишите слово', '{"correct_answer":"Saturday","explanation":"После пятницы — суббота.","hint_prefix":"sa","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ is after Friday."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('1ef96485-c996-527a-84a3-bce4f02a35d5', '982cad03-c1a4-5eed-96a3-d7e8b79f48e3', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"Monday","id":"V1","text":"Monday"},{"audio_text":"Tuesday","id":"V2","text":"Tuesday"},{"audio_text":"Wednesday","id":"V3","text":"Wednesday"},{"audio_text":"Thursday","id":"V4","text":"Thursday"},{"audio_text":"Friday","id":"V5","text":"Friday"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('35341026-a3ef-5cd9-99fb-ecc8da8a9e0e', '982cad03-c1a4-5eed-96a3-d7e8b79f48e3', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Anna","text":"When do we meet?"}],"explanation":"Дни недели с предлогом on: on Friday.","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":false,"text":"In Friday at six."},{"id":"B","is_correct":true,"text":"On Friday, at six."},{"id":"C","is_correct":false,"text":"Friday we in at."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('59dc794b-eb17-5835-81ff-3eccc664539d', '982cad03-c1a4-5eed-96a3-d7e8b79f48e3', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('7c50e685-e56d-54fa-a2ee-18de3d6e0e3f', NULL, 'Сегодня и завтра', 'Говорить о сегодня, завтра и вчера.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('10d008dd-517a-59d1-a150-c8298524c659', '7c50e685-e56d-54fa-a2ee-18de3d6e0e3f', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"today","right":"сегодня"},{"id":"P2","left":"tomorrow","right":"завтра"},{"id":"P3","left":"yesterday","right":"вчера"},{"id":"P4","left":"week","right":"неделя"},{"id":"P5","left":"now","right":"сейчас"},{"id":"P6","left":"weekend","right":"выходные"},{"id":"P7","left":"free","right":"свободный"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b4855a1a-499f-5300-b366-7a1a16d5cf34', '7c50e685-e56d-54fa-a2ee-18de3d6e0e3f', 'quiz', 'Проверьте себя', '{"explanation":"yesterday — «вчера».","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":false,"text":"tomorrow"},{"id":"B","is_correct":false,"text":"weekend"},{"id":"C","is_correct":true,"text":"yesterday"},{"id":"D","is_correct":false,"text":"now"}],"question":"Какой день был до сегодня?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('bc39baf0-abdc-5293-8848-edac946105ef', '7c50e685-e56d-54fa-a2ee-18de3d6e0e3f', 'translate', 'Переведите фразу', '{"correct_translation":"Tomorrow I am free.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Завтра я свободен.","target_language":"en","word_bank":["free","Tomorrow","am","busy","today","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d83038ca-b418-5944-ba97-92f681a83240', '7c50e685-e56d-54fa-a2ee-18de3d6e0e3f', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"today","instruction":"Выберите подходящее слово.","options":["now","yesterday","today"],"sentence_template":"I am busy ___, but tomorrow I am free.","translation_hint":"Сегодня я занят, но завтра свободен."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6715d6fe-298a-5c05-9c0a-164c983bdc26', '7c50e685-e56d-54fa-a2ee-18de3d6e0e3f', 'tap_words', 'Соберите фразу', '{"correct_words":["What","do","you","do","on","the","weekend"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["work","do","you","on","today","the","weekend","What","do"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6232d0c4-83f3-51e0-aecf-7c4a32444599', '7c50e685-e56d-54fa-a2ee-18de3d6e0e3f', 'listening', 'Послушайте', '{"audio_text":"The week has seven days.","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a176d684-19d1-53ab-85cd-250ba937fc30', '7c50e685-e56d-54fa-a2ee-18de3d6e0e3f', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"I am free now!","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Сейчас я свободен!"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7d022921-3420-5d45-bfa6-79756f18c9d9', '7c50e685-e56d-54fa-a2ee-18de3d6e0e3f', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"Are you free today?","translation":"Ты свободен сегодня?","type":"dialogue"},{"character":"Tom","text":"No, I am busy today. And tomorrow I work!","translation":"Нет, сегодня я занят. А завтра работаю!","type":"dialogue"},{"character":"Anna","text":"And on the weekend?","translation":"А на выходных?","type":"dialogue"},{"options":[{"is_correct":true,"text":"On the weekend"},{"is_correct":false,"text":"Today"},{"is_correct":false,"text":"Tomorrow"}],"text":"Когда Том свободен?","type":"choice"}],"title":"Plans"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d1de287d-782c-5fb7-9e4d-d94ef0e730c8', '7c50e685-e56d-54fa-a2ee-18de3d6e0e3f', 'choose_definition', 'Выберите определение', '{"explanation":"weekend — «выходные».","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":false,"text":"один день"},{"id":"B","is_correct":false,"text":"пять рабочих дней"},{"id":"C","is_correct":false,"text":"весь месяц"},{"id":"D","is_correct":true,"text":"суббота и воскресенье"}],"word":"weekend"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6bfe1799-34f4-5d28-afb2-1de2d59b3657', '7c50e685-e56d-54fa-a2ee-18de3d6e0e3f', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"Today is Tuesday.","explanation":"today — «сегодня».","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"yesterday","id":"A","is_correct":false},{"audio_text":"today","id":"B","is_correct":true},{"audio_text":"week","id":"C","is_correct":false}],"sentence_template":"___ is Tuesday."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('de7b4810-ddc1-531f-b7e9-f41e98e772fb', '7c50e685-e56d-54fa-a2ee-18de3d6e0e3f', 'missing_word', 'Впишите слово', '{"correct_answer":"tomorrow","explanation":"tomorrow — завтра.","hint_prefix":"to","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"See you ___!"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7725c572-c4b8-56eb-a493-498456d3707b', '7c50e685-e56d-54fa-a2ee-18de3d6e0e3f', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"today","id":"V1","text":"today"},{"audio_text":"tomorrow","id":"V2","text":"tomorrow"},{"audio_text":"yesterday","id":"V3","text":"yesterday"},{"audio_text":"now","id":"V4","text":"now"},{"audio_text":"free","id":"V5","text":"free"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4d636c52-a4ae-530a-8248-4a6fbfe202eb', '7c50e685-e56d-54fa-a2ee-18de3d6e0e3f', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Anna","text":"Are you free tomorrow?"}],"explanation":"Порядок: I am free tomorrow.","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":true,"text":"Yes, I am free tomorrow!"},{"id":"B","is_correct":false,"text":"Yes, I free tomorrow am."},{"id":"C","is_correct":false,"text":"Tomorrow free yes I."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('59dc794b-eb17-5835-81ff-3eccc664539d', '7c50e685-e56d-54fa-a2ee-18de3d6e0e3f', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('93075288-cca9-5c7f-bd5a-1f6acc253677', NULL, 'Месяцы и сезоны', 'Назвать месяцы и времена года.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('1220bf4f-6992-521f-beb2-fddc4dfb1afa', '93075288-cca9-5c7f-bd5a-1f6acc253677', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"month","right":"месяц"},{"id":"P2","left":"year","right":"год"},{"id":"P3","left":"January","right":"январь"},{"id":"P4","left":"spring","right":"весна"},{"id":"P5","left":"summer","right":"лето"},{"id":"P6","left":"autumn","right":"осень"},{"id":"P7","left":"winter","right":"зима"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('650e8644-0620-5995-b105-ffa34367bbe8', '93075288-cca9-5c7f-bd5a-1f6acc253677', 'quiz', 'Проверьте себя', '{"explanation":"winter — «зима».","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":false,"text":"summer"},{"id":"B","is_correct":false,"text":"autumn"},{"id":"C","is_correct":false,"text":"spring"},{"id":"D","is_correct":true,"text":"winter"}],"question":"Какой сезон самый холодный?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c553d9a0-e4d8-507a-b489-402409f15b02', '93075288-cca9-5c7f-bd5a-1f6acc253677', 'translate', 'Переведите фразу', '{"correct_translation":"My birthday is in January.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мой день рождения в январе.","target_language":"en","word_bank":["in","month","My","is","spring","January","birthday"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0464fe4f-6ba9-5c15-9660-5be9ef0f2c3f', '93075288-cca9-5c7f-bd5a-1f6acc253677', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"year","instruction":"Выберите подходящее слово.","options":["month","year","winter"],"sentence_template":"The ___ has twelve months.","translation_hint":"В году двенадцать месяцев."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('54cecf9e-7051-57ae-9c97-9862a6d0a85d', '93075288-cca9-5c7f-bd5a-1f6acc253677', 'tap_words', 'Соберите фразу', '{"correct_words":["I","like","summer"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["summer","I","like","month","winter"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8935f910-f31c-5d07-90e7-03e5a1f62704', '93075288-cca9-5c7f-bd5a-1f6acc253677', 'listening', 'Послушайте', '{"audio_text":"My birthday is in spring.","instruction":"Прослушайте фразу и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c59a0d89-f3cf-5de7-a12e-7708ef99c730', '93075288-cca9-5c7f-bd5a-1f6acc253677', 'listening_shadowing', 'Повторите за диктором', '{"audio_text":"January is the first month.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Январь — первый месяц."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('190ca867-22f8-5166-b86e-59ded4670684', '93075288-cca9-5c7f-bd5a-1f6acc253677', 'story', 'История', '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"text":"Anna likes all seasons.","translation":"Анне нравятся все времена года.","type":"narration"},{"character":"Tom","text":"What is your favorite season?","translation":"Какое твоё любимое время года?","type":"dialogue"},{"character":"Anna","text":"Summer! The park is green and bright.","translation":"Лето! Парк зелёный и яркий.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Summer"},{"is_correct":false,"text":"Winter"},{"is_correct":false,"text":"Autumn"}],"text":"Какой сезон любимый у Анны?","type":"choice"}],"title":"Seasons"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f63fa90e-e6d4-50a2-9030-6dd46bbcf879', '93075288-cca9-5c7f-bd5a-1f6acc253677', 'choose_definition', 'Выберите определение', '{"explanation":"spring — «весна».","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"A","is_correct":false,"text":"самый холодный сезон"},{"id":"B","is_correct":true,"text":"сезон после зимы, всё цветёт"},{"id":"C","is_correct":false,"text":"сезон после лета"},{"id":"D","is_correct":false,"text":"месяц года"}],"word":"spring"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e1a22f90-711e-587c-b1d7-e99e3fc2c78b', '93075288-cca9-5c7f-bd5a-1f6acc253677', 'listen_choose_word', 'Выберите услышанное слово', '{"audio_text":"My birthday is in January.","explanation":"in January — «в январе» (месяц).","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"year","id":"A","is_correct":false},{"audio_text":"January","id":"B","is_correct":true},{"audio_text":"spring","id":"C","is_correct":false}],"sentence_template":"My birthday is in ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('debac579-7597-5fc5-8276-58c8225cd96a', '93075288-cca9-5c7f-bd5a-1f6acc253677', 'missing_word', 'Впишите слово', '{"correct_answer":"month","explanation":"month — месяц.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"December is the last ___ of the year."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d121d190-877e-5cb6-b7f3-438c97667d67', '93075288-cca9-5c7f-bd5a-1f6acc253677', 'match_pairs_voice', 'Соедините звук и слово', '{"instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"month","id":"V1","text":"month"},{"audio_text":"year","id":"V2","text":"year"},{"audio_text":"spring","id":"V3","text":"spring"},{"audio_text":"summer","id":"V4","text":"summer"},{"audio_text":"winter","id":"V5","text":"winter"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('cffbc2fc-7691-520d-b018-47cac43c6701', '93075288-cca9-5c7f-bd5a-1f6acc253677', 'complete_chat', 'Завершите диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Tom","text":"When is your birthday?"}],"explanation":"Месяц/сезон с предлогом in: in spring.","instruction":"Выберите подходящую реплику.","options":[{"id":"A","is_correct":false,"text":"My birthday is spring on."},{"id":"B","is_correct":false,"text":"In my birthday is spring."},{"id":"C","is_correct":true,"text":"My birthday is in spring."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('59dc794b-eb17-5835-81ff-3eccc664539d', '93075288-cca9-5c7f-bd5a-1f6acc253677', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1fdb0791-5276-5bee-89c9-d1f5c26924a0', 'en', 'Monday', 'понедельник', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('500c9a35-46a7-5336-929e-061e1d0cfb52', 'en', 'Tuesday', 'вторник', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bfc64cfb-745a-5466-95d9-fa16a63b74bb', 'en', 'Wednesday', 'среда', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b1458e59-80d3-5e5b-830a-c40ee07700cf', 'en', 'Thursday', 'четверг', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d0b8f091-f4e1-52c7-860d-2b85b5bedb04', 'en', 'Friday', 'пятница', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('59dccc83-34f2-5b87-8acd-1c690ef291e0', 'en', 'Saturday', 'суббота', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('88d633c8-961d-59f3-90aa-d56266b4f93b', 'en', 'Sunday', 'воскресенье', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f63596fa-e1a7-596d-839b-65eddde8d504', 'en', 'today', 'сегодня', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0d87e567-9d2d-55d9-ba3e-587332645ba9', 'en', 'tomorrow', 'завтра', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3be880b1-48b6-5ec1-a80a-a042318a8d3a', 'en', 'yesterday', 'вчера', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41906186-631c-5a9c-833c-959d1735e857', 'en', 'week', 'неделя', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2c9e4311-2add-5957-9177-a9eac75da8e2', 'en', 'now', 'сейчас', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('81085528-5336-52d0-8ab3-182d92d44216', 'en', 'weekend', 'выходные', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('61c8cb9e-e425-5e2f-8fd9-c24872fac39d', 'en', 'free', 'свободный', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b6589216-88f1-56c2-b6e2-cd9cda059b8d', 'en', 'month', 'месяц', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0078145a-cc5a-520e-ac86-cb4d9458111a', 'en', 'year', 'год', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1a7d52ef-a7ec-557b-bb22-c6ab005a0620', 'en', 'January', 'январь', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('72f82cb2-b1f5-56eb-abbf-b6affe8bbd91', 'en', 'spring', 'весна', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0a616332-86bb-5085-9298-73b29753e322', 'en', 'summer', 'лето', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0cc88616-fea6-5b6f-b1fd-29b25e326479', 'en', 'autumn', 'осень', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9bf8615a-2778-592e-88e3-cecba3a8baa1', 'en', 'winter', 'зима', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59dc794b-eb17-5835-81ff-3eccc664539d', id, '982cad03-c1a4-5eed-96a3-d7e8b79f48e3', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'Monday' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59dc794b-eb17-5835-81ff-3eccc664539d', id, '982cad03-c1a4-5eed-96a3-d7e8b79f48e3', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'Tuesday' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59dc794b-eb17-5835-81ff-3eccc664539d', id, '982cad03-c1a4-5eed-96a3-d7e8b79f48e3', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'Wednesday' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59dc794b-eb17-5835-81ff-3eccc664539d', id, '982cad03-c1a4-5eed-96a3-d7e8b79f48e3', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'Thursday' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59dc794b-eb17-5835-81ff-3eccc664539d', id, '982cad03-c1a4-5eed-96a3-d7e8b79f48e3', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'Friday' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59dc794b-eb17-5835-81ff-3eccc664539d', id, '982cad03-c1a4-5eed-96a3-d7e8b79f48e3', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'Saturday' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59dc794b-eb17-5835-81ff-3eccc664539d', id, '982cad03-c1a4-5eed-96a3-d7e8b79f48e3', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'Sunday' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59dc794b-eb17-5835-81ff-3eccc664539d', id, '7c50e685-e56d-54fa-a2ee-18de3d6e0e3f', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'today' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59dc794b-eb17-5835-81ff-3eccc664539d', id, '7c50e685-e56d-54fa-a2ee-18de3d6e0e3f', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'tomorrow' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59dc794b-eb17-5835-81ff-3eccc664539d', id, '7c50e685-e56d-54fa-a2ee-18de3d6e0e3f', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'yesterday' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59dc794b-eb17-5835-81ff-3eccc664539d', id, '7c50e685-e56d-54fa-a2ee-18de3d6e0e3f', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'week' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59dc794b-eb17-5835-81ff-3eccc664539d', id, '7c50e685-e56d-54fa-a2ee-18de3d6e0e3f', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'now' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59dc794b-eb17-5835-81ff-3eccc664539d', id, '7c50e685-e56d-54fa-a2ee-18de3d6e0e3f', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'weekend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59dc794b-eb17-5835-81ff-3eccc664539d', id, '7c50e685-e56d-54fa-a2ee-18de3d6e0e3f', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'free' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59dc794b-eb17-5835-81ff-3eccc664539d', id, '93075288-cca9-5c7f-bd5a-1f6acc253677', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'month' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59dc794b-eb17-5835-81ff-3eccc664539d', id, '93075288-cca9-5c7f-bd5a-1f6acc253677', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'year' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59dc794b-eb17-5835-81ff-3eccc664539d', id, '93075288-cca9-5c7f-bd5a-1f6acc253677', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'January' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59dc794b-eb17-5835-81ff-3eccc664539d', id, '93075288-cca9-5c7f-bd5a-1f6acc253677', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'spring' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59dc794b-eb17-5835-81ff-3eccc664539d', id, '93075288-cca9-5c7f-bd5a-1f6acc253677', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'summer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59dc794b-eb17-5835-81ff-3eccc664539d', id, '93075288-cca9-5c7f-bd5a-1f6acc253677', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'autumn' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '59dc794b-eb17-5835-81ff-3eccc664539d', id, '93075288-cca9-5c7f-bd5a-1f6acc253677', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'winter' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
