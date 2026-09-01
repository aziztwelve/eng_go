-- Track: A1_T11_GREETINGS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('1ae56ae7-2b88-5500-882c-883cdf79ab40', 'A1_T11_GREETINGS', 'Приветствия', 'Научитесь здороваться, представляться и прощаться в простых повседневных разговорах.', 'en', 'A1', '', ARRAY['speaking']::text[], true, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('b2c0d667-203d-5aea-bfab-bb6f9e003eb2', NULL, 'Основные приветствия', 'Научиться использовать простые приветствия утром, днём и вечером.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6ea9fb08-6f3b-5378-a397-884a43a54982', 'b2c0d667-203d-5aea-bfab-bb6f9e003eb2', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"Hello","right":"Здравствуйте"},{"id":"P2","left":"Hi","right":"Привет"},{"id":"P3","left":"Good morning","right":"Доброе утро"},{"id":"P4","left":"Good afternoon","right":"Добрый день"},{"id":"P5","left":"Good evening","right":"Добрый вечер"},{"id":"P6","left":"How are you?","right":"Как дела?"},{"id":"P7","left":"I am fine","right":"У меня всё хорошо"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f10c5599-0ca8-533b-b50d-8c1be952a393', 'b2c0d667-203d-5aea-bfab-bb6f9e003eb2', 'quiz', 'Проверьте себя', '{"explanation":"Good morning — «доброе утро», так здороваются утром.","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":true,"text":"Good morning"},{"id":"B","is_correct":false,"text":"Good evening"},{"id":"C","is_correct":false,"text":"Goodbye"}],"question":"Как сказать «доброе утро»?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0fe7b016-7104-53c9-b98a-42bb20505a78', 'b2c0d667-203d-5aea-bfab-bb6f9e003eb2', 'translate', 'Переведите', '{"correct_translation":"Good morning, Anna!","instruction":"Соберите перевод.","source_language":"ru","source_text":"Доброе утро, Анна!","target_language":"en","word_bank":["Anna!","morning,","Good","evening","Hi"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5822941c-1bca-5a25-9b75-1cb94f50d3d9', 'b2c0d667-203d-5aea-bfab-bb6f9e003eb2', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"morning","instruction":"Выберите подходящее слово.","options":["morning","fine","hello"],"sentence_template":"Good ___!","translation_hint":"Доброе утро!"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f333ab45-55c6-530d-ba04-10c9c1f2240d', 'b2c0d667-203d-5aea-bfab-bb6f9e003eb2', 'tap_words', 'Соберите фразу', '{"correct_words":["How","are","you?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["you?","are","How","is","name"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('1efff2e0-8428-568b-86f5-ade2151a3a90', 'b2c0d667-203d-5aea-bfab-bb6f9e003eb2', 'listening', 'Послушайте', '{"audio_text":"Hello! How are you?","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('1bbbec95-8c28-5a6c-960f-b4c8f6597cf0', 'b2c0d667-203d-5aea-bfab-bb6f9e003eb2', 'listening_shadowing', 'Повторите', '{"audio_text":"Good morning! How are you?","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Доброе утро! Как дела?"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4db37ef3-30a8-5ce0-9683-2e969c519774', 'b2c0d667-203d-5aea-bfab-bb6f9e003eb2', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Anna","text":"Good morning, Tom!","translation":"Доброе утро, Том!","type":"dialogue"},{"character":"Tom","text":"Good morning, Anna! How are you?","translation":"Доброе утро, Анна! Как дела?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I am fine, thank you."},{"is_correct":false,"text":"Good evening."}],"text":"Что ответить Анне?","type":"choice"}],"title":"A Morning Greeting"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3e2ab4db-bc9c-5b62-839f-4edfa1a2f0d7', 'b2c0d667-203d-5aea-bfab-bb6f9e003eb2', 'choose_definition', 'Определение', '{"explanation":"hello — «здравствуйте», слово-приветствие.","instruction":"Выберите значение.","language":"en","options":[{"id":"A","is_correct":true,"text":"слово для приветствия"},{"id":"B","is_correct":false,"text":"слово для благодарности"},{"id":"C","is_correct":false,"text":"слово, которым просят еду"}],"word":"hello"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b8b73bf0-5c95-5b91-8719-81f6547780ec', 'b2c0d667-203d-5aea-bfab-bb6f9e003eb2', 'listen_choose_word', 'Слово', '{"audio_text":"Good morning.","explanation":"morning — «утро»: Good morning.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"morning","id":"A","is_correct":true},{"audio_text":"fine","id":"B","is_correct":false},{"audio_text":"hello","id":"C","is_correct":false}],"sentence_template":"Good ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('115b57ca-f56e-5ce3-98d9-7b96987883aa', 'b2c0d667-203d-5aea-bfab-bb6f9e003eb2', 'missing_word', 'Впишите', '{"correct_answer":"you","explanation":"you — «вы»: How are you?","hint_prefix":"yo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"How are ___?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ef22a8e3-9b77-5710-b633-abf65e220406', 'b2c0d667-203d-5aea-bfab-bb6f9e003eb2', 'match_pairs_voice', 'Звук', '{"explanation":"Соедините звучание и написание слов приветствия.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"Hello","id":"V1","text":"Hello"},{"audio_text":"Hi","id":"V2","text":"Hi"},{"audio_text":"Good morning","id":"V3","text":"Good morning"},{"audio_text":"Good evening","id":"V4","text":"Good evening"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8c4ada97-b998-544c-937d-dd28c2634942', 'b2c0d667-203d-5aea-bfab-bb6f9e003eb2', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Ben","text":"Hello! How are you?"}],"explanation":"На «How are you?» отвечают: I am fine, thank you.","instruction":"Ответьте.","options":[{"id":"A","is_correct":true,"text":"I am fine, thank you."},{"id":"B","is_correct":false,"text":"Good night."},{"id":"C","is_correct":false,"text":"My name Ben."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1ae56ae7-2b88-5500-882c-883cdf79ab40', 'b2c0d667-203d-5aea-bfab-bb6f9e003eb2', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('6e271073-dbe7-51f1-9002-382d5017ecce', NULL, 'Знакомство', 'Научиться называть своё имя и спрашивать имя другого человека.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f0be3ebb-d293-5939-8d87-1a017acd7b4f', '6e271073-dbe7-51f1-9002-382d5017ecce', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"My name is","right":"Меня зовут"},{"id":"P2","left":"What is your name?","right":"Как вас зовут?"},{"id":"P3","left":"Nice to meet you","right":"Приятно познакомиться"},{"id":"P4","left":"I am","right":"Я"},{"id":"P5","left":"This is","right":"Это"},{"id":"P6","left":"friend","right":"друг"},{"id":"P7","left":"too","right":"тоже"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ab41e63a-1a81-53ff-9b80-0e2296d7ea00', '6e271073-dbe7-51f1-9002-382d5017ecce', 'quiz', 'Проверьте себя', '{"explanation":"What is your name? — «как вас зовут?».","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":true,"text":"What is your name?"},{"id":"B","is_correct":false,"text":"How are you?"},{"id":"C","is_correct":false,"text":"Good morning."}],"question":"Какой вопрос спрашивает имя?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('38185240-971b-5159-9a24-31cee154e056', '6e271073-dbe7-51f1-9002-382d5017ecce', 'translate', 'Переведите', '{"correct_translation":"My name is Maria.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Меня зовут Мария.","target_language":"en","word_bank":["My","name","is","Maria.","are","you"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('62daa998-8870-5827-b8e7-f23fdebd6f46', '6e271073-dbe7-51f1-9002-382d5017ecce', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"name","instruction":"Выберите подходящее слово.","options":["name","friend","morning"],"sentence_template":"My ___ is Alex.","translation_hint":"Меня зовут Алекс."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f145999c-ea8e-5f2a-b057-1a92d246e11c', '6e271073-dbe7-51f1-9002-382d5017ecce', 'tap_words', 'Соберите фразу', '{"correct_words":["What","is","your","name?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["your","What","name?","is","my","am"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('75c8b7b1-0ad7-5962-abce-d1e32e0de489', '6e271073-dbe7-51f1-9002-382d5017ecce', 'listening', 'Послушайте', '{"audio_text":"Hello! My name is Emma.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d0744cc5-579b-5222-910c-f5701d0fba1c', '6e271073-dbe7-51f1-9002-382d5017ecce', 'listening_shadowing', 'Повторите', '{"audio_text":"Hello! My name is Emma. Nice to meet you.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Здравствуйте! Меня зовут Эмма. Приятно познакомиться."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d12e16fe-bc4d-569a-b657-63368ecf880b', '6e271073-dbe7-51f1-9002-382d5017ecce', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Leo","text":"Hi! My name is Leo. What is your name?","translation":"Привет! Меня зовут Лео. Как вас зовут?","type":"dialogue"},{"character":"Mia","text":"My name is Mia.","translation":"Меня зовут Миа.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Nice to meet you, Mia."},{"is_correct":false,"text":"Good morning is Mia."}],"text":"Что сказать Лео дальше?","type":"choice"}],"title":"Meeting a New Person"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('396c8f4a-1d9a-5eba-8023-31ac9e3b2ee4', '6e271073-dbe7-51f1-9002-382d5017ecce', 'choose_definition', 'Определение', '{"explanation":"friend — «друг».","instruction":"Выберите значение.","language":"en","options":[{"id":"A","is_correct":true,"text":"человек, которого знаешь и который нравится"},{"id":"B","is_correct":false,"text":"время суток"},{"id":"C","is_correct":false,"text":"слово для прощания"}],"word":"friend"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('2077a6a6-1afb-5e5f-b0e3-f032e9cfd391', '6e271073-dbe7-51f1-9002-382d5017ecce', 'listen_choose_word', 'Слово', '{"audio_text":"My name is Daniel.","explanation":"name — «имя»: My name is Daniel.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"name","id":"A","is_correct":true},{"audio_text":"friend","id":"B","is_correct":false},{"audio_text":"fine","id":"C","is_correct":false}],"sentence_template":"My ___ is Daniel."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('fc753fe9-5bac-5fae-b75f-6eb54615bb42', '6e271073-dbe7-51f1-9002-382d5017ecce', 'missing_word', 'Впишите', '{"correct_answer":"meet","explanation":"meet — «знакомиться»: Nice to meet you.","hint_prefix":"me","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Nice to ___ you."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0f8c5636-a1e4-5e16-b3a0-34f35b76a27a', '6e271073-dbe7-51f1-9002-382d5017ecce', 'match_pairs_voice', 'Звук', '{"explanation":"Соедините звучание и написание фраз знакомства.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"My name is","id":"V1","text":"My name is"},{"audio_text":"Nice to meet you","id":"V2","text":"Nice to meet you"},{"audio_text":"friend","id":"V3","text":"friend"},{"audio_text":"What is your name?","id":"V4","text":"What is your name?"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4984f869-acfb-57be-b459-04a1121812f7', '6e271073-dbe7-51f1-9002-382d5017ecce', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Sofia","text":"Hello! My name is Sofia. What is your name?"}],"explanation":"На вопрос об имени отвечают: Hi! My name is Max.","instruction":"Ответьте.","options":[{"id":"A","is_correct":true,"text":"Hi! My name is Max."},{"id":"B","is_correct":false,"text":"I am fine morning."},{"id":"C","is_correct":false,"text":"Goodbye, Sofia?"}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1ae56ae7-2b88-5500-882c-883cdf79ab40', '6e271073-dbe7-51f1-9002-382d5017ecce', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('8b7fbec3-8352-5fdd-bbea-b7b8722ef92c', NULL, 'Приветствия и прощания', 'Научиться начинать и заканчивать короткий дружеский разговор.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3536b803-50b4-5f58-bd89-85ff42253e85', '8b7fbec3-8352-5fdd-bbea-b7b8722ef92c', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"P1","left":"Goodbye","right":"До свидания"},{"id":"P2","left":"Bye","right":"Пока"},{"id":"P3","left":"See you","right":"Увидимся"},{"id":"P4","left":"See you tomorrow","right":"Увидимся завтра"},{"id":"P5","left":"Good night","right":"Спокойной ночи"},{"id":"P6","left":"Have a nice day","right":"Хорошего дня"},{"id":"P7","left":"Thank you","right":"Спасибо"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a1a4073c-62c5-59f3-9477-7b4fb2eef189', '8b7fbec3-8352-5fdd-bbea-b7b8722ef92c', 'quiz', 'Проверьте себя', '{"explanation":"See you! — «до встречи», так прощаются.","instruction":"Выберите правильный ответ.","options":[{"id":"A","is_correct":true,"text":"See you!"},{"id":"B","is_correct":false,"text":"What is your name?"},{"id":"C","is_correct":false,"text":"Good morning?"}],"question":"Что можно сказать, когда прощаетесь с другом?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('49a02da2-f80f-599d-8965-6bb084eb4e36', '8b7fbec3-8352-5fdd-bbea-b7b8722ef92c', 'translate', 'Переведите', '{"correct_translation":"See you tomorrow!","instruction":"Соберите перевод.","source_language":"ru","source_text":"Увидимся завтра!","target_language":"en","word_bank":["tomorrow!","you","See","morning","Good"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8cc5af63-578d-5f7d-aa5f-0c05ba8baff1', '8b7fbec3-8352-5fdd-bbea-b7b8722ef92c', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"day","instruction":"Выберите подходящее слово.","options":["day","name","friend"],"sentence_template":"Have a nice ___.","translation_hint":"Хорошего дня!"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('288b6bb3-dc86-5db3-8da9-37702417513e', '8b7fbec3-8352-5fdd-bbea-b7b8722ef92c', 'tap_words', 'Соберите фразу', '{"correct_words":["See","you","tomorrow!"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["tomorrow!","See","you","night","morning"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('1503621e-13af-55c4-8782-2170b70aeba3', '8b7fbec3-8352-5fdd-bbea-b7b8722ef92c', 'listening', 'Послушайте', '{"audio_text":"Goodbye! Have a nice day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('fdbf431d-f9d1-5249-b385-f69434b460ba', '8b7fbec3-8352-5fdd-bbea-b7b8722ef92c', 'listening_shadowing', 'Повторите', '{"audio_text":"It was nice to meet you. See you tomorrow!","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Было приятно познакомиться. Увидимся завтра!"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b5dab1c3-fc68-536e-bf74-3f25a38add78', '8b7fbec3-8352-5fdd-bbea-b7b8722ef92c', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Nina","text":"It was nice to meet you, Sam.","translation":"Было приятно познакомиться, Сэм.","type":"dialogue"},{"character":"Sam","text":"Nice to meet you too, Nina.","translation":"Мне тоже было приятно познакомиться, Нина.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Goodbye! See you tomorrow."},{"is_correct":false,"text":"What is your name?"}],"text":"Что сказать Нине на прощание?","type":"choice"}],"title":"A Friendly Goodbye"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('745e2e44-ed2d-5fef-b046-5e1dc8ae34bf', '8b7fbec3-8352-5fdd-bbea-b7b8722ef92c', 'choose_definition', 'Определение', '{"explanation":"goodbye — «до свидания».","instruction":"Выберите значение.","language":"en","options":[{"id":"A","is_correct":true,"text":"слово, которое говорят при прощании"},{"id":"B","is_correct":false,"text":"слово для вопроса об имени"},{"id":"C","is_correct":false,"text":"утреннее приветствие"}],"word":"goodbye"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('62cec2af-0f8c-53cb-83c7-30fd0bb852de', '8b7fbec3-8352-5fdd-bbea-b7b8722ef92c', 'listen_choose_word', 'Слово', '{"audio_text":"See you tomorrow.","explanation":"tomorrow — «завтра»: See you tomorrow.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"tomorrow","id":"A","is_correct":true},{"audio_text":"morning","id":"B","is_correct":false},{"audio_text":"name","id":"C","is_correct":false}],"sentence_template":"See you ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4e561790-56cc-5766-a212-fd2c6a4d503f', '8b7fbec3-8352-5fdd-bbea-b7b8722ef92c', 'missing_word', 'Впишите', '{"correct_answer":"day","explanation":"day — «день»: Have a nice day.","hint_prefix":"da","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Have a nice ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5bb8fd65-0ab6-58c4-961e-ee413f42f8c1', '8b7fbec3-8352-5fdd-bbea-b7b8722ef92c', 'match_pairs_voice', 'Звук', '{"explanation":"Соедините звучание и написание слов прощания.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"Goodbye","id":"V1","text":"Goodbye"},{"audio_text":"See you tomorrow","id":"V2","text":"See you tomorrow"},{"audio_text":"Have a nice day","id":"V3","text":"Have a nice day"},{"audio_text":"Good night","id":"V4","text":"Good night"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3daca15c-ff25-5375-8f9e-6513391fdbb2', '8b7fbec3-8352-5fdd-bbea-b7b8722ef92c', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"Goodbye! Have a nice day."}],"explanation":"На «Have a nice day» отвечают: Thank you! You too.","instruction":"Ответьте.","options":[{"id":"A","is_correct":true,"text":"Thank you! You too. See you!"},{"id":"B","is_correct":false,"text":"My name is day."},{"id":"C","is_correct":false,"text":"Good morning, goodbye?"}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1ae56ae7-2b88-5500-882c-883cdf79ab40', '8b7fbec3-8352-5fdd-bbea-b7b8722ef92c', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c85dc617-d83f-51fe-b18c-82805ed9a67e', 'en', 'Hello', 'Здравствуйте', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9b446421-56f0-5b44-98f0-65e9c1c876df', 'en', 'Hi', 'Привет', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('777dc687-03b4-5f9c-8375-8f436101a373', 'en', 'Good morning', 'Доброе утро', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('96977c71-b65e-5d11-b9c5-ddfd2b4c492d', 'en', 'Good afternoon', 'Добрый день', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d91b232-361b-55b4-9ea4-913fc236e8df', 'en', 'Good evening', 'Добрый вечер', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('61154476-f1cb-5cd0-a624-108da1188823', 'en', 'How are you?', 'Как дела?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41c91633-f680-5b98-8a64-2981937e6aa6', 'en', 'I am fine', 'У меня всё хорошо', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('10535791-2ab9-5963-a77c-534729030e5e', 'en', 'My name is', 'Меня зовут', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6da48424-02f0-5c09-afab-17005f5ceb5f', 'en', 'What is your name?', 'Как вас зовут?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0a5c847a-0f0a-5d3b-9009-8d812e8d24d4', 'en', 'Nice to meet you', 'Приятно познакомиться', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0db32db-2231-584d-bb8b-d6d8258e975b', 'en', 'I am', 'Я', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f410eefb-d4b7-58e0-9323-1a7ace25d4d9', 'en', 'This is', 'Это', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cd75c44-4f87-5783-9614-619d962ba6c5', 'en', 'friend', 'друг', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('98b154c9-c979-5678-ac2d-c96223ab3718', 'en', 'too', 'тоже', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('efed2b1f-8bdc-5cfd-ba58-b27167f068ab', 'en', 'Goodbye', 'До свидания', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aa78a351-a56b-5b8b-beb4-156812191b79', 'en', 'Bye', 'Пока', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dbf75d5f-0ca7-5373-b5d0-9da6eb0c133d', 'en', 'See you', 'Увидимся', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c0b8498b-4ef5-5f2a-b302-3a21d9a85e7c', 'en', 'See you tomorrow', 'Увидимся завтра', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('42acd71d-0658-59ee-8da1-450ecfa34ba8', 'en', 'Good night', 'Спокойной ночи', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('56d2d779-9989-582f-926c-56d24985aa89', 'en', 'Have a nice day', 'Хорошего дня', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('54461f61-5c4d-585c-83fa-25ffcd20762a', 'en', 'Thank you', 'Спасибо', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1ae56ae7-2b88-5500-882c-883cdf79ab40', id, 'b2c0d667-203d-5aea-bfab-bb6f9e003eb2', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'Hello' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1ae56ae7-2b88-5500-882c-883cdf79ab40', id, 'b2c0d667-203d-5aea-bfab-bb6f9e003eb2', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'Hi' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1ae56ae7-2b88-5500-882c-883cdf79ab40', id, 'b2c0d667-203d-5aea-bfab-bb6f9e003eb2', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'Good morning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1ae56ae7-2b88-5500-882c-883cdf79ab40', id, 'b2c0d667-203d-5aea-bfab-bb6f9e003eb2', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'Good afternoon' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1ae56ae7-2b88-5500-882c-883cdf79ab40', id, 'b2c0d667-203d-5aea-bfab-bb6f9e003eb2', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'Good evening' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1ae56ae7-2b88-5500-882c-883cdf79ab40', id, 'b2c0d667-203d-5aea-bfab-bb6f9e003eb2', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'How are you?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1ae56ae7-2b88-5500-882c-883cdf79ab40', id, 'b2c0d667-203d-5aea-bfab-bb6f9e003eb2', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'I am fine' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1ae56ae7-2b88-5500-882c-883cdf79ab40', id, '6e271073-dbe7-51f1-9002-382d5017ecce', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'My name is' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1ae56ae7-2b88-5500-882c-883cdf79ab40', id, '6e271073-dbe7-51f1-9002-382d5017ecce', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'What is your name?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1ae56ae7-2b88-5500-882c-883cdf79ab40', id, '6e271073-dbe7-51f1-9002-382d5017ecce', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'Nice to meet you' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1ae56ae7-2b88-5500-882c-883cdf79ab40', id, '6e271073-dbe7-51f1-9002-382d5017ecce', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'I am' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1ae56ae7-2b88-5500-882c-883cdf79ab40', id, '6e271073-dbe7-51f1-9002-382d5017ecce', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'This is' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1ae56ae7-2b88-5500-882c-883cdf79ab40', id, '6e271073-dbe7-51f1-9002-382d5017ecce', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'friend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1ae56ae7-2b88-5500-882c-883cdf79ab40', id, '6e271073-dbe7-51f1-9002-382d5017ecce', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'too' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1ae56ae7-2b88-5500-882c-883cdf79ab40', id, '8b7fbec3-8352-5fdd-bbea-b7b8722ef92c', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'Goodbye' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1ae56ae7-2b88-5500-882c-883cdf79ab40', id, '8b7fbec3-8352-5fdd-bbea-b7b8722ef92c', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'Bye' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1ae56ae7-2b88-5500-882c-883cdf79ab40', id, '8b7fbec3-8352-5fdd-bbea-b7b8722ef92c', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'See you' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1ae56ae7-2b88-5500-882c-883cdf79ab40', id, '8b7fbec3-8352-5fdd-bbea-b7b8722ef92c', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'See you tomorrow' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1ae56ae7-2b88-5500-882c-883cdf79ab40', id, '8b7fbec3-8352-5fdd-bbea-b7b8722ef92c', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'Good night' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1ae56ae7-2b88-5500-882c-883cdf79ab40', id, '8b7fbec3-8352-5fdd-bbea-b7b8722ef92c', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'Have a nice day' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1ae56ae7-2b88-5500-882c-883cdf79ab40', id, '8b7fbec3-8352-5fdd-bbea-b7b8722ef92c', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'Thank you' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
