-- Track: A1_WORK_MY_WORKDAY. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('e472101c-5f77-5c2c-a5d4-97ac5a76cc8e', 'A1_WORK_MY_WORKDAY', 'Мой рабочий день', 'Научитесь говорить о времени работы, простых задачах, перерывах и расписании.', 'en', 'A1', '', ARRAY['work']::text[], true, 31, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('9f4ca750-ed2c-5127-a472-5d54ddee6d60', NULL, 'Начало и конец рабочего дня', 'Научиться говорить, когда начинается и заканчивается рабочий день.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('1ada5ba0-67bb-5ff2-a29b-02061a95fa7e', '9f4ca750-ed2c-5127-a472-5d54ddee6d60', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"WMW_L1_MP_P1","left":"start work","right":"начинать работу"},{"id":"WMW_L1_MP_P2","left":"finish work","right":"заканчивать работу"},{"id":"WMW_L1_MP_P3","left":"morning","right":"утро"},{"id":"WMW_L1_MP_P4","left":"afternoon","right":"день"},{"id":"WMW_L1_MP_P5","left":"evening","right":"вечер"},{"id":"WMW_L1_MP_P6","left":"at eight o’clock","right":"в восемь часов"},{"id":"WMW_L1_MP_P7","left":"go home","right":"идти домой"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('46824c07-936a-5fff-b2cc-2d339ceb1e09', '9f4ca750-ed2c-5127-a472-5d54ddee6d60', 'quiz', 'Проверьте себя', '{"explanation":"“Start work” means to begin the workday.","instruction":"Выберите правильный ответ.","options":[{"id":"WMW_L1_Q_A","is_correct":true,"text":"Start work"},{"id":"WMW_L1_Q_B","is_correct":false,"text":"Finish work"},{"id":"WMW_L1_Q_C","is_correct":false,"text":"Go home"}],"question":"Which phrase means the workday begins?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('be764af7-a834-59f4-88df-08574a18f33a', '9f4ca750-ed2c-5127-a472-5d54ddee6d60', 'translate', 'Переведите', '{"correct_translation":"I start work at eight o’clock.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я начинаю работу в восемь часов.","target_language":"en","word_bank":["o’clock.","eight","at","work","start","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0b91d226-fcd9-5f83-ba17-21d7cabe824e', '9f4ca750-ed2c-5127-a472-5d54ddee6d60', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"o’clock","instruction":"Выберите подходящее слово.","options":["o’clock","morning","home"],"sentence_template":"I finish work at five ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a82b99f2-a6c2-5257-87dd-f531458846e7', '9f4ca750-ed2c-5127-a472-5d54ddee6d60', 'tap_words', 'Соберите фразу', '{"correct_words":["I","go","home."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["home.","go","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0c7acfa3-0eaa-516f-a9ed-104ec74241f3', '9f4ca750-ed2c-5127-a472-5d54ddee6d60', 'listening', 'Послушайте', '{"audio_text":"I start work at eight o’clock.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('1857433b-7e94-5c9f-8128-e239e85bfd18', '9f4ca750-ed2c-5127-a472-5d54ddee6d60', 'listening_shadowing', 'Повторите', '{"audio_text":"I start work in the morning and finish at five.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я начинаю работу утром и заканчиваю в пять."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ce6c1f5f-1559-5cf1-b459-ed4e577faf5c', '9f4ca750-ed2c-5127-a472-5d54ddee6d60', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Anna","text":"Good morning. What time do you start work?","translation":"Доброе утро. Во сколько ты начинаешь работу?","type":"dialogue"},{"character":"Ben","text":"I start work at eight o’clock.","translation":"Я начинаю работу в восемь часов.","type":"dialogue"},{"options":[{"is_correct":true,"text":"What time do you start work?"},{"is_correct":false,"text":"Can the morning drive?"}],"text":"What should Ben ask Anna?","type":"choice"}],"title":"A New Workday"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f756f58e-9cb6-53ca-a2c2-8f5201a5ebcc', '9f4ca750-ed2c-5127-a472-5d54ddee6d60', 'choose_definition', 'Определение', '{"explanation":"“Finish” means to complete or end something.","instruction":"Выберите значение.","language":"en","options":[{"id":"WMW_L1_D_A","is_correct":true,"text":"To complete or end something"},{"id":"WMW_L1_D_B","is_correct":false,"text":"To begin something"},{"id":"WMW_L1_D_C","is_correct":false,"text":"To travel to work"}],"word":"finish"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('bd17d823-5d68-5be9-947e-90f13ab4f526', '9f4ca750-ed2c-5127-a472-5d54ddee6d60', 'listen_choose_word', 'Слово', '{"audio_text":"I start work at eight.","explanation":"The missing time is “eight.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"eight","id":"WMW_L1_LW_A","is_correct":true},{"audio_text":"office","id":"WMW_L1_LW_B","is_correct":false},{"audio_text":"cook","id":"WMW_L1_LW_C","is_correct":false}],"sentence_template":"I start work at ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ac6a5c13-0653-5809-a55b-b501469f854d', '9f4ca750-ed2c-5127-a472-5d54ddee6d60', 'missing_word', 'Впишите', '{"correct_answer":"home","explanation":"The complete sentence is “I go home.”","hint_prefix":"ho","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I go ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('2194f450-0249-5a21-8cf1-0cd2bf12daee', '9f4ca750-ed2c-5127-a472-5d54ddee6d60', 'match_pairs_voice', 'Звук', '{"explanation":"Match each workday phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"start work","id":"WMW_L1_VM_P1","text":"start work"},{"audio_text":"finish work","id":"WMW_L1_VM_P2","text":"finish work"},{"audio_text":"go home","id":"WMW_L1_VM_P3","text":"go home"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('44dc8d32-6b87-56f5-8c94-275c6fb848db', '9f4ca750-ed2c-5127-a472-5d54ddee6d60', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Leo","text":"What time do you finish work?"}],"explanation":"“I finish work at five” answers the question naturally.","instruction":"Ответьте.","options":[{"id":"WMW_L1_C_A","is_correct":true,"text":"I finish work at five."},{"id":"WMW_L1_C_B","is_correct":false,"text":"I am five jobs old."},{"id":"WMW_L1_C_C","is_correct":false,"text":"My work is a chair."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e472101c-5f77-5c2c-a5d4-97ac5a76cc8e', '9f4ca750-ed2c-5127-a472-5d54ddee6d60', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('15bbed34-4b14-59f1-a324-5313403530c3', NULL, 'Мои рабочие задачи', 'Научиться называть простые повседневные рабочие задачи.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3eb8c564-c9da-51c9-8af0-b5720ecdb481', '15bbed34-4b14-59f1-a324-5313403530c3', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"WMW_L2_MP_P1","left":"read emails","right":"читать письма"},{"id":"WMW_L2_MP_P2","left":"write a message","right":"писать сообщение"},{"id":"WMW_L2_MP_P3","left":"make a call","right":"звонить"},{"id":"WMW_L2_MP_P4","left":"help a customer","right":"помогать клиенту"},{"id":"WMW_L2_MP_P5","left":"use a computer","right":"пользоваться компьютером"},{"id":"WMW_L2_MP_P6","left":"talk to colleagues","right":"разговаривать с коллегами"},{"id":"WMW_L2_MP_P7","left":"do a task","right":"выполнять задачу"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3e5faaa5-d247-5b57-b4e3-050a35eeeb7b', '15bbed34-4b14-59f1-a324-5313403530c3', 'quiz', 'Проверьте себя', '{"explanation":"You use a telephone to make a call.","instruction":"Выберите правильный ответ.","options":[{"id":"WMW_L2_Q_A","is_correct":true,"text":"Make a call"},{"id":"WMW_L2_Q_B","is_correct":false,"text":"Read emails"},{"id":"WMW_L2_Q_C","is_correct":false,"text":"Use a computer"}],"question":"Which task uses a telephone?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('031fee1d-d138-5cd7-9a42-efbddff3bd8c', '15bbed34-4b14-59f1-a324-5313403530c3', 'translate', 'Переведите', '{"correct_translation":"I read work emails.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я читаю рабочие письма.","target_language":"en","word_bank":["emails.","work","read","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('17ebd5fe-f229-50c0-9ab6-7f7ffb2993c1', '15bbed34-4b14-59f1-a324-5313403530c3', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"help","instruction":"Выберите подходящее слово.","options":["help","finish","morning"],"sentence_template":"I ___ a customer."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7c58d9c1-a537-57bc-81b2-87c4ab94025e', '15bbed34-4b14-59f1-a324-5313403530c3', 'tap_words', 'Соберите фразу', '{"correct_words":["I","write","a","message."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["a","write","I","message."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8dcba793-91fd-5a47-9cbf-814dfce25383', '15bbed34-4b14-59f1-a324-5313403530c3', 'listening', 'Послушайте', '{"audio_text":"I read emails and make calls.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9abc0535-5a91-5f88-948a-5e1b4474ac46', '15bbed34-4b14-59f1-a324-5313403530c3', 'listening_shadowing', 'Повторите', '{"audio_text":"I use a computer and talk to my colleagues.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я пользуюсь компьютером и разговариваю с коллегами."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4c034847-05d9-5afb-aa0c-9d5ca5524f5d', '15bbed34-4b14-59f1-a324-5313403530c3', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please write a message to the customer.","translation":"Пожалуйста, напиши сообщение клиенту.","type":"dialogue"},{"character":"Eva","text":"Okay. I can do that.","translation":"Хорошо. Я могу это сделать.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Write the message."},{"is_correct":false,"text":"Go home in the message."}],"text":"What should Eva do?","type":"choice"}],"title":"A Morning Task"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('698d6562-d0e7-59f9-9a7d-0455fb14a73b', '15bbed34-4b14-59f1-a324-5313403530c3', 'choose_definition', 'Определение', '{"explanation":"A customer is a person who buys or uses a service.","instruction":"Выберите значение.","language":"en","options":[{"id":"WMW_L2_D_A","is_correct":true,"text":"A person who buys or uses a service"},{"id":"WMW_L2_D_B","is_correct":false,"text":"A person who works with you"},{"id":"WMW_L2_D_C","is_correct":false,"text":"A place where people work"}],"word":"customer"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5bd2c004-4b3a-5c3d-b45b-0f97b83959ea', '15bbed34-4b14-59f1-a324-5313403530c3', 'listen_choose_word', 'Слово', '{"audio_text":"I make a call.","explanation":"The missing word is “call.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"call","id":"WMW_L2_LW_A","is_correct":true},{"audio_text":"school","id":"WMW_L2_LW_B","is_correct":false},{"audio_text":"evening","id":"WMW_L2_LW_C","is_correct":false}],"sentence_template":"I make a ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('46d72a63-13e9-591c-a6ef-bd08bc632e28', '15bbed34-4b14-59f1-a324-5313403530c3', 'missing_word', 'Впишите', '{"correct_answer":"emails","explanation":"The complete sentence is “I read emails.”","hint_prefix":"em","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I read ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('87606fd0-ecf4-590e-b183-a8023ac87671', '15bbed34-4b14-59f1-a324-5313403530c3', 'match_pairs_voice', 'Звук', '{"explanation":"Match each workday phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"read emails","id":"WMW_L2_VM_P1","text":"read emails"},{"audio_text":"make a call","id":"WMW_L2_VM_P2","text":"make a call"},{"audio_text":"help a customer","id":"WMW_L2_VM_P3","text":"help a customer"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('cb7f6eab-cb6e-5e72-923b-db2f8c5162b6', '15bbed34-4b14-59f1-a324-5313403530c3', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Manager","text":"What are you doing now?"}],"explanation":"“I am writing a message” describes the current work task.","instruction":"Ответьте.","options":[{"id":"WMW_L2_C_A","is_correct":true,"text":"I am writing a message."},{"id":"WMW_L2_C_B","is_correct":false,"text":"I am from a message."},{"id":"WMW_L2_C_C","is_correct":false,"text":"My task is eight years old."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e472101c-5f77-5c2c-a5d4-97ac5a76cc8e', '15bbed34-4b14-59f1-a324-5313403530c3', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('630ec8c5-30ab-5332-8579-92465054f07d', NULL, 'Перерывы и рабочее расписание', 'Научиться говорить о перерывах, обеде и простом рабочем расписании.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f8e7fe70-cac0-5567-aa89-4626bf131614', '630ec8c5-30ab-5332-8579-92465054f07d', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"WMW_L3_MP_P1","left":"break","right":"перерыв"},{"id":"WMW_L3_MP_P2","left":"lunch","right":"обед"},{"id":"WMW_L3_MP_P3","left":"schedule","right":"расписание"},{"id":"WMW_L3_MP_P4","left":"busy","right":"занят"},{"id":"WMW_L3_MP_P5","left":"free","right":"свободен"},{"id":"WMW_L3_MP_P6","left":"at noon","right":"в полдень"},{"id":"WMW_L3_MP_P7","left":"after lunch","right":"после обеда"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3ed78e01-d603-5ec2-8d40-ae9e7872bf95', '630ec8c5-30ab-5332-8579-92465054f07d', 'quiz', 'Проверьте себя', '{"explanation":"Lunch is the meal people usually eat around the middle of the day.","instruction":"Выберите правильный ответ.","options":[{"id":"WMW_L3_Q_A","is_correct":true,"text":"At lunch"},{"id":"WMW_L3_Q_B","is_correct":false,"text":"At the start of work"},{"id":"WMW_L3_Q_C","is_correct":false,"text":"In an email"}],"question":"When do people usually eat their midday meal?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('2fe79c0e-735d-588f-876a-a9be9b7d95db', '630ec8c5-30ab-5332-8579-92465054f07d', 'translate', 'Переведите', '{"correct_translation":"I have lunch at noon.","instruction":"Соберите перевод.","source_language":"ru","source_text":"У меня обед в полдень.","target_language":"en","word_bank":["noon.","at","lunch","have","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('720fd068-87d8-5184-a256-292d349b950a', '630ec8c5-30ab-5332-8579-92465054f07d', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"break","instruction":"Выберите подходящее слово.","options":["break","customer","email"],"sentence_template":"I take a ___ at ten."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('53a12966-cba0-5967-8055-bdb3d30c6b6a', '630ec8c5-30ab-5332-8579-92465054f07d', 'tap_words', 'Соберите фразу', '{"correct_words":["I","am","busy","after","lunch."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["lunch.","after","busy","am","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5220f601-fe3b-5583-8b99-bc7bf7460bfe', '630ec8c5-30ab-5332-8579-92465054f07d', 'listening', 'Послушайте', '{"audio_text":"I have a break at ten o’clock.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('90bbbf6f-ecc9-581a-9030-d2bd2b537db0', '630ec8c5-30ab-5332-8579-92465054f07d', 'listening_shadowing', 'Повторите', '{"audio_text":"I have lunch at noon, and I am free after five.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я обедаю в полдень и свободен после пяти."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0339700a-26cd-526d-972f-b25d752b148e', '630ec8c5-30ab-5332-8579-92465054f07d', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tom","text":"Are you free for lunch?","translation":"Ты свободен для обеда?","type":"dialogue"},{"character":"Mia","text":"Yes. My lunch break is at noon.","translation":"Да. Мой обеденный перерыв в полдень.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Great. See you at noon."},{"is_correct":false,"text":"My schedule can swim."}],"text":"What should Tom say?","type":"choice"}],"title":"Lunch Break"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b8feb561-58b3-59a5-958e-2f94c6db39ab', '630ec8c5-30ab-5332-8579-92465054f07d', 'choose_definition', 'Определение', '{"explanation":"A schedule is a plan of work times and activities.","instruction":"Выберите значение.","language":"en","options":[{"id":"WMW_L3_D_A","is_correct":true,"text":"A plan of work times and activities"},{"id":"WMW_L3_D_B","is_correct":false,"text":"A short message to a customer"},{"id":"WMW_L3_D_C","is_correct":false,"text":"A place where people eat"}],"word":"schedule"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0fb5f2fb-4df4-53fc-81e2-034fb11a8241', '630ec8c5-30ab-5332-8579-92465054f07d', 'listen_choose_word', 'Слово', '{"audio_text":"I have lunch at noon.","explanation":"The missing word is “noon.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"noon","id":"WMW_L3_LW_A","is_correct":true},{"audio_text":"busy","id":"WMW_L3_LW_B","is_correct":false},{"audio_text":"email","id":"WMW_L3_LW_C","is_correct":false}],"sentence_template":"I have lunch at ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('37140945-5360-5359-877f-899f4c7388c4', '630ec8c5-30ab-5332-8579-92465054f07d', 'missing_word', 'Впишите', '{"correct_answer":"break","explanation":"The complete sentence is “I take a break.”","hint_prefix":"br","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I take a ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('74da740d-2b1f-519b-8f38-ea1b19a34970', '630ec8c5-30ab-5332-8579-92465054f07d', 'match_pairs_voice', 'Звук', '{"explanation":"Match each workday phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"break","id":"WMW_L3_VM_P1","text":"break"},{"audio_text":"lunch","id":"WMW_L3_VM_P2","text":"lunch"},{"audio_text":"schedule","id":"WMW_L3_VM_P3","text":"schedule"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('472da212-2fb5-54f7-a3be-3015e958dfee', '630ec8c5-30ab-5332-8579-92465054f07d', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"Are you free after lunch?"}],"explanation":"This response clearly says you are not available after lunch.","instruction":"Ответьте.","options":[{"id":"WMW_L3_C_A","is_correct":true,"text":"No, I am busy after lunch."},{"id":"WMW_L3_C_B","is_correct":false,"text":"I am lunch years old."},{"id":"WMW_L3_C_C","is_correct":false,"text":"My email is free."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e472101c-5f77-5c2c-a5d4-97ac5a76cc8e', '630ec8c5-30ab-5332-8579-92465054f07d', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1299dfa8-353b-5ea1-98ca-1957792d8a0f', 'en', 'start work', 'начинать работу', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b1867be7-0b91-5e8f-b4d1-6821542dbca3', 'en', 'finish work', 'заканчивать работу', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c6677565-4fe9-533d-a9e4-5aae2162b24e', 'en', 'morning', 'утро', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1cd3f771-4f41-56c9-972b-8e849cb916b4', 'en', 'afternoon', 'день', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cd9c830-3d2c-5669-939d-1b534d06e12f', 'en', 'evening', 'вечер', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f6fd6bab-0faa-5b2b-beef-e330e804c3a9', 'en', 'at eight o’clock', 'в восемь часов', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ec062dd0-5cc5-5b58-a74d-bdd555247ab6', 'en', 'go home', 'идти домой', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('10ef9840-89b0-5b6c-989b-d986e4c961e2', 'en', 'read emails', 'читать письма', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7fe1e492-212a-59ab-83df-ac267f7f14b8', 'en', 'write a message', 'писать сообщение', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d918c15f-d979-5ce8-a88b-683445a8e50c', 'en', 'make a call', 'звонить', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('877ae0d6-8c2b-5de9-97b0-0a5f79764bbd', 'en', 'help a customer', 'помогать клиенту', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('16b4bd97-adc9-55c2-adce-19ea6a285419', 'en', 'use a computer', 'пользоваться компьютером', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5532282f-32c5-5aa3-8d2b-2e36fa6b8231', 'en', 'talk to colleagues', 'разговаривать с коллегами', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8837c171-8c3b-5646-bb55-f039e4ced858', 'en', 'do a task', 'выполнять задачу', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('adc96f02-9d93-5d99-95c8-01f56d515942', 'en', 'break', 'перерыв', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0b569cb3-9410-5ed6-8a43-0c325bcf0232', 'en', 'lunch', 'обед', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d002d42c-cc36-5eb2-992f-c808826121c6', 'en', 'schedule', 'расписание', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f343c5ee-04c6-5e9d-811d-b6d8069022fd', 'en', 'busy', 'занят', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('61c8cb9e-e425-5e2f-8fd9-c24872fac39d', 'en', 'free', 'свободен', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aab761b1-9617-55ac-b322-89e365bf0bf7', 'en', 'at noon', 'в полдень', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1f5c17e7-cba3-534c-b1eb-282c6d0cd95a', 'en', 'after lunch', 'после обеда', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e472101c-5f77-5c2c-a5d4-97ac5a76cc8e', id, '9f4ca750-ed2c-5127-a472-5d54ddee6d60', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'start work' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e472101c-5f77-5c2c-a5d4-97ac5a76cc8e', id, '9f4ca750-ed2c-5127-a472-5d54ddee6d60', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'finish work' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e472101c-5f77-5c2c-a5d4-97ac5a76cc8e', id, '9f4ca750-ed2c-5127-a472-5d54ddee6d60', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'morning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e472101c-5f77-5c2c-a5d4-97ac5a76cc8e', id, '9f4ca750-ed2c-5127-a472-5d54ddee6d60', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'afternoon' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e472101c-5f77-5c2c-a5d4-97ac5a76cc8e', id, '9f4ca750-ed2c-5127-a472-5d54ddee6d60', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'evening' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e472101c-5f77-5c2c-a5d4-97ac5a76cc8e', id, '9f4ca750-ed2c-5127-a472-5d54ddee6d60', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'at eight o’clock' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e472101c-5f77-5c2c-a5d4-97ac5a76cc8e', id, '9f4ca750-ed2c-5127-a472-5d54ddee6d60', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'go home' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e472101c-5f77-5c2c-a5d4-97ac5a76cc8e', id, '15bbed34-4b14-59f1-a324-5313403530c3', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'read emails' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e472101c-5f77-5c2c-a5d4-97ac5a76cc8e', id, '15bbed34-4b14-59f1-a324-5313403530c3', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'write a message' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e472101c-5f77-5c2c-a5d4-97ac5a76cc8e', id, '15bbed34-4b14-59f1-a324-5313403530c3', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'make a call' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e472101c-5f77-5c2c-a5d4-97ac5a76cc8e', id, '15bbed34-4b14-59f1-a324-5313403530c3', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'help a customer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e472101c-5f77-5c2c-a5d4-97ac5a76cc8e', id, '15bbed34-4b14-59f1-a324-5313403530c3', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'use a computer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e472101c-5f77-5c2c-a5d4-97ac5a76cc8e', id, '15bbed34-4b14-59f1-a324-5313403530c3', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'talk to colleagues' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e472101c-5f77-5c2c-a5d4-97ac5a76cc8e', id, '15bbed34-4b14-59f1-a324-5313403530c3', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'do a task' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e472101c-5f77-5c2c-a5d4-97ac5a76cc8e', id, '630ec8c5-30ab-5332-8579-92465054f07d', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'break' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e472101c-5f77-5c2c-a5d4-97ac5a76cc8e', id, '630ec8c5-30ab-5332-8579-92465054f07d', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'lunch' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e472101c-5f77-5c2c-a5d4-97ac5a76cc8e', id, '630ec8c5-30ab-5332-8579-92465054f07d', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'schedule' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e472101c-5f77-5c2c-a5d4-97ac5a76cc8e', id, '630ec8c5-30ab-5332-8579-92465054f07d', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'busy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e472101c-5f77-5c2c-a5d4-97ac5a76cc8e', id, '630ec8c5-30ab-5332-8579-92465054f07d', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'free' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e472101c-5f77-5c2c-a5d4-97ac5a76cc8e', id, '630ec8c5-30ab-5332-8579-92465054f07d', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'at noon' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e472101c-5f77-5c2c-a5d4-97ac5a76cc8e', id, '630ec8c5-30ab-5332-8579-92465054f07d', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'after lunch' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
