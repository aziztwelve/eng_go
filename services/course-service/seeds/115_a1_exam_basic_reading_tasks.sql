-- Track: A1_EXAM_BASIC_READING_TASKS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('df25ac43-b342-51e4-9947-a3e5a926ca5b', 'A1_EXAM_BASIC_READING_TASKS', 'Основные задания по чтению', 'Практикуйте понимание коротких предложений, описаний и простых текстов.', '{"en":"Basic Reading Tasks","ru":"Основные задания по чтению"}'::jsonb, '{"en":"Practise understanding short sentences, descriptions, and simple texts.","ru":"Практикуйте понимание коротких предложений, описаний и простых текстов."}'::jsonb, 'en', 'A1', '', ARRAY['exam']::text[], true, 115, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('6f34c93f-f787-5223-ac54-edf4aac3c966', NULL, 'Читаем короткие предложения', 'Научиться понимать основную информацию в очень коротких предложениях.', '{"en":"Reading Short Sentences","ru":"Читаем короткие предложения"}'::jsonb, '{"en":"Learn to understand key information in very short sentences.","ru":"Научиться понимать основную информацию в очень коротких предложениях."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('61288c5a-696d-57f3-9928-2633a8c10b63', '6f34c93f-f787-5223-ac54-edf4aac3c966', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"EBRT_L1_MP_P1","left":"name","right":"имя"},{"id":"EBRT_L1_MP_P2","left":"age","right":"возраст"},{"id":"EBRT_L1_MP_P3","left":"city","right":"город"},{"id":"EBRT_L1_MP_P4","left":"live","right":"жить"},{"id":"EBRT_L1_MP_P5","left":"like","right":"нравиться"},{"id":"EBRT_L1_MP_P6","left":"student","right":"ученик"},{"id":"EBRT_L1_MP_P7","left":"teacher","right":"учитель"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('efa29721-9481-5665-add1-cecdf8e88b07', '6f34c93f-f787-5223-ac54-edf4aac3c966', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The sentence says Mia is ten.","instruction":"Выберите правильный ответ.","options":[{"id":"EBRT_L1_Q_A","is_correct":true,"text":"Ten"},{"id":"EBRT_L1_Q_B","is_correct":false,"text":"Nine"},{"id":"EBRT_L1_Q_C","is_correct":false,"text":"Twelve"}],"question":"Read: “Mia is ten.” How old is Mia?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fad7e350-177c-5dc4-a4ae-e0c9f5a627c3', '6f34c93f-f787-5223-ac54-edf4aac3c966', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Tom lives in London.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Том живёт в Лондоне.","target_language":"en","word_bank":["London.","in","lives","Tom"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('203aabc2-0184-59b1-bfae-bf07b7a69065', '6f34c93f-f787-5223-ac54-edf4aac3c966', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"teacher","instruction":"Выберите подходящее слово.","options":["teacher","city","age"],"sentence_template":"Anna is a ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0bc04171-90f6-51c0-8279-6d718a700f7f', '6f34c93f-f787-5223-ac54-edf4aac3c966', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Ben","likes","music."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["music.","likes","Ben"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('153a0385-2646-5685-aad9-6047363cf0eb', '6f34c93f-f787-5223-ac54-edf4aac3c966', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Eva is a student.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('efe2461e-7368-5999-9cd2-4c0d90a1fc36', '6f34c93f-f787-5223-ac54-edf4aac3c966', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"My name is Leo. I live in Rome.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Меня зовут Лео. Я живу в Риме."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('70055eb9-989f-51c4-842c-6c2bf8f55b6b', '6f34c93f-f787-5223-ac54-edf4aac3c966', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Text","text":"Sam is eleven. He lives in Paris.","translation":"Сэму одиннадцать лет. Он живёт в Париже.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Paris."},{"is_correct":false,"text":"London."}],"text":"Where does Sam live?","type":"choice"}],"title":"Read and Answer"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f67567f4-ac6b-51d3-9596-e12958a6269f', '6f34c93f-f787-5223-ac54-edf4aac3c966', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“Live” means to have your home in a place.","instruction":"Выберите значение.","language":"en","options":[{"id":"EBRT_L1_D_A","is_correct":true,"text":"To have your home in a place"},{"id":"EBRT_L1_D_B","is_correct":false,"text":"To read a school book"},{"id":"EBRT_L1_D_C","is_correct":false,"text":"To ask a question"}],"word":"live"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b74f4e41-9d68-57c8-bd7c-fbad39082a7e', '6f34c93f-f787-5223-ac54-edf4aac3c966', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Mia lives in Rome.","explanation":"The sentence names Rome.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"Rome","id":"EBRT_L1_LW_A","is_correct":true},{"audio_text":"eleven","id":"EBRT_L1_LW_B","is_correct":false},{"audio_text":"teacher","id":"EBRT_L1_LW_C","is_correct":false}],"sentence_template":"Mia lives in ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e0d0c70-9dde-511c-ba98-f1cd73e7f75a', '6f34c93f-f787-5223-ac54-edf4aac3c966', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"music","explanation":"The complete sentence is “Ben likes music.”","hint_prefix":"mu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Ben likes ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b12808e-1ac1-5fae-81e8-1ae8dfc467fa', '6f34c93f-f787-5223-ac54-edf4aac3c966', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each item you hear with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"name","id":"EBRT_L1_VM_P1","text":"name"},{"audio_text":"city","id":"EBRT_L1_VM_P2","text":"city"},{"audio_text":"student","id":"EBRT_L1_VM_P3","text":"student"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('382a99c1-e18e-5b2d-8fe1-9cae2d6d99bc', '6f34c93f-f787-5223-ac54-edf4aac3c966', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Read: “Nina is a doctor.” What is Nina’s job?"}],"explanation":"The sentence says Nina is a doctor.","instruction":"Ответьте.","options":[{"id":"EBRT_L1_C_A","is_correct":true,"text":"She is a doctor."},{"id":"EBRT_L1_C_B","is_correct":false,"text":"She is ten."},{"id":"EBRT_L1_C_C","is_correct":false,"text":"She lives in Rome."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('df25ac43-b342-51e4-9947-a3e5a926ca5b', '6f34c93f-f787-5223-ac54-edf4aac3c966', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('d87b200e-f39b-5388-972e-74b4fd473ba3', NULL, 'Читаем короткие описания', 'Научиться находить имя, место и предпочтение в коротком описании.', '{"en":"Reading Short Descriptions","ru":"Читаем короткие описания"}'::jsonb, '{"en":"Learn to find a name, place, and preference in a short description.","ru":"Научиться находить имя, место и предпочтение в коротком описании."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0126a5e0-11ba-54c6-9fee-f9d6d7317216', 'd87b200e-f39b-5388-972e-74b4fd473ba3', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"EBRT_L2_MP_P1","left":"from","right":"из"},{"id":"EBRT_L2_MP_P2","left":"favorite","right":"любимый"},{"id":"EBRT_L2_MP_P3","left":"family","right":"семья"},{"id":"EBRT_L2_MP_P4","left":"brother","right":"брат"},{"id":"EBRT_L2_MP_P5","left":"sister","right":"сестра"},{"id":"EBRT_L2_MP_P6","left":"friend","right":"друг"},{"id":"EBRT_L2_MP_P7","left":"home","right":"дом"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e599ab3b-87b2-5a40-8ca1-60e2c781de0f', 'd87b200e-f39b-5388-972e-74b4fd473ba3', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The description says Leo is from Spain.","instruction":"Выберите правильный ответ.","options":[{"id":"EBRT_L2_Q_A","is_correct":true,"text":"Spain"},{"id":"EBRT_L2_Q_B","is_correct":false,"text":"Italy"},{"id":"EBRT_L2_Q_C","is_correct":false,"text":"France"}],"question":"Read: “Leo is from Spain.” Where is Leo from?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('adbfd059-0534-55c4-8100-e82c118ebf39', 'd87b200e-f39b-5388-972e-74b4fd473ba3', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"My favorite color is blue.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мой любимый цвет — синий.","target_language":"en","word_bank":["blue.","is","color","favorite","My"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('129f249a-7fb2-5456-ab2a-c72714fb0773', 'd87b200e-f39b-5388-972e-74b4fd473ba3', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"brother","instruction":"Выберите подходящее слово.","options":["brother","Spain","blue"],"sentence_template":"This is my ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a583072-7a8e-5d49-a894-b4b65b7a8d1b', 'd87b200e-f39b-5388-972e-74b4fd473ba3', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Sara","is","from","Italy."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["from","is","Sara","Italy."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1c3d11c-060a-5fdb-88cd-46c40d720420', 'd87b200e-f39b-5388-972e-74b4fd473ba3', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"My sister likes books.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a3af55d-3743-5c83-a1f7-c41766dd7b52', 'd87b200e-f39b-5388-972e-74b4fd473ba3', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"This is my friend Ana. She is from Spain.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Это моя подруга Ана. Она из Испании."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('07d9422d-6139-5c7f-a71c-2a6984c2d542', 'd87b200e-f39b-5388-972e-74b4fd473ba3', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Text","text":"My name is Eva. I am from Poland. My favorite color is green.","translation":"Меня зовут Ева. Я из Польши. Мой любимый цвет — зелёный.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Green."},{"is_correct":false,"text":"Blue."}],"text":"What is Eva’s favorite color?","type":"choice"}],"title":"A Short Profile"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e3682494-a93b-5a2d-be15-c12a71362c55', 'd87b200e-f39b-5388-972e-74b4fd473ba3', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“Favorite” means liked more than all others.","instruction":"Выберите значение.","language":"en","options":[{"id":"EBRT_L2_D_A","is_correct":true,"text":"Liked more than all others"},{"id":"EBRT_L2_D_B","is_correct":false,"text":"A person in your family"},{"id":"EBRT_L2_D_C","is_correct":false,"text":"The place where you live"}],"word":"favorite"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7b5ad97c-510b-5b82-9fdd-34a718e239e3', 'd87b200e-f39b-5388-972e-74b4fd473ba3', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Tom is from Canada.","explanation":"The description names Canada.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"Canada","id":"EBRT_L2_LW_A","is_correct":true},{"audio_text":"brother","id":"EBRT_L2_LW_B","is_correct":false},{"audio_text":"green","id":"EBRT_L2_LW_C","is_correct":false}],"sentence_template":"Tom is from ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('09828d68-c841-5451-8e66-31702f7af697', 'd87b200e-f39b-5388-972e-74b4fd473ba3', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"friend","explanation":"The complete sentence is “This is my friend.”","hint_prefix":"fr","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"This is my ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e19d94ab-da30-57fe-b714-4f22523084b0', 'd87b200e-f39b-5388-972e-74b4fd473ba3', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each item you hear with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"family","id":"EBRT_L2_VM_P1","text":"family"},{"audio_text":"brother","id":"EBRT_L2_VM_P2","text":"brother"},{"audio_text":"friend","id":"EBRT_L2_VM_P3","text":"friend"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e573e55b-0308-5b4f-8dc4-78fb15b521cd', 'd87b200e-f39b-5388-972e-74b4fd473ba3', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Read: “Anna’s favorite food is pizza.” What food does Anna like best?"}],"explanation":"The sentence names pizza as Anna’s favorite food.","instruction":"Ответьте.","options":[{"id":"EBRT_L2_C_A","is_correct":true,"text":"Pizza."},{"id":"EBRT_L2_C_B","is_correct":false,"text":"Pasta."},{"id":"EBRT_L2_C_C","is_correct":false,"text":"Rice."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('df25ac43-b342-51e4-9947-a3e5a926ca5b', 'd87b200e-f39b-5388-972e-74b4fd473ba3', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('10205e42-b0a1-5b12-88fa-f944125dab1c', NULL, 'Читаем простой текст', 'Научиться отвечать на простые вопросы по короткому тексту.', '{"en":"Reading a Simple Text","ru":"Читаем простой текст"}'::jsonb, '{"en":"Learn to answer simple questions about a short text.","ru":"Научиться отвечать на простые вопросы по короткому тексту."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('de292c63-6f73-5151-9d24-c58467d8fe2e', '10205e42-b0a1-5b12-88fa-f944125dab1c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"EBRT_L3_MP_P1","left":"morning","right":"утро"},{"id":"EBRT_L3_MP_P2","left":"breakfast","right":"завтрак"},{"id":"EBRT_L3_MP_P3","left":"school","right":"школа"},{"id":"EBRT_L3_MP_P4","left":"lesson","right":"урок"},{"id":"EBRT_L3_MP_P5","left":"lunch","right":"обед"},{"id":"EBRT_L3_MP_P6","left":"afternoon","right":"день"},{"id":"EBRT_L3_MP_P7","left":"evening","right":"вечер"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c48b703b-2e4d-5951-ab4f-65071d621ece', '10205e42-b0a1-5b12-88fa-f944125dab1c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The text says Max goes in the morning.","instruction":"Выберите правильный ответ.","options":[{"id":"EBRT_L3_Q_A","is_correct":true,"text":"In the morning"},{"id":"EBRT_L3_Q_B","is_correct":false,"text":"In the evening"},{"id":"EBRT_L3_Q_C","is_correct":false,"text":"At night"}],"question":"Read: “Max goes to school in the morning.” When does Max go to school?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('24dd3858-0413-5cb4-9a53-8f31a2835ca6', '10205e42-b0a1-5b12-88fa-f944125dab1c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"She has lunch at school.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Она обедает в школе.","target_language":"en","word_bank":["school.","at","lunch","has","She"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('614ef311-eca7-526e-abfc-b6ea68605bc4', '10205e42-b0a1-5b12-88fa-f944125dab1c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"breakfast","instruction":"Выберите подходящее слово.","options":["breakfast","lesson","evening"],"sentence_template":"Tom eats ___ in the morning."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('df761686-b7cb-5c6d-a9a1-f2efed3bca84', '10205e42-b0a1-5b12-88fa-f944125dab1c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["He","studies","in","the","afternoon."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["afternoon.","the","in","studies","He"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('46c646dd-4ab2-5d3f-8a0b-6026017340ac', '10205e42-b0a1-5b12-88fa-f944125dab1c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Anna has two lessons today.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c218246d-fc47-5e57-a712-4acacc5c4d49', '10205e42-b0a1-5b12-88fa-f944125dab1c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I go to school in the morning and come home in the afternoon.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я иду в школу утром и прихожу домой днём."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('56076a61-98cc-557b-bb61-3d9c8c0e677a', '10205e42-b0a1-5b12-88fa-f944125dab1c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Text","text":"Ben gets up at seven. He has breakfast and goes to school. He has lunch at school.","translation":"Бен встаёт в семь. Он завтракает и идёт в школу. Он обедает в школе.","type":"dialogue"},{"options":[{"is_correct":true,"text":"At school."},{"is_correct":false,"text":"At home."}],"text":"Where does Ben have lunch?","type":"choice"}],"title":"A School Day"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a353fa2-ef39-5975-9b50-41af9f4db3ad', '10205e42-b0a1-5b12-88fa-f944125dab1c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"Breakfast is the first meal of the day.","instruction":"Выберите значение.","language":"en","options":[{"id":"EBRT_L3_D_A","is_correct":true,"text":"The first meal of the day"},{"id":"EBRT_L3_D_B","is_correct":false,"text":"A class at school"},{"id":"EBRT_L3_D_C","is_correct":false,"text":"The later part of the day"}],"word":"breakfast"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5ec4874a-3a01-54ec-b00d-38dd51cd2040', '10205e42-b0a1-5b12-88fa-f944125dab1c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"He goes to school in the morning.","explanation":"The sentence names school.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"school","id":"EBRT_L3_LW_A","is_correct":true},{"audio_text":"lunch","id":"EBRT_L3_LW_B","is_correct":false},{"audio_text":"evening","id":"EBRT_L3_LW_C","is_correct":false}],"sentence_template":"He goes to ___ in the morning."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('61e7269e-aacb-5a12-9303-45b5f1ca7a1e', '10205e42-b0a1-5b12-88fa-f944125dab1c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"lunch","explanation":"The complete sentence is “She has lunch at school.”","hint_prefix":"lu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"She has ___ at school."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ba6c74ad-dadc-5e50-bf0f-5ab729aac84c', '10205e42-b0a1-5b12-88fa-f944125dab1c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each item you hear with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"breakfast","id":"EBRT_L3_VM_P1","text":"breakfast"},{"audio_text":"lesson","id":"EBRT_L3_VM_P2","text":"lesson"},{"audio_text":"afternoon","id":"EBRT_L3_VM_P3","text":"afternoon"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('68a5c0b5-4d12-52ca-a671-062677437303', '10205e42-b0a1-5b12-88fa-f944125dab1c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Read: “Mia studies in the evening.” When does Mia study?"}],"explanation":"The text says Mia studies in the evening.","instruction":"Ответьте.","options":[{"id":"EBRT_L3_C_A","is_correct":true,"text":"In the evening."},{"id":"EBRT_L3_C_B","is_correct":false,"text":"In the morning."},{"id":"EBRT_L3_C_C","is_correct":false,"text":"At lunch."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('df25ac43-b342-51e4-9947-a3e5a926ca5b', '10205e42-b0a1-5b12-88fa-f944125dab1c', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4060b2dd-4a78-5bae-b4fb-33a4613c94aa', 'en', 'name', 'имя', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('880aad55-bae4-5925-ac19-ba3fbbedaba4', 'en', 'age', 'возраст', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1008785a-c291-5dc4-a7f8-9a8323ab8391', 'en', 'city', 'город', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cb51ce95-b009-5e4d-a94e-0db02fcdc4b4', 'en', 'live', 'жить', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5432ea15-2ca8-5555-9d0f-61e13b5b30f3', 'en', 'like', 'нравиться', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f184b31b-14a7-57fb-88c9-c5ec1c7d1b76', 'en', 'student', 'ученик', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('79c6a98f-afb3-5537-8c66-6a09281be17f', 'en', 'teacher', 'учитель', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b502de8a-71d2-532a-a960-9e6d55a478bb', 'en', 'from', 'из', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3da2c5c5-91f8-533c-8fde-65cf69af6f00', 'en', 'favorite', 'любимый', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('794e29c5-321e-5516-b895-58f53c78766e', 'en', 'family', 'семья', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8a5b6189-e084-599b-944b-1cbbbc7374f4', 'en', 'brother', 'брат', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e6916daf-478b-5060-8bc2-63090e01ae36', 'en', 'sister', 'сестра', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cd75c44-4f87-5783-9614-619d962ba6c5', 'en', 'friend', 'друг', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4eb9e350-d2e1-5752-82a7-794745e4eb1d', 'en', 'home', 'дом', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c6677565-4fe9-533d-a9e4-5aae2162b24e', 'en', 'morning', 'утро', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8ccf6750-d205-5e2e-a2a1-0de0a1d876d2', 'en', 'breakfast', 'завтрак', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0d35ef1b-ed4c-5bb5-932f-0646e8b39596', 'en', 'school', 'школа', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('817bcc28-e37f-5143-9ab8-68cf71d92731', 'en', 'lesson', 'урок', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0b569cb3-9410-5ed6-8a43-0c325bcf0232', 'en', 'lunch', 'обед', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1cd3f771-4f41-56c9-972b-8e849cb916b4', 'en', 'afternoon', 'день', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cd9c830-3d2c-5669-939d-1b534d06e12f', 'en', 'evening', 'вечер', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'df25ac43-b342-51e4-9947-a3e5a926ca5b', id, '6f34c93f-f787-5223-ac54-edf4aac3c966', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'name' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'df25ac43-b342-51e4-9947-a3e5a926ca5b', id, '6f34c93f-f787-5223-ac54-edf4aac3c966', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'age' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'df25ac43-b342-51e4-9947-a3e5a926ca5b', id, '6f34c93f-f787-5223-ac54-edf4aac3c966', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'city' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'df25ac43-b342-51e4-9947-a3e5a926ca5b', id, '6f34c93f-f787-5223-ac54-edf4aac3c966', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'live' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'df25ac43-b342-51e4-9947-a3e5a926ca5b', id, '6f34c93f-f787-5223-ac54-edf4aac3c966', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'like' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'df25ac43-b342-51e4-9947-a3e5a926ca5b', id, '6f34c93f-f787-5223-ac54-edf4aac3c966', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'student' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'df25ac43-b342-51e4-9947-a3e5a926ca5b', id, '6f34c93f-f787-5223-ac54-edf4aac3c966', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'teacher' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'df25ac43-b342-51e4-9947-a3e5a926ca5b', id, 'd87b200e-f39b-5388-972e-74b4fd473ba3', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'from' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'df25ac43-b342-51e4-9947-a3e5a926ca5b', id, 'd87b200e-f39b-5388-972e-74b4fd473ba3', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'favorite' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'df25ac43-b342-51e4-9947-a3e5a926ca5b', id, 'd87b200e-f39b-5388-972e-74b4fd473ba3', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'family' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'df25ac43-b342-51e4-9947-a3e5a926ca5b', id, 'd87b200e-f39b-5388-972e-74b4fd473ba3', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'brother' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'df25ac43-b342-51e4-9947-a3e5a926ca5b', id, 'd87b200e-f39b-5388-972e-74b4fd473ba3', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'sister' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'df25ac43-b342-51e4-9947-a3e5a926ca5b', id, 'd87b200e-f39b-5388-972e-74b4fd473ba3', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'friend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'df25ac43-b342-51e4-9947-a3e5a926ca5b', id, 'd87b200e-f39b-5388-972e-74b4fd473ba3', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'home' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'df25ac43-b342-51e4-9947-a3e5a926ca5b', id, '10205e42-b0a1-5b12-88fa-f944125dab1c', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'morning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'df25ac43-b342-51e4-9947-a3e5a926ca5b', id, '10205e42-b0a1-5b12-88fa-f944125dab1c', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'breakfast' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'df25ac43-b342-51e4-9947-a3e5a926ca5b', id, '10205e42-b0a1-5b12-88fa-f944125dab1c', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'school' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'df25ac43-b342-51e4-9947-a3e5a926ca5b', id, '10205e42-b0a1-5b12-88fa-f944125dab1c', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'lesson' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'df25ac43-b342-51e4-9947-a3e5a926ca5b', id, '10205e42-b0a1-5b12-88fa-f944125dab1c', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'lunch' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'df25ac43-b342-51e4-9947-a3e5a926ca5b', id, '10205e42-b0a1-5b12-88fa-f944125dab1c', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'afternoon' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'df25ac43-b342-51e4-9947-a3e5a926ca5b', id, '10205e42-b0a1-5b12-88fa-f944125dab1c', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'evening' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
