-- A1 Business English tracks 01-10. Generated from lingoiq.track.v2 sources.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('09708d1d-8ed5-54d7-a724-d073822d582e', 'A1_BUSINESS_T01', 'Introducing Yourself at Work', 'An A1 Business English track focused on giving a simple professional introduction and understanding basic workplace introductions.', 'en', 'A1', 'thematic', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('32ec422d-a5f2-5e91-ad45-ac428306870b', NULL, 'Learn the Workplace Language: Introducing Yourself at Work', 'Recognize the key workplace words and phrases while practicing giving a simple professional introduction and understanding basic workplace introductions.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4c7ebf48-4849-5ccd-991b-b883c5b769c8', '32ec422d-a5f2-5e91-ad45-ac428306870b', 'Изучите язык рабочего общения', 'text', '{"body":"Learn the Workplace Language: Introducing Yourself at Work. Workplace mission: Recognize the key workplace words and phrases while practicing giving a simple professional introduction and understanding basic workplace introductions. Models: Hello, my name is Anna. I work for a small company. I am new to the team.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('8d3597ca-66e3-5efc-9b5f-2e50c7eb58b1', '32ec422d-a5f2-5e91-ad45-ac428306870b', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"name","right":"A simple workplace meaning of ''name''."},{"id":"P2","left":"work","right":"A simple workplace meaning of ''work''."},{"id":"P3","left":"company","right":"A simple workplace meaning of ''company''."},{"id":"P4","left":"job","right":"A simple workplace meaning of ''job''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('8ae18bb8-58cb-5c41-9964-efc9c3e872d9', '32ec422d-a5f2-5e91-ad45-ac428306870b', 'Выберите профессиональный ответ', 'quiz', '{"question":"Recognize the key workplace words and phrases while practicing giving a simple professional introduction and understanding basic workplace introductions.","options":[{"id":"A","text":"Hello, my name is Anna.","is_correct":true},{"id":"B","text":"I work for a small company.","is_correct":false},{"id":"C","text":"I am new to the team.","is_correct":false}],"explanation":"“Hello, my name is Anna.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('ae9edcf8-45f7-5233-a310-df2f7441a49a', '32ec422d-a5f2-5e91-ad45-ac428306870b', 'Слушайте рабочую речь', 'listening', '{"audio_text":"Hello, my name is Anna.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('48a6f3a1-58f8-5828-89d8-b90a3579262c', '32ec422d-a5f2-5e91-ad45-ac428306870b', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"I work for a small company.","language":"en","min_accuracy":0.7,"translation_hint":"Recognize the key workplace words and phrases while practicing giving a simple professional introduction and understanding basic workplace introductions.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('62e87db4-48cb-5c53-84e3-f602926e0888', '32ec422d-a5f2-5e91-ad45-ac428306870b', 'Выберите рабочее значение', 'choose_definition', '{"word":"name","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''name''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''work''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''company''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''job''.","is_correct":false}],"explanation":"name: A simple workplace meaning of ''name''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('87a4ccbc-69b3-53a4-bcd2-2134db58bebb', '32ec422d-a5f2-5e91-ad45-ac428306870b', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Hello, my name is Anna."}],"answer_speaker":"Learner","options":[{"id":"A","text":"I work for a small company.","is_correct":true},{"id":"B","text":"I am new to the team.","is_correct":false},{"id":"C","text":"I know the word name.","is_correct":false}],"explanation":"“I work for a small company.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('09708d1d-8ed5-54d7-a724-d073822d582e', '32ec422d-a5f2-5e91-ad45-ac428306870b', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('42ef48c3-3d8f-52eb-ac93-536eeb928158', NULL, 'Build the Core Sentence: Introducing Yourself at Work', 'Produce a useful basic business sentence while practicing giving a simple professional introduction and understanding basic workplace introductions.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e8bd6531-cb04-5904-b8ca-e83060af64d5', '42ef48c3-3d8f-52eb-ac93-536eeb928158', 'Изучите язык рабочего общения', 'text', '{"body":"Build the Core Sentence: Introducing Yourself at Work. Workplace mission: Produce a useful basic business sentence while practicing giving a simple professional introduction and understanding basic workplace introductions. Models: I work for a small company. I am new to the team. Nice to meet you.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a5b090bc-d7cb-58c6-93fd-cc44ae27747a', '42ef48c3-3d8f-52eb-ac93-536eeb928158', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"I work for a small company.","word_bank":["I","work","for","a","small","company","company"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('1b71877f-cbf6-53f3-90d7-8e6abdf1b7a0', '42ef48c3-3d8f-52eb-ac93-536eeb928158', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"I ___ for a small company.","correct_answer":"work","options":["work","company","job"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('b8f42a55-31ab-5d48-aa67-6378bfcaf8f3', '42ef48c3-3d8f-52eb-ac93-536eeb928158', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["company","small","a","for","work","I"],"correct_words":["I","work","for","a","small","company"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('3285dee9-c520-5a20-bbf2-227224b520f9', '42ef48c3-3d8f-52eb-ac93-536eeb928158', 'Слушайте рабочую речь', 'listening', '{"audio_text":"I work for a small company.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('790b888d-b0d2-51f4-857e-1a7b817e6b31', '42ef48c3-3d8f-52eb-ac93-536eeb928158', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"I ___ for a small company.","correct_answer":"work","hint_prefix":"w","explanation":"The missing word is work.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('f9ab1e06-0773-5a7e-81f7-1324e9717954', '42ef48c3-3d8f-52eb-ac93-536eeb928158', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"I work for a small company."}],"answer_speaker":"Learner","options":[{"id":"A","text":"I am new to the team.","is_correct":true},{"id":"B","text":"Nice to meet you.","is_correct":false},{"id":"C","text":"I know the word work.","is_correct":false}],"explanation":"“I am new to the team.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('09708d1d-8ed5-54d7-a724-d073822d582e', '42ef48c3-3d8f-52eb-ac93-536eeb928158', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('c7320e69-2e14-5697-a1b9-ca340052ac5a', NULL, 'Listen for Workplace Information: Introducing Yourself at Work', 'Identify an important detail in short workplace audio while practicing giving a simple professional introduction and understanding basic workplace introductions.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('73040f45-b902-536b-8cd8-a96a00e8f20d', 'c7320e69-2e14-5697-a1b9-ca340052ac5a', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"company","right":"A simple workplace meaning of ''company''."},{"id":"P2","left":"job","right":"A simple workplace meaning of ''job''."},{"id":"P3","left":"team","right":"A simple workplace meaning of ''team''."},{"id":"P4","left":"office","right":"A simple workplace meaning of ''office''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d82834e1-1a80-5cf9-9a45-d2bd237abd38', 'c7320e69-2e14-5697-a1b9-ca340052ac5a', 'Выберите профессиональный ответ', 'quiz', '{"question":"Identify an important detail in short workplace audio while practicing giving a simple professional introduction and understanding basic workplace introductions.","options":[{"id":"A","text":"I am new to the team.","is_correct":true},{"id":"B","text":"Nice to meet you.","is_correct":false},{"id":"C","text":"Hello, my name is Anna.","is_correct":false}],"explanation":"“I am new to the team.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('9134fcae-78cd-5be2-bc5c-ae475603b31b', 'c7320e69-2e14-5697-a1b9-ca340052ac5a', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["team","the","to","new","am","I"],"correct_words":["I","am","new","to","the","team"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c377902a-d9d2-5916-a56f-4d20b555ef95', 'c7320e69-2e14-5697-a1b9-ca340052ac5a', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"I am ___ to the team.","audio_text":"I am new to the team.","language":"en","options":[{"id":"A","audio_text":"new","is_correct":true},{"id":"B","audio_text":"company","is_correct":false},{"id":"C","audio_text":"job","is_correct":false}],"explanation":"The missing word is new.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('480080d9-5cef-55f4-9f2b-7904eca66b92', 'c7320e69-2e14-5697-a1b9-ca340052ac5a', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"Nice to meet you.","language":"en","min_accuracy":0.7,"translation_hint":"Identify an important detail in short workplace audio while practicing giving a simple professional introduction and understanding basic workplace introductions.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('38ab903f-62e1-5971-b065-4603d42bf000', 'c7320e69-2e14-5697-a1b9-ca340052ac5a', 'Рабочая ситуация', 'story', '{"title":"Listen for Workplace Information: Introducing Yourself at Work","scenes":[{"type":"dialogue","character":"Colleague","text":"I am new to the team."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"Nice to meet you.","is_correct":true},{"text":"Hello, my name is Anna.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e7b87104-8186-577b-90ba-485b2094d7cf', 'c7320e69-2e14-5697-a1b9-ca340052ac5a', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"I am new to the team."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Nice to meet you.","is_correct":true},{"id":"B","text":"Hello, my name is Anna.","is_correct":false},{"id":"C","text":"I know the word company.","is_correct":false}],"explanation":"“Nice to meet you.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('09708d1d-8ed5-54d7-a724-d073822d582e', 'c7320e69-2e14-5697-a1b9-ca340052ac5a', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('32c96112-142b-5742-b6ff-228ad0b30a75', NULL, 'Use Polite Professional English: Introducing Yourself at Work', 'Choose language appropriate for a simple workplace situation while practicing giving a simple professional introduction and understanding basic workplace introductions.', 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('fec514b9-bbf0-54ee-aec5-bee66cda2198', '32c96112-142b-5742-b6ff-228ad0b30a75', 'Изучите язык рабочего общения', 'text', '{"body":"Use Polite Professional English: Introducing Yourself at Work. Workplace mission: Choose language appropriate for a simple workplace situation while practicing giving a simple professional introduction and understanding basic workplace introductions. Models: Nice to meet you. Hello, my name is Anna. I work for a small company.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('dcc5f9e0-483b-5fb5-a343-c118abad5e3c', '32c96112-142b-5742-b6ff-228ad0b30a75', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"job","right":"A simple workplace meaning of ''job''."},{"id":"P2","left":"team","right":"A simple workplace meaning of ''team''."},{"id":"P3","left":"office","right":"A simple workplace meaning of ''office''."},{"id":"P4","left":"manager","right":"A simple workplace meaning of ''manager''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4e0eb919-65c9-53d9-858d-a022bd5ca0b7', '32c96112-142b-5742-b6ff-228ad0b30a75', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"___ to meet you.","correct_answer":"Nice","options":["Nice","job","team"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('8f55bf07-9af2-5719-a65b-10d8a62fd28f', '32c96112-142b-5742-b6ff-228ad0b30a75', 'Слушайте рабочую речь', 'listening', '{"audio_text":"Nice to meet you.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('73eccfc0-2271-51ba-bbb2-518852c1f323', '32c96112-142b-5742-b6ff-228ad0b30a75', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"___ to meet you.","audio_text":"Nice to meet you.","language":"en","options":[{"id":"A","audio_text":"Nice","is_correct":true},{"id":"B","audio_text":"job","is_correct":false},{"id":"C","audio_text":"team","is_correct":false}],"explanation":"The missing word is Nice.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4635d65d-4f05-59ff-af0b-6b350b60446e', '32c96112-142b-5742-b6ff-228ad0b30a75', 'Выберите рабочее значение', 'choose_definition', '{"word":"job","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''job''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''team''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''office''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''manager''.","is_correct":false}],"explanation":"job: A simple workplace meaning of ''job''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('9e7def22-fa08-5f70-a681-458561f4183c', '32c96112-142b-5742-b6ff-228ad0b30a75', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Nice to meet you."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Hello, my name is Anna.","is_correct":true},{"id":"B","text":"I work for a small company.","is_correct":false},{"id":"C","text":"I know the word job.","is_correct":false}],"explanation":"“Hello, my name is Anna.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('09708d1d-8ed5-54d7-a724-d073822d582e', '32c96112-142b-5742-b6ff-228ad0b30a75', 3)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('d68e6a9c-9bf9-58d2-966c-8ba64fea12da', NULL, 'Practice the Spoken Model: Introducing Yourself at Work', 'Repeat the workplace language clearly and politely while practicing giving a simple professional introduction and understanding basic workplace introductions.', 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('bb7fd26a-9748-55cb-9ee3-46d25a03869a', 'd68e6a9c-9bf9-58d2-966c-8ba64fea12da', 'Выберите профессиональный ответ', 'quiz', '{"question":"Repeat the workplace language clearly and politely while practicing giving a simple professional introduction and understanding basic workplace introductions.","options":[{"id":"A","text":"Hello, my name is Anna.","is_correct":true},{"id":"B","text":"I work for a small company.","is_correct":false},{"id":"C","text":"I am new to the team.","is_correct":false}],"explanation":"“Hello, my name is Anna.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('68a65d0a-05d5-5728-b3a2-55a794818481', 'd68e6a9c-9bf9-58d2-966c-8ba64fea12da', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"Hello, my name is Anna.","word_bank":["Hello","my","name","is","Anna","office"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('f3c76682-71ad-567d-afb6-d70d3381848e', 'd68e6a9c-9bf9-58d2-966c-8ba64fea12da', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["Anna","is","name","my","Hello"],"correct_words":["Hello","my","name","is","Anna"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('222eff25-1c2c-52bd-b0d3-7eca352dce05', 'd68e6a9c-9bf9-58d2-966c-8ba64fea12da', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"I work for a small company.","language":"en","min_accuracy":0.7,"translation_hint":"Repeat the workplace language clearly and politely while practicing giving a simple professional introduction and understanding basic workplace introductions.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('1300253d-71d4-59b8-9f25-59036f1fd29b', 'd68e6a9c-9bf9-58d2-966c-8ba64fea12da', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"___, my name is Anna.","correct_answer":"Hello","hint_prefix":"H","explanation":"The missing word is Hello.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('df2adb76-cf99-53bb-ad77-1cea49f73f00', 'd68e6a9c-9bf9-58d2-966c-8ba64fea12da', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"team","text":"team"},{"id":"V2","audio_text":"office","text":"office"},{"id":"V3","audio_text":"manager","text":"manager"},{"id":"V4","audio_text":"colleague","text":"colleague"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('15ae790c-4e4e-5dcc-b87d-3cf8ff60109b', 'd68e6a9c-9bf9-58d2-966c-8ba64fea12da', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Hello, my name is Anna."}],"answer_speaker":"Learner","options":[{"id":"A","text":"I work for a small company.","is_correct":true},{"id":"B","text":"I am new to the team.","is_correct":false},{"id":"C","text":"I know the word team.","is_correct":false}],"explanation":"“I work for a small company.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('09708d1d-8ed5-54d7-a724-d073822d582e', 'd68e6a9c-9bf9-58d2-966c-8ba64fea12da', 4)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('50d8779e-a74c-59d9-90b8-9b3f4ad6f4d8', NULL, 'Use the Language in Context: Introducing Yourself at Work', 'Apply the target language in a realistic work situation while practicing giving a simple professional introduction and understanding basic workplace introductions.', 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4edc6f9c-7a2a-52cc-9664-11719c4e2882', '50d8779e-a74c-59d9-90b8-9b3f4ad6f4d8', 'Изучите язык рабочего общения', 'text', '{"body":"Use the Language in Context: Introducing Yourself at Work. Workplace mission: Apply the target language in a realistic work situation while practicing giving a simple professional introduction and understanding basic workplace introductions. Models: I work for a small company. I am new to the team. Nice to meet you.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('7325ff7e-9a0b-5256-8dc1-11ae11c4e0cb', '50d8779e-a74c-59d9-90b8-9b3f4ad6f4d8', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"I ___ for a small company.","correct_answer":"work","options":["work","office","manager"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('12afb627-3889-53d9-af9c-2a3213cf4332', '50d8779e-a74c-59d9-90b8-9b3f4ad6f4d8', 'Слушайте рабочую речь', 'listening', '{"audio_text":"I work for a small company.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('13527b4f-e006-5406-b83d-1d569697f1ac', '50d8779e-a74c-59d9-90b8-9b3f4ad6f4d8', 'Рабочая ситуация', 'story', '{"title":"Use the Language in Context: Introducing Yourself at Work","scenes":[{"type":"dialogue","character":"Colleague","text":"I work for a small company."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"I am new to the team.","is_correct":true},{"text":"Nice to meet you.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('826b27b8-2038-5987-b73d-73c7629c3d5a', '50d8779e-a74c-59d9-90b8-9b3f4ad6f4d8', 'Выберите рабочее значение', 'choose_definition', '{"word":"office","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''office''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''manager''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''colleague''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''new''.","is_correct":false}],"explanation":"office: A simple workplace meaning of ''office''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('22cd1a2f-6787-5cb5-9a10-91e98bad107b', '50d8779e-a74c-59d9-90b8-9b3f4ad6f4d8', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"office","text":"office"},{"id":"V2","audio_text":"manager","text":"manager"},{"id":"V3","audio_text":"colleague","text":"colleague"},{"id":"V4","audio_text":"new","text":"new"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c6e4395a-3745-582d-b47e-6eaf0a78edd9', '50d8779e-a74c-59d9-90b8-9b3f4ad6f4d8', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"I work for a small company."}],"answer_speaker":"Learner","options":[{"id":"A","text":"I am new to the team.","is_correct":true},{"id":"B","text":"Nice to meet you.","is_correct":false},{"id":"C","text":"I know the word office.","is_correct":false}],"explanation":"“I am new to the team.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('09708d1d-8ed5-54d7-a724-d073822d582e', '50d8779e-a74c-59d9-90b8-9b3f4ad6f4d8', 5)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('030876b2-f67d-555c-88de-58b6480a72dd', NULL, 'Handle a Short Exchange: Introducing Yourself at Work', 'Respond appropriately in a two-person workplace interaction while practicing giving a simple professional introduction and understanding basic workplace introductions.', 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('ab4d21ab-3cda-57ee-886f-0c141b003b27', '030876b2-f67d-555c-88de-58b6480a72dd', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"manager","right":"A simple workplace meaning of ''manager''."},{"id":"P2","left":"colleague","right":"A simple workplace meaning of ''colleague''."},{"id":"P3","left":"new","right":"A simple workplace meaning of ''new''."},{"id":"P4","left":"hello","right":"A simple workplace meaning of ''hello''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('46130eea-abad-5575-b6b0-81f02041c242', '030876b2-f67d-555c-88de-58b6480a72dd', 'Выберите профессиональный ответ', 'quiz', '{"question":"Respond appropriately in a two-person workplace interaction while practicing giving a simple professional introduction and understanding basic workplace introductions.","options":[{"id":"A","text":"I am new to the team.","is_correct":true},{"id":"B","text":"Nice to meet you.","is_correct":false},{"id":"C","text":"Hello, my name is Anna.","is_correct":false}],"explanation":"“I am new to the team.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d72b2ecb-9a86-5efb-b17b-7d6fd833a3e7', '030876b2-f67d-555c-88de-58b6480a72dd', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["team","the","to","new","am","I"],"correct_words":["I","am","new","to","the","team"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e6dad4bd-8b99-5643-90b4-48b328e19cf5', '030876b2-f67d-555c-88de-58b6480a72dd', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"I am ___ to the team.","audio_text":"I am new to the team.","language":"en","options":[{"id":"A","audio_text":"new","is_correct":true},{"id":"B","audio_text":"manager","is_correct":false},{"id":"C","audio_text":"colleague","is_correct":false}],"explanation":"The missing word is new.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c6497350-f086-5545-8cac-7bdfa0fafd34', '030876b2-f67d-555c-88de-58b6480a72dd', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"I am ___ to the team.","correct_answer":"new","hint_prefix":"n","explanation":"The missing word is new.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a0833dfb-516a-5d50-b11d-a05d7abba80a', '030876b2-f67d-555c-88de-58b6480a72dd', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"Nice to meet you.","language":"en","min_accuracy":0.7,"translation_hint":"Respond appropriately in a two-person workplace interaction while practicing giving a simple professional introduction and understanding basic workplace introductions.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('8cf36dfe-ada2-5a85-beb5-4dc4a204113b', '030876b2-f67d-555c-88de-58b6480a72dd', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"I am new to the team."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Nice to meet you.","is_correct":true},{"id":"B","text":"Hello, my name is Anna.","is_correct":false},{"id":"C","text":"I know the word manager.","is_correct":false}],"explanation":"“Nice to meet you.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('09708d1d-8ed5-54d7-a724-d073822d582e', '030876b2-f67d-555c-88de-58b6480a72dd', 6)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('cba51f8f-a37d-5183-a146-3f105257a082', NULL, 'Work with Less Support: Introducing Yourself at Work', 'Complete the business task with fewer hints while practicing giving a simple professional introduction and understanding basic workplace introductions.', 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c8c379a6-988a-571d-82bb-3763ed594bd1', 'cba51f8f-a37d-5183-a146-3f105257a082', 'Изучите язык рабочего общения', 'text', '{"body":"Work with Less Support: Introducing Yourself at Work. Workplace mission: Complete the business task with fewer hints while practicing giving a simple professional introduction and understanding basic workplace introductions. Models: Nice to meet you. Hello, my name is Anna. I work for a small company.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('fddd5459-7d8d-5393-a85b-97f2158d8d90', 'cba51f8f-a37d-5183-a146-3f105257a082', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"Nice to meet you.","word_bank":["Nice","to","meet","you","new"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('72ab1c3d-7ed7-5500-a424-d479760b593b', 'cba51f8f-a37d-5183-a146-3f105257a082', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"___ to meet you.","correct_answer":"Nice","options":["Nice","colleague","new"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('5954b62d-5892-5b75-8b30-ec253576ba92', 'cba51f8f-a37d-5183-a146-3f105257a082', 'Слушайте рабочую речь', 'listening', '{"audio_text":"Nice to meet you.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('14a33533-3a9c-52e1-8eda-3fcc0967259e', 'cba51f8f-a37d-5183-a146-3f105257a082', 'Рабочая ситуация', 'story', '{"title":"Work with Less Support: Introducing Yourself at Work","scenes":[{"type":"dialogue","character":"Colleague","text":"Nice to meet you."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"Hello, my name is Anna.","is_correct":true},{"text":"I work for a small company.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d3c48676-0611-5faa-a999-a631033b435d', 'cba51f8f-a37d-5183-a146-3f105257a082', 'Выберите рабочее значение', 'choose_definition', '{"word":"colleague","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''colleague''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''new''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''hello''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''name''.","is_correct":false}],"explanation":"colleague: A simple workplace meaning of ''colleague''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('704925b9-6e79-54b3-a87a-271c623df03c', 'cba51f8f-a37d-5183-a146-3f105257a082', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Nice to meet you."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Hello, my name is Anna.","is_correct":true},{"id":"B","text":"I work for a small company.","is_correct":false},{"id":"C","text":"I know the word colleague.","is_correct":false}],"explanation":"“Hello, my name is Anna.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('09708d1d-8ed5-54d7-a724-d073822d582e', 'cba51f8f-a37d-5183-a146-3f105257a082', 7)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('b24df5ea-8f8e-56e1-a01b-87ce899f3769', NULL, 'Workplace Challenge: Introducing Yourself at Work', 'Combine vocabulary, listening, and response skills while practicing giving a simple professional introduction and understanding basic workplace introductions.', 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('76aa7bfd-ab35-525c-b32a-1328887d16ac', 'b24df5ea-8f8e-56e1-a01b-87ce899f3769', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"new","right":"A simple workplace meaning of ''new''."},{"id":"P2","left":"hello","right":"A simple workplace meaning of ''hello''."},{"id":"P3","left":"name","right":"A simple workplace meaning of ''name''."},{"id":"P4","left":"work","right":"A simple workplace meaning of ''work''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('2f7c0e20-80d8-5836-95e2-bc02cca8c3c9', 'b24df5ea-8f8e-56e1-a01b-87ce899f3769', 'Выберите профессиональный ответ', 'quiz', '{"question":"Combine vocabulary, listening, and response skills while practicing giving a simple professional introduction and understanding basic workplace introductions.","options":[{"id":"A","text":"Hello, my name is Anna.","is_correct":true},{"id":"B","text":"I work for a small company.","is_correct":false},{"id":"C","text":"I am new to the team.","is_correct":false}],"explanation":"“Hello, my name is Anna.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('f17decf4-c8e4-5b68-9ef7-19834ff1454e', 'b24df5ea-8f8e-56e1-a01b-87ce899f3769', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["Anna","is","name","my","Hello"],"correct_words":["Hello","my","name","is","Anna"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('bbd589c6-0632-5843-a8dc-0bca283a9a04', 'b24df5ea-8f8e-56e1-a01b-87ce899f3769', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"___, my name is Anna.","audio_text":"Hello, my name is Anna.","language":"en","options":[{"id":"A","audio_text":"Hello","is_correct":true},{"id":"B","audio_text":"new","is_correct":false},{"id":"C","audio_text":"name","is_correct":false}],"explanation":"The missing word is Hello.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('17b7bd0f-d20d-50d5-936d-453b194d84c9', 'b24df5ea-8f8e-56e1-a01b-87ce899f3769', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"new","text":"new"},{"id":"V2","audio_text":"hello","text":"hello"},{"id":"V3","audio_text":"name","text":"name"},{"id":"V4","audio_text":"work","text":"work"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c7387176-4ebe-518f-a801-36d3de48ed80', 'b24df5ea-8f8e-56e1-a01b-87ce899f3769', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"I work for a small company.","language":"en","min_accuracy":0.7,"translation_hint":"Combine vocabulary, listening, and response skills while practicing giving a simple professional introduction and understanding basic workplace introductions.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c27b7617-860e-52c3-80fd-cfebd9d9c02e', 'b24df5ea-8f8e-56e1-a01b-87ce899f3769', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Hello, my name is Anna."}],"answer_speaker":"Learner","options":[{"id":"A","text":"I work for a small company.","is_correct":true},{"id":"B","text":"I am new to the team.","is_correct":false},{"id":"C","text":"I know the word new.","is_correct":false}],"explanation":"“I work for a small company.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('09708d1d-8ed5-54d7-a724-d073822d582e', 'b24df5ea-8f8e-56e1-a01b-87ce899f3769', 8)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('5ba96519-7d7c-5860-977a-22df7347df45', NULL, 'Track Business Mission: Introducing Yourself at Work', 'Complete a practical beginner workplace mission while practicing giving a simple professional introduction and understanding basic workplace introductions.', 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('ffcc6672-ef4e-531d-b8cb-71885d0fa7a2', '5ba96519-7d7c-5860-977a-22df7347df45', 'Изучите язык рабочего общения', 'text', '{"body":"Track Business Mission: Introducing Yourself at Work. Workplace mission: Complete a practical beginner workplace mission while practicing giving a simple professional introduction and understanding basic workplace introductions. Models: I work for a small company. I am new to the team. Nice to meet you.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('29e37c13-a8ac-597c-97d4-13f637e92be8', '5ba96519-7d7c-5860-977a-22df7347df45', 'Выберите профессиональный ответ', 'quiz', '{"question":"Complete a practical beginner workplace mission while practicing giving a simple professional introduction and understanding basic workplace introductions.","options":[{"id":"A","text":"I work for a small company.","is_correct":true},{"id":"B","text":"I am new to the team.","is_correct":false},{"id":"C","text":"Nice to meet you.","is_correct":false}],"explanation":"“I work for a small company.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a2ef5ea9-c866-502f-b5af-0807ee87fce0', '5ba96519-7d7c-5860-977a-22df7347df45', 'Слушайте рабочую речь', 'listening', '{"audio_text":"I work for a small company.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('9d00e267-f0b1-5419-bf5b-f212e6048129', '5ba96519-7d7c-5860-977a-22df7347df45', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"I am new to the team.","language":"en","min_accuracy":0.7,"translation_hint":"Complete a practical beginner workplace mission while practicing giving a simple professional introduction and understanding basic workplace introductions.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('9708552c-41db-517e-9e65-dec119fa9acd', '5ba96519-7d7c-5860-977a-22df7347df45', 'Рабочая ситуация', 'story', '{"title":"Track Business Mission: Introducing Yourself at Work","scenes":[{"type":"dialogue","character":"Colleague","text":"I work for a small company."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"I am new to the team.","is_correct":true},{"text":"Nice to meet you.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('2d99913f-1ceb-5305-a00d-85197fca7412', '5ba96519-7d7c-5860-977a-22df7347df45', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"hello","text":"hello"},{"id":"V2","audio_text":"name","text":"name"},{"id":"V3","audio_text":"work","text":"work"},{"id":"V4","audio_text":"company","text":"company"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('166076ae-0adb-5011-af87-7160eeae3357', '5ba96519-7d7c-5860-977a-22df7347df45', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"I work for a small company."}],"answer_speaker":"Learner","options":[{"id":"A","text":"I am new to the team.","is_correct":true},{"id":"B","text":"Nice to meet you.","is_correct":false},{"id":"C","text":"I know the word hello.","is_correct":false}],"explanation":"“I am new to the team.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('09708d1d-8ed5-54d7-a724-d073822d582e', '5ba96519-7d7c-5860-977a-22df7347df45', 9)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('f0c525fc-3565-5ab9-9306-c50c3b4d6298', 'A1_BUSINESS_T02', 'Jobs and Departments', 'An A1 Business English track focused on talking about basic job roles and where people work.', 'en', 'A1', 'thematic', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('3285b7d5-d249-5297-a264-1b7fc3626e0e', NULL, 'Learn the Workplace Language: Jobs and Departments', 'Recognize the key workplace words and phrases while practicing talking about basic job roles and where people work.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('892f51d7-2334-5a9a-a319-19b01c8c11e0', '3285b7d5-d249-5297-a264-1b7fc3626e0e', 'Изучите язык рабочего общения', 'text', '{"body":"Learn the Workplace Language: Jobs and Departments. Workplace mission: Recognize the key workplace words and phrases while practicing talking about basic job roles and where people work. Models: I work in the sales department. She is an office assistant. He works with customers.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('5c27ef88-0929-5f1b-8c0a-d7b2e637d1f4', '3285b7d5-d249-5297-a264-1b7fc3626e0e', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"job","right":"A simple workplace meaning of ''job''."},{"id":"P2","left":"department","right":"A simple workplace meaning of ''department''."},{"id":"P3","left":"sales","right":"A simple workplace meaning of ''sales''."},{"id":"P4","left":"office","right":"A simple workplace meaning of ''office''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('17bc5cc4-d8e8-5571-ae1d-1ea14bb2c611', '3285b7d5-d249-5297-a264-1b7fc3626e0e', 'Выберите профессиональный ответ', 'quiz', '{"question":"Recognize the key workplace words and phrases while practicing talking about basic job roles and where people work.","options":[{"id":"A","text":"I work in the sales department.","is_correct":true},{"id":"B","text":"She is an office assistant.","is_correct":false},{"id":"C","text":"He works with customers.","is_correct":false}],"explanation":"“I work in the sales department.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('534ab92c-f443-5199-94a7-f899571e568b', '3285b7d5-d249-5297-a264-1b7fc3626e0e', 'Слушайте рабочую речь', 'listening', '{"audio_text":"I work in the sales department.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('85b923ea-1854-58ed-a867-1f7098bd6454', '3285b7d5-d249-5297-a264-1b7fc3626e0e', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"She is an office assistant.","language":"en","min_accuracy":0.7,"translation_hint":"Recognize the key workplace words and phrases while practicing talking about basic job roles and where people work.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('9c3605d0-2434-54d4-b0c5-2594ae6f1fee', '3285b7d5-d249-5297-a264-1b7fc3626e0e', 'Выберите рабочее значение', 'choose_definition', '{"word":"job","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''job''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''department''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''sales''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''office''.","is_correct":false}],"explanation":"job: A simple workplace meaning of ''job''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('9a2d35a9-310e-5ed6-8310-13f95a975cdd', '3285b7d5-d249-5297-a264-1b7fc3626e0e', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"I work in the sales department."}],"answer_speaker":"Learner","options":[{"id":"A","text":"She is an office assistant.","is_correct":true},{"id":"B","text":"He works with customers.","is_correct":false},{"id":"C","text":"I know the word job.","is_correct":false}],"explanation":"“She is an office assistant.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f0c525fc-3565-5ab9-9306-c50c3b4d6298', '3285b7d5-d249-5297-a264-1b7fc3626e0e', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('af4871bd-13c4-59d1-81a0-0e5240360e0c', NULL, 'Build the Core Sentence: Jobs and Departments', 'Produce a useful basic business sentence while practicing talking about basic job roles and where people work.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('ac4344f7-ac1f-5d3d-8cb2-511a8a52e0f3', 'af4871bd-13c4-59d1-81a0-0e5240360e0c', 'Изучите язык рабочего общения', 'text', '{"body":"Build the Core Sentence: Jobs and Departments. Workplace mission: Produce a useful basic business sentence while practicing talking about basic job roles and where people work. Models: She is an office assistant. He works with customers. Our manager works with the team.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('05e2a985-198d-5dab-ac59-cc9eff202246', 'af4871bd-13c4-59d1-81a0-0e5240360e0c', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"She is an office assistant.","word_bank":["She","is","an","office","assistant","sales"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e963d6e3-b175-56f5-8dd5-9c5da6ffe9b8', 'af4871bd-13c4-59d1-81a0-0e5240360e0c', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"___ is an office assistant.","correct_answer":"She","options":["She","department","sales"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('07579d6a-fca4-578f-b676-dfe06d0fc549', 'af4871bd-13c4-59d1-81a0-0e5240360e0c', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["assistant","office","an","is","She"],"correct_words":["She","is","an","office","assistant"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('deade60c-b2ff-5faf-a9e4-74b466902a62', 'af4871bd-13c4-59d1-81a0-0e5240360e0c', 'Слушайте рабочую речь', 'listening', '{"audio_text":"She is an office assistant.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('2faa8375-4e22-54e6-a0de-479b75d9366f', 'af4871bd-13c4-59d1-81a0-0e5240360e0c', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"___ is an office assistant.","correct_answer":"She","hint_prefix":"S","explanation":"The missing word is She.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4d81c41c-83bc-5b25-9e4a-ff1b4486f3f9', 'af4871bd-13c4-59d1-81a0-0e5240360e0c', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"She is an office assistant."}],"answer_speaker":"Learner","options":[{"id":"A","text":"He works with customers.","is_correct":true},{"id":"B","text":"Our manager works with the team.","is_correct":false},{"id":"C","text":"I know the word department.","is_correct":false}],"explanation":"“He works with customers.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f0c525fc-3565-5ab9-9306-c50c3b4d6298', 'af4871bd-13c4-59d1-81a0-0e5240360e0c', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('d257c3bc-1f74-52c7-b612-80f68ce6bfb4', NULL, 'Listen for Workplace Information: Jobs and Departments', 'Identify an important detail in short workplace audio while practicing talking about basic job roles and where people work.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('19cab04d-6229-5583-8646-647581def398', 'd257c3bc-1f74-52c7-b612-80f68ce6bfb4', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"sales","right":"A simple workplace meaning of ''sales''."},{"id":"P2","left":"office","right":"A simple workplace meaning of ''office''."},{"id":"P3","left":"manager","right":"A simple workplace meaning of ''manager''."},{"id":"P4","left":"assistant","right":"A simple workplace meaning of ''assistant''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a5aaaace-64fb-5ea0-aad8-0d39c575059e', 'd257c3bc-1f74-52c7-b612-80f68ce6bfb4', 'Выберите профессиональный ответ', 'quiz', '{"question":"Identify an important detail in short workplace audio while practicing talking about basic job roles and where people work.","options":[{"id":"A","text":"He works with customers.","is_correct":true},{"id":"B","text":"Our manager works with the team.","is_correct":false},{"id":"C","text":"I work in the sales department.","is_correct":false}],"explanation":"“He works with customers.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('dfda1a18-bc50-54a6-84b4-050726eff90f', 'd257c3bc-1f74-52c7-b612-80f68ce6bfb4', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["customers","with","works","He"],"correct_words":["He","works","with","customers"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('526c5509-7014-5351-b7e8-68d8dc1abd24', 'd257c3bc-1f74-52c7-b612-80f68ce6bfb4', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"He ___ with customers.","audio_text":"He works with customers.","language":"en","options":[{"id":"A","audio_text":"works","is_correct":true},{"id":"B","audio_text":"sales","is_correct":false},{"id":"C","audio_text":"office","is_correct":false}],"explanation":"The missing word is works.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('845fec39-e598-5459-9749-79fc52a67e4e', 'd257c3bc-1f74-52c7-b612-80f68ce6bfb4', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"Our manager works with the team.","language":"en","min_accuracy":0.7,"translation_hint":"Identify an important detail in short workplace audio while practicing talking about basic job roles and where people work.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('287d3f58-3a36-5d83-941e-36775977f5cf', 'd257c3bc-1f74-52c7-b612-80f68ce6bfb4', 'Рабочая ситуация', 'story', '{"title":"Listen for Workplace Information: Jobs and Departments","scenes":[{"type":"dialogue","character":"Colleague","text":"He works with customers."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"Our manager works with the team.","is_correct":true},{"text":"I work in the sales department.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('35bd9f8c-1843-5a58-b28d-b838dc7d4557', 'd257c3bc-1f74-52c7-b612-80f68ce6bfb4', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"He works with customers."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Our manager works with the team.","is_correct":true},{"id":"B","text":"I work in the sales department.","is_correct":false},{"id":"C","text":"I know the word sales.","is_correct":false}],"explanation":"“Our manager works with the team.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f0c525fc-3565-5ab9-9306-c50c3b4d6298', 'd257c3bc-1f74-52c7-b612-80f68ce6bfb4', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('b7fce779-812f-50e1-8f77-2809b4e5eedd', NULL, 'Use Polite Professional English: Jobs and Departments', 'Choose language appropriate for a simple workplace situation while practicing talking about basic job roles and where people work.', 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('770080f3-9131-5d04-8e70-d861b4c6153c', 'b7fce779-812f-50e1-8f77-2809b4e5eedd', 'Изучите язык рабочего общения', 'text', '{"body":"Use Polite Professional English: Jobs and Departments. Workplace mission: Choose language appropriate for a simple workplace situation while practicing talking about basic job roles and where people work. Models: Our manager works with the team. I work in the sales department. She is an office assistant.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('726ff961-7798-51a7-a17a-ae22c761fed2', 'b7fce779-812f-50e1-8f77-2809b4e5eedd', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"office","right":"A simple workplace meaning of ''office''."},{"id":"P2","left":"manager","right":"A simple workplace meaning of ''manager''."},{"id":"P3","left":"assistant","right":"A simple workplace meaning of ''assistant''."},{"id":"P4","left":"customer","right":"A simple workplace meaning of ''customer''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4b1c082a-976b-5994-aa8b-aea7dac3d9b8', 'b7fce779-812f-50e1-8f77-2809b4e5eedd', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"___ manager works with the team.","correct_answer":"Our","options":["Our","office","manager"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('45b2f566-32f6-5ea8-a6cd-7ea0261258b5', 'b7fce779-812f-50e1-8f77-2809b4e5eedd', 'Слушайте рабочую речь', 'listening', '{"audio_text":"Our manager works with the team.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('ab2d90c3-5beb-5bc4-92ad-d57cb9df5c61', 'b7fce779-812f-50e1-8f77-2809b4e5eedd', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"___ manager works with the team.","audio_text":"Our manager works with the team.","language":"en","options":[{"id":"A","audio_text":"Our","is_correct":true},{"id":"B","audio_text":"office","is_correct":false},{"id":"C","audio_text":"manager","is_correct":false}],"explanation":"The missing word is Our.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('1e9568af-8f66-532c-840e-16e5116d4945', 'b7fce779-812f-50e1-8f77-2809b4e5eedd', 'Выберите рабочее значение', 'choose_definition', '{"word":"office","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''office''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''manager''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''assistant''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''customer''.","is_correct":false}],"explanation":"office: A simple workplace meaning of ''office''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('b66ad016-6ac2-576b-9906-13144e033a45', 'b7fce779-812f-50e1-8f77-2809b4e5eedd', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Our manager works with the team."}],"answer_speaker":"Learner","options":[{"id":"A","text":"I work in the sales department.","is_correct":true},{"id":"B","text":"She is an office assistant.","is_correct":false},{"id":"C","text":"I know the word office.","is_correct":false}],"explanation":"“I work in the sales department.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f0c525fc-3565-5ab9-9306-c50c3b4d6298', 'b7fce779-812f-50e1-8f77-2809b4e5eedd', 3)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('5fba3a1f-86d8-526d-be5f-b980b634cbd7', NULL, 'Practice the Spoken Model: Jobs and Departments', 'Repeat the workplace language clearly and politely while practicing talking about basic job roles and where people work.', 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('2e08be21-1b44-5caf-a463-2c0e6af9647f', '5fba3a1f-86d8-526d-be5f-b980b634cbd7', 'Выберите профессиональный ответ', 'quiz', '{"question":"Repeat the workplace language clearly and politely while practicing talking about basic job roles and where people work.","options":[{"id":"A","text":"I work in the sales department.","is_correct":true},{"id":"B","text":"She is an office assistant.","is_correct":false},{"id":"C","text":"He works with customers.","is_correct":false}],"explanation":"“I work in the sales department.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c37c3b5d-7af3-5f78-8a99-29786a26a383', '5fba3a1f-86d8-526d-be5f-b980b634cbd7', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"I work in the sales department.","word_bank":["I","work","in","the","sales","department","assistant"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e35a3e23-5bfd-5210-a647-6ec86363a230', '5fba3a1f-86d8-526d-be5f-b980b634cbd7', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["department","sales","the","in","work","I"],"correct_words":["I","work","in","the","sales","department"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('f2a3fc65-c8ed-5450-93cc-e54f00a661c4', '5fba3a1f-86d8-526d-be5f-b980b634cbd7', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"She is an office assistant.","language":"en","min_accuracy":0.7,"translation_hint":"Repeat the workplace language clearly and politely while practicing talking about basic job roles and where people work.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('02104718-56ea-5996-acb4-8553b477ee97', '5fba3a1f-86d8-526d-be5f-b980b634cbd7', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"I ___ in the sales department.","correct_answer":"work","hint_prefix":"w","explanation":"The missing word is work.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d00a30d5-6937-5849-ac76-8104f0e52edf', '5fba3a1f-86d8-526d-be5f-b980b634cbd7', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"manager","text":"manager"},{"id":"V2","audio_text":"assistant","text":"assistant"},{"id":"V3","audio_text":"customer","text":"customer"},{"id":"V4","audio_text":"team","text":"team"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e2db6bbf-f9f6-5015-bbb5-93941b26c847', '5fba3a1f-86d8-526d-be5f-b980b634cbd7', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"I work in the sales department."}],"answer_speaker":"Learner","options":[{"id":"A","text":"She is an office assistant.","is_correct":true},{"id":"B","text":"He works with customers.","is_correct":false},{"id":"C","text":"I know the word manager.","is_correct":false}],"explanation":"“She is an office assistant.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f0c525fc-3565-5ab9-9306-c50c3b4d6298', '5fba3a1f-86d8-526d-be5f-b980b634cbd7', 4)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('f3ca7b83-7e79-5139-98fd-0fcc1be240b0', NULL, 'Use the Language in Context: Jobs and Departments', 'Apply the target language in a realistic work situation while practicing talking about basic job roles and where people work.', 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('6a54350a-003f-5237-bcef-6ca1be1930dc', 'f3ca7b83-7e79-5139-98fd-0fcc1be240b0', 'Изучите язык рабочего общения', 'text', '{"body":"Use the Language in Context: Jobs and Departments. Workplace mission: Apply the target language in a realistic work situation while practicing talking about basic job roles and where people work. Models: She is an office assistant. He works with customers. Our manager works with the team.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('83d971fa-a08e-5e58-83f3-f488e963608f', 'f3ca7b83-7e79-5139-98fd-0fcc1be240b0', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"___ is an office assistant.","correct_answer":"She","options":["She","assistant","customer"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a0cf843e-b77b-5455-828d-bc41cf8dc3bf', 'f3ca7b83-7e79-5139-98fd-0fcc1be240b0', 'Слушайте рабочую речь', 'listening', '{"audio_text":"She is an office assistant.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('9eb13a2c-b32f-50d8-b78c-e571d82270b8', 'f3ca7b83-7e79-5139-98fd-0fcc1be240b0', 'Рабочая ситуация', 'story', '{"title":"Use the Language in Context: Jobs and Departments","scenes":[{"type":"dialogue","character":"Colleague","text":"She is an office assistant."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"He works with customers.","is_correct":true},{"text":"Our manager works with the team.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('6c0885ed-efa3-5a38-b161-d06a74d4d357', 'f3ca7b83-7e79-5139-98fd-0fcc1be240b0', 'Выберите рабочее значение', 'choose_definition', '{"word":"assistant","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''assistant''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''customer''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''team''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''work''.","is_correct":false}],"explanation":"assistant: A simple workplace meaning of ''assistant''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('eb8d5572-678e-5113-bbc3-7fc277eccb83', 'f3ca7b83-7e79-5139-98fd-0fcc1be240b0', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"assistant","text":"assistant"},{"id":"V2","audio_text":"customer","text":"customer"},{"id":"V3","audio_text":"team","text":"team"},{"id":"V4","audio_text":"work","text":"work"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4a701351-b957-56cb-bcb2-97c25fb4c465', 'f3ca7b83-7e79-5139-98fd-0fcc1be240b0', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"She is an office assistant."}],"answer_speaker":"Learner","options":[{"id":"A","text":"He works with customers.","is_correct":true},{"id":"B","text":"Our manager works with the team.","is_correct":false},{"id":"C","text":"I know the word assistant.","is_correct":false}],"explanation":"“He works with customers.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f0c525fc-3565-5ab9-9306-c50c3b4d6298', 'f3ca7b83-7e79-5139-98fd-0fcc1be240b0', 5)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('18680adb-b776-5310-906d-abada97f36f0', NULL, 'Handle a Short Exchange: Jobs and Departments', 'Respond appropriately in a two-person workplace interaction while practicing talking about basic job roles and where people work.', 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a21817ea-916d-5b98-b093-4ab075f48d4b', '18680adb-b776-5310-906d-abada97f36f0', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"customer","right":"A simple workplace meaning of ''customer''."},{"id":"P2","left":"team","right":"A simple workplace meaning of ''team''."},{"id":"P3","left":"work","right":"A simple workplace meaning of ''work''."},{"id":"P4","left":"company","right":"A simple workplace meaning of ''company''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('6f013ff4-c07c-51c3-bc07-c6e024a5cbf7', '18680adb-b776-5310-906d-abada97f36f0', 'Выберите профессиональный ответ', 'quiz', '{"question":"Respond appropriately in a two-person workplace interaction while practicing talking about basic job roles and where people work.","options":[{"id":"A","text":"He works with customers.","is_correct":true},{"id":"B","text":"Our manager works with the team.","is_correct":false},{"id":"C","text":"I work in the sales department.","is_correct":false}],"explanation":"“He works with customers.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('8b346ac8-a155-5504-b8f4-dbc0c954ee96', '18680adb-b776-5310-906d-abada97f36f0', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["customers","with","works","He"],"correct_words":["He","works","with","customers"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('404a05fe-bcd4-53ad-8786-135f1d846fe5', '18680adb-b776-5310-906d-abada97f36f0', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"He ___ with customers.","audio_text":"He works with customers.","language":"en","options":[{"id":"A","audio_text":"works","is_correct":true},{"id":"B","audio_text":"customer","is_correct":false},{"id":"C","audio_text":"team","is_correct":false}],"explanation":"The missing word is works.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('f159cceb-e87a-57e3-9469-7545c30e0459', '18680adb-b776-5310-906d-abada97f36f0', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"He ___ with customers.","correct_answer":"works","hint_prefix":"w","explanation":"The missing word is works.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('fa6f73bd-efbb-5ff6-b68a-4ec6eb4079e7', '18680adb-b776-5310-906d-abada97f36f0', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"Our manager works with the team.","language":"en","min_accuracy":0.7,"translation_hint":"Respond appropriately in a two-person workplace interaction while practicing talking about basic job roles and where people work.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('1230a98b-b0bc-53f7-ace3-2887ea220e73', '18680adb-b776-5310-906d-abada97f36f0', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"He works with customers."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Our manager works with the team.","is_correct":true},{"id":"B","text":"I work in the sales department.","is_correct":false},{"id":"C","text":"I know the word customer.","is_correct":false}],"explanation":"“Our manager works with the team.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f0c525fc-3565-5ab9-9306-c50c3b4d6298', '18680adb-b776-5310-906d-abada97f36f0', 6)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('e15003de-6d7f-5c09-b006-8251c0364b3d', NULL, 'Work with Less Support: Jobs and Departments', 'Complete the business task with fewer hints while practicing talking about basic job roles and where people work.', 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('8525f4e5-dbf6-5ba6-8d4b-d59a851bb448', 'e15003de-6d7f-5c09-b006-8251c0364b3d', 'Изучите язык рабочего общения', 'text', '{"body":"Work with Less Support: Jobs and Departments. Workplace mission: Complete the business task with fewer hints while practicing talking about basic job roles and where people work. Models: Our manager works with the team. I work in the sales department. She is an office assistant.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('f612076f-971c-5644-baa8-e7034e60e1a9', 'e15003de-6d7f-5c09-b006-8251c0364b3d', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"Our manager works with the team.","word_bank":["Our","manager","works","with","the","team","work"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c5911d2f-ed29-5a77-a36a-d9582162bd03', 'e15003de-6d7f-5c09-b006-8251c0364b3d', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"___ manager works with the team.","correct_answer":"Our","options":["Our","team","work"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('cc08a8fe-5d7b-5f5d-8865-5280d8b5ea96', 'e15003de-6d7f-5c09-b006-8251c0364b3d', 'Слушайте рабочую речь', 'listening', '{"audio_text":"Our manager works with the team.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('42d88994-3d29-5e4d-b749-3a8d424d2814', 'e15003de-6d7f-5c09-b006-8251c0364b3d', 'Рабочая ситуация', 'story', '{"title":"Work with Less Support: Jobs and Departments","scenes":[{"type":"dialogue","character":"Colleague","text":"Our manager works with the team."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"I work in the sales department.","is_correct":true},{"text":"She is an office assistant.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('2b0ea18b-be97-5205-8869-ff5d16879deb', 'e15003de-6d7f-5c09-b006-8251c0364b3d', 'Выберите рабочее значение', 'choose_definition', '{"word":"team","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''team''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''work''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''company''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''job''.","is_correct":false}],"explanation":"team: A simple workplace meaning of ''team''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('ba660d92-c979-5738-9a5e-9351e75df573', 'e15003de-6d7f-5c09-b006-8251c0364b3d', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Our manager works with the team."}],"answer_speaker":"Learner","options":[{"id":"A","text":"I work in the sales department.","is_correct":true},{"id":"B","text":"She is an office assistant.","is_correct":false},{"id":"C","text":"I know the word team.","is_correct":false}],"explanation":"“I work in the sales department.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f0c525fc-3565-5ab9-9306-c50c3b4d6298', 'e15003de-6d7f-5c09-b006-8251c0364b3d', 7)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('aba53e81-94cf-5fa3-81e8-888f01690f2d', NULL, 'Workplace Challenge: Jobs and Departments', 'Combine vocabulary, listening, and response skills while practicing talking about basic job roles and where people work.', 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('567a4a87-fac8-5767-8c4b-676dd4827870', 'aba53e81-94cf-5fa3-81e8-888f01690f2d', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"work","right":"A simple workplace meaning of ''work''."},{"id":"P2","left":"company","right":"A simple workplace meaning of ''company''."},{"id":"P3","left":"job","right":"A simple workplace meaning of ''job''."},{"id":"P4","left":"department","right":"A simple workplace meaning of ''department''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('2c18fcca-86d4-547e-bc54-517903fd2d04', 'aba53e81-94cf-5fa3-81e8-888f01690f2d', 'Выберите профессиональный ответ', 'quiz', '{"question":"Combine vocabulary, listening, and response skills while practicing talking about basic job roles and where people work.","options":[{"id":"A","text":"I work in the sales department.","is_correct":true},{"id":"B","text":"She is an office assistant.","is_correct":false},{"id":"C","text":"He works with customers.","is_correct":false}],"explanation":"“I work in the sales department.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e1becc08-9c6f-5ea3-81b1-aa56f3c2d719', 'aba53e81-94cf-5fa3-81e8-888f01690f2d', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["department","sales","the","in","work","I"],"correct_words":["I","work","in","the","sales","department"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('56509056-6d38-58ba-b69f-9b29d685d76a', 'aba53e81-94cf-5fa3-81e8-888f01690f2d', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"I ___ in the sales department.","audio_text":"I work in the sales department.","language":"en","options":[{"id":"A","audio_text":"work","is_correct":true},{"id":"B","audio_text":"company","is_correct":false},{"id":"C","audio_text":"job","is_correct":false}],"explanation":"The missing word is work.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('b146b1bf-5725-5fbb-8b88-de9d0cb859cb', 'aba53e81-94cf-5fa3-81e8-888f01690f2d', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"work","text":"work"},{"id":"V2","audio_text":"company","text":"company"},{"id":"V3","audio_text":"job","text":"job"},{"id":"V4","audio_text":"department","text":"department"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a3acaaff-8e9e-5ebf-a26f-1f498cad9818', 'aba53e81-94cf-5fa3-81e8-888f01690f2d', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"She is an office assistant.","language":"en","min_accuracy":0.7,"translation_hint":"Combine vocabulary, listening, and response skills while practicing talking about basic job roles and where people work.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('ecab5033-d34f-5c20-ae1f-eecb87a8d810', 'aba53e81-94cf-5fa3-81e8-888f01690f2d', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"I work in the sales department."}],"answer_speaker":"Learner","options":[{"id":"A","text":"She is an office assistant.","is_correct":true},{"id":"B","text":"He works with customers.","is_correct":false},{"id":"C","text":"I know the word work.","is_correct":false}],"explanation":"“She is an office assistant.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f0c525fc-3565-5ab9-9306-c50c3b4d6298', 'aba53e81-94cf-5fa3-81e8-888f01690f2d', 8)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('19026430-772d-55ff-b854-da3fae65e53e', NULL, 'Track Business Mission: Jobs and Departments', 'Complete a practical beginner workplace mission while practicing talking about basic job roles and where people work.', 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('5b4d0c92-240d-51c0-b673-85411b11ae4a', '19026430-772d-55ff-b854-da3fae65e53e', 'Изучите язык рабочего общения', 'text', '{"body":"Track Business Mission: Jobs and Departments. Workplace mission: Complete a practical beginner workplace mission while practicing talking about basic job roles and where people work. Models: She is an office assistant. He works with customers. Our manager works with the team.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('108ac601-412f-57d5-96b5-a6c79a8ff045', '19026430-772d-55ff-b854-da3fae65e53e', 'Выберите профессиональный ответ', 'quiz', '{"question":"Complete a practical beginner workplace mission while practicing talking about basic job roles and where people work.","options":[{"id":"A","text":"She is an office assistant.","is_correct":true},{"id":"B","text":"He works with customers.","is_correct":false},{"id":"C","text":"Our manager works with the team.","is_correct":false}],"explanation":"“She is an office assistant.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a743c2f5-d60c-50d9-a5cf-17d51cc6c9e2', '19026430-772d-55ff-b854-da3fae65e53e', 'Слушайте рабочую речь', 'listening', '{"audio_text":"She is an office assistant.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('6d245ee1-bbea-5211-9d13-fb59f764efd6', '19026430-772d-55ff-b854-da3fae65e53e', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"He works with customers.","language":"en","min_accuracy":0.7,"translation_hint":"Complete a practical beginner workplace mission while practicing talking about basic job roles and where people work.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('ee2b0a14-5330-5c56-a715-92a57656b14c', '19026430-772d-55ff-b854-da3fae65e53e', 'Рабочая ситуация', 'story', '{"title":"Track Business Mission: Jobs and Departments","scenes":[{"type":"dialogue","character":"Colleague","text":"She is an office assistant."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"He works with customers.","is_correct":true},{"text":"Our manager works with the team.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a62e42dc-1019-5eff-b4fe-a8e5bfaa5b2f', '19026430-772d-55ff-b854-da3fae65e53e', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"company","text":"company"},{"id":"V2","audio_text":"job","text":"job"},{"id":"V3","audio_text":"department","text":"department"},{"id":"V4","audio_text":"sales","text":"sales"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('5c14cc7d-7b9b-5e06-ac52-d830ec7e7325', '19026430-772d-55ff-b854-da3fae65e53e', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"She is an office assistant."}],"answer_speaker":"Learner","options":[{"id":"A","text":"He works with customers.","is_correct":true},{"id":"B","text":"Our manager works with the team.","is_correct":false},{"id":"C","text":"I know the word company.","is_correct":false}],"explanation":"“He works with customers.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f0c525fc-3565-5ab9-9306-c50c3b4d6298', '19026430-772d-55ff-b854-da3fae65e53e', 9)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('947c921f-d92a-514a-91a4-ff3de64f4441', 'A1_BUSINESS_T03', 'Workplace Objects and Places', 'An A1 Business English track focused on identifying common objects and locations in an office or workplace.', 'en', 'A1', 'thematic', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('6ee02a21-f0f0-5d59-95ee-f6f95fbb5323', NULL, 'Learn the Workplace Language: Workplace Objects and Places', 'Recognize the key workplace words and phrases while practicing identifying common objects and locations in an office or workplace.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d0079dba-f586-5526-b2cf-21d73c77b31d', '6ee02a21-f0f0-5d59-95ee-f6f95fbb5323', 'Изучите язык рабочего общения', 'text', '{"body":"Learn the Workplace Language: Workplace Objects and Places. Workplace mission: Recognize the key workplace words and phrases while practicing identifying common objects and locations in an office or workplace. Models: The computer is on the desk. The meeting room is next to the office. The printer is near the door.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('053abc85-b5ed-51fa-bc67-dcbd498bec8e', '6ee02a21-f0f0-5d59-95ee-f6f95fbb5323', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"desk","right":"A simple workplace meaning of ''desk''."},{"id":"P2","left":"computer","right":"A simple workplace meaning of ''computer''."},{"id":"P3","left":"phone","right":"A simple workplace meaning of ''phone''."},{"id":"P4","left":"office","right":"A simple workplace meaning of ''office''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('dd8e14ee-a88d-5727-b37b-ae652d94d5a0', '6ee02a21-f0f0-5d59-95ee-f6f95fbb5323', 'Выберите профессиональный ответ', 'quiz', '{"question":"Recognize the key workplace words and phrases while practicing identifying common objects and locations in an office or workplace.","options":[{"id":"A","text":"The computer is on the desk.","is_correct":true},{"id":"B","text":"The meeting room is next to the office.","is_correct":false},{"id":"C","text":"The printer is near the door.","is_correct":false}],"explanation":"“The computer is on the desk.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('78a9a9b7-cd52-55ea-b730-68a8f893166d', '6ee02a21-f0f0-5d59-95ee-f6f95fbb5323', 'Слушайте рабочую речь', 'listening', '{"audio_text":"The computer is on the desk.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('15981831-4de8-5434-9c63-a7936eccc8ad', '6ee02a21-f0f0-5d59-95ee-f6f95fbb5323', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"The meeting room is next to the office.","language":"en","min_accuracy":0.7,"translation_hint":"Recognize the key workplace words and phrases while practicing identifying common objects and locations in an office or workplace.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('dc63f34c-65f7-5637-b16a-2fbe3a9fe6b3', '6ee02a21-f0f0-5d59-95ee-f6f95fbb5323', 'Выберите рабочее значение', 'choose_definition', '{"word":"desk","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''desk''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''computer''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''phone''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''office''.","is_correct":false}],"explanation":"desk: A simple workplace meaning of ''desk''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('cf4abc4d-568b-59d3-8291-d2a3de324ea1', '6ee02a21-f0f0-5d59-95ee-f6f95fbb5323', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"The computer is on the desk."}],"answer_speaker":"Learner","options":[{"id":"A","text":"The meeting room is next to the office.","is_correct":true},{"id":"B","text":"The printer is near the door.","is_correct":false},{"id":"C","text":"I know the word desk.","is_correct":false}],"explanation":"“The meeting room is next to the office.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('947c921f-d92a-514a-91a4-ff3de64f4441', '6ee02a21-f0f0-5d59-95ee-f6f95fbb5323', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('09189a5c-5508-5205-bdf3-30b60d455836', NULL, 'Build the Core Sentence: Workplace Objects and Places', 'Produce a useful basic business sentence while practicing identifying common objects and locations in an office or workplace.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('f5738fa4-8b21-5f77-85e8-fe20cd7f2026', '09189a5c-5508-5205-bdf3-30b60d455836', 'Изучите язык рабочего общения', 'text', '{"body":"Build the Core Sentence: Workplace Objects and Places. Workplace mission: Produce a useful basic business sentence while practicing identifying common objects and locations in an office or workplace. Models: The meeting room is next to the office. The printer is near the door. Please put the file on the table.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('37e18406-fb74-5d11-81d2-922109a2bf13', '09189a5c-5508-5205-bdf3-30b60d455836', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"The meeting room is next to the office.","word_bank":["The","meeting","room","is","next","to","the","office","phone"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('45395f93-7f5b-556a-af84-2852f8da708c', '09189a5c-5508-5205-bdf3-30b60d455836', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"___ meeting room is next to the office.","correct_answer":"The","options":["The","computer","phone"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('bec03aab-070a-56c0-80b2-faa0c073daff', '09189a5c-5508-5205-bdf3-30b60d455836', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["office","the","to","next","is","room","meeting","The"],"correct_words":["The","meeting","room","is","next","to","the","office"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('218dec8a-e96b-5654-88ff-22b6e5720a40', '09189a5c-5508-5205-bdf3-30b60d455836', 'Слушайте рабочую речь', 'listening', '{"audio_text":"The meeting room is next to the office.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a467fc6c-9f47-5724-a820-0cd9ebe798e8', '09189a5c-5508-5205-bdf3-30b60d455836', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"___ meeting room is next to the office.","correct_answer":"The","hint_prefix":"T","explanation":"The missing word is The.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('f184511c-1d8b-5d7a-af94-257c629c92ce', '09189a5c-5508-5205-bdf3-30b60d455836', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"The meeting room is next to the office."}],"answer_speaker":"Learner","options":[{"id":"A","text":"The printer is near the door.","is_correct":true},{"id":"B","text":"Please put the file on the table.","is_correct":false},{"id":"C","text":"I know the word computer.","is_correct":false}],"explanation":"“The printer is near the door.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('947c921f-d92a-514a-91a4-ff3de64f4441', '09189a5c-5508-5205-bdf3-30b60d455836', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('b8986f67-b79c-525d-9215-0fc3f218d05e', NULL, 'Listen for Workplace Information: Workplace Objects and Places', 'Identify an important detail in short workplace audio while practicing identifying common objects and locations in an office or workplace.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e9381496-5c07-5fb1-8947-b6adbe0de2d5', 'b8986f67-b79c-525d-9215-0fc3f218d05e', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"phone","right":"A simple workplace meaning of ''phone''."},{"id":"P2","left":"office","right":"A simple workplace meaning of ''office''."},{"id":"P3","left":"meeting","right":"A simple workplace meaning of ''meeting''."},{"id":"P4","left":"room","right":"A simple workplace meaning of ''room''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('153853b4-374b-58a3-919d-e0cd88177138', 'b8986f67-b79c-525d-9215-0fc3f218d05e', 'Выберите профессиональный ответ', 'quiz', '{"question":"Identify an important detail in short workplace audio while practicing identifying common objects and locations in an office or workplace.","options":[{"id":"A","text":"The printer is near the door.","is_correct":true},{"id":"B","text":"Please put the file on the table.","is_correct":false},{"id":"C","text":"The computer is on the desk.","is_correct":false}],"explanation":"“The printer is near the door.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a496c2af-c042-56e1-93ab-93bcefc62f94', 'b8986f67-b79c-525d-9215-0fc3f218d05e', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["door","the","near","is","printer","The"],"correct_words":["The","printer","is","near","the","door"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c8a30a5c-4391-5d71-a334-c1c34fecca13', 'b8986f67-b79c-525d-9215-0fc3f218d05e', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"___ printer is near the door.","audio_text":"The printer is near the door.","language":"en","options":[{"id":"A","audio_text":"The","is_correct":true},{"id":"B","audio_text":"phone","is_correct":false},{"id":"C","audio_text":"office","is_correct":false}],"explanation":"The missing word is The.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c2f03fd9-76fa-5a59-b5b9-2fd2bdd67779', 'b8986f67-b79c-525d-9215-0fc3f218d05e', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"Please put the file on the table.","language":"en","min_accuracy":0.7,"translation_hint":"Identify an important detail in short workplace audio while practicing identifying common objects and locations in an office or workplace.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('bdd91f3b-f4be-5004-8cbe-f8bd8ef59178', 'b8986f67-b79c-525d-9215-0fc3f218d05e', 'Рабочая ситуация', 'story', '{"title":"Listen for Workplace Information: Workplace Objects and Places","scenes":[{"type":"dialogue","character":"Colleague","text":"The printer is near the door."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"Please put the file on the table.","is_correct":true},{"text":"The computer is on the desk.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('10bac00f-edd2-5515-8246-eac7d2de2e3a', 'b8986f67-b79c-525d-9215-0fc3f218d05e', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"The printer is near the door."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Please put the file on the table.","is_correct":true},{"id":"B","text":"The computer is on the desk.","is_correct":false},{"id":"C","text":"I know the word phone.","is_correct":false}],"explanation":"“Please put the file on the table.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('947c921f-d92a-514a-91a4-ff3de64f4441', 'b8986f67-b79c-525d-9215-0fc3f218d05e', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('9c92f822-39c4-55f4-b6a7-f2addd16ca7d', NULL, 'Use Polite Professional English: Workplace Objects and Places', 'Choose language appropriate for a simple workplace situation while practicing identifying common objects and locations in an office or workplace.', 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('50786506-8edc-57cb-a108-9683985a1b5a', '9c92f822-39c4-55f4-b6a7-f2addd16ca7d', 'Изучите язык рабочего общения', 'text', '{"body":"Use Polite Professional English: Workplace Objects and Places. Workplace mission: Choose language appropriate for a simple workplace situation while practicing identifying common objects and locations in an office or workplace. Models: Please put the file on the table. The computer is on the desk. The meeting room is next to the office.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('f543c7e4-b931-564d-9d61-96923ba8b01f', '9c92f822-39c4-55f4-b6a7-f2addd16ca7d', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"office","right":"A simple workplace meaning of ''office''."},{"id":"P2","left":"meeting","right":"A simple workplace meaning of ''meeting''."},{"id":"P3","left":"room","right":"A simple workplace meaning of ''room''."},{"id":"P4","left":"door","right":"A simple workplace meaning of ''door''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('81a8426f-10cc-557c-8a6b-e6096afcf0c0', '9c92f822-39c4-55f4-b6a7-f2addd16ca7d', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"___ put the file on the table.","correct_answer":"Please","options":["Please","office","meeting"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('fc09c0e3-f950-54ce-bd6a-58a0d6f3bb0c', '9c92f822-39c4-55f4-b6a7-f2addd16ca7d', 'Слушайте рабочую речь', 'listening', '{"audio_text":"Please put the file on the table.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e194977c-cbd3-5890-bba3-a961938b0513', '9c92f822-39c4-55f4-b6a7-f2addd16ca7d', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"___ put the file on the table.","audio_text":"Please put the file on the table.","language":"en","options":[{"id":"A","audio_text":"Please","is_correct":true},{"id":"B","audio_text":"office","is_correct":false},{"id":"C","audio_text":"meeting","is_correct":false}],"explanation":"The missing word is Please.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('894fc48d-ba23-5cbe-930e-0670c6592c4c', '9c92f822-39c4-55f4-b6a7-f2addd16ca7d', 'Выберите рабочее значение', 'choose_definition', '{"word":"office","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''office''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''meeting''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''room''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''door''.","is_correct":false}],"explanation":"office: A simple workplace meaning of ''office''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('22e1c72f-bba5-5207-a2ed-f8d32ff16ae7', '9c92f822-39c4-55f4-b6a7-f2addd16ca7d', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Please put the file on the table."}],"answer_speaker":"Learner","options":[{"id":"A","text":"The computer is on the desk.","is_correct":true},{"id":"B","text":"The meeting room is next to the office.","is_correct":false},{"id":"C","text":"I know the word office.","is_correct":false}],"explanation":"“The computer is on the desk.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('947c921f-d92a-514a-91a4-ff3de64f4441', '9c92f822-39c4-55f4-b6a7-f2addd16ca7d', 3)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('c62ed627-a701-5938-bb0e-86f4b89d3b1a', NULL, 'Practice the Spoken Model: Workplace Objects and Places', 'Repeat the workplace language clearly and politely while practicing identifying common objects and locations in an office or workplace.', 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('9c0512dd-a3c5-5567-b96a-de61f63449c9', 'c62ed627-a701-5938-bb0e-86f4b89d3b1a', 'Выберите профессиональный ответ', 'quiz', '{"question":"Repeat the workplace language clearly and politely while practicing identifying common objects and locations in an office or workplace.","options":[{"id":"A","text":"The computer is on the desk.","is_correct":true},{"id":"B","text":"The meeting room is next to the office.","is_correct":false},{"id":"C","text":"The printer is near the door.","is_correct":false}],"explanation":"“The computer is on the desk.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('891a2f17-3398-5d43-a205-9a6d2e490492', 'c62ed627-a701-5938-bb0e-86f4b89d3b1a', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"The computer is on the desk.","word_bank":["The","computer","is","on","the","desk","room"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4a312485-7b63-52d9-9e5c-d12551d5e830', 'c62ed627-a701-5938-bb0e-86f4b89d3b1a', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["desk","the","on","is","computer","The"],"correct_words":["The","computer","is","on","the","desk"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('539ef15c-551b-509e-ad98-e2e7d369eac1', 'c62ed627-a701-5938-bb0e-86f4b89d3b1a', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"The meeting room is next to the office.","language":"en","min_accuracy":0.7,"translation_hint":"Repeat the workplace language clearly and politely while practicing identifying common objects and locations in an office or workplace.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('84254bcd-15a9-5a00-987f-689f05376f12', 'c62ed627-a701-5938-bb0e-86f4b89d3b1a', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"___ computer is on the desk.","correct_answer":"The","hint_prefix":"T","explanation":"The missing word is The.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('3b240606-a6ed-5e1b-912b-fb63345dc0f6', 'c62ed627-a701-5938-bb0e-86f4b89d3b1a', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"meeting","text":"meeting"},{"id":"V2","audio_text":"room","text":"room"},{"id":"V3","audio_text":"door","text":"door"},{"id":"V4","audio_text":"printer","text":"printer"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('60ddbfc8-5460-511b-adb7-d7735576c94b', 'c62ed627-a701-5938-bb0e-86f4b89d3b1a', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"The computer is on the desk."}],"answer_speaker":"Learner","options":[{"id":"A","text":"The meeting room is next to the office.","is_correct":true},{"id":"B","text":"The printer is near the door.","is_correct":false},{"id":"C","text":"I know the word meeting.","is_correct":false}],"explanation":"“The meeting room is next to the office.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('947c921f-d92a-514a-91a4-ff3de64f4441', 'c62ed627-a701-5938-bb0e-86f4b89d3b1a', 4)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('756b4075-ed04-5037-aadd-5d576bd34140', NULL, 'Use the Language in Context: Workplace Objects and Places', 'Apply the target language in a realistic work situation while practicing identifying common objects and locations in an office or workplace.', 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('b28bf8c8-0c0c-5030-953c-76031907af2c', '756b4075-ed04-5037-aadd-5d576bd34140', 'Изучите язык рабочего общения', 'text', '{"body":"Use the Language in Context: Workplace Objects and Places. Workplace mission: Apply the target language in a realistic work situation while practicing identifying common objects and locations in an office or workplace. Models: The meeting room is next to the office. The printer is near the door. Please put the file on the table.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('560ad538-76fd-521a-bd15-e2f02416d4af', '756b4075-ed04-5037-aadd-5d576bd34140', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"___ meeting room is next to the office.","correct_answer":"The","options":["The","room","door"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('fd1ecdf1-7714-5334-a8ee-e3bac25ef421', '756b4075-ed04-5037-aadd-5d576bd34140', 'Слушайте рабочую речь', 'listening', '{"audio_text":"The meeting room is next to the office.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('3bf401d4-dfa6-5c5a-9bcb-906c8d191a83', '756b4075-ed04-5037-aadd-5d576bd34140', 'Рабочая ситуация', 'story', '{"title":"Use the Language in Context: Workplace Objects and Places","scenes":[{"type":"dialogue","character":"Colleague","text":"The meeting room is next to the office."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"The printer is near the door.","is_correct":true},{"text":"Please put the file on the table.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4b9f03b4-62c8-506c-bb0e-539a4588411d', '756b4075-ed04-5037-aadd-5d576bd34140', 'Выберите рабочее значение', 'choose_definition', '{"word":"room","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''room''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''door''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''printer''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''chair''.","is_correct":false}],"explanation":"room: A simple workplace meaning of ''room''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('78b41fd8-b640-5244-a7fc-38897f75d5a0', '756b4075-ed04-5037-aadd-5d576bd34140', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"room","text":"room"},{"id":"V2","audio_text":"door","text":"door"},{"id":"V3","audio_text":"printer","text":"printer"},{"id":"V4","audio_text":"chair","text":"chair"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e3379ca3-6527-5572-a538-6f40744eb156', '756b4075-ed04-5037-aadd-5d576bd34140', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"The meeting room is next to the office."}],"answer_speaker":"Learner","options":[{"id":"A","text":"The printer is near the door.","is_correct":true},{"id":"B","text":"Please put the file on the table.","is_correct":false},{"id":"C","text":"I know the word room.","is_correct":false}],"explanation":"“The printer is near the door.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('947c921f-d92a-514a-91a4-ff3de64f4441', '756b4075-ed04-5037-aadd-5d576bd34140', 5)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('69bf5ed1-6c86-5900-9d0d-c4efee2e00be', NULL, 'Handle a Short Exchange: Workplace Objects and Places', 'Respond appropriately in a two-person workplace interaction while practicing identifying common objects and locations in an office or workplace.', 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('532aa933-3120-5a43-aadb-b005d4b295a8', '69bf5ed1-6c86-5900-9d0d-c4efee2e00be', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"door","right":"A simple workplace meaning of ''door''."},{"id":"P2","left":"printer","right":"A simple workplace meaning of ''printer''."},{"id":"P3","left":"chair","right":"A simple workplace meaning of ''chair''."},{"id":"P4","left":"table","right":"A simple workplace meaning of ''table''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('20124c43-3692-59ab-821c-9d19f4bda635', '69bf5ed1-6c86-5900-9d0d-c4efee2e00be', 'Выберите профессиональный ответ', 'quiz', '{"question":"Respond appropriately in a two-person workplace interaction while practicing identifying common objects and locations in an office or workplace.","options":[{"id":"A","text":"The printer is near the door.","is_correct":true},{"id":"B","text":"Please put the file on the table.","is_correct":false},{"id":"C","text":"The computer is on the desk.","is_correct":false}],"explanation":"“The printer is near the door.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('896a6761-323a-586d-ad36-113e44867c64', '69bf5ed1-6c86-5900-9d0d-c4efee2e00be', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["door","the","near","is","printer","The"],"correct_words":["The","printer","is","near","the","door"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('3ce83002-8e19-5205-9cd9-b28ff6349dff', '69bf5ed1-6c86-5900-9d0d-c4efee2e00be', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"___ printer is near the door.","audio_text":"The printer is near the door.","language":"en","options":[{"id":"A","audio_text":"The","is_correct":true},{"id":"B","audio_text":"door","is_correct":false},{"id":"C","audio_text":"printer","is_correct":false}],"explanation":"The missing word is The.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4b580769-9afb-5467-8c0e-bfb3a19009e0', '69bf5ed1-6c86-5900-9d0d-c4efee2e00be', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"___ printer is near the door.","correct_answer":"The","hint_prefix":"T","explanation":"The missing word is The.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a9a50f48-4b43-5b1a-94b5-181e124dc93b', '69bf5ed1-6c86-5900-9d0d-c4efee2e00be', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"Please put the file on the table.","language":"en","min_accuracy":0.7,"translation_hint":"Respond appropriately in a two-person workplace interaction while practicing identifying common objects and locations in an office or workplace.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4438c646-6b61-55c1-9054-5516ee492f6a', '69bf5ed1-6c86-5900-9d0d-c4efee2e00be', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"The printer is near the door."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Please put the file on the table.","is_correct":true},{"id":"B","text":"The computer is on the desk.","is_correct":false},{"id":"C","text":"I know the word door.","is_correct":false}],"explanation":"“Please put the file on the table.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('947c921f-d92a-514a-91a4-ff3de64f4441', '69bf5ed1-6c86-5900-9d0d-c4efee2e00be', 6)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('3f7fa595-a422-52c9-8894-a7aa779b9a28', NULL, 'Work with Less Support: Workplace Objects and Places', 'Complete the business task with fewer hints while practicing identifying common objects and locations in an office or workplace.', 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a1579107-b87a-51b0-acb9-4fb959a1f010', '3f7fa595-a422-52c9-8894-a7aa779b9a28', 'Изучите язык рабочего общения', 'text', '{"body":"Work with Less Support: Workplace Objects and Places. Workplace mission: Complete the business task with fewer hints while practicing identifying common objects and locations in an office or workplace. Models: Please put the file on the table. The computer is on the desk. The meeting room is next to the office.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('46416554-60f9-5c08-9d86-cd46152407d9', '3f7fa595-a422-52c9-8894-a7aa779b9a28', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"Please put the file on the table.","word_bank":["Please","put","the","file","on","the","table","chair"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('8a8243b3-4cb3-5c4d-8ae2-f83c3050010f', '3f7fa595-a422-52c9-8894-a7aa779b9a28', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"___ put the file on the table.","correct_answer":"Please","options":["Please","printer","chair"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('9c93a805-efd3-593c-9236-73a8517705fe', '3f7fa595-a422-52c9-8894-a7aa779b9a28', 'Слушайте рабочую речь', 'listening', '{"audio_text":"Please put the file on the table.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('707099e7-5489-5ae1-a26c-2bfc1c0667a3', '3f7fa595-a422-52c9-8894-a7aa779b9a28', 'Рабочая ситуация', 'story', '{"title":"Work with Less Support: Workplace Objects and Places","scenes":[{"type":"dialogue","character":"Colleague","text":"Please put the file on the table."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"The computer is on the desk.","is_correct":true},{"text":"The meeting room is next to the office.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a7576ff7-a742-5a7b-bb6d-f8edd9b0ea0e', '3f7fa595-a422-52c9-8894-a7aa779b9a28', 'Выберите рабочее значение', 'choose_definition', '{"word":"printer","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''printer''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''chair''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''table''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''desk''.","is_correct":false}],"explanation":"printer: A simple workplace meaning of ''printer''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('6a05df7d-a50d-538e-a3e1-5d1446853a78', '3f7fa595-a422-52c9-8894-a7aa779b9a28', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Please put the file on the table."}],"answer_speaker":"Learner","options":[{"id":"A","text":"The computer is on the desk.","is_correct":true},{"id":"B","text":"The meeting room is next to the office.","is_correct":false},{"id":"C","text":"I know the word printer.","is_correct":false}],"explanation":"“The computer is on the desk.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('947c921f-d92a-514a-91a4-ff3de64f4441', '3f7fa595-a422-52c9-8894-a7aa779b9a28', 7)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('f77cd227-06f6-56ed-817f-0cf345d7be8f', NULL, 'Workplace Challenge: Workplace Objects and Places', 'Combine vocabulary, listening, and response skills while practicing identifying common objects and locations in an office or workplace.', 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('fb39d728-3f03-5b46-9568-7fc3d2565d59', 'f77cd227-06f6-56ed-817f-0cf345d7be8f', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"chair","right":"A simple workplace meaning of ''chair''."},{"id":"P2","left":"table","right":"A simple workplace meaning of ''table''."},{"id":"P3","left":"desk","right":"A simple workplace meaning of ''desk''."},{"id":"P4","left":"computer","right":"A simple workplace meaning of ''computer''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('736b77a7-c40e-5db1-9fda-1203c21a30d4', 'f77cd227-06f6-56ed-817f-0cf345d7be8f', 'Выберите профессиональный ответ', 'quiz', '{"question":"Combine vocabulary, listening, and response skills while practicing identifying common objects and locations in an office or workplace.","options":[{"id":"A","text":"The computer is on the desk.","is_correct":true},{"id":"B","text":"The meeting room is next to the office.","is_correct":false},{"id":"C","text":"The printer is near the door.","is_correct":false}],"explanation":"“The computer is on the desk.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('fd1d809c-c292-59ac-a78a-c9368a887a76', 'f77cd227-06f6-56ed-817f-0cf345d7be8f', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["desk","the","on","is","computer","The"],"correct_words":["The","computer","is","on","the","desk"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('15bbba93-e686-525a-bd0a-c2bce39f3d68', 'f77cd227-06f6-56ed-817f-0cf345d7be8f', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"___ computer is on the desk.","audio_text":"The computer is on the desk.","language":"en","options":[{"id":"A","audio_text":"The","is_correct":true},{"id":"B","audio_text":"chair","is_correct":false},{"id":"C","audio_text":"table","is_correct":false}],"explanation":"The missing word is The.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('f2535012-5793-5f92-add4-8aaf08ebd7b8', 'f77cd227-06f6-56ed-817f-0cf345d7be8f', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"chair","text":"chair"},{"id":"V2","audio_text":"table","text":"table"},{"id":"V3","audio_text":"desk","text":"desk"},{"id":"V4","audio_text":"computer","text":"computer"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d3f93bb8-b7fb-566b-84f9-5dd3f2275da2', 'f77cd227-06f6-56ed-817f-0cf345d7be8f', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"The meeting room is next to the office.","language":"en","min_accuracy":0.7,"translation_hint":"Combine vocabulary, listening, and response skills while practicing identifying common objects and locations in an office or workplace.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4ee1597c-a74f-584e-a943-352983d95ddb', 'f77cd227-06f6-56ed-817f-0cf345d7be8f', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"The computer is on the desk."}],"answer_speaker":"Learner","options":[{"id":"A","text":"The meeting room is next to the office.","is_correct":true},{"id":"B","text":"The printer is near the door.","is_correct":false},{"id":"C","text":"I know the word chair.","is_correct":false}],"explanation":"“The meeting room is next to the office.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('947c921f-d92a-514a-91a4-ff3de64f4441', 'f77cd227-06f6-56ed-817f-0cf345d7be8f', 8)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('3af7c25e-04ec-56d0-b6fb-a9d70bf49955', NULL, 'Track Business Mission: Workplace Objects and Places', 'Complete a practical beginner workplace mission while practicing identifying common objects and locations in an office or workplace.', 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('9b0aff92-f8bb-5f40-938f-43cd176312f8', '3af7c25e-04ec-56d0-b6fb-a9d70bf49955', 'Изучите язык рабочего общения', 'text', '{"body":"Track Business Mission: Workplace Objects and Places. Workplace mission: Complete a practical beginner workplace mission while practicing identifying common objects and locations in an office or workplace. Models: The meeting room is next to the office. The printer is near the door. Please put the file on the table.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('1dee14ea-bf01-557f-8e6d-728a67c8d5ba', '3af7c25e-04ec-56d0-b6fb-a9d70bf49955', 'Выберите профессиональный ответ', 'quiz', '{"question":"Complete a practical beginner workplace mission while practicing identifying common objects and locations in an office or workplace.","options":[{"id":"A","text":"The meeting room is next to the office.","is_correct":true},{"id":"B","text":"The printer is near the door.","is_correct":false},{"id":"C","text":"Please put the file on the table.","is_correct":false}],"explanation":"“The meeting room is next to the office.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('800cb35c-ad72-5e1b-a1be-f8c872ffd1f0', '3af7c25e-04ec-56d0-b6fb-a9d70bf49955', 'Слушайте рабочую речь', 'listening', '{"audio_text":"The meeting room is next to the office.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('73f03b51-4c98-50fe-b5ce-456c26ee79a5', '3af7c25e-04ec-56d0-b6fb-a9d70bf49955', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"The printer is near the door.","language":"en","min_accuracy":0.7,"translation_hint":"Complete a practical beginner workplace mission while practicing identifying common objects and locations in an office or workplace.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('8a4a8c34-9e3a-5111-8dc8-a3bae1935ac9', '3af7c25e-04ec-56d0-b6fb-a9d70bf49955', 'Рабочая ситуация', 'story', '{"title":"Track Business Mission: Workplace Objects and Places","scenes":[{"type":"dialogue","character":"Colleague","text":"The meeting room is next to the office."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"The printer is near the door.","is_correct":true},{"text":"Please put the file on the table.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('0471210b-5d19-5219-9ff4-289381bcce12', '3af7c25e-04ec-56d0-b6fb-a9d70bf49955', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"table","text":"table"},{"id":"V2","audio_text":"desk","text":"desk"},{"id":"V3","audio_text":"computer","text":"computer"},{"id":"V4","audio_text":"phone","text":"phone"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('23a980ed-22b3-5712-b398-39fd42465024', '3af7c25e-04ec-56d0-b6fb-a9d70bf49955', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"The meeting room is next to the office."}],"answer_speaker":"Learner","options":[{"id":"A","text":"The printer is near the door.","is_correct":true},{"id":"B","text":"Please put the file on the table.","is_correct":false},{"id":"C","text":"I know the word table.","is_correct":false}],"explanation":"“The printer is near the door.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('947c921f-d92a-514a-91a4-ff3de64f4441', '3af7c25e-04ec-56d0-b6fb-a9d70bf49955', 9)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('efe453ec-9255-527e-8d97-824a40a9a366', 'A1_BUSINESS_T04', 'Daily Work Routines', 'An A1 Business English track focused on describing a simple workday and understanding routine workplace actions.', 'en', 'A1', 'thematic', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('94c1aa25-73b8-5e12-a5fa-43b2a4143cdf', NULL, 'Learn the Workplace Language: Daily Work Routines', 'Recognize the key workplace words and phrases while practicing describing a simple workday and understanding routine workplace actions.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('edc19275-434d-5358-96a0-1127e1a1b2f4', '94c1aa25-73b8-5e12-a5fa-43b2a4143cdf', 'Изучите язык рабочего общения', 'text', '{"body":"Learn the Workplace Language: Daily Work Routines. Workplace mission: Recognize the key workplace words and phrases while practicing describing a simple workday and understanding routine workplace actions. Models: I start work at nine. I check my email in the morning. We have a meeting after lunch.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('5045b74d-b24e-5db0-9731-6d0a25b53a8d', '94c1aa25-73b8-5e12-a5fa-43b2a4143cdf', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"start","right":"A simple workplace meaning of ''start''."},{"id":"P2","left":"finish","right":"A simple workplace meaning of ''finish''."},{"id":"P3","left":"email","right":"A simple workplace meaning of ''email''."},{"id":"P4","left":"call","right":"A simple workplace meaning of ''call''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('06449af8-980a-52e0-8f2d-d8cea1a084d9', '94c1aa25-73b8-5e12-a5fa-43b2a4143cdf', 'Выберите профессиональный ответ', 'quiz', '{"question":"Recognize the key workplace words and phrases while practicing describing a simple workday and understanding routine workplace actions.","options":[{"id":"A","text":"I start work at nine.","is_correct":true},{"id":"B","text":"I check my email in the morning.","is_correct":false},{"id":"C","text":"We have a meeting after lunch.","is_correct":false}],"explanation":"“I start work at nine.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('80572fe1-6b8a-5dac-91c9-32efd5006fbe', '94c1aa25-73b8-5e12-a5fa-43b2a4143cdf', 'Слушайте рабочую речь', 'listening', '{"audio_text":"I start work at nine.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('0f6ba8ca-a9f1-5a36-b1fe-28a2b07c49f7', '94c1aa25-73b8-5e12-a5fa-43b2a4143cdf', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"I check my email in the morning.","language":"en","min_accuracy":0.7,"translation_hint":"Recognize the key workplace words and phrases while practicing describing a simple workday and understanding routine workplace actions.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('0bb7c856-f61d-5922-9078-fbdd063c021c', '94c1aa25-73b8-5e12-a5fa-43b2a4143cdf', 'Выберите рабочее значение', 'choose_definition', '{"word":"start","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''start''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''finish''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''email''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''call''.","is_correct":false}],"explanation":"start: A simple workplace meaning of ''start''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('8d779d96-10eb-5786-9b01-809dcbaec481', '94c1aa25-73b8-5e12-a5fa-43b2a4143cdf', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"I start work at nine."}],"answer_speaker":"Learner","options":[{"id":"A","text":"I check my email in the morning.","is_correct":true},{"id":"B","text":"We have a meeting after lunch.","is_correct":false},{"id":"C","text":"I know the word start.","is_correct":false}],"explanation":"“I check my email in the morning.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('efe453ec-9255-527e-8d97-824a40a9a366', '94c1aa25-73b8-5e12-a5fa-43b2a4143cdf', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('822c5ef9-0045-5103-8a42-0bcb543a5deb', NULL, 'Build the Core Sentence: Daily Work Routines', 'Produce a useful basic business sentence while practicing describing a simple workday and understanding routine workplace actions.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('fdc90b5a-ecb1-5021-a010-3506f1526e33', '822c5ef9-0045-5103-8a42-0bcb543a5deb', 'Изучите язык рабочего общения', 'text', '{"body":"Build the Core Sentence: Daily Work Routines. Workplace mission: Produce a useful basic business sentence while practicing describing a simple workday and understanding routine workplace actions. Models: I check my email in the morning. We have a meeting after lunch. I finish work at five.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('26810644-5e7e-50f5-969f-bd4ef6e99cb8', '822c5ef9-0045-5103-8a42-0bcb543a5deb', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"I check my email in the morning.","word_bank":["I","check","my","email","in","the","morning","email"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('072ead2f-5d0e-5deb-94a4-90da08740ddd', '822c5ef9-0045-5103-8a42-0bcb543a5deb', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"I ___ my email in the morning.","correct_answer":"check","options":["check","finish","email"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c3d99925-305c-53d4-85fd-6f71653afa91', '822c5ef9-0045-5103-8a42-0bcb543a5deb', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["morning","the","in","email","my","check","I"],"correct_words":["I","check","my","email","in","the","morning"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('cabb3f27-0bc1-5616-a994-304fc31d93c1', '822c5ef9-0045-5103-8a42-0bcb543a5deb', 'Слушайте рабочую речь', 'listening', '{"audio_text":"I check my email in the morning.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('04e5b5b6-912b-5db3-8b73-4af2b1330082', '822c5ef9-0045-5103-8a42-0bcb543a5deb', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"I ___ my email in the morning.","correct_answer":"check","hint_prefix":"c","explanation":"The missing word is check.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('f324b884-4caa-5693-8be2-202edf34eb82', '822c5ef9-0045-5103-8a42-0bcb543a5deb', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"I check my email in the morning."}],"answer_speaker":"Learner","options":[{"id":"A","text":"We have a meeting after lunch.","is_correct":true},{"id":"B","text":"I finish work at five.","is_correct":false},{"id":"C","text":"I know the word finish.","is_correct":false}],"explanation":"“We have a meeting after lunch.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('efe453ec-9255-527e-8d97-824a40a9a366', '822c5ef9-0045-5103-8a42-0bcb543a5deb', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('883e7854-873e-52a3-949e-aeaa4c9c1cf7', NULL, 'Listen for Workplace Information: Daily Work Routines', 'Identify an important detail in short workplace audio while practicing describing a simple workday and understanding routine workplace actions.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('29fcc7f1-b083-522a-8f93-7742118957cd', '883e7854-873e-52a3-949e-aeaa4c9c1cf7', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"email","right":"A simple workplace meaning of ''email''."},{"id":"P2","left":"call","right":"A simple workplace meaning of ''call''."},{"id":"P3","left":"meeting","right":"A simple workplace meaning of ''meeting''."},{"id":"P4","left":"lunch","right":"A simple workplace meaning of ''lunch''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('220f18b7-7146-5f71-9c9f-d47ba4ce158a', '883e7854-873e-52a3-949e-aeaa4c9c1cf7', 'Выберите профессиональный ответ', 'quiz', '{"question":"Identify an important detail in short workplace audio while practicing describing a simple workday and understanding routine workplace actions.","options":[{"id":"A","text":"We have a meeting after lunch.","is_correct":true},{"id":"B","text":"I finish work at five.","is_correct":false},{"id":"C","text":"I start work at nine.","is_correct":false}],"explanation":"“We have a meeting after lunch.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('eec8bf41-6860-55f5-af20-da5f382d9cb7', '883e7854-873e-52a3-949e-aeaa4c9c1cf7', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["lunch","after","meeting","a","have","We"],"correct_words":["We","have","a","meeting","after","lunch"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('9525bab4-f83d-5000-abe3-adeaaf96c7cf', '883e7854-873e-52a3-949e-aeaa4c9c1cf7', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"We ___ a meeting after lunch.","audio_text":"We have a meeting after lunch.","language":"en","options":[{"id":"A","audio_text":"have","is_correct":true},{"id":"B","audio_text":"email","is_correct":false},{"id":"C","audio_text":"call","is_correct":false}],"explanation":"The missing word is have.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d1babb76-4027-5d28-a2cc-cf0d4d193c78', '883e7854-873e-52a3-949e-aeaa4c9c1cf7', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"I finish work at five.","language":"en","min_accuracy":0.7,"translation_hint":"Identify an important detail in short workplace audio while practicing describing a simple workday and understanding routine workplace actions.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e606f907-fab9-5744-90c7-fca5a31b440a', '883e7854-873e-52a3-949e-aeaa4c9c1cf7', 'Рабочая ситуация', 'story', '{"title":"Listen for Workplace Information: Daily Work Routines","scenes":[{"type":"dialogue","character":"Colleague","text":"We have a meeting after lunch."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"I finish work at five.","is_correct":true},{"text":"I start work at nine.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('b05e723f-0143-5334-8d38-e1d807ccf937', '883e7854-873e-52a3-949e-aeaa4c9c1cf7', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"We have a meeting after lunch."}],"answer_speaker":"Learner","options":[{"id":"A","text":"I finish work at five.","is_correct":true},{"id":"B","text":"I start work at nine.","is_correct":false},{"id":"C","text":"I know the word email.","is_correct":false}],"explanation":"“I finish work at five.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('efe453ec-9255-527e-8d97-824a40a9a366', '883e7854-873e-52a3-949e-aeaa4c9c1cf7', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('ceed390c-ac18-5ae3-8246-1f001a332b8a', NULL, 'Use Polite Professional English: Daily Work Routines', 'Choose language appropriate for a simple workplace situation while practicing describing a simple workday and understanding routine workplace actions.', 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a43cc968-35c3-53d0-89f9-8449de86baa8', 'ceed390c-ac18-5ae3-8246-1f001a332b8a', 'Изучите язык рабочего общения', 'text', '{"body":"Use Polite Professional English: Daily Work Routines. Workplace mission: Choose language appropriate for a simple workplace situation while practicing describing a simple workday and understanding routine workplace actions. Models: I finish work at five. I start work at nine. I check my email in the morning.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('2756fb2b-9991-55b9-81c0-6385da113367', 'ceed390c-ac18-5ae3-8246-1f001a332b8a', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"call","right":"A simple workplace meaning of ''call''."},{"id":"P2","left":"meeting","right":"A simple workplace meaning of ''meeting''."},{"id":"P3","left":"lunch","right":"A simple workplace meaning of ''lunch''."},{"id":"P4","left":"morning","right":"A simple workplace meaning of ''morning''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('75932f56-03e0-547c-9061-0fc0b5db2284', 'ceed390c-ac18-5ae3-8246-1f001a332b8a', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"I ___ work at five.","correct_answer":"finish","options":["finish","call","meeting"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('54c1dd4b-e572-514d-9100-5507631920df', 'ceed390c-ac18-5ae3-8246-1f001a332b8a', 'Слушайте рабочую речь', 'listening', '{"audio_text":"I finish work at five.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('8502de46-cfd2-59b8-9223-bac96dab3d9e', 'ceed390c-ac18-5ae3-8246-1f001a332b8a', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"I ___ work at five.","audio_text":"I finish work at five.","language":"en","options":[{"id":"A","audio_text":"finish","is_correct":true},{"id":"B","audio_text":"call","is_correct":false},{"id":"C","audio_text":"meeting","is_correct":false}],"explanation":"The missing word is finish.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c66de4d8-3762-5a7d-b950-cb350823b474', 'ceed390c-ac18-5ae3-8246-1f001a332b8a', 'Выберите рабочее значение', 'choose_definition', '{"word":"call","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''call''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''meeting''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''lunch''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''morning''.","is_correct":false}],"explanation":"call: A simple workplace meaning of ''call''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4d1e9482-82ca-51a6-8da3-c419f689c721', 'ceed390c-ac18-5ae3-8246-1f001a332b8a', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"I finish work at five."}],"answer_speaker":"Learner","options":[{"id":"A","text":"I start work at nine.","is_correct":true},{"id":"B","text":"I check my email in the morning.","is_correct":false},{"id":"C","text":"I know the word call.","is_correct":false}],"explanation":"“I start work at nine.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('efe453ec-9255-527e-8d97-824a40a9a366', 'ceed390c-ac18-5ae3-8246-1f001a332b8a', 3)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('9a106c27-688b-58f2-afb1-8edbe441465e', NULL, 'Practice the Spoken Model: Daily Work Routines', 'Repeat the workplace language clearly and politely while practicing describing a simple workday and understanding routine workplace actions.', 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('09919298-9ae5-5db7-949a-d4fad67f390f', '9a106c27-688b-58f2-afb1-8edbe441465e', 'Выберите профессиональный ответ', 'quiz', '{"question":"Repeat the workplace language clearly and politely while practicing describing a simple workday and understanding routine workplace actions.","options":[{"id":"A","text":"I start work at nine.","is_correct":true},{"id":"B","text":"I check my email in the morning.","is_correct":false},{"id":"C","text":"We have a meeting after lunch.","is_correct":false}],"explanation":"“I start work at nine.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('951f798c-2d3a-5279-93bc-e40096e93047', '9a106c27-688b-58f2-afb1-8edbe441465e', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"I start work at nine.","word_bank":["I","start","work","at","nine","lunch"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d6f3ffac-89d2-56e5-9dde-5e0e5e519a53', '9a106c27-688b-58f2-afb1-8edbe441465e', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["nine","at","work","start","I"],"correct_words":["I","start","work","at","nine"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('daac99fd-c7ad-5af0-bb06-a3afd39905b4', '9a106c27-688b-58f2-afb1-8edbe441465e', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"I check my email in the morning.","language":"en","min_accuracy":0.7,"translation_hint":"Repeat the workplace language clearly and politely while practicing describing a simple workday and understanding routine workplace actions.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d58b9a9a-8422-5805-9f6e-7b7c1897b1f2', '9a106c27-688b-58f2-afb1-8edbe441465e', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"I ___ work at nine.","correct_answer":"start","hint_prefix":"s","explanation":"The missing word is start.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a51f2777-fe7b-59ed-868f-5fbd7fd6079c', '9a106c27-688b-58f2-afb1-8edbe441465e', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"meeting","text":"meeting"},{"id":"V2","audio_text":"lunch","text":"lunch"},{"id":"V3","audio_text":"morning","text":"morning"},{"id":"V4","audio_text":"afternoon","text":"afternoon"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('cb51f003-1a67-50fc-84b6-f6915745ca3e', '9a106c27-688b-58f2-afb1-8edbe441465e', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"I start work at nine."}],"answer_speaker":"Learner","options":[{"id":"A","text":"I check my email in the morning.","is_correct":true},{"id":"B","text":"We have a meeting after lunch.","is_correct":false},{"id":"C","text":"I know the word meeting.","is_correct":false}],"explanation":"“I check my email in the morning.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('efe453ec-9255-527e-8d97-824a40a9a366', '9a106c27-688b-58f2-afb1-8edbe441465e', 4)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('fbb92820-3cb5-5096-a902-79dc2d10a485', NULL, 'Use the Language in Context: Daily Work Routines', 'Apply the target language in a realistic work situation while practicing describing a simple workday and understanding routine workplace actions.', 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('1074f587-e7a7-59bc-b712-95296fa6ad59', 'fbb92820-3cb5-5096-a902-79dc2d10a485', 'Изучите язык рабочего общения', 'text', '{"body":"Use the Language in Context: Daily Work Routines. Workplace mission: Apply the target language in a realistic work situation while practicing describing a simple workday and understanding routine workplace actions. Models: I check my email in the morning. We have a meeting after lunch. I finish work at five.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('3d392566-08a6-5e40-bbb8-8bd933099220', 'fbb92820-3cb5-5096-a902-79dc2d10a485', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"I ___ my email in the morning.","correct_answer":"check","options":["check","lunch","morning"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('adca731f-fe77-5910-b996-2fb179160f0c', 'fbb92820-3cb5-5096-a902-79dc2d10a485', 'Слушайте рабочую речь', 'listening', '{"audio_text":"I check my email in the morning.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('88365070-0ff9-53dd-bc91-1efeb19b194d', 'fbb92820-3cb5-5096-a902-79dc2d10a485', 'Рабочая ситуация', 'story', '{"title":"Use the Language in Context: Daily Work Routines","scenes":[{"type":"dialogue","character":"Colleague","text":"I check my email in the morning."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"We have a meeting after lunch.","is_correct":true},{"text":"I finish work at five.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('956b29ff-f19f-5cff-bcb1-d25c27b7b32e', 'fbb92820-3cb5-5096-a902-79dc2d10a485', 'Выберите рабочее значение', 'choose_definition', '{"word":"lunch","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''lunch''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''morning''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''afternoon''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''usually''.","is_correct":false}],"explanation":"lunch: A simple workplace meaning of ''lunch''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('7f0aae42-40fc-5feb-b1ab-0bbe8dfd4a8e', 'fbb92820-3cb5-5096-a902-79dc2d10a485', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"lunch","text":"lunch"},{"id":"V2","audio_text":"morning","text":"morning"},{"id":"V3","audio_text":"afternoon","text":"afternoon"},{"id":"V4","audio_text":"usually","text":"usually"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d420a969-6e1c-54a9-8426-6babb6cbd3c6', 'fbb92820-3cb5-5096-a902-79dc2d10a485', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"I check my email in the morning."}],"answer_speaker":"Learner","options":[{"id":"A","text":"We have a meeting after lunch.","is_correct":true},{"id":"B","text":"I finish work at five.","is_correct":false},{"id":"C","text":"I know the word lunch.","is_correct":false}],"explanation":"“We have a meeting after lunch.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('efe453ec-9255-527e-8d97-824a40a9a366', 'fbb92820-3cb5-5096-a902-79dc2d10a485', 5)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('c3a6819b-91d6-5fba-95a2-ab1e71b57b03', NULL, 'Handle a Short Exchange: Daily Work Routines', 'Respond appropriately in a two-person workplace interaction while practicing describing a simple workday and understanding routine workplace actions.', 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('669d34c9-13cd-5e37-94e9-666aadd7f142', 'c3a6819b-91d6-5fba-95a2-ab1e71b57b03', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"morning","right":"A simple workplace meaning of ''morning''."},{"id":"P2","left":"afternoon","right":"A simple workplace meaning of ''afternoon''."},{"id":"P3","left":"usually","right":"A simple workplace meaning of ''usually''."},{"id":"P4","left":"work","right":"A simple workplace meaning of ''work''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('50385bf2-7acb-57c3-a3c9-f8952e83f695', 'c3a6819b-91d6-5fba-95a2-ab1e71b57b03', 'Выберите профессиональный ответ', 'quiz', '{"question":"Respond appropriately in a two-person workplace interaction while practicing describing a simple workday and understanding routine workplace actions.","options":[{"id":"A","text":"We have a meeting after lunch.","is_correct":true},{"id":"B","text":"I finish work at five.","is_correct":false},{"id":"C","text":"I start work at nine.","is_correct":false}],"explanation":"“We have a meeting after lunch.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('f694f1ca-2a11-5fb0-8d01-8ca5eb690ecb', 'c3a6819b-91d6-5fba-95a2-ab1e71b57b03', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["lunch","after","meeting","a","have","We"],"correct_words":["We","have","a","meeting","after","lunch"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a7037337-f2f0-598c-8a41-1b52b2b6492f', 'c3a6819b-91d6-5fba-95a2-ab1e71b57b03', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"We ___ a meeting after lunch.","audio_text":"We have a meeting after lunch.","language":"en","options":[{"id":"A","audio_text":"have","is_correct":true},{"id":"B","audio_text":"morning","is_correct":false},{"id":"C","audio_text":"afternoon","is_correct":false}],"explanation":"The missing word is have.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('7a35260e-c3e9-5812-a48d-7cdab9a9d876', 'c3a6819b-91d6-5fba-95a2-ab1e71b57b03', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"We ___ a meeting after lunch.","correct_answer":"have","hint_prefix":"h","explanation":"The missing word is have.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('22e4592e-fa10-5d82-b1bb-4fe2abdd99bb', 'c3a6819b-91d6-5fba-95a2-ab1e71b57b03', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"I finish work at five.","language":"en","min_accuracy":0.7,"translation_hint":"Respond appropriately in a two-person workplace interaction while practicing describing a simple workday and understanding routine workplace actions.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('6b9841b3-9abf-524e-852a-420a0355f7af', 'c3a6819b-91d6-5fba-95a2-ab1e71b57b03', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"We have a meeting after lunch."}],"answer_speaker":"Learner","options":[{"id":"A","text":"I finish work at five.","is_correct":true},{"id":"B","text":"I start work at nine.","is_correct":false},{"id":"C","text":"I know the word morning.","is_correct":false}],"explanation":"“I finish work at five.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('efe453ec-9255-527e-8d97-824a40a9a366', 'c3a6819b-91d6-5fba-95a2-ab1e71b57b03', 6)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('1cd2a31d-0bee-52bf-9e28-fc9096e22fa4', NULL, 'Work with Less Support: Daily Work Routines', 'Complete the business task with fewer hints while practicing describing a simple workday and understanding routine workplace actions.', 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d58d00e7-6514-5fc0-afaa-3ee5730d73c2', '1cd2a31d-0bee-52bf-9e28-fc9096e22fa4', 'Изучите язык рабочего общения', 'text', '{"body":"Work with Less Support: Daily Work Routines. Workplace mission: Complete the business task with fewer hints while practicing describing a simple workday and understanding routine workplace actions. Models: I finish work at five. I start work at nine. I check my email in the morning.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('451102fd-3e8b-55ab-8e69-4f85e49c85b3', '1cd2a31d-0bee-52bf-9e28-fc9096e22fa4', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"I finish work at five.","word_bank":["I","finish","work","at","five","usually"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('38174933-355a-51f3-9473-cda94765bcae', '1cd2a31d-0bee-52bf-9e28-fc9096e22fa4', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"I ___ work at five.","correct_answer":"finish","options":["finish","afternoon","usually"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('2b8b789a-3c83-5aea-bead-ba2f9404b144', '1cd2a31d-0bee-52bf-9e28-fc9096e22fa4', 'Слушайте рабочую речь', 'listening', '{"audio_text":"I finish work at five.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('0d0d473a-5f59-5a37-a81a-cbfaa992417e', '1cd2a31d-0bee-52bf-9e28-fc9096e22fa4', 'Рабочая ситуация', 'story', '{"title":"Work with Less Support: Daily Work Routines","scenes":[{"type":"dialogue","character":"Colleague","text":"I finish work at five."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"I start work at nine.","is_correct":true},{"text":"I check my email in the morning.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('45a0fbd1-1929-5146-9034-17943a4dcdad', '1cd2a31d-0bee-52bf-9e28-fc9096e22fa4', 'Выберите рабочее значение', 'choose_definition', '{"word":"afternoon","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''afternoon''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''usually''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''work''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''start''.","is_correct":false}],"explanation":"afternoon: A simple workplace meaning of ''afternoon''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('8ed48909-9e19-5548-aca4-48859c761f9a', '1cd2a31d-0bee-52bf-9e28-fc9096e22fa4', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"I finish work at five."}],"answer_speaker":"Learner","options":[{"id":"A","text":"I start work at nine.","is_correct":true},{"id":"B","text":"I check my email in the morning.","is_correct":false},{"id":"C","text":"I know the word afternoon.","is_correct":false}],"explanation":"“I start work at nine.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('efe453ec-9255-527e-8d97-824a40a9a366', '1cd2a31d-0bee-52bf-9e28-fc9096e22fa4', 7)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('5476c099-e8dc-5e96-a586-8448793e6355', NULL, 'Workplace Challenge: Daily Work Routines', 'Combine vocabulary, listening, and response skills while practicing describing a simple workday and understanding routine workplace actions.', 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('7fba1598-aa31-57a9-bd0e-1f363ace4919', '5476c099-e8dc-5e96-a586-8448793e6355', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"usually","right":"A simple workplace meaning of ''usually''."},{"id":"P2","left":"work","right":"A simple workplace meaning of ''work''."},{"id":"P3","left":"start","right":"A simple workplace meaning of ''start''."},{"id":"P4","left":"finish","right":"A simple workplace meaning of ''finish''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('b5664870-ec28-59e1-8722-b900ee66497b', '5476c099-e8dc-5e96-a586-8448793e6355', 'Выберите профессиональный ответ', 'quiz', '{"question":"Combine vocabulary, listening, and response skills while practicing describing a simple workday and understanding routine workplace actions.","options":[{"id":"A","text":"I start work at nine.","is_correct":true},{"id":"B","text":"I check my email in the morning.","is_correct":false},{"id":"C","text":"We have a meeting after lunch.","is_correct":false}],"explanation":"“I start work at nine.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4e5d16f9-3b8a-5401-82af-4c0f1273aeab', '5476c099-e8dc-5e96-a586-8448793e6355', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["nine","at","work","start","I"],"correct_words":["I","start","work","at","nine"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('bae31b44-eb0a-5718-8ff5-62881719fefc', '5476c099-e8dc-5e96-a586-8448793e6355', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"I ___ work at nine.","audio_text":"I start work at nine.","language":"en","options":[{"id":"A","audio_text":"start","is_correct":true},{"id":"B","audio_text":"usually","is_correct":false},{"id":"C","audio_text":"work","is_correct":false}],"explanation":"The missing word is start.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('ca32cb32-c0f1-5bc3-b494-d8f4cc6f933c', '5476c099-e8dc-5e96-a586-8448793e6355', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"usually","text":"usually"},{"id":"V2","audio_text":"work","text":"work"},{"id":"V3","audio_text":"start","text":"start"},{"id":"V4","audio_text":"finish","text":"finish"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c262a525-9976-54b6-9399-509735f94c53', '5476c099-e8dc-5e96-a586-8448793e6355', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"I check my email in the morning.","language":"en","min_accuracy":0.7,"translation_hint":"Combine vocabulary, listening, and response skills while practicing describing a simple workday and understanding routine workplace actions.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e32389c9-cbfa-513f-baf8-42047baabe33', '5476c099-e8dc-5e96-a586-8448793e6355', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"I start work at nine."}],"answer_speaker":"Learner","options":[{"id":"A","text":"I check my email in the morning.","is_correct":true},{"id":"B","text":"We have a meeting after lunch.","is_correct":false},{"id":"C","text":"I know the word usually.","is_correct":false}],"explanation":"“I check my email in the morning.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('efe453ec-9255-527e-8d97-824a40a9a366', '5476c099-e8dc-5e96-a586-8448793e6355', 8)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('49da44f2-31d9-5210-b6c3-60fb24d933b2', NULL, 'Track Business Mission: Daily Work Routines', 'Complete a practical beginner workplace mission while practicing describing a simple workday and understanding routine workplace actions.', 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('eecf53f9-d60e-5f06-855e-b37bfd493c0b', '49da44f2-31d9-5210-b6c3-60fb24d933b2', 'Изучите язык рабочего общения', 'text', '{"body":"Track Business Mission: Daily Work Routines. Workplace mission: Complete a practical beginner workplace mission while practicing describing a simple workday and understanding routine workplace actions. Models: I check my email in the morning. We have a meeting after lunch. I finish work at five.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a6d5a09e-3c52-5066-8a9f-1bece4cd6a7f', '49da44f2-31d9-5210-b6c3-60fb24d933b2', 'Выберите профессиональный ответ', 'quiz', '{"question":"Complete a practical beginner workplace mission while practicing describing a simple workday and understanding routine workplace actions.","options":[{"id":"A","text":"I check my email in the morning.","is_correct":true},{"id":"B","text":"We have a meeting after lunch.","is_correct":false},{"id":"C","text":"I finish work at five.","is_correct":false}],"explanation":"“I check my email in the morning.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('3eaea0ae-5f8f-56f4-8bc2-32e8fdc09c1e', '49da44f2-31d9-5210-b6c3-60fb24d933b2', 'Слушайте рабочую речь', 'listening', '{"audio_text":"I check my email in the morning.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('fe005aa2-e275-555d-81a5-292de50f429b', '49da44f2-31d9-5210-b6c3-60fb24d933b2', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"We have a meeting after lunch.","language":"en","min_accuracy":0.7,"translation_hint":"Complete a practical beginner workplace mission while practicing describing a simple workday and understanding routine workplace actions.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d9c99eb5-4b1c-5797-9597-0df6d16b9956', '49da44f2-31d9-5210-b6c3-60fb24d933b2', 'Рабочая ситуация', 'story', '{"title":"Track Business Mission: Daily Work Routines","scenes":[{"type":"dialogue","character":"Colleague","text":"I check my email in the morning."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"We have a meeting after lunch.","is_correct":true},{"text":"I finish work at five.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d3c3f8cf-3908-5597-899f-27ff66a7b0c9', '49da44f2-31d9-5210-b6c3-60fb24d933b2', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"work","text":"work"},{"id":"V2","audio_text":"start","text":"start"},{"id":"V3","audio_text":"finish","text":"finish"},{"id":"V4","audio_text":"email","text":"email"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('24250342-ed34-53c0-8354-5f07d49ca116', '49da44f2-31d9-5210-b6c3-60fb24d933b2', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"I check my email in the morning."}],"answer_speaker":"Learner","options":[{"id":"A","text":"We have a meeting after lunch.","is_correct":true},{"id":"B","text":"I finish work at five.","is_correct":false},{"id":"C","text":"I know the word work.","is_correct":false}],"explanation":"“We have a meeting after lunch.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('efe453ec-9255-527e-8d97-824a40a9a366', '49da44f2-31d9-5210-b6c3-60fb24d933b2', 9)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('47e14364-e91e-51b9-9e52-98d08216cf28', 'A1_BUSINESS_T05', 'Simple Workplace Requests', 'An A1 Business English track focused on making and responding to polite basic requests at work.', 'en', 'A1', 'thematic', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('41bffb09-4de2-5193-8ed5-3f73755283d1', NULL, 'Learn the Workplace Language: Simple Workplace Requests', 'Recognize the key workplace words and phrases while practicing making and responding to polite basic requests at work.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e471251d-bf7f-547b-b5b6-c212b7cc2785', '41bffb09-4de2-5193-8ed5-3f73755283d1', 'Изучите язык рабочего общения', 'text', '{"body":"Learn the Workplace Language: Simple Workplace Requests. Workplace mission: Recognize the key workplace words and phrases while practicing making and responding to polite basic requests at work. Models: Can you help me, please? Could you send the email? Please check this file.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c7370a9a-c228-541b-a3d4-f73722fcfa9f', '41bffb09-4de2-5193-8ed5-3f73755283d1', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"please","right":"A simple workplace meaning of ''please''."},{"id":"P2","left":"help","right":"A simple workplace meaning of ''help''."},{"id":"P3","left":"send","right":"A simple workplace meaning of ''send''."},{"id":"P4","left":"open","right":"A simple workplace meaning of ''open''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('cf50f0c3-10f7-5d68-a073-c0a03694d132', '41bffb09-4de2-5193-8ed5-3f73755283d1', 'Выберите профессиональный ответ', 'quiz', '{"question":"Recognize the key workplace words and phrases while practicing making and responding to polite basic requests at work.","options":[{"id":"A","text":"Can you help me, please?","is_correct":true},{"id":"B","text":"Could you send the email?","is_correct":false},{"id":"C","text":"Please check this file.","is_correct":false}],"explanation":"“Can you help me, please?” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('601dad83-765e-5c04-a4e4-0e7202e858b5', '41bffb09-4de2-5193-8ed5-3f73755283d1', 'Слушайте рабочую речь', 'listening', '{"audio_text":"Can you help me, please?","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('dd73b620-3f03-5b02-82c1-7a9a4141d90c', '41bffb09-4de2-5193-8ed5-3f73755283d1', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"Could you send the email?","language":"en","min_accuracy":0.7,"translation_hint":"Recognize the key workplace words and phrases while practicing making and responding to polite basic requests at work.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('82b10b18-87be-52c4-8585-8af32594252d', '41bffb09-4de2-5193-8ed5-3f73755283d1', 'Выберите рабочее значение', 'choose_definition', '{"word":"please","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''please''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''help''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''send''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''open''.","is_correct":false}],"explanation":"please: A simple workplace meaning of ''please''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('7ef422eb-719f-58eb-811f-89284e81ac71', '41bffb09-4de2-5193-8ed5-3f73755283d1', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Can you help me, please?"}],"answer_speaker":"Learner","options":[{"id":"A","text":"Could you send the email?","is_correct":true},{"id":"B","text":"Please check this file.","is_correct":false},{"id":"C","text":"I know the word please.","is_correct":false}],"explanation":"“Could you send the email?” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('47e14364-e91e-51b9-9e52-98d08216cf28', '41bffb09-4de2-5193-8ed5-3f73755283d1', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('a23ebd10-f4c9-5e40-9ae2-5c827eca86a5', NULL, 'Build the Core Sentence: Simple Workplace Requests', 'Produce a useful basic business sentence while practicing making and responding to polite basic requests at work.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('5cceb191-a092-536a-b62f-dabd31514bee', 'a23ebd10-f4c9-5e40-9ae2-5c827eca86a5', 'Изучите язык рабочего общения', 'text', '{"body":"Build the Core Sentence: Simple Workplace Requests. Workplace mission: Produce a useful basic business sentence while practicing making and responding to polite basic requests at work. Models: Could you send the email? Please check this file. Sure, I can do that.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('6b8c88e9-1562-53d9-9231-40abd7a9752e', 'a23ebd10-f4c9-5e40-9ae2-5c827eca86a5', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"Could you send the email?","word_bank":["Could","you","send","the","email","send"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('2224fe57-36cf-52cf-becf-672141604ecc', 'a23ebd10-f4c9-5e40-9ae2-5c827eca86a5', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"___ you send the email?","correct_answer":"Could","options":["Could","help","send"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a41cc347-64e1-557c-89d3-d6578f2ac37f', 'a23ebd10-f4c9-5e40-9ae2-5c827eca86a5', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["email","the","send","you","Could"],"correct_words":["Could","you","send","the","email"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c7439db2-164f-55ee-a1b5-dddab9392e46', 'a23ebd10-f4c9-5e40-9ae2-5c827eca86a5', 'Слушайте рабочую речь', 'listening', '{"audio_text":"Could you send the email?","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('5aef5b07-3b80-5fd5-9786-4990831a2ce9', 'a23ebd10-f4c9-5e40-9ae2-5c827eca86a5', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"___ you send the email?","correct_answer":"Could","hint_prefix":"C","explanation":"The missing word is Could.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('5f2bcd84-cb13-52cf-a1c3-ed71cfb890c8', 'a23ebd10-f4c9-5e40-9ae2-5c827eca86a5', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Could you send the email?"}],"answer_speaker":"Learner","options":[{"id":"A","text":"Please check this file.","is_correct":true},{"id":"B","text":"Sure, I can do that.","is_correct":false},{"id":"C","text":"I know the word help.","is_correct":false}],"explanation":"“Please check this file.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('47e14364-e91e-51b9-9e52-98d08216cf28', 'a23ebd10-f4c9-5e40-9ae2-5c827eca86a5', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('f7ad2c3c-bc26-51b2-836a-e335c3d6f692', NULL, 'Listen for Workplace Information: Simple Workplace Requests', 'Identify an important detail in short workplace audio while practicing making and responding to polite basic requests at work.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a6c7b00f-7917-57dc-9d94-1cb54affa15d', 'f7ad2c3c-bc26-51b2-836a-e335c3d6f692', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"send","right":"A simple workplace meaning of ''send''."},{"id":"P2","left":"open","right":"A simple workplace meaning of ''open''."},{"id":"P3","left":"check","right":"A simple workplace meaning of ''check''."},{"id":"P4","left":"bring","right":"A simple workplace meaning of ''bring''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('42361543-3b02-556f-9a4d-1bac5b51d941', 'f7ad2c3c-bc26-51b2-836a-e335c3d6f692', 'Выберите профессиональный ответ', 'quiz', '{"question":"Identify an important detail in short workplace audio while practicing making and responding to polite basic requests at work.","options":[{"id":"A","text":"Please check this file.","is_correct":true},{"id":"B","text":"Sure, I can do that.","is_correct":false},{"id":"C","text":"Can you help me, please?","is_correct":false}],"explanation":"“Please check this file.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('95a0a362-93f5-559a-aaad-0a82cb7642b2', 'f7ad2c3c-bc26-51b2-836a-e335c3d6f692', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["file","this","check","Please"],"correct_words":["Please","check","this","file"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d96fd7b4-d0e6-5877-bbb7-29e978254a09', 'f7ad2c3c-bc26-51b2-836a-e335c3d6f692', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"___ check this file.","audio_text":"Please check this file.","language":"en","options":[{"id":"A","audio_text":"Please","is_correct":true},{"id":"B","audio_text":"send","is_correct":false},{"id":"C","audio_text":"open","is_correct":false}],"explanation":"The missing word is Please.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('472bfaf5-682c-5c1b-bca6-489e70bf01ad', 'f7ad2c3c-bc26-51b2-836a-e335c3d6f692', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"Sure, I can do that.","language":"en","min_accuracy":0.7,"translation_hint":"Identify an important detail in short workplace audio while practicing making and responding to polite basic requests at work.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4a46f84c-33cb-57b4-b22f-770caccffd17', 'f7ad2c3c-bc26-51b2-836a-e335c3d6f692', 'Рабочая ситуация', 'story', '{"title":"Listen for Workplace Information: Simple Workplace Requests","scenes":[{"type":"dialogue","character":"Colleague","text":"Please check this file."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"Sure, I can do that.","is_correct":true},{"text":"Can you help me, please?","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('9d3d999a-5f75-5b15-afed-c81963df74eb', 'f7ad2c3c-bc26-51b2-836a-e335c3d6f692', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Please check this file."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Sure, I can do that.","is_correct":true},{"id":"B","text":"Can you help me, please?","is_correct":false},{"id":"C","text":"I know the word send.","is_correct":false}],"explanation":"“Sure, I can do that.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('47e14364-e91e-51b9-9e52-98d08216cf28', 'f7ad2c3c-bc26-51b2-836a-e335c3d6f692', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('8b0617f7-1742-5524-bc10-60286ab4f11d', NULL, 'Use Polite Professional English: Simple Workplace Requests', 'Choose language appropriate for a simple workplace situation while practicing making and responding to polite basic requests at work.', 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('5d2cb210-8420-5334-9aef-6424f45a8165', '8b0617f7-1742-5524-bc10-60286ab4f11d', 'Изучите язык рабочего общения', 'text', '{"body":"Use Polite Professional English: Simple Workplace Requests. Workplace mission: Choose language appropriate for a simple workplace situation while practicing making and responding to polite basic requests at work. Models: Sure, I can do that. Can you help me, please? Could you send the email?","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('7129a77e-788f-54a6-9aeb-3ba48ee089d5', '8b0617f7-1742-5524-bc10-60286ab4f11d', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"open","right":"A simple workplace meaning of ''open''."},{"id":"P2","left":"check","right":"A simple workplace meaning of ''check''."},{"id":"P3","left":"bring","right":"A simple workplace meaning of ''bring''."},{"id":"P4","left":"wait","right":"A simple workplace meaning of ''wait''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('386d1d72-846f-5846-9c3b-b552188a08c3', '8b0617f7-1742-5524-bc10-60286ab4f11d', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"___, I can do that.","correct_answer":"Sure","options":["Sure","open","check"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('5b52fefd-0278-5926-b620-c09316d8c5e0', '8b0617f7-1742-5524-bc10-60286ab4f11d', 'Слушайте рабочую речь', 'listening', '{"audio_text":"Sure, I can do that.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('5eb6a92a-a1ca-5ef5-83b6-fae6947b14d6', '8b0617f7-1742-5524-bc10-60286ab4f11d', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"___, I can do that.","audio_text":"Sure, I can do that.","language":"en","options":[{"id":"A","audio_text":"Sure","is_correct":true},{"id":"B","audio_text":"open","is_correct":false},{"id":"C","audio_text":"check","is_correct":false}],"explanation":"The missing word is Sure.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('2a94bde0-fe20-5bed-9a77-36943bd4d6ef', '8b0617f7-1742-5524-bc10-60286ab4f11d', 'Выберите рабочее значение', 'choose_definition', '{"word":"open","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''open''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''check''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''bring''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''wait''.","is_correct":false}],"explanation":"open: A simple workplace meaning of ''open''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('2d34d037-a1fc-51f3-b5ec-35d8ca10f38e', '8b0617f7-1742-5524-bc10-60286ab4f11d', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Sure, I can do that."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Can you help me, please?","is_correct":true},{"id":"B","text":"Could you send the email?","is_correct":false},{"id":"C","text":"I know the word open.","is_correct":false}],"explanation":"“Can you help me, please?” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('47e14364-e91e-51b9-9e52-98d08216cf28', '8b0617f7-1742-5524-bc10-60286ab4f11d', 3)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('f528e43e-a65b-552e-8e3f-168392a3892b', NULL, 'Practice the Spoken Model: Simple Workplace Requests', 'Repeat the workplace language clearly and politely while practicing making and responding to polite basic requests at work.', 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('85fbd540-c7d0-530d-85f6-b3e00e42aba2', 'f528e43e-a65b-552e-8e3f-168392a3892b', 'Выберите профессиональный ответ', 'quiz', '{"question":"Repeat the workplace language clearly and politely while practicing making and responding to polite basic requests at work.","options":[{"id":"A","text":"Can you help me, please?","is_correct":true},{"id":"B","text":"Could you send the email?","is_correct":false},{"id":"C","text":"Please check this file.","is_correct":false}],"explanation":"“Can you help me, please?” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('fee3664f-9303-5b53-8c28-e1b2f427fb05', 'f528e43e-a65b-552e-8e3f-168392a3892b', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"Can you help me, please?","word_bank":["Can","you","help","me","please","bring"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('bd7d2c0b-1880-5536-bd6e-06d6701ace56', 'f528e43e-a65b-552e-8e3f-168392a3892b', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["please","me","help","you","Can"],"correct_words":["Can","you","help","me","please"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e47d2cc5-a694-5968-b096-99fe1961b2d9', 'f528e43e-a65b-552e-8e3f-168392a3892b', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"Could you send the email?","language":"en","min_accuracy":0.7,"translation_hint":"Repeat the workplace language clearly and politely while practicing making and responding to polite basic requests at work.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('3ad2b53f-3e03-5bcb-902d-729cb9f216f2', 'f528e43e-a65b-552e-8e3f-168392a3892b', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"___ you help me, please?","correct_answer":"Can","hint_prefix":"C","explanation":"The missing word is Can.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d307fb38-06ba-5127-9067-a64c4e269817', 'f528e43e-a65b-552e-8e3f-168392a3892b', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"check","text":"check"},{"id":"V2","audio_text":"bring","text":"bring"},{"id":"V3","audio_text":"wait","text":"wait"},{"id":"V4","audio_text":"can","text":"can"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('93c702fe-7e70-59b6-9e79-437d62b7c39c', 'f528e43e-a65b-552e-8e3f-168392a3892b', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Can you help me, please?"}],"answer_speaker":"Learner","options":[{"id":"A","text":"Could you send the email?","is_correct":true},{"id":"B","text":"Please check this file.","is_correct":false},{"id":"C","text":"I know the word check.","is_correct":false}],"explanation":"“Could you send the email?” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('47e14364-e91e-51b9-9e52-98d08216cf28', 'f528e43e-a65b-552e-8e3f-168392a3892b', 4)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('a3a44341-4933-5ec6-867a-2a6682136e03', NULL, 'Use the Language in Context: Simple Workplace Requests', 'Apply the target language in a realistic work situation while practicing making and responding to polite basic requests at work.', 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('62e91ac5-a52b-5d00-8a05-0a881eb3305d', 'a3a44341-4933-5ec6-867a-2a6682136e03', 'Изучите язык рабочего общения', 'text', '{"body":"Use the Language in Context: Simple Workplace Requests. Workplace mission: Apply the target language in a realistic work situation while practicing making and responding to polite basic requests at work. Models: Could you send the email? Please check this file. Sure, I can do that.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('44298437-96e0-5c47-8ff8-ca00d89b06b4', 'a3a44341-4933-5ec6-867a-2a6682136e03', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"___ you send the email?","correct_answer":"Could","options":["Could","bring","wait"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('8a7f7573-c478-5125-8c19-cfc24cdea653', 'a3a44341-4933-5ec6-867a-2a6682136e03', 'Слушайте рабочую речь', 'listening', '{"audio_text":"Could you send the email?","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('524bb995-f524-5bc0-812a-309577ea04eb', 'a3a44341-4933-5ec6-867a-2a6682136e03', 'Рабочая ситуация', 'story', '{"title":"Use the Language in Context: Simple Workplace Requests","scenes":[{"type":"dialogue","character":"Colleague","text":"Could you send the email?"},{"type":"choice","text":"What is the best professional response?","options":[{"text":"Please check this file.","is_correct":true},{"text":"Sure, I can do that.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('ca3aaa1b-044e-5b02-81b4-531c2a1327c0', 'a3a44341-4933-5ec6-867a-2a6682136e03', 'Выберите рабочее значение', 'choose_definition', '{"word":"bring","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''bring''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''wait''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''can''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''could''.","is_correct":false}],"explanation":"bring: A simple workplace meaning of ''bring''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('48a2f617-a2c3-54ec-bfb6-9b8f3bc5766d', 'a3a44341-4933-5ec6-867a-2a6682136e03', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"bring","text":"bring"},{"id":"V2","audio_text":"wait","text":"wait"},{"id":"V3","audio_text":"can","text":"can"},{"id":"V4","audio_text":"could","text":"could"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('b7a4a78e-febf-5e7f-b598-75a0c032d422', 'a3a44341-4933-5ec6-867a-2a6682136e03', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Could you send the email?"}],"answer_speaker":"Learner","options":[{"id":"A","text":"Please check this file.","is_correct":true},{"id":"B","text":"Sure, I can do that.","is_correct":false},{"id":"C","text":"I know the word bring.","is_correct":false}],"explanation":"“Please check this file.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('47e14364-e91e-51b9-9e52-98d08216cf28', 'a3a44341-4933-5ec6-867a-2a6682136e03', 5)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('a6469585-36b2-5ae4-8c01-e308446c79d6', NULL, 'Handle a Short Exchange: Simple Workplace Requests', 'Respond appropriately in a two-person workplace interaction while practicing making and responding to polite basic requests at work.', 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('36c09e28-d21c-5237-853b-cb5fb0b98dc8', 'a6469585-36b2-5ae4-8c01-e308446c79d6', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"wait","right":"A simple workplace meaning of ''wait''."},{"id":"P2","left":"can","right":"A simple workplace meaning of ''can''."},{"id":"P3","left":"could","right":"A simple workplace meaning of ''could''."},{"id":"P4","left":"sure","right":"A simple workplace meaning of ''sure''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('b1d305a0-3a8a-554e-9890-5223bc1239e6', 'a6469585-36b2-5ae4-8c01-e308446c79d6', 'Выберите профессиональный ответ', 'quiz', '{"question":"Respond appropriately in a two-person workplace interaction while practicing making and responding to polite basic requests at work.","options":[{"id":"A","text":"Please check this file.","is_correct":true},{"id":"B","text":"Sure, I can do that.","is_correct":false},{"id":"C","text":"Can you help me, please?","is_correct":false}],"explanation":"“Please check this file.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('0af46779-4462-5873-af13-9c9314bf5884', 'a6469585-36b2-5ae4-8c01-e308446c79d6', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["file","this","check","Please"],"correct_words":["Please","check","this","file"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('64de8788-eafd-5a7c-aaa5-976c6506b26e', 'a6469585-36b2-5ae4-8c01-e308446c79d6', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"___ check this file.","audio_text":"Please check this file.","language":"en","options":[{"id":"A","audio_text":"Please","is_correct":true},{"id":"B","audio_text":"wait","is_correct":false},{"id":"C","audio_text":"can","is_correct":false}],"explanation":"The missing word is Please.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4a368bca-b0e2-50b1-bd02-162a4127e58d', 'a6469585-36b2-5ae4-8c01-e308446c79d6', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"___ check this file.","correct_answer":"Please","hint_prefix":"P","explanation":"The missing word is Please.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('f698c786-021e-5b75-927b-a190f6281e6f', 'a6469585-36b2-5ae4-8c01-e308446c79d6', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"Sure, I can do that.","language":"en","min_accuracy":0.7,"translation_hint":"Respond appropriately in a two-person workplace interaction while practicing making and responding to polite basic requests at work.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('8434e2cc-eed8-59f5-af6a-bc09127d7def', 'a6469585-36b2-5ae4-8c01-e308446c79d6', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Please check this file."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Sure, I can do that.","is_correct":true},{"id":"B","text":"Can you help me, please?","is_correct":false},{"id":"C","text":"I know the word wait.","is_correct":false}],"explanation":"“Sure, I can do that.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('47e14364-e91e-51b9-9e52-98d08216cf28', 'a6469585-36b2-5ae4-8c01-e308446c79d6', 6)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('d3b15df8-9ffc-58fc-9a13-7954a194dab5', NULL, 'Work with Less Support: Simple Workplace Requests', 'Complete the business task with fewer hints while practicing making and responding to polite basic requests at work.', 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d863ea9d-d8d9-5b8f-9481-d8172a00ea66', 'd3b15df8-9ffc-58fc-9a13-7954a194dab5', 'Изучите язык рабочего общения', 'text', '{"body":"Work with Less Support: Simple Workplace Requests. Workplace mission: Complete the business task with fewer hints while practicing making and responding to polite basic requests at work. Models: Sure, I can do that. Can you help me, please? Could you send the email?","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('cc71cf86-523b-5456-b5bb-a44c1643c855', 'd3b15df8-9ffc-58fc-9a13-7954a194dab5', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"Sure, I can do that.","word_bank":["Sure","I","can","do","that","could"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c42b8a65-27c8-5140-9f2f-b2f161e915e5', 'd3b15df8-9ffc-58fc-9a13-7954a194dab5', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"___, I can do that.","correct_answer":"Sure","options":["Sure","can","could"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('df2c8dc3-e6c5-59a6-a5e0-9a8090351d56', 'd3b15df8-9ffc-58fc-9a13-7954a194dab5', 'Слушайте рабочую речь', 'listening', '{"audio_text":"Sure, I can do that.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('1e66101d-acef-5ecf-807b-5c9e5db33624', 'd3b15df8-9ffc-58fc-9a13-7954a194dab5', 'Рабочая ситуация', 'story', '{"title":"Work with Less Support: Simple Workplace Requests","scenes":[{"type":"dialogue","character":"Colleague","text":"Sure, I can do that."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"Can you help me, please?","is_correct":true},{"text":"Could you send the email?","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c0086636-78fd-5089-9464-c3c445b3b18a', 'd3b15df8-9ffc-58fc-9a13-7954a194dab5', 'Выберите рабочее значение', 'choose_definition', '{"word":"can","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''can''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''could''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''sure''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''please''.","is_correct":false}],"explanation":"can: A simple workplace meaning of ''can''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d8c7e8e7-7d47-59de-aecb-b9499e668a2f', 'd3b15df8-9ffc-58fc-9a13-7954a194dab5', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Sure, I can do that."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Can you help me, please?","is_correct":true},{"id":"B","text":"Could you send the email?","is_correct":false},{"id":"C","text":"I know the word can.","is_correct":false}],"explanation":"“Can you help me, please?” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('47e14364-e91e-51b9-9e52-98d08216cf28', 'd3b15df8-9ffc-58fc-9a13-7954a194dab5', 7)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('7fbcda39-ea33-5463-ba67-2985861c05d6', NULL, 'Workplace Challenge: Simple Workplace Requests', 'Combine vocabulary, listening, and response skills while practicing making and responding to polite basic requests at work.', 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('75acfee9-87df-5a38-b1aa-2dc5f617b1ac', '7fbcda39-ea33-5463-ba67-2985861c05d6', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"could","right":"A simple workplace meaning of ''could''."},{"id":"P2","left":"sure","right":"A simple workplace meaning of ''sure''."},{"id":"P3","left":"please","right":"A simple workplace meaning of ''please''."},{"id":"P4","left":"help","right":"A simple workplace meaning of ''help''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('67a4f41d-7964-561b-b696-0ac8fe8b3778', '7fbcda39-ea33-5463-ba67-2985861c05d6', 'Выберите профессиональный ответ', 'quiz', '{"question":"Combine vocabulary, listening, and response skills while practicing making and responding to polite basic requests at work.","options":[{"id":"A","text":"Can you help me, please?","is_correct":true},{"id":"B","text":"Could you send the email?","is_correct":false},{"id":"C","text":"Please check this file.","is_correct":false}],"explanation":"“Can you help me, please?” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e250651b-3a11-5980-9c03-99e1e6096864', '7fbcda39-ea33-5463-ba67-2985861c05d6', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["please","me","help","you","Can"],"correct_words":["Can","you","help","me","please"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('124cf4f4-f588-5521-8be7-a76ab4d23f81', '7fbcda39-ea33-5463-ba67-2985861c05d6', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"___ you help me, please?","audio_text":"Can you help me, please?","language":"en","options":[{"id":"A","audio_text":"Can","is_correct":true},{"id":"B","audio_text":"could","is_correct":false},{"id":"C","audio_text":"sure","is_correct":false}],"explanation":"The missing word is Can.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d8207c6f-7606-51d2-a355-ed0857089a4b', '7fbcda39-ea33-5463-ba67-2985861c05d6', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"could","text":"could"},{"id":"V2","audio_text":"sure","text":"sure"},{"id":"V3","audio_text":"please","text":"please"},{"id":"V4","audio_text":"help","text":"help"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('7d3cf269-2770-527a-b3ed-1dc9be6e102b', '7fbcda39-ea33-5463-ba67-2985861c05d6', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"Could you send the email?","language":"en","min_accuracy":0.7,"translation_hint":"Combine vocabulary, listening, and response skills while practicing making and responding to polite basic requests at work.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c199c836-565a-58df-baa1-11f4ee2a071c', '7fbcda39-ea33-5463-ba67-2985861c05d6', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Can you help me, please?"}],"answer_speaker":"Learner","options":[{"id":"A","text":"Could you send the email?","is_correct":true},{"id":"B","text":"Please check this file.","is_correct":false},{"id":"C","text":"I know the word could.","is_correct":false}],"explanation":"“Could you send the email?” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('47e14364-e91e-51b9-9e52-98d08216cf28', '7fbcda39-ea33-5463-ba67-2985861c05d6', 8)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('b557eecd-3dc8-5cc2-818d-c37e8a0f459a', NULL, 'Track Business Mission: Simple Workplace Requests', 'Complete a practical beginner workplace mission while practicing making and responding to polite basic requests at work.', 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('6cec0349-9987-5ea1-bb72-2d2892bb3a9a', 'b557eecd-3dc8-5cc2-818d-c37e8a0f459a', 'Изучите язык рабочего общения', 'text', '{"body":"Track Business Mission: Simple Workplace Requests. Workplace mission: Complete a practical beginner workplace mission while practicing making and responding to polite basic requests at work. Models: Could you send the email? Please check this file. Sure, I can do that.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('7c0c1b8f-0d35-595a-ba1a-aadf1a64b85d', 'b557eecd-3dc8-5cc2-818d-c37e8a0f459a', 'Выберите профессиональный ответ', 'quiz', '{"question":"Complete a practical beginner workplace mission while practicing making and responding to polite basic requests at work.","options":[{"id":"A","text":"Could you send the email?","is_correct":true},{"id":"B","text":"Please check this file.","is_correct":false},{"id":"C","text":"Sure, I can do that.","is_correct":false}],"explanation":"“Could you send the email?” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e4742b67-2975-5f2f-99c8-f0a9739c2513', 'b557eecd-3dc8-5cc2-818d-c37e8a0f459a', 'Слушайте рабочую речь', 'listening', '{"audio_text":"Could you send the email?","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a5f7f874-d8c5-58b7-9300-ca6e60589ccb', 'b557eecd-3dc8-5cc2-818d-c37e8a0f459a', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"Please check this file.","language":"en","min_accuracy":0.7,"translation_hint":"Complete a practical beginner workplace mission while practicing making and responding to polite basic requests at work.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('9b19ad1e-3a69-5d6c-874a-811639b7ed16', 'b557eecd-3dc8-5cc2-818d-c37e8a0f459a', 'Рабочая ситуация', 'story', '{"title":"Track Business Mission: Simple Workplace Requests","scenes":[{"type":"dialogue","character":"Colleague","text":"Could you send the email?"},{"type":"choice","text":"What is the best professional response?","options":[{"text":"Please check this file.","is_correct":true},{"text":"Sure, I can do that.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('7d2177b6-25fa-5c9b-a8fa-2717d171874b', 'b557eecd-3dc8-5cc2-818d-c37e8a0f459a', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"sure","text":"sure"},{"id":"V2","audio_text":"please","text":"please"},{"id":"V3","audio_text":"help","text":"help"},{"id":"V4","audio_text":"send","text":"send"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('88772b54-7f99-5292-bc23-7b0008cc089e', 'b557eecd-3dc8-5cc2-818d-c37e8a0f459a', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Could you send the email?"}],"answer_speaker":"Learner","options":[{"id":"A","text":"Please check this file.","is_correct":true},{"id":"B","text":"Sure, I can do that.","is_correct":false},{"id":"C","text":"I know the word sure.","is_correct":false}],"explanation":"“Please check this file.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('47e14364-e91e-51b9-9e52-98d08216cf28', 'b557eecd-3dc8-5cc2-818d-c37e8a0f459a', 9)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('7f0b3978-0a32-5683-bf29-19593f7f3a2d', 'A1_BUSINESS_T06', 'Phone Calls at Work', 'An A1 Business English track focused on handling very simple professional telephone exchanges.', 'en', 'A1', 'thematic', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('38a65605-8be3-5c6f-a2d6-aceae53d82b2', NULL, 'Learn the Workplace Language: Phone Calls at Work', 'Recognize the key workplace words and phrases while practicing handling very simple professional telephone exchanges.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e891d583-96e5-5c2e-8488-ff0abfffa5d3', '38a65605-8be3-5c6f-a2d6-aceae53d82b2', 'Изучите язык рабочего общения', 'text', '{"body":"Learn the Workplace Language: Phone Calls at Work. Workplace mission: Recognize the key workplace words and phrases while practicing handling very simple professional telephone exchanges. Models: Hello, this is David from ABC Company. Can I speak to Maria, please? She is not available right now.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e065d940-27d4-5401-a1c4-d397da377864', '38a65605-8be3-5c6f-a2d6-aceae53d82b2', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"call","right":"A simple workplace meaning of ''call''."},{"id":"P2","left":"phone","right":"A simple workplace meaning of ''phone''."},{"id":"P3","left":"speak","right":"A simple workplace meaning of ''speak''."},{"id":"P4","left":"message","right":"A simple workplace meaning of ''message''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('7d521b93-a487-5d07-84cd-7052e7401536', '38a65605-8be3-5c6f-a2d6-aceae53d82b2', 'Выберите профессиональный ответ', 'quiz', '{"question":"Recognize the key workplace words and phrases while practicing handling very simple professional telephone exchanges.","options":[{"id":"A","text":"Hello, this is David from ABC Company.","is_correct":true},{"id":"B","text":"Can I speak to Maria, please?","is_correct":false},{"id":"C","text":"She is not available right now.","is_correct":false}],"explanation":"“Hello, this is David from ABC Company.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('dd6dcfba-be49-5fb0-9d09-79111446319a', '38a65605-8be3-5c6f-a2d6-aceae53d82b2', 'Слушайте рабочую речь', 'listening', '{"audio_text":"Hello, this is David from ABC Company.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('22bebe6a-bc8f-515c-bdb1-3b5aeb7ccd05', '38a65605-8be3-5c6f-a2d6-aceae53d82b2', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"Can I speak to Maria, please?","language":"en","min_accuracy":0.7,"translation_hint":"Recognize the key workplace words and phrases while practicing handling very simple professional telephone exchanges.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('38075d32-fe82-5554-815d-aea751bab430', '38a65605-8be3-5c6f-a2d6-aceae53d82b2', 'Выберите рабочее значение', 'choose_definition', '{"word":"call","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''call''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''phone''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''speak''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''message''.","is_correct":false}],"explanation":"call: A simple workplace meaning of ''call''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('fee314af-d472-5342-8ced-1022ce9cad28', '38a65605-8be3-5c6f-a2d6-aceae53d82b2', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Hello, this is David from ABC Company."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Can I speak to Maria, please?","is_correct":true},{"id":"B","text":"She is not available right now.","is_correct":false},{"id":"C","text":"I know the word call.","is_correct":false}],"explanation":"“Can I speak to Maria, please?” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7f0b3978-0a32-5683-bf29-19593f7f3a2d', '38a65605-8be3-5c6f-a2d6-aceae53d82b2', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('bcab045e-ae8e-5367-b0c3-282a67278300', NULL, 'Build the Core Sentence: Phone Calls at Work', 'Produce a useful basic business sentence while practicing handling very simple professional telephone exchanges.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d4c75126-2256-5858-97c0-23f1d2ce829b', 'bcab045e-ae8e-5367-b0c3-282a67278300', 'Изучите язык рабочего общения', 'text', '{"body":"Build the Core Sentence: Phone Calls at Work. Workplace mission: Produce a useful basic business sentence while practicing handling very simple professional telephone exchanges. Models: Can I speak to Maria, please? She is not available right now. Can I leave a message?","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('9b91aca2-2038-5863-8272-4905e908c994', 'bcab045e-ae8e-5367-b0c3-282a67278300', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"Can I speak to Maria, please?","word_bank":["Can","I","speak","to","Maria","please","speak"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4ad091b9-d25f-53fe-bccb-8846603d436d', 'bcab045e-ae8e-5367-b0c3-282a67278300', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"___ I speak to Maria, please?","correct_answer":"Can","options":["Can","phone","speak"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('57911d1a-5b2e-5f28-ba48-938c55763d57', 'bcab045e-ae8e-5367-b0c3-282a67278300', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["please","Maria","to","speak","I","Can"],"correct_words":["Can","I","speak","to","Maria","please"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4050d73f-b865-5140-93a9-11ae95721470', 'bcab045e-ae8e-5367-b0c3-282a67278300', 'Слушайте рабочую речь', 'listening', '{"audio_text":"Can I speak to Maria, please?","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('42a628ef-e860-5a02-b444-e00c7454c24c', 'bcab045e-ae8e-5367-b0c3-282a67278300', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"___ I speak to Maria, please?","correct_answer":"Can","hint_prefix":"C","explanation":"The missing word is Can.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('0835a43d-b662-566f-8143-4a0c8549b180', 'bcab045e-ae8e-5367-b0c3-282a67278300', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Can I speak to Maria, please?"}],"answer_speaker":"Learner","options":[{"id":"A","text":"She is not available right now.","is_correct":true},{"id":"B","text":"Can I leave a message?","is_correct":false},{"id":"C","text":"I know the word phone.","is_correct":false}],"explanation":"“She is not available right now.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7f0b3978-0a32-5683-bf29-19593f7f3a2d', 'bcab045e-ae8e-5367-b0c3-282a67278300', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('8ab87691-4c1d-5d93-a7a8-0e187cda96e0', NULL, 'Listen for Workplace Information: Phone Calls at Work', 'Identify an important detail in short workplace audio while practicing handling very simple professional telephone exchanges.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e44bfb58-4fce-5fcf-81e7-447f0280d78a', '8ab87691-4c1d-5d93-a7a8-0e187cda96e0', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"speak","right":"A simple workplace meaning of ''speak''."},{"id":"P2","left":"message","right":"A simple workplace meaning of ''message''."},{"id":"P3","left":"number","right":"A simple workplace meaning of ''number''."},{"id":"P4","left":"available","right":"A simple workplace meaning of ''available''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('930d813b-444b-588b-9862-33554460554c', '8ab87691-4c1d-5d93-a7a8-0e187cda96e0', 'Выберите профессиональный ответ', 'quiz', '{"question":"Identify an important detail in short workplace audio while practicing handling very simple professional telephone exchanges.","options":[{"id":"A","text":"She is not available right now.","is_correct":true},{"id":"B","text":"Can I leave a message?","is_correct":false},{"id":"C","text":"Hello, this is David from ABC Company.","is_correct":false}],"explanation":"“She is not available right now.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('2cb029a7-69ba-5146-8072-ca74f51e1fdc', '8ab87691-4c1d-5d93-a7a8-0e187cda96e0', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["now","right","available","not","is","She"],"correct_words":["She","is","not","available","right","now"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d8a06f3d-a571-59c3-b89f-689af875ce63', '8ab87691-4c1d-5d93-a7a8-0e187cda96e0', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"___ is not available right now.","audio_text":"She is not available right now.","language":"en","options":[{"id":"A","audio_text":"She","is_correct":true},{"id":"B","audio_text":"speak","is_correct":false},{"id":"C","audio_text":"message","is_correct":false}],"explanation":"The missing word is She.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c95f915e-c1b8-5c65-aef0-40d3e812e712', '8ab87691-4c1d-5d93-a7a8-0e187cda96e0', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"Can I leave a message?","language":"en","min_accuracy":0.7,"translation_hint":"Identify an important detail in short workplace audio while practicing handling very simple professional telephone exchanges.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('6da3806a-aa97-56d7-ad6d-38b63fc6b262', '8ab87691-4c1d-5d93-a7a8-0e187cda96e0', 'Рабочая ситуация', 'story', '{"title":"Listen for Workplace Information: Phone Calls at Work","scenes":[{"type":"dialogue","character":"Colleague","text":"She is not available right now."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"Can I leave a message?","is_correct":true},{"text":"Hello, this is David from ABC Company.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('52efe47a-d2fe-5df2-931d-4dd4caa9014f', '8ab87691-4c1d-5d93-a7a8-0e187cda96e0', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"She is not available right now."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Can I leave a message?","is_correct":true},{"id":"B","text":"Hello, this is David from ABC Company.","is_correct":false},{"id":"C","text":"I know the word speak.","is_correct":false}],"explanation":"“Can I leave a message?” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7f0b3978-0a32-5683-bf29-19593f7f3a2d', '8ab87691-4c1d-5d93-a7a8-0e187cda96e0', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('2225737d-2c58-5c5c-bb7c-6779dd209c94', NULL, 'Use Polite Professional English: Phone Calls at Work', 'Choose language appropriate for a simple workplace situation while practicing handling very simple professional telephone exchanges.', 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('87817ffe-4559-5457-a817-9a2c6ece8b5a', '2225737d-2c58-5c5c-bb7c-6779dd209c94', 'Изучите язык рабочего общения', 'text', '{"body":"Use Polite Professional English: Phone Calls at Work. Workplace mission: Choose language appropriate for a simple workplace situation while practicing handling very simple professional telephone exchanges. Models: Can I leave a message? Hello, this is David from ABC Company. Can I speak to Maria, please?","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('5e590f73-7731-5350-9481-57af1c4bf22b', '2225737d-2c58-5c5c-bb7c-6779dd209c94', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"message","right":"A simple workplace meaning of ''message''."},{"id":"P2","left":"number","right":"A simple workplace meaning of ''number''."},{"id":"P3","left":"available","right":"A simple workplace meaning of ''available''."},{"id":"P4","left":"sorry","right":"A simple workplace meaning of ''sorry''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('10198fab-f5aa-52e7-a04e-d032ac46abf3', '2225737d-2c58-5c5c-bb7c-6779dd209c94', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"___ I leave a message?","correct_answer":"Can","options":["Can","message","number"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('f87ceb76-f6bc-5b2a-bf90-982bf37c307c', '2225737d-2c58-5c5c-bb7c-6779dd209c94', 'Слушайте рабочую речь', 'listening', '{"audio_text":"Can I leave a message?","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('5c98fb85-533e-5a32-aaba-19b00b201736', '2225737d-2c58-5c5c-bb7c-6779dd209c94', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"___ I leave a message?","audio_text":"Can I leave a message?","language":"en","options":[{"id":"A","audio_text":"Can","is_correct":true},{"id":"B","audio_text":"message","is_correct":false},{"id":"C","audio_text":"number","is_correct":false}],"explanation":"The missing word is Can.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c71699df-0f35-5087-b9ff-8cbc03cd586b', '2225737d-2c58-5c5c-bb7c-6779dd209c94', 'Выберите рабочее значение', 'choose_definition', '{"word":"message","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''message''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''number''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''available''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''sorry''.","is_correct":false}],"explanation":"message: A simple workplace meaning of ''message''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('813215ea-32e6-5a28-a712-4f778f102b89', '2225737d-2c58-5c5c-bb7c-6779dd209c94', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Can I leave a message?"}],"answer_speaker":"Learner","options":[{"id":"A","text":"Hello, this is David from ABC Company.","is_correct":true},{"id":"B","text":"Can I speak to Maria, please?","is_correct":false},{"id":"C","text":"I know the word message.","is_correct":false}],"explanation":"“Hello, this is David from ABC Company.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7f0b3978-0a32-5683-bf29-19593f7f3a2d', '2225737d-2c58-5c5c-bb7c-6779dd209c94', 3)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('f3d0440c-4af7-571b-bba9-b76c89a308ce', NULL, 'Practice the Spoken Model: Phone Calls at Work', 'Repeat the workplace language clearly and politely while practicing handling very simple professional telephone exchanges.', 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('57a796cb-2788-52d3-a996-4c98fe76c1fc', 'f3d0440c-4af7-571b-bba9-b76c89a308ce', 'Выберите профессиональный ответ', 'quiz', '{"question":"Repeat the workplace language clearly and politely while practicing handling very simple professional telephone exchanges.","options":[{"id":"A","text":"Hello, this is David from ABC Company.","is_correct":true},{"id":"B","text":"Can I speak to Maria, please?","is_correct":false},{"id":"C","text":"She is not available right now.","is_correct":false}],"explanation":"“Hello, this is David from ABC Company.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('53ea470f-4383-5668-a949-27151bbc9300', 'f3d0440c-4af7-571b-bba9-b76c89a308ce', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"Hello, this is David from ABC Company.","word_bank":["Hello","this","is","David","from","ABC","Company","available"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('6c69d68c-d04d-5b74-99b8-5e43dec2801e', 'f3d0440c-4af7-571b-bba9-b76c89a308ce', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["Company","ABC","from","David","is","this","Hello"],"correct_words":["Hello","this","is","David","from","ABC","Company"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('41a5f3e4-be99-5dc7-8125-cc210ff37592', 'f3d0440c-4af7-571b-bba9-b76c89a308ce', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"Can I speak to Maria, please?","language":"en","min_accuracy":0.7,"translation_hint":"Repeat the workplace language clearly and politely while practicing handling very simple professional telephone exchanges.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('ab2e9674-f612-5ba5-a3eb-cfce5c202b44', 'f3d0440c-4af7-571b-bba9-b76c89a308ce', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"___, this is David from ABC Company.","correct_answer":"Hello","hint_prefix":"H","explanation":"The missing word is Hello.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('07ea8e4d-14e9-57e5-857d-8c6d2b1b60ae', 'f3d0440c-4af7-571b-bba9-b76c89a308ce', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"number","text":"number"},{"id":"V2","audio_text":"available","text":"available"},{"id":"V3","audio_text":"sorry","text":"sorry"},{"id":"V4","audio_text":"hello","text":"hello"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4d03b13e-be07-5e89-bfcc-23a7804c72a0', 'f3d0440c-4af7-571b-bba9-b76c89a308ce', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Hello, this is David from ABC Company."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Can I speak to Maria, please?","is_correct":true},{"id":"B","text":"She is not available right now.","is_correct":false},{"id":"C","text":"I know the word number.","is_correct":false}],"explanation":"“Can I speak to Maria, please?” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7f0b3978-0a32-5683-bf29-19593f7f3a2d', 'f3d0440c-4af7-571b-bba9-b76c89a308ce', 4)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('1213bfea-0c09-589d-a4d4-e6580334bfa3', NULL, 'Use the Language in Context: Phone Calls at Work', 'Apply the target language in a realistic work situation while practicing handling very simple professional telephone exchanges.', 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('cc794409-f8bd-55c5-bb03-f881d9e8b207', '1213bfea-0c09-589d-a4d4-e6580334bfa3', 'Изучите язык рабочего общения', 'text', '{"body":"Use the Language in Context: Phone Calls at Work. Workplace mission: Apply the target language in a realistic work situation while practicing handling very simple professional telephone exchanges. Models: Can I speak to Maria, please? She is not available right now. Can I leave a message?","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('f0999e30-9adb-594e-91a5-851ac2034c66', '1213bfea-0c09-589d-a4d4-e6580334bfa3', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"___ I speak to Maria, please?","correct_answer":"Can","options":["Can","available","sorry"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('8fa812d8-7808-5e7c-9128-4e611027238e', '1213bfea-0c09-589d-a4d4-e6580334bfa3', 'Слушайте рабочую речь', 'listening', '{"audio_text":"Can I speak to Maria, please?","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d7d057da-8e61-5fc1-81ab-b158af7b2761', '1213bfea-0c09-589d-a4d4-e6580334bfa3', 'Рабочая ситуация', 'story', '{"title":"Use the Language in Context: Phone Calls at Work","scenes":[{"type":"dialogue","character":"Colleague","text":"Can I speak to Maria, please?"},{"type":"choice","text":"What is the best professional response?","options":[{"text":"She is not available right now.","is_correct":true},{"text":"Can I leave a message?","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('12bf4ed2-76a8-5088-a760-751563c9babe', '1213bfea-0c09-589d-a4d4-e6580334bfa3', 'Выберите рабочее значение', 'choose_definition', '{"word":"available","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''available''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''sorry''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''hello''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''later''.","is_correct":false}],"explanation":"available: A simple workplace meaning of ''available''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('31ed4ab1-543a-5417-a754-0942ca209c4a', '1213bfea-0c09-589d-a4d4-e6580334bfa3', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"available","text":"available"},{"id":"V2","audio_text":"sorry","text":"sorry"},{"id":"V3","audio_text":"hello","text":"hello"},{"id":"V4","audio_text":"later","text":"later"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('9e905c86-fae9-51b4-95ed-803bc06ff46f', '1213bfea-0c09-589d-a4d4-e6580334bfa3', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Can I speak to Maria, please?"}],"answer_speaker":"Learner","options":[{"id":"A","text":"She is not available right now.","is_correct":true},{"id":"B","text":"Can I leave a message?","is_correct":false},{"id":"C","text":"I know the word available.","is_correct":false}],"explanation":"“She is not available right now.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7f0b3978-0a32-5683-bf29-19593f7f3a2d', '1213bfea-0c09-589d-a4d4-e6580334bfa3', 5)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('7a96226c-0baa-5368-90c3-9dc0d7883efb', NULL, 'Handle a Short Exchange: Phone Calls at Work', 'Respond appropriately in a two-person workplace interaction while practicing handling very simple professional telephone exchanges.', 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('83a83207-890b-5b98-a34f-495b5b050f7c', '7a96226c-0baa-5368-90c3-9dc0d7883efb', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"sorry","right":"A simple workplace meaning of ''sorry''."},{"id":"P2","left":"hello","right":"A simple workplace meaning of ''hello''."},{"id":"P3","left":"later","right":"A simple workplace meaning of ''later''."},{"id":"P4","left":"thanks","right":"A simple workplace meaning of ''thanks''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('32c22f2c-e2a3-5d52-9d83-c6db400be21a', '7a96226c-0baa-5368-90c3-9dc0d7883efb', 'Выберите профессиональный ответ', 'quiz', '{"question":"Respond appropriately in a two-person workplace interaction while practicing handling very simple professional telephone exchanges.","options":[{"id":"A","text":"She is not available right now.","is_correct":true},{"id":"B","text":"Can I leave a message?","is_correct":false},{"id":"C","text":"Hello, this is David from ABC Company.","is_correct":false}],"explanation":"“She is not available right now.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('f2bfd6e0-b6c3-5d53-bc12-0a7877e7fb18', '7a96226c-0baa-5368-90c3-9dc0d7883efb', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["now","right","available","not","is","She"],"correct_words":["She","is","not","available","right","now"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('76565804-7647-55a6-9912-5453c58f5b9d', '7a96226c-0baa-5368-90c3-9dc0d7883efb', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"___ is not available right now.","audio_text":"She is not available right now.","language":"en","options":[{"id":"A","audio_text":"She","is_correct":true},{"id":"B","audio_text":"sorry","is_correct":false},{"id":"C","audio_text":"hello","is_correct":false}],"explanation":"The missing word is She.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('cb6fa6ae-91f8-5f03-aa64-e0dbb6f67a01', '7a96226c-0baa-5368-90c3-9dc0d7883efb', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"___ is not available right now.","correct_answer":"She","hint_prefix":"S","explanation":"The missing word is She.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('7054f2df-0a55-5e0d-ae86-87fd488e72a7', '7a96226c-0baa-5368-90c3-9dc0d7883efb', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"Can I leave a message?","language":"en","min_accuracy":0.7,"translation_hint":"Respond appropriately in a two-person workplace interaction while practicing handling very simple professional telephone exchanges.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('880b94f6-2038-525a-bb4f-2df40cbaf2e2', '7a96226c-0baa-5368-90c3-9dc0d7883efb', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"She is not available right now."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Can I leave a message?","is_correct":true},{"id":"B","text":"Hello, this is David from ABC Company.","is_correct":false},{"id":"C","text":"I know the word sorry.","is_correct":false}],"explanation":"“Can I leave a message?” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7f0b3978-0a32-5683-bf29-19593f7f3a2d', '7a96226c-0baa-5368-90c3-9dc0d7883efb', 6)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('7b04aa8a-d0dc-521f-823e-61f514126d58', NULL, 'Work with Less Support: Phone Calls at Work', 'Complete the business task with fewer hints while practicing handling very simple professional telephone exchanges.', 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d3feccfe-f41a-5a49-9fe0-d14b7f975ff9', '7b04aa8a-d0dc-521f-823e-61f514126d58', 'Изучите язык рабочего общения', 'text', '{"body":"Work with Less Support: Phone Calls at Work. Workplace mission: Complete the business task with fewer hints while practicing handling very simple professional telephone exchanges. Models: Can I leave a message? Hello, this is David from ABC Company. Can I speak to Maria, please?","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('feef0db4-f31c-5f1c-9c8b-b85571ab99f3', '7b04aa8a-d0dc-521f-823e-61f514126d58', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"Can I leave a message?","word_bank":["Can","I","leave","a","message","later"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('7d89b347-8ced-5eac-90c5-3fe1236939f8', '7b04aa8a-d0dc-521f-823e-61f514126d58', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"___ I leave a message?","correct_answer":"Can","options":["Can","hello","later"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('92758e41-fc57-5bd7-88c5-9d1c24816ca7', '7b04aa8a-d0dc-521f-823e-61f514126d58', 'Слушайте рабочую речь', 'listening', '{"audio_text":"Can I leave a message?","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('6a105456-a81d-5f0d-b991-f0f5c7cd848a', '7b04aa8a-d0dc-521f-823e-61f514126d58', 'Рабочая ситуация', 'story', '{"title":"Work with Less Support: Phone Calls at Work","scenes":[{"type":"dialogue","character":"Colleague","text":"Can I leave a message?"},{"type":"choice","text":"What is the best professional response?","options":[{"text":"Hello, this is David from ABC Company.","is_correct":true},{"text":"Can I speak to Maria, please?","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('f35eb707-e4aa-5ba0-b4c3-4da5dff1d769', '7b04aa8a-d0dc-521f-823e-61f514126d58', 'Выберите рабочее значение', 'choose_definition', '{"word":"hello","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''hello''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''later''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''thanks''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''call''.","is_correct":false}],"explanation":"hello: A simple workplace meaning of ''hello''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('fc5d36f1-7725-5e9d-9b70-b4065f7b0189', '7b04aa8a-d0dc-521f-823e-61f514126d58', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Can I leave a message?"}],"answer_speaker":"Learner","options":[{"id":"A","text":"Hello, this is David from ABC Company.","is_correct":true},{"id":"B","text":"Can I speak to Maria, please?","is_correct":false},{"id":"C","text":"I know the word hello.","is_correct":false}],"explanation":"“Hello, this is David from ABC Company.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7f0b3978-0a32-5683-bf29-19593f7f3a2d', '7b04aa8a-d0dc-521f-823e-61f514126d58', 7)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('5c2804d7-b6e9-51d7-a1b7-232d933746c6', NULL, 'Workplace Challenge: Phone Calls at Work', 'Combine vocabulary, listening, and response skills while practicing handling very simple professional telephone exchanges.', 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a995d9f6-ed90-56ec-bcd5-a6c777281c74', '5c2804d7-b6e9-51d7-a1b7-232d933746c6', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"later","right":"A simple workplace meaning of ''later''."},{"id":"P2","left":"thanks","right":"A simple workplace meaning of ''thanks''."},{"id":"P3","left":"call","right":"A simple workplace meaning of ''call''."},{"id":"P4","left":"phone","right":"A simple workplace meaning of ''phone''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('aea0d56d-c19f-51a0-a045-d7b5e663d666', '5c2804d7-b6e9-51d7-a1b7-232d933746c6', 'Выберите профессиональный ответ', 'quiz', '{"question":"Combine vocabulary, listening, and response skills while practicing handling very simple professional telephone exchanges.","options":[{"id":"A","text":"Hello, this is David from ABC Company.","is_correct":true},{"id":"B","text":"Can I speak to Maria, please?","is_correct":false},{"id":"C","text":"She is not available right now.","is_correct":false}],"explanation":"“Hello, this is David from ABC Company.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('25648d92-a8af-5ea5-a646-0bf00bc05993', '5c2804d7-b6e9-51d7-a1b7-232d933746c6', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["Company","ABC","from","David","is","this","Hello"],"correct_words":["Hello","this","is","David","from","ABC","Company"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a4670998-2abd-5d9a-aefd-264c63829b05', '5c2804d7-b6e9-51d7-a1b7-232d933746c6', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"___, this is David from ABC Company.","audio_text":"Hello, this is David from ABC Company.","language":"en","options":[{"id":"A","audio_text":"Hello","is_correct":true},{"id":"B","audio_text":"later","is_correct":false},{"id":"C","audio_text":"thanks","is_correct":false}],"explanation":"The missing word is Hello.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('cac90b0e-6540-58c7-8962-df1045a17935', '5c2804d7-b6e9-51d7-a1b7-232d933746c6', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"later","text":"later"},{"id":"V2","audio_text":"thanks","text":"thanks"},{"id":"V3","audio_text":"call","text":"call"},{"id":"V4","audio_text":"phone","text":"phone"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('b5728f96-123a-5df5-b909-bbceebc01e04', '5c2804d7-b6e9-51d7-a1b7-232d933746c6', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"Can I speak to Maria, please?","language":"en","min_accuracy":0.7,"translation_hint":"Combine vocabulary, listening, and response skills while practicing handling very simple professional telephone exchanges.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('50afd9f4-41fa-5c4a-a7f0-6be541f19140', '5c2804d7-b6e9-51d7-a1b7-232d933746c6', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Hello, this is David from ABC Company."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Can I speak to Maria, please?","is_correct":true},{"id":"B","text":"She is not available right now.","is_correct":false},{"id":"C","text":"I know the word later.","is_correct":false}],"explanation":"“Can I speak to Maria, please?” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7f0b3978-0a32-5683-bf29-19593f7f3a2d', '5c2804d7-b6e9-51d7-a1b7-232d933746c6', 8)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('bffaac9f-95d8-55ae-b94a-9dc266aed170', NULL, 'Track Business Mission: Phone Calls at Work', 'Complete a practical beginner workplace mission while practicing handling very simple professional telephone exchanges.', 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d778cbd3-3d49-5328-9f81-8eaa368af85f', 'bffaac9f-95d8-55ae-b94a-9dc266aed170', 'Изучите язык рабочего общения', 'text', '{"body":"Track Business Mission: Phone Calls at Work. Workplace mission: Complete a practical beginner workplace mission while practicing handling very simple professional telephone exchanges. Models: Can I speak to Maria, please? She is not available right now. Can I leave a message?","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('ef320ae0-fb48-5e83-b4d4-d6f15de58ad0', 'bffaac9f-95d8-55ae-b94a-9dc266aed170', 'Выберите профессиональный ответ', 'quiz', '{"question":"Complete a practical beginner workplace mission while practicing handling very simple professional telephone exchanges.","options":[{"id":"A","text":"Can I speak to Maria, please?","is_correct":true},{"id":"B","text":"She is not available right now.","is_correct":false},{"id":"C","text":"Can I leave a message?","is_correct":false}],"explanation":"“Can I speak to Maria, please?” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('f52fdf36-b613-5c1d-88c5-cb0a6db967af', 'bffaac9f-95d8-55ae-b94a-9dc266aed170', 'Слушайте рабочую речь', 'listening', '{"audio_text":"Can I speak to Maria, please?","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('7c4f2a5f-0dae-53e2-adfb-1df6e2fd851f', 'bffaac9f-95d8-55ae-b94a-9dc266aed170', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"She is not available right now.","language":"en","min_accuracy":0.7,"translation_hint":"Complete a practical beginner workplace mission while practicing handling very simple professional telephone exchanges.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('18d82cd3-88f4-513d-8969-4b21d85e3012', 'bffaac9f-95d8-55ae-b94a-9dc266aed170', 'Рабочая ситуация', 'story', '{"title":"Track Business Mission: Phone Calls at Work","scenes":[{"type":"dialogue","character":"Colleague","text":"Can I speak to Maria, please?"},{"type":"choice","text":"What is the best professional response?","options":[{"text":"She is not available right now.","is_correct":true},{"text":"Can I leave a message?","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('8ff08dcd-777b-5c2c-b97f-64d48c11bbc4', 'bffaac9f-95d8-55ae-b94a-9dc266aed170', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"thanks","text":"thanks"},{"id":"V2","audio_text":"call","text":"call"},{"id":"V3","audio_text":"phone","text":"phone"},{"id":"V4","audio_text":"speak","text":"speak"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a02de573-e607-5cf5-af9a-9d01d371cda6', 'bffaac9f-95d8-55ae-b94a-9dc266aed170', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Can I speak to Maria, please?"}],"answer_speaker":"Learner","options":[{"id":"A","text":"She is not available right now.","is_correct":true},{"id":"B","text":"Can I leave a message?","is_correct":false},{"id":"C","text":"I know the word thanks.","is_correct":false}],"explanation":"“She is not available right now.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7f0b3978-0a32-5683-bf29-19593f7f3a2d', 'bffaac9f-95d8-55ae-b94a-9dc266aed170', 9)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('0f60b643-51be-5fe9-8708-45fa8a598f18', 'A1_BUSINESS_T07', 'Emails and Short Messages', 'An A1 Business English track focused on reading and writing very short workplace emails and messages.', 'en', 'A1', 'thematic', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('40eee8fe-caad-5cbb-8847-57f8fc2cc099', NULL, 'Learn the Workplace Language: Emails and Short Messages', 'Recognize the key workplace words and phrases while practicing reading and writing very short workplace emails and messages.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('ea2da36f-6ca3-5d8d-b05b-ac1615fb8651', '40eee8fe-caad-5cbb-8847-57f8fc2cc099', 'Изучите язык рабочего общения', 'text', '{"body":"Learn the Workplace Language: Emails and Short Messages. Workplace mission: Recognize the key workplace words and phrases while practicing reading and writing very short workplace emails and messages. Models: Please send me the file. The meeting is tomorrow at ten. Thanks for your email.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a6f92631-4818-5483-86c3-b47ecb984ab6', '40eee8fe-caad-5cbb-8847-57f8fc2cc099', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"email","right":"A simple workplace meaning of ''email''."},{"id":"P2","left":"message","right":"A simple workplace meaning of ''message''."},{"id":"P3","left":"subject","right":"A simple workplace meaning of ''subject''."},{"id":"P4","left":"send","right":"A simple workplace meaning of ''send''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('6de129f5-52ac-54b3-b7f3-1aa9822ae395', '40eee8fe-caad-5cbb-8847-57f8fc2cc099', 'Выберите профессиональный ответ', 'quiz', '{"question":"Recognize the key workplace words and phrases while practicing reading and writing very short workplace emails and messages.","options":[{"id":"A","text":"Please send me the file.","is_correct":true},{"id":"B","text":"The meeting is tomorrow at ten.","is_correct":false},{"id":"C","text":"Thanks for your email.","is_correct":false}],"explanation":"“Please send me the file.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('dfc61cf4-e28a-5f0b-999a-3e29d8b82502', '40eee8fe-caad-5cbb-8847-57f8fc2cc099', 'Слушайте рабочую речь', 'listening', '{"audio_text":"Please send me the file.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('807f16c7-7dee-5721-828b-ed245c30f617', '40eee8fe-caad-5cbb-8847-57f8fc2cc099', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"The meeting is tomorrow at ten.","language":"en","min_accuracy":0.7,"translation_hint":"Recognize the key workplace words and phrases while practicing reading and writing very short workplace emails and messages.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4a85a406-e512-541c-9274-f1775ffc310e', '40eee8fe-caad-5cbb-8847-57f8fc2cc099', 'Выберите рабочее значение', 'choose_definition', '{"word":"email","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''email''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''message''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''subject''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''send''.","is_correct":false}],"explanation":"email: A simple workplace meaning of ''email''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('f5df71cf-f74d-5204-95b4-dcc895ef51cc', '40eee8fe-caad-5cbb-8847-57f8fc2cc099', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Please send me the file."}],"answer_speaker":"Learner","options":[{"id":"A","text":"The meeting is tomorrow at ten.","is_correct":true},{"id":"B","text":"Thanks for your email.","is_correct":false},{"id":"C","text":"I know the word email.","is_correct":false}],"explanation":"“The meeting is tomorrow at ten.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0f60b643-51be-5fe9-8708-45fa8a598f18', '40eee8fe-caad-5cbb-8847-57f8fc2cc099', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('987355eb-107f-58c7-9cde-6583000e535a', NULL, 'Build the Core Sentence: Emails and Short Messages', 'Produce a useful basic business sentence while practicing reading and writing very short workplace emails and messages.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('96880892-0390-5dc6-a8b5-177237b07232', '987355eb-107f-58c7-9cde-6583000e535a', 'Изучите язык рабочего общения', 'text', '{"body":"Build the Core Sentence: Emails and Short Messages. Workplace mission: Produce a useful basic business sentence while practicing reading and writing very short workplace emails and messages. Models: The meeting is tomorrow at ten. Thanks for your email. I will reply today.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('87c9c5b2-11ed-5420-b8af-a508aed8585f', '987355eb-107f-58c7-9cde-6583000e535a', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"The meeting is tomorrow at ten.","word_bank":["The","meeting","is","tomorrow","at","ten","subject"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('bf907df3-1a8a-5ca9-9133-ec02656ad7d2', '987355eb-107f-58c7-9cde-6583000e535a', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"___ meeting is tomorrow at ten.","correct_answer":"The","options":["The","message","subject"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('3c597dc9-1363-5424-b275-dacafc6eb869', '987355eb-107f-58c7-9cde-6583000e535a', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["ten","at","tomorrow","is","meeting","The"],"correct_words":["The","meeting","is","tomorrow","at","ten"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d48bc92a-841b-525a-b5b4-c30529d7ca08', '987355eb-107f-58c7-9cde-6583000e535a', 'Слушайте рабочую речь', 'listening', '{"audio_text":"The meeting is tomorrow at ten.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('da406bb2-d902-5572-851d-52036cc11a16', '987355eb-107f-58c7-9cde-6583000e535a', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"___ meeting is tomorrow at ten.","correct_answer":"The","hint_prefix":"T","explanation":"The missing word is The.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('12450cd3-d6d3-5a60-8d6d-7a479cd131f6', '987355eb-107f-58c7-9cde-6583000e535a', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"The meeting is tomorrow at ten."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Thanks for your email.","is_correct":true},{"id":"B","text":"I will reply today.","is_correct":false},{"id":"C","text":"I know the word message.","is_correct":false}],"explanation":"“Thanks for your email.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0f60b643-51be-5fe9-8708-45fa8a598f18', '987355eb-107f-58c7-9cde-6583000e535a', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('429be802-5bae-5c8c-aa81-9ae17ea76b79', NULL, 'Listen for Workplace Information: Emails and Short Messages', 'Identify an important detail in short workplace audio while practicing reading and writing very short workplace emails and messages.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('fe3bac4f-8cbf-51d1-a35c-4639b603a2dd', '429be802-5bae-5c8c-aa81-9ae17ea76b79', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"subject","right":"A simple workplace meaning of ''subject''."},{"id":"P2","left":"send","right":"A simple workplace meaning of ''send''."},{"id":"P3","left":"reply","right":"A simple workplace meaning of ''reply''."},{"id":"P4","left":"please","right":"A simple workplace meaning of ''please''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('6011052e-0e86-5762-abcd-7a5218542cae', '429be802-5bae-5c8c-aa81-9ae17ea76b79', 'Выберите профессиональный ответ', 'quiz', '{"question":"Identify an important detail in short workplace audio while practicing reading and writing very short workplace emails and messages.","options":[{"id":"A","text":"Thanks for your email.","is_correct":true},{"id":"B","text":"I will reply today.","is_correct":false},{"id":"C","text":"Please send me the file.","is_correct":false}],"explanation":"“Thanks for your email.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('affc7be2-3013-5e28-8b7b-fe3435621901', '429be802-5bae-5c8c-aa81-9ae17ea76b79', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["email","your","for","Thanks"],"correct_words":["Thanks","for","your","email"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('dc847e08-1104-542f-bdcf-59e1a9e20886', '429be802-5bae-5c8c-aa81-9ae17ea76b79', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"___ for your email.","audio_text":"Thanks for your email.","language":"en","options":[{"id":"A","audio_text":"Thanks","is_correct":true},{"id":"B","audio_text":"subject","is_correct":false},{"id":"C","audio_text":"send","is_correct":false}],"explanation":"The missing word is Thanks.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('7decd848-01dd-5008-a398-52c5d1539914', '429be802-5bae-5c8c-aa81-9ae17ea76b79', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"I will reply today.","language":"en","min_accuracy":0.7,"translation_hint":"Identify an important detail in short workplace audio while practicing reading and writing very short workplace emails and messages.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('510d1452-655d-5f00-ac97-77a857e26cce', '429be802-5bae-5c8c-aa81-9ae17ea76b79', 'Рабочая ситуация', 'story', '{"title":"Listen for Workplace Information: Emails and Short Messages","scenes":[{"type":"dialogue","character":"Colleague","text":"Thanks for your email."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"I will reply today.","is_correct":true},{"text":"Please send me the file.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a718c1ba-3b8c-5a1f-acd2-2ee89bf45dda', '429be802-5bae-5c8c-aa81-9ae17ea76b79', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Thanks for your email."}],"answer_speaker":"Learner","options":[{"id":"A","text":"I will reply today.","is_correct":true},{"id":"B","text":"Please send me the file.","is_correct":false},{"id":"C","text":"I know the word subject.","is_correct":false}],"explanation":"“I will reply today.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0f60b643-51be-5fe9-8708-45fa8a598f18', '429be802-5bae-5c8c-aa81-9ae17ea76b79', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('ebe1242e-9183-5b7d-bd1b-e3f4a684671a', NULL, 'Use Polite Professional English: Emails and Short Messages', 'Choose language appropriate for a simple workplace situation while practicing reading and writing very short workplace emails and messages.', 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('005f14f3-50cb-5483-a4ea-97185f05cfb3', 'ebe1242e-9183-5b7d-bd1b-e3f4a684671a', 'Изучите язык рабочего общения', 'text', '{"body":"Use Polite Professional English: Emails and Short Messages. Workplace mission: Choose language appropriate for a simple workplace situation while practicing reading and writing very short workplace emails and messages. Models: I will reply today. Please send me the file. The meeting is tomorrow at ten.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('ca230a22-0dc6-53ca-b222-2361c2d5247a', 'ebe1242e-9183-5b7d-bd1b-e3f4a684671a', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"send","right":"A simple workplace meaning of ''send''."},{"id":"P2","left":"reply","right":"A simple workplace meaning of ''reply''."},{"id":"P3","left":"please","right":"A simple workplace meaning of ''please''."},{"id":"P4","left":"thanks","right":"A simple workplace meaning of ''thanks''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('cde9b033-10c7-5f72-a329-6c04751b5a70', 'ebe1242e-9183-5b7d-bd1b-e3f4a684671a', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"I ___ reply today.","correct_answer":"will","options":["will","send","reply"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c0beda99-3bfc-5d7f-bcb1-1cfed5f414c3', 'ebe1242e-9183-5b7d-bd1b-e3f4a684671a', 'Слушайте рабочую речь', 'listening', '{"audio_text":"I will reply today.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('11fdc6da-f732-5d31-8947-649dbb0601bd', 'ebe1242e-9183-5b7d-bd1b-e3f4a684671a', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"I ___ reply today.","audio_text":"I will reply today.","language":"en","options":[{"id":"A","audio_text":"will","is_correct":true},{"id":"B","audio_text":"send","is_correct":false},{"id":"C","audio_text":"reply","is_correct":false}],"explanation":"The missing word is will.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('fcfd9252-ecad-5fab-bef7-486e4e4568b2', 'ebe1242e-9183-5b7d-bd1b-e3f4a684671a', 'Выберите рабочее значение', 'choose_definition', '{"word":"send","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''send''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''reply''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''please''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''thanks''.","is_correct":false}],"explanation":"send: A simple workplace meaning of ''send''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('0c122d62-cb97-5b13-88b3-c0b21571917e', 'ebe1242e-9183-5b7d-bd1b-e3f4a684671a', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"I will reply today."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Please send me the file.","is_correct":true},{"id":"B","text":"The meeting is tomorrow at ten.","is_correct":false},{"id":"C","text":"I know the word send.","is_correct":false}],"explanation":"“Please send me the file.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0f60b643-51be-5fe9-8708-45fa8a598f18', 'ebe1242e-9183-5b7d-bd1b-e3f4a684671a', 3)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('7ce14361-c233-503e-9c4d-c0565b57fbe6', NULL, 'Practice the Spoken Model: Emails and Short Messages', 'Repeat the workplace language clearly and politely while practicing reading and writing very short workplace emails and messages.', 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('122b6ce6-06f3-59f8-9b67-07f647eb951d', '7ce14361-c233-503e-9c4d-c0565b57fbe6', 'Выберите профессиональный ответ', 'quiz', '{"question":"Repeat the workplace language clearly and politely while practicing reading and writing very short workplace emails and messages.","options":[{"id":"A","text":"Please send me the file.","is_correct":true},{"id":"B","text":"The meeting is tomorrow at ten.","is_correct":false},{"id":"C","text":"Thanks for your email.","is_correct":false}],"explanation":"“Please send me the file.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('52cb6b21-655e-5387-ade0-690eef38cf42', '7ce14361-c233-503e-9c4d-c0565b57fbe6', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"Please send me the file.","word_bank":["Please","send","me","the","file","please"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e8dd2e44-fb0c-5c67-8096-6b789780155b', '7ce14361-c233-503e-9c4d-c0565b57fbe6', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["file","the","me","send","Please"],"correct_words":["Please","send","me","the","file"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('2d378d98-be09-53aa-b04d-616e438cd868', '7ce14361-c233-503e-9c4d-c0565b57fbe6', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"The meeting is tomorrow at ten.","language":"en","min_accuracy":0.7,"translation_hint":"Repeat the workplace language clearly and politely while practicing reading and writing very short workplace emails and messages.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('b192957e-9548-51d2-a37a-499cac32065a', '7ce14361-c233-503e-9c4d-c0565b57fbe6', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"___ send me the file.","correct_answer":"Please","hint_prefix":"P","explanation":"The missing word is Please.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('85f7ed48-c0c5-5a71-bc7e-cf9010df0e46', '7ce14361-c233-503e-9c4d-c0565b57fbe6', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"reply","text":"reply"},{"id":"V2","audio_text":"please","text":"please"},{"id":"V3","audio_text":"thanks","text":"thanks"},{"id":"V4","audio_text":"today","text":"today"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('46d0f91a-86a0-5a47-a02e-c832d1c38f25', '7ce14361-c233-503e-9c4d-c0565b57fbe6', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Please send me the file."}],"answer_speaker":"Learner","options":[{"id":"A","text":"The meeting is tomorrow at ten.","is_correct":true},{"id":"B","text":"Thanks for your email.","is_correct":false},{"id":"C","text":"I know the word reply.","is_correct":false}],"explanation":"“The meeting is tomorrow at ten.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0f60b643-51be-5fe9-8708-45fa8a598f18', '7ce14361-c233-503e-9c4d-c0565b57fbe6', 4)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('bca0d895-f6e4-560a-a994-0207caec7ec9', NULL, 'Use the Language in Context: Emails and Short Messages', 'Apply the target language in a realistic work situation while practicing reading and writing very short workplace emails and messages.', 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('67b66f5e-1816-52df-acf7-5af7957461df', 'bca0d895-f6e4-560a-a994-0207caec7ec9', 'Изучите язык рабочего общения', 'text', '{"body":"Use the Language in Context: Emails and Short Messages. Workplace mission: Apply the target language in a realistic work situation while practicing reading and writing very short workplace emails and messages. Models: The meeting is tomorrow at ten. Thanks for your email. I will reply today.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('40659180-31dc-526f-a257-8d7f8a6359d2', 'bca0d895-f6e4-560a-a994-0207caec7ec9', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"___ meeting is tomorrow at ten.","correct_answer":"The","options":["The","please","thanks"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d0d89a1c-c837-584f-9ff1-c9ea5276f6bc', 'bca0d895-f6e4-560a-a994-0207caec7ec9', 'Слушайте рабочую речь', 'listening', '{"audio_text":"The meeting is tomorrow at ten.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('91788d8d-62f7-5ca8-a071-4b8e9cb7b657', 'bca0d895-f6e4-560a-a994-0207caec7ec9', 'Рабочая ситуация', 'story', '{"title":"Use the Language in Context: Emails and Short Messages","scenes":[{"type":"dialogue","character":"Colleague","text":"The meeting is tomorrow at ten."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"Thanks for your email.","is_correct":true},{"text":"I will reply today.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('df879b65-8211-5c2b-b867-458574a8e72a', 'bca0d895-f6e4-560a-a994-0207caec7ec9', 'Выберите рабочее значение', 'choose_definition', '{"word":"please","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''please''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''thanks''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''today''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''tomorrow''.","is_correct":false}],"explanation":"please: A simple workplace meaning of ''please''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e91feec7-a5bf-56c4-add3-22e1a53fa073', 'bca0d895-f6e4-560a-a994-0207caec7ec9', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"please","text":"please"},{"id":"V2","audio_text":"thanks","text":"thanks"},{"id":"V3","audio_text":"today","text":"today"},{"id":"V4","audio_text":"tomorrow","text":"tomorrow"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('7f4aeee0-5394-56f0-a51a-08a130eef1fe', 'bca0d895-f6e4-560a-a994-0207caec7ec9', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"The meeting is tomorrow at ten."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Thanks for your email.","is_correct":true},{"id":"B","text":"I will reply today.","is_correct":false},{"id":"C","text":"I know the word please.","is_correct":false}],"explanation":"“Thanks for your email.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0f60b643-51be-5fe9-8708-45fa8a598f18', 'bca0d895-f6e4-560a-a994-0207caec7ec9', 5)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('4409af6f-fcbb-5dd4-ad79-3b77d4e6f9a6', NULL, 'Handle a Short Exchange: Emails and Short Messages', 'Respond appropriately in a two-person workplace interaction while practicing reading and writing very short workplace emails and messages.', 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('f6fc6a2f-5a54-5995-9686-9a2bd34af8e8', '4409af6f-fcbb-5dd4-ad79-3b77d4e6f9a6', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"thanks","right":"A simple workplace meaning of ''thanks''."},{"id":"P2","left":"today","right":"A simple workplace meaning of ''today''."},{"id":"P3","left":"tomorrow","right":"A simple workplace meaning of ''tomorrow''."},{"id":"P4","left":"meeting","right":"A simple workplace meaning of ''meeting''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a88a1c00-71c4-5e77-8792-a919932494e9', '4409af6f-fcbb-5dd4-ad79-3b77d4e6f9a6', 'Выберите профессиональный ответ', 'quiz', '{"question":"Respond appropriately in a two-person workplace interaction while practicing reading and writing very short workplace emails and messages.","options":[{"id":"A","text":"Thanks for your email.","is_correct":true},{"id":"B","text":"I will reply today.","is_correct":false},{"id":"C","text":"Please send me the file.","is_correct":false}],"explanation":"“Thanks for your email.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('5ca5e090-c26a-51f5-8338-dc8b0ff521fb', '4409af6f-fcbb-5dd4-ad79-3b77d4e6f9a6', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["email","your","for","Thanks"],"correct_words":["Thanks","for","your","email"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('8d069814-a312-5f39-983f-52136dec01ba', '4409af6f-fcbb-5dd4-ad79-3b77d4e6f9a6', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"___ for your email.","audio_text":"Thanks for your email.","language":"en","options":[{"id":"A","audio_text":"Thanks","is_correct":true},{"id":"B","audio_text":"today","is_correct":false},{"id":"C","audio_text":"tomorrow","is_correct":false}],"explanation":"The missing word is Thanks.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('5c389add-467b-5f4c-81dd-9f714541644a', '4409af6f-fcbb-5dd4-ad79-3b77d4e6f9a6', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"___ for your email.","correct_answer":"Thanks","hint_prefix":"T","explanation":"The missing word is Thanks.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('b686f142-76d0-5930-b3da-1ec6bc64bb90', '4409af6f-fcbb-5dd4-ad79-3b77d4e6f9a6', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"I will reply today.","language":"en","min_accuracy":0.7,"translation_hint":"Respond appropriately in a two-person workplace interaction while practicing reading and writing very short workplace emails and messages.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d7e12aac-095b-5f44-a330-e26ce020feb0', '4409af6f-fcbb-5dd4-ad79-3b77d4e6f9a6', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Thanks for your email."}],"answer_speaker":"Learner","options":[{"id":"A","text":"I will reply today.","is_correct":true},{"id":"B","text":"Please send me the file.","is_correct":false},{"id":"C","text":"I know the word thanks.","is_correct":false}],"explanation":"“I will reply today.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0f60b643-51be-5fe9-8708-45fa8a598f18', '4409af6f-fcbb-5dd4-ad79-3b77d4e6f9a6', 6)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('c6dd46b9-c52f-5e8f-97a8-0e94e89d05ec', NULL, 'Work with Less Support: Emails and Short Messages', 'Complete the business task with fewer hints while practicing reading and writing very short workplace emails and messages.', 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('b055095f-3cfe-51a6-9b14-e584052bc2a2', 'c6dd46b9-c52f-5e8f-97a8-0e94e89d05ec', 'Изучите язык рабочего общения', 'text', '{"body":"Work with Less Support: Emails and Short Messages. Workplace mission: Complete the business task with fewer hints while practicing reading and writing very short workplace emails and messages. Models: I will reply today. Please send me the file. The meeting is tomorrow at ten.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('79345dc4-27a5-5cc9-a064-e937e25f2f8b', 'c6dd46b9-c52f-5e8f-97a8-0e94e89d05ec', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"I will reply today.","word_bank":["I","will","reply","today","tomorrow"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('188fe52d-f40c-5944-ab05-760d960326a4', 'c6dd46b9-c52f-5e8f-97a8-0e94e89d05ec', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"I ___ reply today.","correct_answer":"will","options":["will","today","tomorrow"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('2878cb74-f368-5134-9e83-02b3fd7f36cb', 'c6dd46b9-c52f-5e8f-97a8-0e94e89d05ec', 'Слушайте рабочую речь', 'listening', '{"audio_text":"I will reply today.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('0afa6690-c9ac-551e-bb49-b6b35cbb5c00', 'c6dd46b9-c52f-5e8f-97a8-0e94e89d05ec', 'Рабочая ситуация', 'story', '{"title":"Work with Less Support: Emails and Short Messages","scenes":[{"type":"dialogue","character":"Colleague","text":"I will reply today."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"Please send me the file.","is_correct":true},{"text":"The meeting is tomorrow at ten.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('8ff55768-af9a-55d9-ab53-08defb2ee9e5', 'c6dd46b9-c52f-5e8f-97a8-0e94e89d05ec', 'Выберите рабочее значение', 'choose_definition', '{"word":"today","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''today''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''tomorrow''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''meeting''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''email''.","is_correct":false}],"explanation":"today: A simple workplace meaning of ''today''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('1b54e14c-41a2-5c83-b25c-bc91f797dba3', 'c6dd46b9-c52f-5e8f-97a8-0e94e89d05ec', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"I will reply today."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Please send me the file.","is_correct":true},{"id":"B","text":"The meeting is tomorrow at ten.","is_correct":false},{"id":"C","text":"I know the word today.","is_correct":false}],"explanation":"“Please send me the file.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0f60b643-51be-5fe9-8708-45fa8a598f18', 'c6dd46b9-c52f-5e8f-97a8-0e94e89d05ec', 7)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('05cbb2d0-27a9-56ae-909b-2c34e6e62469', NULL, 'Workplace Challenge: Emails and Short Messages', 'Combine vocabulary, listening, and response skills while practicing reading and writing very short workplace emails and messages.', 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('b488f029-c5b7-5aac-8b4b-689d83558699', '05cbb2d0-27a9-56ae-909b-2c34e6e62469', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"tomorrow","right":"A simple workplace meaning of ''tomorrow''."},{"id":"P2","left":"meeting","right":"A simple workplace meaning of ''meeting''."},{"id":"P3","left":"email","right":"A simple workplace meaning of ''email''."},{"id":"P4","left":"message","right":"A simple workplace meaning of ''message''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('84a8602d-ac7e-5cf9-8835-4f3e34c416ff', '05cbb2d0-27a9-56ae-909b-2c34e6e62469', 'Выберите профессиональный ответ', 'quiz', '{"question":"Combine vocabulary, listening, and response skills while practicing reading and writing very short workplace emails and messages.","options":[{"id":"A","text":"Please send me the file.","is_correct":true},{"id":"B","text":"The meeting is tomorrow at ten.","is_correct":false},{"id":"C","text":"Thanks for your email.","is_correct":false}],"explanation":"“Please send me the file.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('5380e61c-5fa8-582a-b6b8-fdd3733abd4a', '05cbb2d0-27a9-56ae-909b-2c34e6e62469', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["file","the","me","send","Please"],"correct_words":["Please","send","me","the","file"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a640f10d-bcc8-59f9-aa96-99ed95672538', '05cbb2d0-27a9-56ae-909b-2c34e6e62469', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"___ send me the file.","audio_text":"Please send me the file.","language":"en","options":[{"id":"A","audio_text":"Please","is_correct":true},{"id":"B","audio_text":"tomorrow","is_correct":false},{"id":"C","audio_text":"meeting","is_correct":false}],"explanation":"The missing word is Please.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('5866a8e9-0b01-5ba6-8ac0-e184bef6ae9d', '05cbb2d0-27a9-56ae-909b-2c34e6e62469', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"tomorrow","text":"tomorrow"},{"id":"V2","audio_text":"meeting","text":"meeting"},{"id":"V3","audio_text":"email","text":"email"},{"id":"V4","audio_text":"message","text":"message"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('18e09764-865c-5136-97f1-41b45acc72d9', '05cbb2d0-27a9-56ae-909b-2c34e6e62469', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"The meeting is tomorrow at ten.","language":"en","min_accuracy":0.7,"translation_hint":"Combine vocabulary, listening, and response skills while practicing reading and writing very short workplace emails and messages.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('75a2c219-31e7-5e8b-b85a-25f8f57324c4', '05cbb2d0-27a9-56ae-909b-2c34e6e62469', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Please send me the file."}],"answer_speaker":"Learner","options":[{"id":"A","text":"The meeting is tomorrow at ten.","is_correct":true},{"id":"B","text":"Thanks for your email.","is_correct":false},{"id":"C","text":"I know the word tomorrow.","is_correct":false}],"explanation":"“The meeting is tomorrow at ten.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0f60b643-51be-5fe9-8708-45fa8a598f18', '05cbb2d0-27a9-56ae-909b-2c34e6e62469', 8)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('f45ab034-c043-5958-9b45-5ef5ee43c8aa', NULL, 'Track Business Mission: Emails and Short Messages', 'Complete a practical beginner workplace mission while practicing reading and writing very short workplace emails and messages.', 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('344ac461-2ad6-5c79-8d7e-09bd1cd40c7c', 'f45ab034-c043-5958-9b45-5ef5ee43c8aa', 'Изучите язык рабочего общения', 'text', '{"body":"Track Business Mission: Emails and Short Messages. Workplace mission: Complete a practical beginner workplace mission while practicing reading and writing very short workplace emails and messages. Models: The meeting is tomorrow at ten. Thanks for your email. I will reply today.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c029fa05-ee4c-5afa-9992-1e2f1410fd6f', 'f45ab034-c043-5958-9b45-5ef5ee43c8aa', 'Выберите профессиональный ответ', 'quiz', '{"question":"Complete a practical beginner workplace mission while practicing reading and writing very short workplace emails and messages.","options":[{"id":"A","text":"The meeting is tomorrow at ten.","is_correct":true},{"id":"B","text":"Thanks for your email.","is_correct":false},{"id":"C","text":"I will reply today.","is_correct":false}],"explanation":"“The meeting is tomorrow at ten.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c53ca5fd-9a47-5bb4-86bb-fa939fd4428c', 'f45ab034-c043-5958-9b45-5ef5ee43c8aa', 'Слушайте рабочую речь', 'listening', '{"audio_text":"The meeting is tomorrow at ten.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('6faa3d74-9f41-5de3-bd6e-a78f24e2d382', 'f45ab034-c043-5958-9b45-5ef5ee43c8aa', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"Thanks for your email.","language":"en","min_accuracy":0.7,"translation_hint":"Complete a practical beginner workplace mission while practicing reading and writing very short workplace emails and messages.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('993c8eb6-56ce-5fd1-aa15-6e47c9d7ad8d', 'f45ab034-c043-5958-9b45-5ef5ee43c8aa', 'Рабочая ситуация', 'story', '{"title":"Track Business Mission: Emails and Short Messages","scenes":[{"type":"dialogue","character":"Colleague","text":"The meeting is tomorrow at ten."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"Thanks for your email.","is_correct":true},{"text":"I will reply today.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('cde08f31-b75e-58bd-9712-dff55b981f8b', 'f45ab034-c043-5958-9b45-5ef5ee43c8aa', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"meeting","text":"meeting"},{"id":"V2","audio_text":"email","text":"email"},{"id":"V3","audio_text":"message","text":"message"},{"id":"V4","audio_text":"subject","text":"subject"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('34466a4d-d795-576a-8ecc-0867c4b493b9', 'f45ab034-c043-5958-9b45-5ef5ee43c8aa', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"The meeting is tomorrow at ten."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Thanks for your email.","is_correct":true},{"id":"B","text":"I will reply today.","is_correct":false},{"id":"C","text":"I know the word meeting.","is_correct":false}],"explanation":"“Thanks for your email.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0f60b643-51be-5fe9-8708-45fa8a598f18', 'f45ab034-c043-5958-9b45-5ef5ee43c8aa', 9)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('7ce4ef3d-bba1-51b3-97ad-cd462a955a9e', 'A1_BUSINESS_T08', 'Meetings: Basic Language', 'An A1 Business English track focused on understanding and using simple language before and during a meeting.', 'en', 'A1', 'thematic', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('9a5b4bef-1dc3-52aa-9841-e16d7ad195c5', NULL, 'Learn the Workplace Language: Meetings: Basic Language', 'Recognize the key workplace words and phrases while practicing understanding and using simple language before and during a meeting.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('ce1bd306-c40b-5dcc-8ae6-2113557a9001', '9a5b4bef-1dc3-52aa-9841-e16d7ad195c5', 'Изучите язык рабочего общения', 'text', '{"body":"Learn the Workplace Language: Meetings: Basic Language. Workplace mission: Recognize the key workplace words and phrases while practicing understanding and using simple language before and during a meeting. Models: The meeting starts at ten. We are in Meeting Room Two. I have a question.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('40d46a4d-85c8-571f-b04c-4acb838e74a1', '9a5b4bef-1dc3-52aa-9841-e16d7ad195c5', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"meeting","right":"A simple workplace meaning of ''meeting''."},{"id":"P2","left":"start","right":"A simple workplace meaning of ''start''."},{"id":"P3","left":"time","right":"A simple workplace meaning of ''time''."},{"id":"P4","left":"room","right":"A simple workplace meaning of ''room''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('32a7390d-04b4-5702-9506-b788414aec97', '9a5b4bef-1dc3-52aa-9841-e16d7ad195c5', 'Выберите профессиональный ответ', 'quiz', '{"question":"Recognize the key workplace words and phrases while practicing understanding and using simple language before and during a meeting.","options":[{"id":"A","text":"The meeting starts at ten.","is_correct":true},{"id":"B","text":"We are in Meeting Room Two.","is_correct":false},{"id":"C","text":"I have a question.","is_correct":false}],"explanation":"“The meeting starts at ten.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('eb72787a-6537-592b-a9b9-de5f41a411d2', '9a5b4bef-1dc3-52aa-9841-e16d7ad195c5', 'Слушайте рабочую речь', 'listening', '{"audio_text":"The meeting starts at ten.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('83deb934-c3c9-56ca-913f-5e4b8b3c3b4c', '9a5b4bef-1dc3-52aa-9841-e16d7ad195c5', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"We are in Meeting Room Two.","language":"en","min_accuracy":0.7,"translation_hint":"Recognize the key workplace words and phrases while practicing understanding and using simple language before and during a meeting.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('07107ca5-fbb1-51eb-b979-8e2a1a72dd8e', '9a5b4bef-1dc3-52aa-9841-e16d7ad195c5', 'Выберите рабочее значение', 'choose_definition', '{"word":"meeting","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''meeting''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''start''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''time''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''room''.","is_correct":false}],"explanation":"meeting: A simple workplace meaning of ''meeting''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('099ada1c-7bc6-5257-892c-1cfd6effd285', '9a5b4bef-1dc3-52aa-9841-e16d7ad195c5', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"The meeting starts at ten."}],"answer_speaker":"Learner","options":[{"id":"A","text":"We are in Meeting Room Two.","is_correct":true},{"id":"B","text":"I have a question.","is_correct":false},{"id":"C","text":"I know the word meeting.","is_correct":false}],"explanation":"“We are in Meeting Room Two.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7ce4ef3d-bba1-51b3-97ad-cd462a955a9e', '9a5b4bef-1dc3-52aa-9841-e16d7ad195c5', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('9af364e0-fdbe-5133-9946-3093c1574838', NULL, 'Build the Core Sentence: Meetings: Basic Language', 'Produce a useful basic business sentence while practicing understanding and using simple language before and during a meeting.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('abb38ec5-6037-53cb-9230-72073477cfdb', '9af364e0-fdbe-5133-9946-3093c1574838', 'Изучите язык рабочего общения', 'text', '{"body":"Build the Core Sentence: Meetings: Basic Language. Workplace mission: Produce a useful basic business sentence while practicing understanding and using simple language before and during a meeting. Models: We are in Meeting Room Two. I have a question. Yes, I agree.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('cef1ebcd-1264-5814-917b-b7e976caaf3c', '9af364e0-fdbe-5133-9946-3093c1574838', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"We are in Meeting Room Two.","word_bank":["We","are","in","Meeting","Room","Two","time"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('dc183f4a-154d-5b85-8c21-ec7a5ec1fbb9', '9af364e0-fdbe-5133-9946-3093c1574838', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"We ___ in Meeting Room Two.","correct_answer":"are","options":["are","start","time"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('7087811b-f163-5993-8f82-19fc0502e954', '9af364e0-fdbe-5133-9946-3093c1574838', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["Two","Room","Meeting","in","are","We"],"correct_words":["We","are","in","Meeting","Room","Two"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d7d1fff1-9af3-548a-b84f-6a26d959bff0', '9af364e0-fdbe-5133-9946-3093c1574838', 'Слушайте рабочую речь', 'listening', '{"audio_text":"We are in Meeting Room Two.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('7b552d5a-3947-5054-96ef-efeef9f520bf', '9af364e0-fdbe-5133-9946-3093c1574838', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"We ___ in Meeting Room Two.","correct_answer":"are","hint_prefix":"a","explanation":"The missing word is are.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('fe398578-8311-594a-89e1-4a0843899f31', '9af364e0-fdbe-5133-9946-3093c1574838', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"We are in Meeting Room Two."}],"answer_speaker":"Learner","options":[{"id":"A","text":"I have a question.","is_correct":true},{"id":"B","text":"Yes, I agree.","is_correct":false},{"id":"C","text":"I know the word start.","is_correct":false}],"explanation":"“I have a question.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7ce4ef3d-bba1-51b3-97ad-cd462a955a9e', '9af364e0-fdbe-5133-9946-3093c1574838', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('ec4ee030-e9dc-54d6-8c39-30034322883f', NULL, 'Listen for Workplace Information: Meetings: Basic Language', 'Identify an important detail in short workplace audio while practicing understanding and using simple language before and during a meeting.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c3880345-b1ea-52c7-a956-5b08f61fa6c7', 'ec4ee030-e9dc-54d6-8c39-30034322883f', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"time","right":"A simple workplace meaning of ''time''."},{"id":"P2","left":"room","right":"A simple workplace meaning of ''room''."},{"id":"P3","left":"agenda","right":"A simple workplace meaning of ''agenda''."},{"id":"P4","left":"question","right":"A simple workplace meaning of ''question''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('8266dac8-28ae-5eba-9578-a16ab73ed10f', 'ec4ee030-e9dc-54d6-8c39-30034322883f', 'Выберите профессиональный ответ', 'quiz', '{"question":"Identify an important detail in short workplace audio while practicing understanding and using simple language before and during a meeting.","options":[{"id":"A","text":"I have a question.","is_correct":true},{"id":"B","text":"Yes, I agree.","is_correct":false},{"id":"C","text":"The meeting starts at ten.","is_correct":false}],"explanation":"“I have a question.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e2060ed7-c67a-5253-b3e8-fa859e9af36e', 'ec4ee030-e9dc-54d6-8c39-30034322883f', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["question","a","have","I"],"correct_words":["I","have","a","question"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('1cb4bce9-3388-54c3-a769-86c84523ae48', 'ec4ee030-e9dc-54d6-8c39-30034322883f', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"I ___ a question.","audio_text":"I have a question.","language":"en","options":[{"id":"A","audio_text":"have","is_correct":true},{"id":"B","audio_text":"time","is_correct":false},{"id":"C","audio_text":"room","is_correct":false}],"explanation":"The missing word is have.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('fbcb3040-a47d-52c0-9dcd-4a4d8024c62f', 'ec4ee030-e9dc-54d6-8c39-30034322883f', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"Yes, I agree.","language":"en","min_accuracy":0.7,"translation_hint":"Identify an important detail in short workplace audio while practicing understanding and using simple language before and during a meeting.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('8c4989c6-6424-5a99-89db-2ca1bbd3a2c6', 'ec4ee030-e9dc-54d6-8c39-30034322883f', 'Рабочая ситуация', 'story', '{"title":"Listen for Workplace Information: Meetings: Basic Language","scenes":[{"type":"dialogue","character":"Colleague","text":"I have a question."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"Yes, I agree.","is_correct":true},{"text":"The meeting starts at ten.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('708c6949-9c7a-5b2d-8c25-7dfab8a1999f', 'ec4ee030-e9dc-54d6-8c39-30034322883f', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"I have a question."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Yes, I agree.","is_correct":true},{"id":"B","text":"The meeting starts at ten.","is_correct":false},{"id":"C","text":"I know the word time.","is_correct":false}],"explanation":"“Yes, I agree.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7ce4ef3d-bba1-51b3-97ad-cd462a955a9e', 'ec4ee030-e9dc-54d6-8c39-30034322883f', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('07a68bea-54c1-59ef-9ded-714a0053566f', NULL, 'Use Polite Professional English: Meetings: Basic Language', 'Choose language appropriate for a simple workplace situation while practicing understanding and using simple language before and during a meeting.', 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('f5595235-4bfc-58da-b519-e5b7c011c122', '07a68bea-54c1-59ef-9ded-714a0053566f', 'Изучите язык рабочего общения', 'text', '{"body":"Use Polite Professional English: Meetings: Basic Language. Workplace mission: Choose language appropriate for a simple workplace situation while practicing understanding and using simple language before and during a meeting. Models: Yes, I agree. The meeting starts at ten. We are in Meeting Room Two.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('204d5602-fedf-5766-a525-f68efa85a3b0', '07a68bea-54c1-59ef-9ded-714a0053566f', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"room","right":"A simple workplace meaning of ''room''."},{"id":"P2","left":"agenda","right":"A simple workplace meaning of ''agenda''."},{"id":"P3","left":"question","right":"A simple workplace meaning of ''question''."},{"id":"P4","left":"idea","right":"A simple workplace meaning of ''idea''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('8f929b83-039e-571a-b430-23a3ffb0d56e', '07a68bea-54c1-59ef-9ded-714a0053566f', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"___, I agree.","correct_answer":"Yes","options":["Yes","room","agenda"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('585d7cd2-b92f-5393-a167-99c391ba74f8', '07a68bea-54c1-59ef-9ded-714a0053566f', 'Слушайте рабочую речь', 'listening', '{"audio_text":"Yes, I agree.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('b55c6ba5-6fc3-5073-99ac-4ec3651ef2f9', '07a68bea-54c1-59ef-9ded-714a0053566f', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"___, I agree.","audio_text":"Yes, I agree.","language":"en","options":[{"id":"A","audio_text":"Yes","is_correct":true},{"id":"B","audio_text":"room","is_correct":false},{"id":"C","audio_text":"agenda","is_correct":false}],"explanation":"The missing word is Yes.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a08ae8ec-d855-5d78-8199-5fbe93f47e2d', '07a68bea-54c1-59ef-9ded-714a0053566f', 'Выберите рабочее значение', 'choose_definition', '{"word":"room","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''room''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''agenda''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''question''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''idea''.","is_correct":false}],"explanation":"room: A simple workplace meaning of ''room''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('2d56371d-4355-531e-93d9-b9b61fd1954f', '07a68bea-54c1-59ef-9ded-714a0053566f', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Yes, I agree."}],"answer_speaker":"Learner","options":[{"id":"A","text":"The meeting starts at ten.","is_correct":true},{"id":"B","text":"We are in Meeting Room Two.","is_correct":false},{"id":"C","text":"I know the word room.","is_correct":false}],"explanation":"“The meeting starts at ten.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7ce4ef3d-bba1-51b3-97ad-cd462a955a9e', '07a68bea-54c1-59ef-9ded-714a0053566f', 3)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('21f95f38-f2c8-5221-9160-89cc7055a480', NULL, 'Practice the Spoken Model: Meetings: Basic Language', 'Repeat the workplace language clearly and politely while practicing understanding and using simple language before and during a meeting.', 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d83bd823-a3fe-5120-ad58-245840730d0e', '21f95f38-f2c8-5221-9160-89cc7055a480', 'Выберите профессиональный ответ', 'quiz', '{"question":"Repeat the workplace language clearly and politely while practicing understanding and using simple language before and during a meeting.","options":[{"id":"A","text":"The meeting starts at ten.","is_correct":true},{"id":"B","text":"We are in Meeting Room Two.","is_correct":false},{"id":"C","text":"I have a question.","is_correct":false}],"explanation":"“The meeting starts at ten.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('1e2e444d-3fc2-569c-80fe-d764fb082528', '21f95f38-f2c8-5221-9160-89cc7055a480', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"The meeting starts at ten.","word_bank":["The","meeting","starts","at","ten","question"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('2dfba573-5a96-56d9-8f50-91d3b25e9108', '21f95f38-f2c8-5221-9160-89cc7055a480', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["ten","at","starts","meeting","The"],"correct_words":["The","meeting","starts","at","ten"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('25f8d56b-8e22-5d75-a1e6-a99142f1577d', '21f95f38-f2c8-5221-9160-89cc7055a480', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"We are in Meeting Room Two.","language":"en","min_accuracy":0.7,"translation_hint":"Repeat the workplace language clearly and politely while practicing understanding and using simple language before and during a meeting.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('2d7a71d6-56ed-5837-a4d2-4ca88fd5a15a', '21f95f38-f2c8-5221-9160-89cc7055a480', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"___ meeting starts at ten.","correct_answer":"The","hint_prefix":"T","explanation":"The missing word is The.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d98fdfef-32b0-55c1-ba09-9015c4fe0cdd', '21f95f38-f2c8-5221-9160-89cc7055a480', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"agenda","text":"agenda"},{"id":"V2","audio_text":"question","text":"question"},{"id":"V3","audio_text":"idea","text":"idea"},{"id":"V4","audio_text":"agree","text":"agree"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('969af216-df40-5645-bfd0-eb532859ee4e', '21f95f38-f2c8-5221-9160-89cc7055a480', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"The meeting starts at ten."}],"answer_speaker":"Learner","options":[{"id":"A","text":"We are in Meeting Room Two.","is_correct":true},{"id":"B","text":"I have a question.","is_correct":false},{"id":"C","text":"I know the word agenda.","is_correct":false}],"explanation":"“We are in Meeting Room Two.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7ce4ef3d-bba1-51b3-97ad-cd462a955a9e', '21f95f38-f2c8-5221-9160-89cc7055a480', 4)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('946caa42-1d62-55b0-bfba-590c7170e812', NULL, 'Use the Language in Context: Meetings: Basic Language', 'Apply the target language in a realistic work situation while practicing understanding and using simple language before and during a meeting.', 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('82ba1be0-50fa-53e2-b3c4-dfd466fa302a', '946caa42-1d62-55b0-bfba-590c7170e812', 'Изучите язык рабочего общения', 'text', '{"body":"Use the Language in Context: Meetings: Basic Language. Workplace mission: Apply the target language in a realistic work situation while practicing understanding and using simple language before and during a meeting. Models: We are in Meeting Room Two. I have a question. Yes, I agree.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('ea114636-d090-5f78-a504-3b78b66fc2ad', '946caa42-1d62-55b0-bfba-590c7170e812', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"We ___ in Meeting Room Two.","correct_answer":"are","options":["are","question","idea"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('44c3fd3d-bf90-5b71-8da6-72e0032acd2c', '946caa42-1d62-55b0-bfba-590c7170e812', 'Слушайте рабочую речь', 'listening', '{"audio_text":"We are in Meeting Room Two.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('7eb40740-a410-548b-bd62-dcecd0c07b91', '946caa42-1d62-55b0-bfba-590c7170e812', 'Рабочая ситуация', 'story', '{"title":"Use the Language in Context: Meetings: Basic Language","scenes":[{"type":"dialogue","character":"Colleague","text":"We are in Meeting Room Two."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"I have a question.","is_correct":true},{"text":"Yes, I agree.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('ee996eac-7800-5d74-ab45-01e96ef0b5dc', '946caa42-1d62-55b0-bfba-590c7170e812', 'Выберите рабочее значение', 'choose_definition', '{"word":"question","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''question''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''idea''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''agree''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''ready''.","is_correct":false}],"explanation":"question: A simple workplace meaning of ''question''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('86f13250-9f7d-5bd4-a2ad-9ee16b28f6c3', '946caa42-1d62-55b0-bfba-590c7170e812', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"question","text":"question"},{"id":"V2","audio_text":"idea","text":"idea"},{"id":"V3","audio_text":"agree","text":"agree"},{"id":"V4","audio_text":"ready","text":"ready"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4f83933c-2742-5b34-aa62-507566c5a6b4', '946caa42-1d62-55b0-bfba-590c7170e812', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"We are in Meeting Room Two."}],"answer_speaker":"Learner","options":[{"id":"A","text":"I have a question.","is_correct":true},{"id":"B","text":"Yes, I agree.","is_correct":false},{"id":"C","text":"I know the word question.","is_correct":false}],"explanation":"“I have a question.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7ce4ef3d-bba1-51b3-97ad-cd462a955a9e', '946caa42-1d62-55b0-bfba-590c7170e812', 5)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('ac2b8198-afad-5b25-9289-b77909412a47', NULL, 'Handle a Short Exchange: Meetings: Basic Language', 'Respond appropriately in a two-person workplace interaction while practicing understanding and using simple language before and during a meeting.', 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('95b4f79a-4a1e-55d2-938f-6dd4015aefee', 'ac2b8198-afad-5b25-9289-b77909412a47', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"idea","right":"A simple workplace meaning of ''idea''."},{"id":"P2","left":"agree","right":"A simple workplace meaning of ''agree''."},{"id":"P3","left":"ready","right":"A simple workplace meaning of ''ready''."},{"id":"P4","left":"finish","right":"A simple workplace meaning of ''finish''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('686b266c-e9df-5892-8124-2663d7c11666', 'ac2b8198-afad-5b25-9289-b77909412a47', 'Выберите профессиональный ответ', 'quiz', '{"question":"Respond appropriately in a two-person workplace interaction while practicing understanding and using simple language before and during a meeting.","options":[{"id":"A","text":"I have a question.","is_correct":true},{"id":"B","text":"Yes, I agree.","is_correct":false},{"id":"C","text":"The meeting starts at ten.","is_correct":false}],"explanation":"“I have a question.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('7bc02794-ff56-58a3-938a-2c3465c001bf', 'ac2b8198-afad-5b25-9289-b77909412a47', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["question","a","have","I"],"correct_words":["I","have","a","question"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('25d57e23-a145-5552-b8b2-afe872a80f34', 'ac2b8198-afad-5b25-9289-b77909412a47', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"I ___ a question.","audio_text":"I have a question.","language":"en","options":[{"id":"A","audio_text":"have","is_correct":true},{"id":"B","audio_text":"idea","is_correct":false},{"id":"C","audio_text":"agree","is_correct":false}],"explanation":"The missing word is have.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('93dc89b8-0452-51bf-93fc-2023704eecb3', 'ac2b8198-afad-5b25-9289-b77909412a47', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"I ___ a question.","correct_answer":"have","hint_prefix":"h","explanation":"The missing word is have.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('50beb5f6-2b97-5e71-b62b-3c4da850b77e', 'ac2b8198-afad-5b25-9289-b77909412a47', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"Yes, I agree.","language":"en","min_accuracy":0.7,"translation_hint":"Respond appropriately in a two-person workplace interaction while practicing understanding and using simple language before and during a meeting.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('827c8e00-34ab-54ea-848b-a3a9a522fa06', 'ac2b8198-afad-5b25-9289-b77909412a47', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"I have a question."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Yes, I agree.","is_correct":true},{"id":"B","text":"The meeting starts at ten.","is_correct":false},{"id":"C","text":"I know the word idea.","is_correct":false}],"explanation":"“Yes, I agree.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7ce4ef3d-bba1-51b3-97ad-cd462a955a9e', 'ac2b8198-afad-5b25-9289-b77909412a47', 6)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('56fed937-cad0-579b-8cba-54645b6e5734', NULL, 'Work with Less Support: Meetings: Basic Language', 'Complete the business task with fewer hints while practicing understanding and using simple language before and during a meeting.', 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('ee9eb44a-6c24-5dcf-9af7-0edd8cad2f1a', '56fed937-cad0-579b-8cba-54645b6e5734', 'Изучите язык рабочего общения', 'text', '{"body":"Work with Less Support: Meetings: Basic Language. Workplace mission: Complete the business task with fewer hints while practicing understanding and using simple language before and during a meeting. Models: Yes, I agree. The meeting starts at ten. We are in Meeting Room Two.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('f37251f7-0fc9-5efc-bc2e-04760fcf7c59', '56fed937-cad0-579b-8cba-54645b6e5734', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"Yes, I agree.","word_bank":["Yes","I","agree","ready"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('6f24bf6f-81bb-552d-ad44-0fd307795d1c', '56fed937-cad0-579b-8cba-54645b6e5734', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"___, I agree.","correct_answer":"Yes","options":["Yes","agree","ready"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('2c735d59-629e-511a-9246-6c85b4201b38', '56fed937-cad0-579b-8cba-54645b6e5734', 'Слушайте рабочую речь', 'listening', '{"audio_text":"Yes, I agree.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('91c0fafd-eae5-5688-9172-6cf86bf7ec79', '56fed937-cad0-579b-8cba-54645b6e5734', 'Рабочая ситуация', 'story', '{"title":"Work with Less Support: Meetings: Basic Language","scenes":[{"type":"dialogue","character":"Colleague","text":"Yes, I agree."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"The meeting starts at ten.","is_correct":true},{"text":"We are in Meeting Room Two.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('913de4b3-1521-59ec-a2ba-6488715047b0', '56fed937-cad0-579b-8cba-54645b6e5734', 'Выберите рабочее значение', 'choose_definition', '{"word":"agree","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''agree''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''ready''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''finish''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''meeting''.","is_correct":false}],"explanation":"agree: A simple workplace meaning of ''agree''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('b8ffbf77-2ee7-5db9-8509-9f67b6549dc9', '56fed937-cad0-579b-8cba-54645b6e5734', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Yes, I agree."}],"answer_speaker":"Learner","options":[{"id":"A","text":"The meeting starts at ten.","is_correct":true},{"id":"B","text":"We are in Meeting Room Two.","is_correct":false},{"id":"C","text":"I know the word agree.","is_correct":false}],"explanation":"“The meeting starts at ten.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7ce4ef3d-bba1-51b3-97ad-cd462a955a9e', '56fed937-cad0-579b-8cba-54645b6e5734', 7)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('f4d38a49-f4e8-51cd-919b-b41e61090bbb', NULL, 'Workplace Challenge: Meetings: Basic Language', 'Combine vocabulary, listening, and response skills while practicing understanding and using simple language before and during a meeting.', 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('7ae1057c-aad1-522f-a3e9-c6660175f447', 'f4d38a49-f4e8-51cd-919b-b41e61090bbb', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"ready","right":"A simple workplace meaning of ''ready''."},{"id":"P2","left":"finish","right":"A simple workplace meaning of ''finish''."},{"id":"P3","left":"meeting","right":"A simple workplace meaning of ''meeting''."},{"id":"P4","left":"start","right":"A simple workplace meaning of ''start''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('613c627f-1b3b-5130-85f3-62b6b8c4c8c2', 'f4d38a49-f4e8-51cd-919b-b41e61090bbb', 'Выберите профессиональный ответ', 'quiz', '{"question":"Combine vocabulary, listening, and response skills while practicing understanding and using simple language before and during a meeting.","options":[{"id":"A","text":"The meeting starts at ten.","is_correct":true},{"id":"B","text":"We are in Meeting Room Two.","is_correct":false},{"id":"C","text":"I have a question.","is_correct":false}],"explanation":"“The meeting starts at ten.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('8380348b-9615-5174-bfab-23ccfb94e8a3', 'f4d38a49-f4e8-51cd-919b-b41e61090bbb', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["ten","at","starts","meeting","The"],"correct_words":["The","meeting","starts","at","ten"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('acd6e831-7acf-5e0b-9a01-1b33cacd65a2', 'f4d38a49-f4e8-51cd-919b-b41e61090bbb', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"___ meeting starts at ten.","audio_text":"The meeting starts at ten.","language":"en","options":[{"id":"A","audio_text":"The","is_correct":true},{"id":"B","audio_text":"ready","is_correct":false},{"id":"C","audio_text":"finish","is_correct":false}],"explanation":"The missing word is The.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('b2b60d4d-14ed-50e2-b3a0-f659260f0536', 'f4d38a49-f4e8-51cd-919b-b41e61090bbb', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"ready","text":"ready"},{"id":"V2","audio_text":"finish","text":"finish"},{"id":"V3","audio_text":"meeting","text":"meeting"},{"id":"V4","audio_text":"start","text":"start"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('3c268796-e63c-5dfa-a399-18b798154aea', 'f4d38a49-f4e8-51cd-919b-b41e61090bbb', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"We are in Meeting Room Two.","language":"en","min_accuracy":0.7,"translation_hint":"Combine vocabulary, listening, and response skills while practicing understanding and using simple language before and during a meeting.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('f166cd2d-fe5e-5f50-8b1b-b720718db3e6', 'f4d38a49-f4e8-51cd-919b-b41e61090bbb', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"The meeting starts at ten."}],"answer_speaker":"Learner","options":[{"id":"A","text":"We are in Meeting Room Two.","is_correct":true},{"id":"B","text":"I have a question.","is_correct":false},{"id":"C","text":"I know the word ready.","is_correct":false}],"explanation":"“We are in Meeting Room Two.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7ce4ef3d-bba1-51b3-97ad-cd462a955a9e', 'f4d38a49-f4e8-51cd-919b-b41e61090bbb', 8)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('49335d7f-a1f6-5230-8dd9-4bd2550f58e0', NULL, 'Track Business Mission: Meetings: Basic Language', 'Complete a practical beginner workplace mission while practicing understanding and using simple language before and during a meeting.', 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c0de574a-7343-5234-9cac-77a47fa0474a', '49335d7f-a1f6-5230-8dd9-4bd2550f58e0', 'Изучите язык рабочего общения', 'text', '{"body":"Track Business Mission: Meetings: Basic Language. Workplace mission: Complete a practical beginner workplace mission while practicing understanding and using simple language before and during a meeting. Models: We are in Meeting Room Two. I have a question. Yes, I agree.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c41bc276-43ff-577a-8c42-5d5362a128a9', '49335d7f-a1f6-5230-8dd9-4bd2550f58e0', 'Выберите профессиональный ответ', 'quiz', '{"question":"Complete a practical beginner workplace mission while practicing understanding and using simple language before and during a meeting.","options":[{"id":"A","text":"We are in Meeting Room Two.","is_correct":true},{"id":"B","text":"I have a question.","is_correct":false},{"id":"C","text":"Yes, I agree.","is_correct":false}],"explanation":"“We are in Meeting Room Two.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('9017ca81-3756-5dce-8e86-63dc6f858918', '49335d7f-a1f6-5230-8dd9-4bd2550f58e0', 'Слушайте рабочую речь', 'listening', '{"audio_text":"We are in Meeting Room Two.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('9427aaef-c6db-5e3d-9ed6-4701e907da13', '49335d7f-a1f6-5230-8dd9-4bd2550f58e0', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"I have a question.","language":"en","min_accuracy":0.7,"translation_hint":"Complete a practical beginner workplace mission while practicing understanding and using simple language before and during a meeting.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('277805ce-5814-5c0e-a55a-6d4a818929f6', '49335d7f-a1f6-5230-8dd9-4bd2550f58e0', 'Рабочая ситуация', 'story', '{"title":"Track Business Mission: Meetings: Basic Language","scenes":[{"type":"dialogue","character":"Colleague","text":"We are in Meeting Room Two."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"I have a question.","is_correct":true},{"text":"Yes, I agree.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c801ade3-bb10-5f58-b493-63f65f82d673', '49335d7f-a1f6-5230-8dd9-4bd2550f58e0', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"finish","text":"finish"},{"id":"V2","audio_text":"meeting","text":"meeting"},{"id":"V3","audio_text":"start","text":"start"},{"id":"V4","audio_text":"time","text":"time"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('034bc7ae-cb47-5fac-91bf-f5965c8b5bc0', '49335d7f-a1f6-5230-8dd9-4bd2550f58e0', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"We are in Meeting Room Two."}],"answer_speaker":"Learner","options":[{"id":"A","text":"I have a question.","is_correct":true},{"id":"B","text":"Yes, I agree.","is_correct":false},{"id":"C","text":"I know the word finish.","is_correct":false}],"explanation":"“I have a question.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7ce4ef3d-bba1-51b3-97ad-cd462a955a9e', '49335d7f-a1f6-5230-8dd9-4bd2550f58e0', 9)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('6022871e-0556-54b8-9e50-68fd2a24de15', 'A1_BUSINESS_T09', 'Customers and Simple Service', 'An A1 Business English track focused on using polite English in basic customer interactions.', 'en', 'A1', 'thematic', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('6f6d3c62-efab-5721-87cc-c64f781763cc', NULL, 'Learn the Workplace Language: Customers and Simple Service', 'Recognize the key workplace words and phrases while practicing using polite English in basic customer interactions.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('b8e40dd1-b87b-5164-98bf-28042f4bccc6', '6f6d3c62-efab-5721-87cc-c64f781763cc', 'Изучите язык рабочего общения', 'text', '{"body":"Learn the Workplace Language: Customers and Simple Service. Workplace mission: Recognize the key workplace words and phrases while practicing using polite English in basic customer interactions. Models: How can I help you? What do you need? Your order is ready.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('cd8f06a0-c00c-50f3-926a-822833d2c4a1', '6f6d3c62-efab-5721-87cc-c64f781763cc', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"customer","right":"A simple workplace meaning of ''customer''."},{"id":"P2","left":"help","right":"A simple workplace meaning of ''help''."},{"id":"P3","left":"need","right":"A simple workplace meaning of ''need''."},{"id":"P4","left":"want","right":"A simple workplace meaning of ''want''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('316e0e9e-5247-5cb7-8a14-79f6d520486e', '6f6d3c62-efab-5721-87cc-c64f781763cc', 'Выберите профессиональный ответ', 'quiz', '{"question":"Recognize the key workplace words and phrases while practicing using polite English in basic customer interactions.","options":[{"id":"A","text":"How can I help you?","is_correct":true},{"id":"B","text":"What do you need?","is_correct":false},{"id":"C","text":"Your order is ready.","is_correct":false}],"explanation":"“How can I help you?” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('546adb3a-ac5e-5d36-8993-c63214d25ba8', '6f6d3c62-efab-5721-87cc-c64f781763cc', 'Слушайте рабочую речь', 'listening', '{"audio_text":"How can I help you?","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d0d0eed9-3ff9-5da3-9e2c-90738ae1bb8f', '6f6d3c62-efab-5721-87cc-c64f781763cc', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"What do you need?","language":"en","min_accuracy":0.7,"translation_hint":"Recognize the key workplace words and phrases while practicing using polite English in basic customer interactions.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('da3f02ad-c4f4-5e4a-b39c-ebb8bd8b749e', '6f6d3c62-efab-5721-87cc-c64f781763cc', 'Выберите рабочее значение', 'choose_definition', '{"word":"customer","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''customer''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''help''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''need''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''want''.","is_correct":false}],"explanation":"customer: A simple workplace meaning of ''customer''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('fcb7f9be-44f3-5799-85d2-eb14e65763f4', '6f6d3c62-efab-5721-87cc-c64f781763cc', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"How can I help you?"}],"answer_speaker":"Learner","options":[{"id":"A","text":"What do you need?","is_correct":true},{"id":"B","text":"Your order is ready.","is_correct":false},{"id":"C","text":"I know the word customer.","is_correct":false}],"explanation":"“What do you need?” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6022871e-0556-54b8-9e50-68fd2a24de15', '6f6d3c62-efab-5721-87cc-c64f781763cc', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('ef5fbd38-e5b5-59e4-9777-3f57f08006d0', NULL, 'Build the Core Sentence: Customers and Simple Service', 'Produce a useful basic business sentence while practicing using polite English in basic customer interactions.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('6e087dd8-aa31-5902-9f55-5a4f42739e71', 'ef5fbd38-e5b5-59e4-9777-3f57f08006d0', 'Изучите язык рабочего общения', 'text', '{"body":"Build the Core Sentence: Customers and Simple Service. Workplace mission: Produce a useful basic business sentence while practicing using polite English in basic customer interactions. Models: What do you need? Your order is ready. I am sorry about the problem.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e3898ce2-5670-5053-b08b-7b47e98ee9f0', 'ef5fbd38-e5b5-59e4-9777-3f57f08006d0', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"What do you need?","word_bank":["What","do","you","need","need"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('115e2577-d0df-5f99-8b7e-56c38d92a16b', 'ef5fbd38-e5b5-59e4-9777-3f57f08006d0', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"___ do you need?","correct_answer":"What","options":["What","help","need"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('fe1e0316-9550-59c4-8a58-a003d1d3ad66', 'ef5fbd38-e5b5-59e4-9777-3f57f08006d0', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["need","you","do","What"],"correct_words":["What","do","you","need"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a99f49f3-fe50-5b63-97bb-e3d01a1876ea', 'ef5fbd38-e5b5-59e4-9777-3f57f08006d0', 'Слушайте рабочую речь', 'listening', '{"audio_text":"What do you need?","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('88d3bbaf-b2cf-5c24-ad0f-359fb6b5db72', 'ef5fbd38-e5b5-59e4-9777-3f57f08006d0', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"___ do you need?","correct_answer":"What","hint_prefix":"W","explanation":"The missing word is What.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('12d3b3fd-26b1-5193-a869-c8cae6739d72', 'ef5fbd38-e5b5-59e4-9777-3f57f08006d0', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"What do you need?"}],"answer_speaker":"Learner","options":[{"id":"A","text":"Your order is ready.","is_correct":true},{"id":"B","text":"I am sorry about the problem.","is_correct":false},{"id":"C","text":"I know the word help.","is_correct":false}],"explanation":"“Your order is ready.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6022871e-0556-54b8-9e50-68fd2a24de15', 'ef5fbd38-e5b5-59e4-9777-3f57f08006d0', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('a43510d7-5777-5bb3-8087-858562d6c118', NULL, 'Listen for Workplace Information: Customers and Simple Service', 'Identify an important detail in short workplace audio while practicing using polite English in basic customer interactions.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('db67355d-896c-5791-b8fe-4e60f10f32b2', 'a43510d7-5777-5bb3-8087-858562d6c118', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"need","right":"A simple workplace meaning of ''need''."},{"id":"P2","left":"want","right":"A simple workplace meaning of ''want''."},{"id":"P3","left":"price","right":"A simple workplace meaning of ''price''."},{"id":"P4","left":"order","right":"A simple workplace meaning of ''order''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('416463b4-0585-509c-b5ea-5c6039b2db5e', 'a43510d7-5777-5bb3-8087-858562d6c118', 'Выберите профессиональный ответ', 'quiz', '{"question":"Identify an important detail in short workplace audio while practicing using polite English in basic customer interactions.","options":[{"id":"A","text":"Your order is ready.","is_correct":true},{"id":"B","text":"I am sorry about the problem.","is_correct":false},{"id":"C","text":"How can I help you?","is_correct":false}],"explanation":"“Your order is ready.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('0bc72e12-097f-5d6b-b983-00c0431e1667', 'a43510d7-5777-5bb3-8087-858562d6c118', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["ready","is","order","Your"],"correct_words":["Your","order","is","ready"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c06cfb65-40cb-5666-9763-5f587f212579', 'a43510d7-5777-5bb3-8087-858562d6c118', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"___ order is ready.","audio_text":"Your order is ready.","language":"en","options":[{"id":"A","audio_text":"Your","is_correct":true},{"id":"B","audio_text":"need","is_correct":false},{"id":"C","audio_text":"want","is_correct":false}],"explanation":"The missing word is Your.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('86dcbc8f-c572-5bbb-908d-fdc23552dc7f', 'a43510d7-5777-5bb3-8087-858562d6c118', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"I am sorry about the problem.","language":"en","min_accuracy":0.7,"translation_hint":"Identify an important detail in short workplace audio while practicing using polite English in basic customer interactions.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('170ffdfb-d1f9-55af-8cea-d4c32a795619', 'a43510d7-5777-5bb3-8087-858562d6c118', 'Рабочая ситуация', 'story', '{"title":"Listen for Workplace Information: Customers and Simple Service","scenes":[{"type":"dialogue","character":"Colleague","text":"Your order is ready."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"I am sorry about the problem.","is_correct":true},{"text":"How can I help you?","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('421a9a76-82c8-5869-91a5-ad67ca67a6ac', 'a43510d7-5777-5bb3-8087-858562d6c118', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Your order is ready."}],"answer_speaker":"Learner","options":[{"id":"A","text":"I am sorry about the problem.","is_correct":true},{"id":"B","text":"How can I help you?","is_correct":false},{"id":"C","text":"I know the word need.","is_correct":false}],"explanation":"“I am sorry about the problem.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6022871e-0556-54b8-9e50-68fd2a24de15', 'a43510d7-5777-5bb3-8087-858562d6c118', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('689f9c94-215d-5222-80b5-511c0c18876d', NULL, 'Use Polite Professional English: Customers and Simple Service', 'Choose language appropriate for a simple workplace situation while practicing using polite English in basic customer interactions.', 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('609fd54d-07db-590a-a61d-c26512187a53', '689f9c94-215d-5222-80b5-511c0c18876d', 'Изучите язык рабочего общения', 'text', '{"body":"Use Polite Professional English: Customers and Simple Service. Workplace mission: Choose language appropriate for a simple workplace situation while practicing using polite English in basic customer interactions. Models: I am sorry about the problem. How can I help you? What do you need?","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e848a058-db3f-5b00-8ca1-8c4d5e73f9c8', '689f9c94-215d-5222-80b5-511c0c18876d', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"want","right":"A simple workplace meaning of ''want''."},{"id":"P2","left":"price","right":"A simple workplace meaning of ''price''."},{"id":"P3","left":"order","right":"A simple workplace meaning of ''order''."},{"id":"P4","left":"problem","right":"A simple workplace meaning of ''problem''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('7cd203ef-e30c-50d5-ab19-33e5fabc292a', '689f9c94-215d-5222-80b5-511c0c18876d', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"I am ___ about the problem.","correct_answer":"sorry","options":["sorry","want","price"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('57f2de58-f1a9-5617-89aa-dd09d04e5725', '689f9c94-215d-5222-80b5-511c0c18876d', 'Слушайте рабочую речь', 'listening', '{"audio_text":"I am sorry about the problem.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('1e43f51b-e1cc-5561-ae07-9c18720e84f1', '689f9c94-215d-5222-80b5-511c0c18876d', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"I am ___ about the problem.","audio_text":"I am sorry about the problem.","language":"en","options":[{"id":"A","audio_text":"sorry","is_correct":true},{"id":"B","audio_text":"want","is_correct":false},{"id":"C","audio_text":"price","is_correct":false}],"explanation":"The missing word is sorry.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a7e804d6-e749-56e4-b276-4a10df8f9af9', '689f9c94-215d-5222-80b5-511c0c18876d', 'Выберите рабочее значение', 'choose_definition', '{"word":"want","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''want''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''price''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''order''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''problem''.","is_correct":false}],"explanation":"want: A simple workplace meaning of ''want''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d528f627-08d9-52aa-ab1f-dd52f9664e8d', '689f9c94-215d-5222-80b5-511c0c18876d', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"I am sorry about the problem."}],"answer_speaker":"Learner","options":[{"id":"A","text":"How can I help you?","is_correct":true},{"id":"B","text":"What do you need?","is_correct":false},{"id":"C","text":"I know the word want.","is_correct":false}],"explanation":"“How can I help you?” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6022871e-0556-54b8-9e50-68fd2a24de15', '689f9c94-215d-5222-80b5-511c0c18876d', 3)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('f6e9e557-7774-5ba1-8070-99d13b9fdd29', NULL, 'Practice the Spoken Model: Customers and Simple Service', 'Repeat the workplace language clearly and politely while practicing using polite English in basic customer interactions.', 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('b8f18fed-7c7d-5a08-8438-6db94ab09e68', 'f6e9e557-7774-5ba1-8070-99d13b9fdd29', 'Выберите профессиональный ответ', 'quiz', '{"question":"Repeat the workplace language clearly and politely while practicing using polite English in basic customer interactions.","options":[{"id":"A","text":"How can I help you?","is_correct":true},{"id":"B","text":"What do you need?","is_correct":false},{"id":"C","text":"Your order is ready.","is_correct":false}],"explanation":"“How can I help you?” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('ef962c31-0a64-5bf1-a1e2-8658eb0da089', 'f6e9e557-7774-5ba1-8070-99d13b9fdd29', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"How can I help you?","word_bank":["How","can","I","help","you","order"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('fa2ccf74-74cd-52e8-8211-efd6d155f875', 'f6e9e557-7774-5ba1-8070-99d13b9fdd29', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["you","help","I","can","How"],"correct_words":["How","can","I","help","you"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('01ca0709-c657-50bc-b40e-e40f90f4b374', 'f6e9e557-7774-5ba1-8070-99d13b9fdd29', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"What do you need?","language":"en","min_accuracy":0.7,"translation_hint":"Repeat the workplace language clearly and politely while practicing using polite English in basic customer interactions.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e69e0679-f469-5b9a-b7de-0d886494cd16', 'f6e9e557-7774-5ba1-8070-99d13b9fdd29', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"___ can I help you?","correct_answer":"How","hint_prefix":"H","explanation":"The missing word is How.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('b172434a-1d36-538c-825a-2bc9b7e35315', 'f6e9e557-7774-5ba1-8070-99d13b9fdd29', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"price","text":"price"},{"id":"V2","audio_text":"order","text":"order"},{"id":"V3","audio_text":"problem","text":"problem"},{"id":"V4","audio_text":"please","text":"please"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('35093573-7269-55ba-ad48-495ea62c4065', 'f6e9e557-7774-5ba1-8070-99d13b9fdd29', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"How can I help you?"}],"answer_speaker":"Learner","options":[{"id":"A","text":"What do you need?","is_correct":true},{"id":"B","text":"Your order is ready.","is_correct":false},{"id":"C","text":"I know the word price.","is_correct":false}],"explanation":"“What do you need?” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6022871e-0556-54b8-9e50-68fd2a24de15', 'f6e9e557-7774-5ba1-8070-99d13b9fdd29', 4)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('ab4c5a9d-4de9-5b54-ad97-4ae3996cb819', NULL, 'Use the Language in Context: Customers and Simple Service', 'Apply the target language in a realistic work situation while practicing using polite English in basic customer interactions.', 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('8c07959f-1123-5c46-ac0d-c9d5429f2260', 'ab4c5a9d-4de9-5b54-ad97-4ae3996cb819', 'Изучите язык рабочего общения', 'text', '{"body":"Use the Language in Context: Customers and Simple Service. Workplace mission: Apply the target language in a realistic work situation while practicing using polite English in basic customer interactions. Models: What do you need? Your order is ready. I am sorry about the problem.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('082a476b-90f0-5372-8acf-89eecc5aff06', 'ab4c5a9d-4de9-5b54-ad97-4ae3996cb819', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"___ do you need?","correct_answer":"What","options":["What","order","problem"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('5e9b26a2-2f51-54c8-8cbd-9c4ab601a817', 'ab4c5a9d-4de9-5b54-ad97-4ae3996cb819', 'Слушайте рабочую речь', 'listening', '{"audio_text":"What do you need?","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('3a33fbdf-9532-57db-833f-4a35f7780275', 'ab4c5a9d-4de9-5b54-ad97-4ae3996cb819', 'Рабочая ситуация', 'story', '{"title":"Use the Language in Context: Customers and Simple Service","scenes":[{"type":"dialogue","character":"Colleague","text":"What do you need?"},{"type":"choice","text":"What is the best professional response?","options":[{"text":"Your order is ready.","is_correct":true},{"text":"I am sorry about the problem.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('54efd6c4-3088-5269-9099-598de16632fe', 'ab4c5a9d-4de9-5b54-ad97-4ae3996cb819', 'Выберите рабочее значение', 'choose_definition', '{"word":"order","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''order''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''problem''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''please''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''sorry''.","is_correct":false}],"explanation":"order: A simple workplace meaning of ''order''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('bf6e0521-7abf-566e-b359-807f46032afa', 'ab4c5a9d-4de9-5b54-ad97-4ae3996cb819', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"order","text":"order"},{"id":"V2","audio_text":"problem","text":"problem"},{"id":"V3","audio_text":"please","text":"please"},{"id":"V4","audio_text":"sorry","text":"sorry"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('288b790f-f9dc-5552-a9f4-9563f2a720f8', 'ab4c5a9d-4de9-5b54-ad97-4ae3996cb819', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"What do you need?"}],"answer_speaker":"Learner","options":[{"id":"A","text":"Your order is ready.","is_correct":true},{"id":"B","text":"I am sorry about the problem.","is_correct":false},{"id":"C","text":"I know the word order.","is_correct":false}],"explanation":"“Your order is ready.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6022871e-0556-54b8-9e50-68fd2a24de15', 'ab4c5a9d-4de9-5b54-ad97-4ae3996cb819', 5)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('25d12337-42b8-5a95-a7cc-164cf622ddcb', NULL, 'Handle a Short Exchange: Customers and Simple Service', 'Respond appropriately in a two-person workplace interaction while practicing using polite English in basic customer interactions.', 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d11399dd-b179-55e9-9c1a-e776b0d947e5', '25d12337-42b8-5a95-a7cc-164cf622ddcb', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"problem","right":"A simple workplace meaning of ''problem''."},{"id":"P2","left":"please","right":"A simple workplace meaning of ''please''."},{"id":"P3","left":"sorry","right":"A simple workplace meaning of ''sorry''."},{"id":"P4","left":"thank","right":"A simple workplace meaning of ''thank''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('52092811-465a-5a30-9498-3ee626af8856', '25d12337-42b8-5a95-a7cc-164cf622ddcb', 'Выберите профессиональный ответ', 'quiz', '{"question":"Respond appropriately in a two-person workplace interaction while practicing using polite English in basic customer interactions.","options":[{"id":"A","text":"Your order is ready.","is_correct":true},{"id":"B","text":"I am sorry about the problem.","is_correct":false},{"id":"C","text":"How can I help you?","is_correct":false}],"explanation":"“Your order is ready.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('7a529c87-0a36-57cc-89d3-f14f7d6b6a1d', '25d12337-42b8-5a95-a7cc-164cf622ddcb', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["ready","is","order","Your"],"correct_words":["Your","order","is","ready"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a75b749c-1b60-544b-a8be-f6806b934af2', '25d12337-42b8-5a95-a7cc-164cf622ddcb', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"___ order is ready.","audio_text":"Your order is ready.","language":"en","options":[{"id":"A","audio_text":"Your","is_correct":true},{"id":"B","audio_text":"problem","is_correct":false},{"id":"C","audio_text":"please","is_correct":false}],"explanation":"The missing word is Your.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('840cfb3d-4948-559e-8fe3-ca3cfcaf6d75', '25d12337-42b8-5a95-a7cc-164cf622ddcb', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"___ order is ready.","correct_answer":"Your","hint_prefix":"Y","explanation":"The missing word is Your.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('308451bc-4b34-5db1-b9b4-97e94d435045', '25d12337-42b8-5a95-a7cc-164cf622ddcb', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"I am sorry about the problem.","language":"en","min_accuracy":0.7,"translation_hint":"Respond appropriately in a two-person workplace interaction while practicing using polite English in basic customer interactions.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('2849bc8f-232e-5df1-ab9e-38c69a652349', '25d12337-42b8-5a95-a7cc-164cf622ddcb', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Your order is ready."}],"answer_speaker":"Learner","options":[{"id":"A","text":"I am sorry about the problem.","is_correct":true},{"id":"B","text":"How can I help you?","is_correct":false},{"id":"C","text":"I know the word problem.","is_correct":false}],"explanation":"“I am sorry about the problem.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6022871e-0556-54b8-9e50-68fd2a24de15', '25d12337-42b8-5a95-a7cc-164cf622ddcb', 6)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('db8a9144-a8b6-5b8a-a2f9-40cac95944b5', NULL, 'Work with Less Support: Customers and Simple Service', 'Complete the business task with fewer hints while practicing using polite English in basic customer interactions.', 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4b5865a5-053b-54a4-a33e-2dc7f95a23b5', 'db8a9144-a8b6-5b8a-a2f9-40cac95944b5', 'Изучите язык рабочего общения', 'text', '{"body":"Work with Less Support: Customers and Simple Service. Workplace mission: Complete the business task with fewer hints while practicing using polite English in basic customer interactions. Models: I am sorry about the problem. How can I help you? What do you need?","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e5d096ab-b1b5-5bf6-9be0-130829caa8eb', 'db8a9144-a8b6-5b8a-a2f9-40cac95944b5', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"I am sorry about the problem.","word_bank":["I","am","sorry","about","the","problem","sorry"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('33eeaad2-38ae-5080-bdc7-f9d23eed0357', 'db8a9144-a8b6-5b8a-a2f9-40cac95944b5', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"I am ___ about the problem.","correct_answer":"sorry","options":["sorry","please","thank"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d675569c-ceec-5fce-903f-19222d81cce0', 'db8a9144-a8b6-5b8a-a2f9-40cac95944b5', 'Слушайте рабочую речь', 'listening', '{"audio_text":"I am sorry about the problem.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('0e4811eb-5f6b-542b-878c-2f71219ba2e5', 'db8a9144-a8b6-5b8a-a2f9-40cac95944b5', 'Рабочая ситуация', 'story', '{"title":"Work with Less Support: Customers and Simple Service","scenes":[{"type":"dialogue","character":"Colleague","text":"I am sorry about the problem."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"How can I help you?","is_correct":true},{"text":"What do you need?","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('3a878778-f526-5f4f-8a03-ac0aa37bb05a', 'db8a9144-a8b6-5b8a-a2f9-40cac95944b5', 'Выберите рабочее значение', 'choose_definition', '{"word":"please","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''please''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''sorry''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''thank''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''customer''.","is_correct":false}],"explanation":"please: A simple workplace meaning of ''please''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('2cc7fbbb-f81c-5107-8e13-8cc1c3e6dce4', 'db8a9144-a8b6-5b8a-a2f9-40cac95944b5', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"I am sorry about the problem."}],"answer_speaker":"Learner","options":[{"id":"A","text":"How can I help you?","is_correct":true},{"id":"B","text":"What do you need?","is_correct":false},{"id":"C","text":"I know the word please.","is_correct":false}],"explanation":"“How can I help you?” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6022871e-0556-54b8-9e50-68fd2a24de15', 'db8a9144-a8b6-5b8a-a2f9-40cac95944b5', 7)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('276b273d-ae43-5027-85c8-f4cc91d48e5e', NULL, 'Workplace Challenge: Customers and Simple Service', 'Combine vocabulary, listening, and response skills while practicing using polite English in basic customer interactions.', 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4c04fe26-f62c-58e7-8395-e01e2b665ddb', '276b273d-ae43-5027-85c8-f4cc91d48e5e', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"sorry","right":"A simple workplace meaning of ''sorry''."},{"id":"P2","left":"thank","right":"A simple workplace meaning of ''thank''."},{"id":"P3","left":"customer","right":"A simple workplace meaning of ''customer''."},{"id":"P4","left":"help","right":"A simple workplace meaning of ''help''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('05d5ab54-85ff-5afd-ae9a-5263e96a164c', '276b273d-ae43-5027-85c8-f4cc91d48e5e', 'Выберите профессиональный ответ', 'quiz', '{"question":"Combine vocabulary, listening, and response skills while practicing using polite English in basic customer interactions.","options":[{"id":"A","text":"How can I help you?","is_correct":true},{"id":"B","text":"What do you need?","is_correct":false},{"id":"C","text":"Your order is ready.","is_correct":false}],"explanation":"“How can I help you?” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('63cda060-5290-51a1-882e-c29f61c9118c', '276b273d-ae43-5027-85c8-f4cc91d48e5e', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["you","help","I","can","How"],"correct_words":["How","can","I","help","you"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('181bb854-ae6a-5e4c-8480-2100ba8ddf32', '276b273d-ae43-5027-85c8-f4cc91d48e5e', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"___ can I help you?","audio_text":"How can I help you?","language":"en","options":[{"id":"A","audio_text":"How","is_correct":true},{"id":"B","audio_text":"sorry","is_correct":false},{"id":"C","audio_text":"thank","is_correct":false}],"explanation":"The missing word is How.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('5ca5904b-b05f-5702-adc8-24ee5ac08e74', '276b273d-ae43-5027-85c8-f4cc91d48e5e', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"sorry","text":"sorry"},{"id":"V2","audio_text":"thank","text":"thank"},{"id":"V3","audio_text":"customer","text":"customer"},{"id":"V4","audio_text":"help","text":"help"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('5e4e9cca-cf3d-5faf-bbb4-7db63eadb445', '276b273d-ae43-5027-85c8-f4cc91d48e5e', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"What do you need?","language":"en","min_accuracy":0.7,"translation_hint":"Combine vocabulary, listening, and response skills while practicing using polite English in basic customer interactions.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('40825f0c-bd55-574c-876a-4143328bbe64', '276b273d-ae43-5027-85c8-f4cc91d48e5e', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"How can I help you?"}],"answer_speaker":"Learner","options":[{"id":"A","text":"What do you need?","is_correct":true},{"id":"B","text":"Your order is ready.","is_correct":false},{"id":"C","text":"I know the word sorry.","is_correct":false}],"explanation":"“What do you need?” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6022871e-0556-54b8-9e50-68fd2a24de15', '276b273d-ae43-5027-85c8-f4cc91d48e5e', 8)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('4a95f313-a9b8-505f-9281-b994ea547821', NULL, 'Track Business Mission: Customers and Simple Service', 'Complete a practical beginner workplace mission while practicing using polite English in basic customer interactions.', 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('261faaf6-4a46-5d51-9e43-edb7295c2b45', '4a95f313-a9b8-505f-9281-b994ea547821', 'Изучите язык рабочего общения', 'text', '{"body":"Track Business Mission: Customers and Simple Service. Workplace mission: Complete a practical beginner workplace mission while practicing using polite English in basic customer interactions. Models: What do you need? Your order is ready. I am sorry about the problem.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e6bbd5fb-fbdf-5651-80de-e495cb9e0191', '4a95f313-a9b8-505f-9281-b994ea547821', 'Выберите профессиональный ответ', 'quiz', '{"question":"Complete a practical beginner workplace mission while practicing using polite English in basic customer interactions.","options":[{"id":"A","text":"What do you need?","is_correct":true},{"id":"B","text":"Your order is ready.","is_correct":false},{"id":"C","text":"I am sorry about the problem.","is_correct":false}],"explanation":"“What do you need?” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e85b02f8-2015-5cb9-9eb6-104675c76017', '4a95f313-a9b8-505f-9281-b994ea547821', 'Слушайте рабочую речь', 'listening', '{"audio_text":"What do you need?","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('cb290528-b9f6-58d7-b4d2-7d7bca650a27', '4a95f313-a9b8-505f-9281-b994ea547821', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"Your order is ready.","language":"en","min_accuracy":0.7,"translation_hint":"Complete a practical beginner workplace mission while practicing using polite English in basic customer interactions.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('fbcbebaa-f20a-5f7f-869c-8217b03547af', '4a95f313-a9b8-505f-9281-b994ea547821', 'Рабочая ситуация', 'story', '{"title":"Track Business Mission: Customers and Simple Service","scenes":[{"type":"dialogue","character":"Colleague","text":"What do you need?"},{"type":"choice","text":"What is the best professional response?","options":[{"text":"Your order is ready.","is_correct":true},{"text":"I am sorry about the problem.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e2fea465-303d-58b1-b0c1-f439e902a651', '4a95f313-a9b8-505f-9281-b994ea547821', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"thank","text":"thank"},{"id":"V2","audio_text":"customer","text":"customer"},{"id":"V3","audio_text":"help","text":"help"},{"id":"V4","audio_text":"need","text":"need"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4b7dbd45-aed1-5d1b-9daf-f70331e3d577', '4a95f313-a9b8-505f-9281-b994ea547821', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"What do you need?"}],"answer_speaker":"Learner","options":[{"id":"A","text":"Your order is ready.","is_correct":true},{"id":"B","text":"I am sorry about the problem.","is_correct":false},{"id":"C","text":"I know the word thank.","is_correct":false}],"explanation":"“Your order is ready.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6022871e-0556-54b8-9e50-68fd2a24de15', '4a95f313-a9b8-505f-9281-b994ea547821', 9)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('3e134547-e488-5f22-84c5-487ec3fed79c', 'A1_BUSINESS_T10', 'A1 Business English Foundation Mission', 'An A1 Business English track focused on combining introductions, routines, requests, calls, messages, meetings, and customer language.', 'en', 'A1', 'thematic', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('62c87325-7140-5348-b0ab-3ce2834563d4', NULL, 'Learn the Workplace Language: A1 Business English Foundation Mission', 'Recognize the key workplace words and phrases while practicing combining introductions, routines, requests, calls, messages, meetings, and customer language.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('eba68bab-80f0-5385-b609-dc850b00892e', '62c87325-7140-5348-b0ab-3ce2834563d4', 'Изучите язык рабочего общения', 'text', '{"body":"Learn the Workplace Language: A1 Business English Foundation Mission. Workplace mission: Recognize the key workplace words and phrases while practicing combining introductions, routines, requests, calls, messages, meetings, and customer language. Models: Hello, I am new to the team. Could you send me the file, please? The meeting starts at ten.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('6836e03f-fa9f-57e0-8efc-a16bbe452bd8', '62c87325-7140-5348-b0ab-3ce2834563d4', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"business","right":"A simple workplace meaning of ''business''."},{"id":"P2","left":"work","right":"A simple workplace meaning of ''work''."},{"id":"P3","left":"team","right":"A simple workplace meaning of ''team''."},{"id":"P4","left":"email","right":"A simple workplace meaning of ''email''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4af18bdb-1ef3-5e92-946d-b01dc5bf1cb9', '62c87325-7140-5348-b0ab-3ce2834563d4', 'Выберите профессиональный ответ', 'quiz', '{"question":"Recognize the key workplace words and phrases while practicing combining introductions, routines, requests, calls, messages, meetings, and customer language.","options":[{"id":"A","text":"Hello, I am new to the team.","is_correct":true},{"id":"B","text":"Could you send me the file, please?","is_correct":false},{"id":"C","text":"The meeting starts at ten.","is_correct":false}],"explanation":"“Hello, I am new to the team.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('f5150ae7-3859-5690-b2ac-3319dfaece87', '62c87325-7140-5348-b0ab-3ce2834563d4', 'Слушайте рабочую речь', 'listening', '{"audio_text":"Hello, I am new to the team.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4f296e98-fd02-5406-8465-24e688771c26', '62c87325-7140-5348-b0ab-3ce2834563d4', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"Could you send me the file, please?","language":"en","min_accuracy":0.7,"translation_hint":"Recognize the key workplace words and phrases while practicing combining introductions, routines, requests, calls, messages, meetings, and customer language.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('8bf04670-e7e1-5d54-8221-66ef3936538a', '62c87325-7140-5348-b0ab-3ce2834563d4', 'Выберите рабочее значение', 'choose_definition', '{"word":"business","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''business''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''work''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''team''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''email''.","is_correct":false}],"explanation":"business: A simple workplace meaning of ''business''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('5c3e9f4b-8cd5-5c25-a38b-eeb566ad6d84', '62c87325-7140-5348-b0ab-3ce2834563d4', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Hello, I am new to the team."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Could you send me the file, please?","is_correct":true},{"id":"B","text":"The meeting starts at ten.","is_correct":false},{"id":"C","text":"I know the word business.","is_correct":false}],"explanation":"“Could you send me the file, please?” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3e134547-e488-5f22-84c5-487ec3fed79c', '62c87325-7140-5348-b0ab-3ce2834563d4', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('ed8bac3b-5879-5022-8286-7e757385a291', NULL, 'Build the Core Sentence: A1 Business English Foundation Mission', 'Produce a useful basic business sentence while practicing combining introductions, routines, requests, calls, messages, meetings, and customer language.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('1fe30ebd-af0d-5107-8d8a-f437c85b1eee', 'ed8bac3b-5879-5022-8286-7e757385a291', 'Изучите язык рабочего общения', 'text', '{"body":"Build the Core Sentence: A1 Business English Foundation Mission. Workplace mission: Produce a useful basic business sentence while practicing combining introductions, routines, requests, calls, messages, meetings, and customer language. Models: Could you send me the file, please? The meeting starts at ten. Thank you for your help.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('9ad6614e-18b7-5738-af2e-622db6e6f1d1', 'ed8bac3b-5879-5022-8286-7e757385a291', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"Could you send me the file, please?","word_bank":["Could","you","send","me","the","file","please","team"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('073a2536-3862-5537-b531-02757175cb6a', 'ed8bac3b-5879-5022-8286-7e757385a291', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"___ you send me the file, please?","correct_answer":"Could","options":["Could","work","team"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('882fcf1b-83f7-5e64-8973-cec4bbd17798', 'ed8bac3b-5879-5022-8286-7e757385a291', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["please","file","the","me","send","you","Could"],"correct_words":["Could","you","send","me","the","file","please"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('9016adf5-cce1-5bfe-a82e-0b9fa92557a2', 'ed8bac3b-5879-5022-8286-7e757385a291', 'Слушайте рабочую речь', 'listening', '{"audio_text":"Could you send me the file, please?","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('392a8e37-d143-5b43-ae61-20cc74469cb8', 'ed8bac3b-5879-5022-8286-7e757385a291', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"___ you send me the file, please?","correct_answer":"Could","hint_prefix":"C","explanation":"The missing word is Could.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('72775911-20af-54c2-af9d-594b1ca699e8', 'ed8bac3b-5879-5022-8286-7e757385a291', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Could you send me the file, please?"}],"answer_speaker":"Learner","options":[{"id":"A","text":"The meeting starts at ten.","is_correct":true},{"id":"B","text":"Thank you for your help.","is_correct":false},{"id":"C","text":"I know the word work.","is_correct":false}],"explanation":"“The meeting starts at ten.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3e134547-e488-5f22-84c5-487ec3fed79c', 'ed8bac3b-5879-5022-8286-7e757385a291', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('e816a5be-f55b-578f-af38-4084e65bfeeb', NULL, 'Listen for Workplace Information: A1 Business English Foundation Mission', 'Identify an important detail in short workplace audio while practicing combining introductions, routines, requests, calls, messages, meetings, and customer language.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('f8b33336-ee4d-53ca-8f93-18b830a37083', 'e816a5be-f55b-578f-af38-4084e65bfeeb', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"team","right":"A simple workplace meaning of ''team''."},{"id":"P2","left":"email","right":"A simple workplace meaning of ''email''."},{"id":"P3","left":"call","right":"A simple workplace meaning of ''call''."},{"id":"P4","left":"meeting","right":"A simple workplace meaning of ''meeting''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('42dec6c9-b0b9-5c07-8eea-ab2ee497ceba', 'e816a5be-f55b-578f-af38-4084e65bfeeb', 'Выберите профессиональный ответ', 'quiz', '{"question":"Identify an important detail in short workplace audio while practicing combining introductions, routines, requests, calls, messages, meetings, and customer language.","options":[{"id":"A","text":"The meeting starts at ten.","is_correct":true},{"id":"B","text":"Thank you for your help.","is_correct":false},{"id":"C","text":"Hello, I am new to the team.","is_correct":false}],"explanation":"“The meeting starts at ten.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('71ebbcaa-6db0-5ef6-8599-867f7bb82e2a', 'e816a5be-f55b-578f-af38-4084e65bfeeb', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["ten","at","starts","meeting","The"],"correct_words":["The","meeting","starts","at","ten"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('849b90ce-d3bf-5ade-8eb7-b7fa32d71e4f', 'e816a5be-f55b-578f-af38-4084e65bfeeb', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"___ meeting starts at ten.","audio_text":"The meeting starts at ten.","language":"en","options":[{"id":"A","audio_text":"The","is_correct":true},{"id":"B","audio_text":"team","is_correct":false},{"id":"C","audio_text":"email","is_correct":false}],"explanation":"The missing word is The.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('f19bb4a8-198d-5e1e-8059-1217e2525642', 'e816a5be-f55b-578f-af38-4084e65bfeeb', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"Thank you for your help.","language":"en","min_accuracy":0.7,"translation_hint":"Identify an important detail in short workplace audio while practicing combining introductions, routines, requests, calls, messages, meetings, and customer language.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('82b4b246-5bdc-5035-9a21-786e03d43142', 'e816a5be-f55b-578f-af38-4084e65bfeeb', 'Рабочая ситуация', 'story', '{"title":"Listen for Workplace Information: A1 Business English Foundation Mission","scenes":[{"type":"dialogue","character":"Colleague","text":"The meeting starts at ten."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"Thank you for your help.","is_correct":true},{"text":"Hello, I am new to the team.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('ddf46b3c-1ebe-55cd-a86d-56ec6da9dfd7', 'e816a5be-f55b-578f-af38-4084e65bfeeb', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"The meeting starts at ten."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Thank you for your help.","is_correct":true},{"id":"B","text":"Hello, I am new to the team.","is_correct":false},{"id":"C","text":"I know the word team.","is_correct":false}],"explanation":"“Thank you for your help.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3e134547-e488-5f22-84c5-487ec3fed79c', 'e816a5be-f55b-578f-af38-4084e65bfeeb', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('b4fb89ae-1e99-54ed-82f1-ec75c42cd9ba', NULL, 'Use Polite Professional English: A1 Business English Foundation Mission', 'Choose language appropriate for a simple workplace situation while practicing combining introductions, routines, requests, calls, messages, meetings, and customer language.', 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('fe47740a-23b3-57c0-8cf5-97b513cd8fb6', 'b4fb89ae-1e99-54ed-82f1-ec75c42cd9ba', 'Изучите язык рабочего общения', 'text', '{"body":"Use Polite Professional English: A1 Business English Foundation Mission. Workplace mission: Choose language appropriate for a simple workplace situation while practicing combining introductions, routines, requests, calls, messages, meetings, and customer language. Models: Thank you for your help. Hello, I am new to the team. Could you send me the file, please?","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('2fb97026-6eb5-548d-b8ba-c6b8c6f8d53b', 'b4fb89ae-1e99-54ed-82f1-ec75c42cd9ba', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"email","right":"A simple workplace meaning of ''email''."},{"id":"P2","left":"call","right":"A simple workplace meaning of ''call''."},{"id":"P3","left":"meeting","right":"A simple workplace meaning of ''meeting''."},{"id":"P4","left":"customer","right":"A simple workplace meaning of ''customer''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('019c4b57-513d-5265-8987-7cf11eaa6442', 'b4fb89ae-1e99-54ed-82f1-ec75c42cd9ba', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"___ you for your help.","correct_answer":"Thank","options":["Thank","email","call"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('039a7c72-a84d-5b35-bc04-f29460f3226f', 'b4fb89ae-1e99-54ed-82f1-ec75c42cd9ba', 'Слушайте рабочую речь', 'listening', '{"audio_text":"Thank you for your help.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d7e8bc58-c48f-54e6-bcf6-1c1552a4b967', 'b4fb89ae-1e99-54ed-82f1-ec75c42cd9ba', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"___ you for your help.","audio_text":"Thank you for your help.","language":"en","options":[{"id":"A","audio_text":"Thank","is_correct":true},{"id":"B","audio_text":"email","is_correct":false},{"id":"C","audio_text":"call","is_correct":false}],"explanation":"The missing word is Thank.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('5975de11-6150-5553-ba42-4de62156cd1d', 'b4fb89ae-1e99-54ed-82f1-ec75c42cd9ba', 'Выберите рабочее значение', 'choose_definition', '{"word":"email","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''email''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''call''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''meeting''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''customer''.","is_correct":false}],"explanation":"email: A simple workplace meaning of ''email''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('495badd0-277f-5b4c-8ce2-c21bf9ee5f63', 'b4fb89ae-1e99-54ed-82f1-ec75c42cd9ba', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Thank you for your help."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Hello, I am new to the team.","is_correct":true},{"id":"B","text":"Could you send me the file, please?","is_correct":false},{"id":"C","text":"I know the word email.","is_correct":false}],"explanation":"“Hello, I am new to the team.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3e134547-e488-5f22-84c5-487ec3fed79c', 'b4fb89ae-1e99-54ed-82f1-ec75c42cd9ba', 3)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('c9ee5099-f65b-5df4-aea7-abc00cd6c7a3', NULL, 'Practice the Spoken Model: A1 Business English Foundation Mission', 'Repeat the workplace language clearly and politely while practicing combining introductions, routines, requests, calls, messages, meetings, and customer language.', 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4799a9d3-d418-5a96-923e-a83967543be1', 'c9ee5099-f65b-5df4-aea7-abc00cd6c7a3', 'Выберите профессиональный ответ', 'quiz', '{"question":"Repeat the workplace language clearly and politely while practicing combining introductions, routines, requests, calls, messages, meetings, and customer language.","options":[{"id":"A","text":"Hello, I am new to the team.","is_correct":true},{"id":"B","text":"Could you send me the file, please?","is_correct":false},{"id":"C","text":"The meeting starts at ten.","is_correct":false}],"explanation":"“Hello, I am new to the team.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4df2351d-f5eb-5be3-a165-5623b097d05e', 'c9ee5099-f65b-5df4-aea7-abc00cd6c7a3', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"Hello, I am new to the team.","word_bank":["Hello","I","am","new","to","the","team","meeting"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('93752f09-a13f-56ad-9b34-c8ab0ac65f57', 'c9ee5099-f65b-5df4-aea7-abc00cd6c7a3', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["team","the","to","new","am","I","Hello"],"correct_words":["Hello","I","am","new","to","the","team"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d6bc87f3-f9f2-52bc-89e8-3fa6e75f91ac', 'c9ee5099-f65b-5df4-aea7-abc00cd6c7a3', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"Could you send me the file, please?","language":"en","min_accuracy":0.7,"translation_hint":"Repeat the workplace language clearly and politely while practicing combining introductions, routines, requests, calls, messages, meetings, and customer language.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d13bd8a1-b518-516f-a936-0841c5482eb9', 'c9ee5099-f65b-5df4-aea7-abc00cd6c7a3', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"___, I am new to the team.","correct_answer":"Hello","hint_prefix":"H","explanation":"The missing word is Hello.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('f4567d0f-3415-5252-963f-45e20c6ff20e', 'c9ee5099-f65b-5df4-aea7-abc00cd6c7a3', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"call","text":"call"},{"id":"V2","audio_text":"meeting","text":"meeting"},{"id":"V3","audio_text":"customer","text":"customer"},{"id":"V4","audio_text":"request","text":"request"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c910a92f-d2f2-55b1-89b1-b408344302d1', 'c9ee5099-f65b-5df4-aea7-abc00cd6c7a3', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Hello, I am new to the team."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Could you send me the file, please?","is_correct":true},{"id":"B","text":"The meeting starts at ten.","is_correct":false},{"id":"C","text":"I know the word call.","is_correct":false}],"explanation":"“Could you send me the file, please?” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3e134547-e488-5f22-84c5-487ec3fed79c', 'c9ee5099-f65b-5df4-aea7-abc00cd6c7a3', 4)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('15ff68cf-4f5e-5b3a-b0b4-77206a6045e5', NULL, 'Use the Language in Context: A1 Business English Foundation Mission', 'Apply the target language in a realistic work situation while practicing combining introductions, routines, requests, calls, messages, meetings, and customer language.', 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('79cb4081-6909-5e99-a258-e27fb2d2eb0b', '15ff68cf-4f5e-5b3a-b0b4-77206a6045e5', 'Изучите язык рабочего общения', 'text', '{"body":"Use the Language in Context: A1 Business English Foundation Mission. Workplace mission: Apply the target language in a realistic work situation while practicing combining introductions, routines, requests, calls, messages, meetings, and customer language. Models: Could you send me the file, please? The meeting starts at ten. Thank you for your help.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('65ca20a3-efb2-5893-8a0f-514676eb8733', '15ff68cf-4f5e-5b3a-b0b4-77206a6045e5', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"___ you send me the file, please?","correct_answer":"Could","options":["Could","meeting","customer"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a7ab0a73-7115-588b-96d6-9bedaff06f07', '15ff68cf-4f5e-5b3a-b0b4-77206a6045e5', 'Слушайте рабочую речь', 'listening', '{"audio_text":"Could you send me the file, please?","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('042152be-bd08-5156-a19c-db08d2b37592', '15ff68cf-4f5e-5b3a-b0b4-77206a6045e5', 'Рабочая ситуация', 'story', '{"title":"Use the Language in Context: A1 Business English Foundation Mission","scenes":[{"type":"dialogue","character":"Colleague","text":"Could you send me the file, please?"},{"type":"choice","text":"What is the best professional response?","options":[{"text":"The meeting starts at ten.","is_correct":true},{"text":"Thank you for your help.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('11ac35f0-93c0-5b0f-a4f5-da574de1b4c3', '15ff68cf-4f5e-5b3a-b0b4-77206a6045e5', 'Выберите рабочее значение', 'choose_definition', '{"word":"meeting","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''meeting''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''customer''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''request''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''message''.","is_correct":false}],"explanation":"meeting: A simple workplace meaning of ''meeting''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d806344f-5329-583f-b73f-a0a21f23b742', '15ff68cf-4f5e-5b3a-b0b4-77206a6045e5', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"meeting","text":"meeting"},{"id":"V2","audio_text":"customer","text":"customer"},{"id":"V3","audio_text":"request","text":"request"},{"id":"V4","audio_text":"message","text":"message"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('d9dc9a6c-8e88-55ac-b1ea-b2d6c90e9e7d', '15ff68cf-4f5e-5b3a-b0b4-77206a6045e5', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Could you send me the file, please?"}],"answer_speaker":"Learner","options":[{"id":"A","text":"The meeting starts at ten.","is_correct":true},{"id":"B","text":"Thank you for your help.","is_correct":false},{"id":"C","text":"I know the word meeting.","is_correct":false}],"explanation":"“The meeting starts at ten.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3e134547-e488-5f22-84c5-487ec3fed79c', '15ff68cf-4f5e-5b3a-b0b4-77206a6045e5', 5)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('af745cd6-5e7c-5d2e-83ac-2925d776f1fe', NULL, 'Handle a Short Exchange: A1 Business English Foundation Mission', 'Respond appropriately in a two-person workplace interaction while practicing combining introductions, routines, requests, calls, messages, meetings, and customer language.', 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('2d793fe4-20ee-5708-ae92-e638711cb541', 'af745cd6-5e7c-5d2e-83ac-2925d776f1fe', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"customer","right":"A simple workplace meaning of ''customer''."},{"id":"P2","left":"request","right":"A simple workplace meaning of ''request''."},{"id":"P3","left":"message","right":"A simple workplace meaning of ''message''."},{"id":"P4","left":"professional","right":"A simple workplace meaning of ''professional''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('3ba897ef-3ab4-5c6b-aa3a-1f18e6f80bcb', 'af745cd6-5e7c-5d2e-83ac-2925d776f1fe', 'Выберите профессиональный ответ', 'quiz', '{"question":"Respond appropriately in a two-person workplace interaction while practicing combining introductions, routines, requests, calls, messages, meetings, and customer language.","options":[{"id":"A","text":"The meeting starts at ten.","is_correct":true},{"id":"B","text":"Thank you for your help.","is_correct":false},{"id":"C","text":"Hello, I am new to the team.","is_correct":false}],"explanation":"“The meeting starts at ten.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('5e04ab3a-d018-548f-bf3b-873f3f7998a6', 'af745cd6-5e7c-5d2e-83ac-2925d776f1fe', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["ten","at","starts","meeting","The"],"correct_words":["The","meeting","starts","at","ten"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('e8bd8f1c-a25a-54c0-8ee6-fb13507d0aa7', 'af745cd6-5e7c-5d2e-83ac-2925d776f1fe', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"___ meeting starts at ten.","audio_text":"The meeting starts at ten.","language":"en","options":[{"id":"A","audio_text":"The","is_correct":true},{"id":"B","audio_text":"customer","is_correct":false},{"id":"C","audio_text":"request","is_correct":false}],"explanation":"The missing word is The.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('f05525e8-a374-5572-8701-56d2636b4d6f', 'af745cd6-5e7c-5d2e-83ac-2925d776f1fe', 'Введите пропущенное рабочее слово', 'missing_word', '{"sentence_template":"___ meeting starts at ten.","correct_answer":"The","hint_prefix":"T","explanation":"The missing word is The.","instruction":"Введите правильное пропущенное слово."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('665df794-58c7-5f66-a58a-f7428272a604', 'af745cd6-5e7c-5d2e-83ac-2925d776f1fe', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"Thank you for your help.","language":"en","min_accuracy":0.7,"translation_hint":"Respond appropriately in a two-person workplace interaction while practicing combining introductions, routines, requests, calls, messages, meetings, and customer language.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('ff3cc976-d4b3-5642-abed-dd0e625d5ed7', 'af745cd6-5e7c-5d2e-83ac-2925d776f1fe', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"The meeting starts at ten."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Thank you for your help.","is_correct":true},{"id":"B","text":"Hello, I am new to the team.","is_correct":false},{"id":"C","text":"I know the word customer.","is_correct":false}],"explanation":"“Thank you for your help.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3e134547-e488-5f22-84c5-487ec3fed79c', 'af745cd6-5e7c-5d2e-83ac-2925d776f1fe', 6)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('f2f39aee-a3bd-5978-ae54-573976b8dd03', NULL, 'Work with Less Support: A1 Business English Foundation Mission', 'Complete the business task with fewer hints while practicing combining introductions, routines, requests, calls, messages, meetings, and customer language.', 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('89fa50b3-7c09-5f7d-973a-acfae533af59', 'f2f39aee-a3bd-5978-ae54-573976b8dd03', 'Изучите язык рабочего общения', 'text', '{"body":"Work with Less Support: A1 Business English Foundation Mission. Workplace mission: Complete the business task with fewer hints while practicing combining introductions, routines, requests, calls, messages, meetings, and customer language. Models: Thank you for your help. Hello, I am new to the team. Could you send me the file, please?","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('de031668-93bc-5f58-86f5-3f895ec2f661', 'f2f39aee-a3bd-5978-ae54-573976b8dd03', 'Составьте рабочую фразу', 'translate', '{"source_text":"Составьте подходящую английскую фразу для рабочей ситуации.","source_language":"ru","target_language":"en","correct_translation":"Thank you for your help.","word_bank":["Thank","you","for","your","help","message"],"instruction":"Составьте правильную английскую рабочую фразу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('3376ba68-cab4-53eb-b93e-e8a8697cb10d', 'f2f39aee-a3bd-5978-ae54-573976b8dd03', 'Дополните рабочее предложение', 'fill_blank', '{"sentence_template":"___ you for your help.","correct_answer":"Thank","options":["Thank","request","message"],"instruction":"Выберите правильное пропущенное слово."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('5196530a-3be9-5a22-92d8-fa8a2c42314c', 'f2f39aee-a3bd-5978-ae54-573976b8dd03', 'Слушайте рабочую речь', 'listening', '{"audio_text":"Thank you for your help.","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('c9e1d2c5-2ea1-5791-812c-6ea4124593e0', 'f2f39aee-a3bd-5978-ae54-573976b8dd03', 'Рабочая ситуация', 'story', '{"title":"Work with Less Support: A1 Business English Foundation Mission","scenes":[{"type":"dialogue","character":"Colleague","text":"Thank you for your help."},{"type":"choice","text":"What is the best professional response?","options":[{"text":"Hello, I am new to the team.","is_correct":true},{"text":"Could you send me the file, please?","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('40a2b662-b31c-562d-bfb3-b5d140c44d20', 'f2f39aee-a3bd-5978-ae54-573976b8dd03', 'Выберите рабочее значение', 'choose_definition', '{"word":"request","language":"en","options":[{"id":"A","text":"A simple workplace meaning of ''request''.","is_correct":true},{"id":"B","text":"A simple workplace meaning of ''message''.","is_correct":false},{"id":"C","text":"A simple workplace meaning of ''professional''.","is_correct":false},{"id":"D","text":"A simple workplace meaning of ''business''.","is_correct":false}],"explanation":"request: A simple workplace meaning of ''request''.","instruction":"Выберите правильное значение рабочего слова."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('357d56ac-bb4d-5f21-8e62-1c2ff3c39ecb', 'f2f39aee-a3bd-5978-ae54-573976b8dd03', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Thank you for your help."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Hello, I am new to the team.","is_correct":true},{"id":"B","text":"Could you send me the file, please?","is_correct":false},{"id":"C","text":"I know the word request.","is_correct":false}],"explanation":"“Hello, I am new to the team.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3e134547-e488-5f22-84c5-487ec3fed79c', 'f2f39aee-a3bd-5978-ae54-573976b8dd03', 7)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('069f1752-3751-55c6-9066-83ed8f70ecef', NULL, 'Workplace Challenge: A1 Business English Foundation Mission', 'Combine vocabulary, listening, and response skills while practicing combining introductions, routines, requests, calls, messages, meetings, and customer language.', 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('4289308b-f42c-5e28-becf-8a73d7865bf9', '069f1752-3751-55c6-9066-83ed8f70ecef', 'Соедините рабочие слова', 'match_pairs', '{"pairs":[{"id":"P1","left":"message","right":"A simple workplace meaning of ''message''."},{"id":"P2","left":"professional","right":"A simple workplace meaning of ''professional''."},{"id":"P3","left":"business","right":"A simple workplace meaning of ''business''."},{"id":"P4","left":"work","right":"A simple workplace meaning of ''work''."}],"instruction":"Соедините рабочие слова с их значениями."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('728b77e7-c5f2-5f93-aa98-0219e3355611', '069f1752-3751-55c6-9066-83ed8f70ecef', 'Выберите профессиональный ответ', 'quiz', '{"question":"Combine vocabulary, listening, and response skills while practicing combining introductions, routines, requests, calls, messages, meetings, and customer language.","options":[{"id":"A","text":"Hello, I am new to the team.","is_correct":true},{"id":"B","text":"Could you send me the file, please?","is_correct":false},{"id":"C","text":"The meeting starts at ten.","is_correct":false}],"explanation":"“Hello, I am new to the team.” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('092324e2-fb64-5758-bff0-bb9ded81b291', '069f1752-3751-55c6-9066-83ed8f70ecef', 'Соберите профессиональное предложение', 'tap_words', '{"word_bank":["team","the","to","new","am","I","Hello"],"correct_words":["Hello","I","am","new","to","the","team"],"instruction":"Расставьте слова в правильном порядке."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('60fd7e02-2df6-5062-bf4a-a8fda1ba638c', '069f1752-3751-55c6-9066-83ed8f70ecef', 'Прослушайте и выберите рабочее слово', 'listen_choose_word', '{"sentence_template":"___, I am new to the team.","audio_text":"Hello, I am new to the team.","language":"en","options":[{"id":"A","audio_text":"Hello","is_correct":true},{"id":"B","audio_text":"message","is_correct":false},{"id":"C","audio_text":"professional","is_correct":false}],"explanation":"The missing word is Hello.","instruction":"Прослушайте и выберите пропущенное слово."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('921ee4ef-c49a-5213-9323-5da82eab7d1a', '069f1752-3751-55c6-9066-83ed8f70ecef', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"message","text":"message"},{"id":"V2","audio_text":"professional","text":"professional"},{"id":"V3","audio_text":"business","text":"business"},{"id":"V4","audio_text":"work","text":"work"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('0ec9fa61-ed71-5cf2-95ab-0546659f6caa', '069f1752-3751-55c6-9066-83ed8f70ecef', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"Could you send me the file, please?","language":"en","min_accuracy":0.7,"translation_hint":"Combine vocabulary, listening, and response skills while practicing combining introductions, routines, requests, calls, messages, meetings, and customer language.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('7ba22280-0825-5957-831e-732218668edc', '069f1752-3751-55c6-9066-83ed8f70ecef', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Hello, I am new to the team."}],"answer_speaker":"Learner","options":[{"id":"A","text":"Could you send me the file, please?","is_correct":true},{"id":"B","text":"The meeting starts at ten.","is_correct":false},{"id":"C","text":"I know the word message.","is_correct":false}],"explanation":"“Could you send me the file, please?” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3e134547-e488-5f22-84c5-487ec3fed79c', '069f1752-3751-55c6-9066-83ed8f70ecef', 8)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('76cae3a7-7604-548b-940c-94848c6efc66', NULL, 'Track Business Mission: A1 Business English Foundation Mission', 'Complete a practical beginner workplace mission while practicing combining introductions, routines, requests, calls, messages, meetings, and customer language.', 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('8e7d715a-8621-5c79-be11-bd342c4197d0', '76cae3a7-7604-548b-940c-94848c6efc66', 'Изучите язык рабочего общения', 'text', '{"body":"Track Business Mission: A1 Business English Foundation Mission. Workplace mission: Complete a practical beginner workplace mission while practicing combining introductions, routines, requests, calls, messages, meetings, and customer language. Models: Could you send me the file, please? The meeting starts at ten. Thank you for your help.","reading_time_minutes":1,"instruction":"Изучите ключевые фразы и обратите внимание на их использование на работе."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('29c15a85-5e05-5ba5-8dd2-21f4df5d321a', '76cae3a7-7604-548b-940c-94848c6efc66', 'Выберите профессиональный ответ', 'quiz', '{"question":"Complete a practical beginner workplace mission while practicing combining introductions, routines, requests, calls, messages, meetings, and customer language.","options":[{"id":"A","text":"Could you send me the file, please?","is_correct":true},{"id":"B","text":"The meeting starts at ten.","is_correct":false},{"id":"C","text":"Thank you for your help.","is_correct":false}],"explanation":"“Could you send me the file, please?” best matches the target workplace task.","instruction":"Выберите ответ, который лучше всего подходит к рабочей ситуации."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('30bea162-54bd-5c01-8590-c3c7a7597266', '76cae3a7-7604-548b-940c-94848c6efc66', 'Слушайте рабочую речь', 'listening', '{"audio_text":"Could you send me the file, please?","language":"en","instruction":"Внимательно прослушайте и напишите услышанное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('eb1f818f-a148-5f2e-83f2-41d49b8500bc', '76cae3a7-7604-548b-940c-94848c6efc66', 'Отработайте профессиональную речь', 'listening_shadowing', '{"audio_text":"The meeting starts at ten.","language":"en","min_accuracy":0.7,"translation_hint":"Complete a practical beginner workplace mission while practicing combining introductions, routines, requests, calls, messages, meetings, and customer language.","instruction":"Прослушайте и четко и вежливо повторите рабочую фразу."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('864c733a-aa6f-55a0-a65f-a6d5772aea62', '76cae3a7-7604-548b-940c-94848c6efc66', 'Рабочая ситуация', 'story', '{"title":"Track Business Mission: A1 Business English Foundation Mission","scenes":[{"type":"dialogue","character":"Colleague","text":"Could you send me the file, please?"},{"type":"choice","text":"What is the best professional response?","options":[{"text":"The meeting starts at ten.","is_correct":true},{"text":"Thank you for your help.","is_correct":false}]}],"instruction":"Следуйте рабочему диалогу и выберите лучшее продолжение."}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('a994d6ab-896b-5bd0-a01b-5ef3b1635290', '76cae3a7-7604-548b-940c-94848c6efc66', 'Соедините рабочее аудио и текст', 'match_pairs_voice', '{"language":"en","pairs":[{"id":"V1","audio_text":"professional","text":"professional"},{"id":"V2","audio_text":"business","text":"business"},{"id":"V3","audio_text":"work","text":"work"},{"id":"V4","audio_text":"team","text":"team"}],"explanation":"Listen carefully before matching.","instruction":"Прослушайте и соедините рабочее слово с его написанием."}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, title, type, content, order_index, created_at, updated_at)
VALUES ('38d2ef42-34d2-5560-b0ec-0f93880d6034', '76cae3a7-7604-548b-940c-94848c6efc66', 'Завершите рабочий диалог', 'complete_chat', '{"dialogue":[{"speaker":"Colleague","text":"Could you send me the file, please?"}],"answer_speaker":"Learner","options":[{"id":"A","text":"The meeting starts at ten.","is_correct":true},{"id":"B","text":"Thank you for your help.","is_correct":false},{"id":"C","text":"I know the word professional.","is_correct":false}],"explanation":"“The meeting starts at ten.” is the best professional continuation.","instruction":"Выберите ответ, который естественно и профессионально завершает диалог."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, type = EXCLUDED.type, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3e134547-e488-5f22-84c5-487ec3fed79c', '76cae3a7-7604-548b-940c-94848c6efc66', 9)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

COMMIT;
