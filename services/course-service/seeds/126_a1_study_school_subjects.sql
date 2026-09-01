-- Track: A1_STUDY_SCHOOL_SUBJECTS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('cfdf8765-09ab-578a-9cb6-5bfbb17ac890', 'A1_STUDY_SCHOOL_SUBJECTS', 'Школьные предметы', 'Научитесь называть школьные предметы, говорить о расписании и любимом предмете.', 'en', 'A1', '', ARRAY['study']::text[], true, 126, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('a8359c42-a889-5a64-b5c7-08fd77289802', NULL, 'Названия предметов', 'Научиться называть основные школьные предметы.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('bd71ebfd-7562-524e-9edf-1b6ef2fee897', 'a8359c42-a889-5a64-b5c7-08fd77289802', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"SS_L1_MP_P1","left":"English","right":"английский язык"},{"id":"SS_L1_MP_P2","left":"math","right":"математика"},{"id":"SS_L1_MP_P3","left":"science","right":"естествознание"},{"id":"SS_L1_MP_P4","left":"history","right":"история"},{"id":"SS_L1_MP_P5","left":"art","right":"изобразительное искусство"},{"id":"SS_L1_MP_P6","left":"music","right":"музыка"},{"id":"SS_L1_MP_P7","left":"physical education","right":"физкультура"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e4bbb267-ff40-5f6c-a14e-83d6dac15eb6', 'a8359c42-a889-5a64-b5c7-08fd77289802', 'quiz', 'Проверьте себя', '{"explanation":"Students work with numbers in math.","instruction":"Выберите правильный ответ.","options":[{"id":"SS_L1_Q_A","is_correct":true,"text":"Math"},{"id":"SS_L1_Q_B","is_correct":false,"text":"History"},{"id":"SS_L1_Q_C","is_correct":false,"text":"Music"}],"question":"In which subject do students work with numbers?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b6b0f6d5-4efc-5776-886b-b1256d57e7f4', 'a8359c42-a889-5a64-b5c7-08fd77289802', 'translate', 'Переведите', '{"correct_translation":"We have English today.","instruction":"Соберите перевод.","source_language":"ru","source_text":"У нас сегодня английский язык.","target_language":"en","word_bank":["today.","English","have","We"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e40f34f6-4537-5ea9-8a87-8c2d0d578c43', 'a8359c42-a889-5a64-b5c7-08fd77289802', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"math","instruction":"Выберите подходящее слово.","options":["math","pencil","teacher"],"sentence_template":"We have ___ today."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4193082f-a818-5336-b160-3c202b163ece', 'a8359c42-a889-5a64-b5c7-08fd77289802', 'tap_words', 'Соберите фразу', '{"correct_words":["We","have","science","today."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["today.","science","have","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('cbd40820-ffa4-5480-94e5-e4ad56c68902', 'a8359c42-a889-5a64-b5c7-08fd77289802', 'listening', 'Послушайте', '{"audio_text":"We have English and math today.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6d1f4541-37a6-51a0-8201-51b8e5acc932', 'a8359c42-a889-5a64-b5c7-08fd77289802', 'listening_shadowing', 'Повторите', '{"audio_text":"Today we have science, art, and music.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Сегодня у нас естествознание, рисование и музыка."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ded329ad-537e-59e4-9d99-2b8e94f3e12b', 'a8359c42-a889-5a64-b5c7-08fd77289802', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Anna","text":"What subject do we have now?","translation":"Какой предмет у нас сейчас?","type":"dialogue"},{"character":"Ben","text":"We have English now.","translation":"Сейчас у нас английский язык.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Great! I like English."},{"is_correct":false,"text":"Open the music chair."}],"text":"What should Anna say?","type":"choice"}],"title":"The First Lesson"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e419443c-8172-55e9-9071-39e784279b74', 'a8359c42-a889-5a64-b5c7-08fd77289802', 'choose_definition', 'Определение', '{"explanation":"History is the study of people and events from the past.","instruction":"Выберите значение.","language":"en","options":[{"id":"SS_L1_D_A","is_correct":true,"text":"The study of people and events from the past"},{"id":"SS_L1_D_B","is_correct":false,"text":"The study of numbers"},{"id":"SS_L1_D_C","is_correct":false,"text":"A class with songs and instruments"}],"word":"history"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b9b1cf78-48eb-5726-a7a6-21f5a7af6112', 'a8359c42-a889-5a64-b5c7-08fd77289802', 'listen_choose_word', 'Слово', '{"audio_text":"We have music today.","explanation":"The complete sentence is “We have music today.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"music","id":"SS_L1_LW_A","is_correct":true},{"audio_text":"desk","id":"SS_L1_LW_B","is_correct":false},{"audio_text":"student","id":"SS_L1_LW_C","is_correct":false}],"sentence_template":"We have ___ today."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('14ac4480-a4d1-501d-8ba2-360830bdbf93', 'a8359c42-a889-5a64-b5c7-08fd77289802', 'missing_word', 'Впишите', '{"correct_answer":"art","explanation":"The complete sentence is “We have art today.”","hint_prefix":"ar","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We have ___ today."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('45e8e362-45d6-5c82-ac7f-7c57e211da89', 'a8359c42-a889-5a64-b5c7-08fd77289802', 'match_pairs_voice', 'Звук', '{"explanation":"Match each audio item with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"English","id":"SS_L1_VM_P1","text":"English"},{"audio_text":"math","id":"SS_L1_VM_P2","text":"math"},{"audio_text":"science","id":"SS_L1_VM_P3","text":"science"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ecc1e62c-8766-56a1-b8f0-0d8e7f94c988', 'a8359c42-a889-5a64-b5c7-08fd77289802', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"What subject do we have now?"}],"explanation":"“We have history now” answers the question naturally.","instruction":"Ответьте.","options":[{"id":"SS_L1_C_A","is_correct":true,"text":"We have history now."},{"id":"SS_L1_C_B","is_correct":false,"text":"I am history years old."},{"id":"SS_L1_C_C","is_correct":false,"text":"My desk is subject."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('cfdf8765-09ab-578a-9cb6-5bfbb17ac890', 'a8359c42-a889-5a64-b5c7-08fd77289802', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('53d74c2d-caaa-5f76-9d49-5023c6e9845d', NULL, 'Моё расписание', 'Научиться говорить, в какие дни проходят школьные предметы.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5779d552-0112-5325-90ad-ca39cddcfff7', '53d74c2d-caaa-5f76-9d49-5023c6e9845d', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"SS_L2_MP_P1","left":"Monday","right":"понедельник"},{"id":"SS_L2_MP_P2","left":"Tuesday","right":"вторник"},{"id":"SS_L2_MP_P3","left":"Wednesday","right":"среда"},{"id":"SS_L2_MP_P4","left":"Thursday","right":"четверг"},{"id":"SS_L2_MP_P5","left":"Friday","right":"пятница"},{"id":"SS_L2_MP_P6","left":"today","right":"сегодня"},{"id":"SS_L2_MP_P7","left":"tomorrow","right":"завтра"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8efda12e-8ce6-595e-9567-f881898d21e4', '53d74c2d-caaa-5f76-9d49-5023c6e9845d', 'quiz', 'Проверьте себя', '{"explanation":"Tuesday comes after Monday.","instruction":"Выберите правильный ответ.","options":[{"id":"SS_L2_Q_A","is_correct":true,"text":"Tuesday"},{"id":"SS_L2_Q_B","is_correct":false,"text":"Friday"},{"id":"SS_L2_Q_C","is_correct":false,"text":"Wednesday"}],"question":"Which day comes after Monday?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8e9a8ea0-4289-5a01-913c-3920dc4eb13c', '53d74c2d-caaa-5f76-9d49-5023c6e9845d', 'translate', 'Переведите', '{"correct_translation":"We have math on Monday.","instruction":"Соберите перевод.","source_language":"ru","source_text":"В понедельник у нас математика.","target_language":"en","word_bank":["Monday.","on","math","have","We"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('32c82729-1fe7-5fa5-9796-0039c33c4523', '53d74c2d-caaa-5f76-9d49-5023c6e9845d', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"on","instruction":"Выберите подходящее слово.","options":["on","in","at"],"sentence_template":"We have art ___ Friday."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8fc0dd71-5690-5a16-8750-cfea1885eca1', '53d74c2d-caaa-5f76-9d49-5023c6e9845d', 'tap_words', 'Соберите фразу', '{"correct_words":["We","have","English","on","Tuesday."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["Tuesday.","on","English","have","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ba22fad9-86d5-5843-ae51-8833e79a4432', '53d74c2d-caaa-5f76-9d49-5023c6e9845d', 'listening', 'Послушайте', '{"audio_text":"We have science on Wednesday.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e1170718-3526-575b-bd90-88754cf835bb', '53d74c2d-caaa-5f76-9d49-5023c6e9845d', 'listening_shadowing', 'Повторите', '{"audio_text":"We have math on Monday and music on Friday.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"У нас математика в понедельник и музыка в пятницу."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('648fef92-6afa-55ca-85a6-e793495aa18a', '53d74c2d-caaa-5f76-9d49-5023c6e9845d', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Mila","text":"What do we have on Thursday?","translation":"Что у нас в четверг?","type":"dialogue"},{"character":"Leo","text":"We have history on Thursday.","translation":"У нас история в четверг.","type":"dialogue"},{"options":[{"is_correct":true,"text":"What do we have on Friday?"},{"is_correct":false,"text":"How old is Thursday?"}],"text":"What should Mila ask next?","type":"choice"}],"title":"Checking the Schedule"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f7e6769c-ab7a-5b2f-a64e-95e1931378de', '53d74c2d-caaa-5f76-9d49-5023c6e9845d', 'choose_definition', 'Определение', '{"explanation":"A schedule is a plan that shows times, days, or activities.","instruction":"Выберите значение.","language":"en","options":[{"id":"SS_L2_D_A","is_correct":true,"text":"A plan that shows times, days, or activities"},{"id":"SS_L2_D_B","is_correct":false,"text":"A book about the past"},{"id":"SS_L2_D_C","is_correct":false,"text":"A room where students learn"}],"word":"schedule"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('bca8f37c-d811-5751-a3d6-28efb407738d', '53d74c2d-caaa-5f76-9d49-5023c6e9845d', 'listen_choose_word', 'Слово', '{"audio_text":"We have art on Friday.","explanation":"The complete sentence is “We have art on Friday.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"Friday","id":"SS_L2_LW_A","is_correct":true},{"audio_text":"music","id":"SS_L2_LW_B","is_correct":false},{"audio_text":"today","id":"SS_L2_LW_C","is_correct":false}],"sentence_template":"We have art on ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('154fd277-34ea-5514-b991-97385b7f49d9', '53d74c2d-caaa-5f76-9d49-5023c6e9845d', 'missing_word', 'Впишите', '{"correct_answer":"Monday","explanation":"The complete sentence is “We have math on Monday.”","hint_prefix":"Mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We have math on ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3c7dfae6-92ed-5996-9e35-4531faba68ae', '53d74c2d-caaa-5f76-9d49-5023c6e9845d', 'match_pairs_voice', 'Звук', '{"explanation":"Match each audio item with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"Monday","id":"SS_L2_VM_P1","text":"Monday"},{"audio_text":"Wednesday","id":"SS_L2_VM_P2","text":"Wednesday"},{"audio_text":"Friday","id":"SS_L2_VM_P3","text":"Friday"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d35f151f-be6f-5a26-800f-b45780d7d142', '53d74c2d-caaa-5f76-9d49-5023c6e9845d', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What subject do we have tomorrow?"}],"explanation":"“We have science tomorrow” answers the question naturally.","instruction":"Ответьте.","options":[{"id":"SS_L2_C_A","is_correct":true,"text":"We have science tomorrow."},{"id":"SS_L2_C_B","is_correct":false,"text":"Tomorrow is a pencil."},{"id":"SS_L2_C_C","is_correct":false,"text":"I am from science."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('cfdf8765-09ab-578a-9cb6-5bfbb17ac890', '53d74c2d-caaa-5f76-9d49-5023c6e9845d', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('95396767-301e-56ba-a7ee-f86c6bd9ec3f', NULL, 'Мой любимый предмет', 'Научиться говорить о любимом школьном предмете и задавать простой вопрос о предпочтениях.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('24d6a7c1-5d08-5aea-92eb-ed07c5abdfa7', '95396767-301e-56ba-a7ee-f86c6bd9ec3f', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"SS_L3_MP_P1","left":"favorite","right":"любимый"},{"id":"SS_L3_MP_P2","left":"subject","right":"предмет"},{"id":"SS_L3_MP_P3","left":"easy","right":"лёгкий"},{"id":"SS_L3_MP_P4","left":"difficult","right":"трудный"},{"id":"SS_L3_MP_P5","left":"interesting","right":"интересный"},{"id":"SS_L3_MP_P6","left":"What is your favorite subject?","right":"Какой твой любимый предмет?"},{"id":"SS_L3_MP_P7","left":"My favorite subject is art","right":"Мой любимый предмет — рисование"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('64ed70e7-9ea6-539c-844f-8cf6e8244b18', '95396767-301e-56ba-a7ee-f86c6bd9ec3f', 'quiz', 'Проверьте себя', '{"explanation":"“My favorite subject is music” says which subject a person likes best.","instruction":"Выберите правильный ответ.","options":[{"id":"SS_L3_Q_A","is_correct":true,"text":"My favorite subject is music."},{"id":"SS_L3_Q_B","is_correct":false,"text":"We have music on Monday."},{"id":"SS_L3_Q_C","is_correct":false,"text":"Open your music book."}],"question":"Which sentence names a favorite subject?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9f9e9fa2-5640-5aec-aafe-cc1f42ccaf55', '95396767-301e-56ba-a7ee-f86c6bd9ec3f', 'translate', 'Переведите', '{"correct_translation":"My favorite subject is English.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мой любимый предмет — английский язык.","target_language":"en","word_bank":["English.","is","subject","favorite","My"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('fd69f621-e821-5085-b3fb-28487038011d', '95396767-301e-56ba-a7ee-f86c6bd9ec3f', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"difficult","instruction":"Выберите подходящее слово.","options":["difficult","Monday","book"],"sentence_template":"Math is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('aced681c-4f29-53a5-882c-297b7fb38ab7', '95396767-301e-56ba-a7ee-f86c6bd9ec3f', 'tap_words', 'Соберите фразу', '{"correct_words":["History","is","interesting."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["interesting.","is","History"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7d4013d8-9ed5-5b67-be4d-93d1969434bd', '95396767-301e-56ba-a7ee-f86c6bd9ec3f', 'listening', 'Послушайте', '{"audio_text":"My favorite subject is art.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a3593421-3fb3-53cf-a5ce-48645364b595', '95396767-301e-56ba-a7ee-f86c6bd9ec3f', 'listening_shadowing', 'Повторите', '{"audio_text":"I like science because it is interesting.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Мне нравится естествознание, потому что оно интересное."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('081343ce-8bc7-5ac0-bdc9-91a39832fa62', '95396767-301e-56ba-a7ee-f86c6bd9ec3f', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Oleg","text":"What is your favorite subject, Emma?","translation":"Какой твой любимый предмет, Эмма?","type":"dialogue"},{"character":"Emma","text":"My favorite subject is music.","translation":"Мой любимый предмет — музыка.","type":"dialogue"},{"options":[{"is_correct":true,"text":"What is your favorite subject?"},{"is_correct":false,"text":"Can your subject swim?"}],"text":"What should Emma ask Oleg?","type":"choice"}],"title":"Favorite Subjects"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('406a09d2-dc8a-505f-ba5a-c37367b53a6d', '95396767-301e-56ba-a7ee-f86c6bd9ec3f', 'choose_definition', 'Определение', '{"explanation":"“Difficult” means not easy to do or understand.","instruction":"Выберите значение.","language":"en","options":[{"id":"SS_L3_D_A","is_correct":true,"text":"Not easy to do or understand"},{"id":"SS_L3_D_B","is_correct":false,"text":"Very enjoyable to learn"},{"id":"SS_L3_D_C","is_correct":false,"text":"The best-liked thing"}],"word":"difficult"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f0a09278-6950-574b-b767-98375849f42e', '95396767-301e-56ba-a7ee-f86c6bd9ec3f', 'listen_choose_word', 'Слово', '{"audio_text":"My favorite subject is art.","explanation":"The complete sentence is “My favorite subject is art.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"subject","id":"SS_L3_LW_A","is_correct":true},{"audio_text":"Friday","id":"SS_L3_LW_B","is_correct":false},{"audio_text":"pencil","id":"SS_L3_LW_C","is_correct":false}],"sentence_template":"My favorite ___ is art."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c13d2e04-bd11-597f-ba38-bf0132e65b24', '95396767-301e-56ba-a7ee-f86c6bd9ec3f', 'missing_word', 'Впишите', '{"correct_answer":"interesting","explanation":"The complete sentence is “Science is interesting.”","hint_prefix":"in","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Science is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('34e6e7da-6fac-546a-ab90-c2d13e46b00d', '95396767-301e-56ba-a7ee-f86c6bd9ec3f', 'match_pairs_voice', 'Звук', '{"explanation":"Match each audio item with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"favorite","id":"SS_L3_VM_P1","text":"favorite"},{"audio_text":"easy","id":"SS_L3_VM_P2","text":"easy"},{"audio_text":"interesting","id":"SS_L3_VM_P3","text":"interesting"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('2e0d42d4-f37d-5e7a-af97-521cbc5bce3b', '95396767-301e-56ba-a7ee-f86c6bd9ec3f', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Max","text":"What is your favorite subject?"}],"explanation":"“My favorite subject is English” answers the question naturally.","instruction":"Ответьте.","options":[{"id":"SS_L3_C_A","is_correct":true,"text":"My favorite subject is English."},{"id":"SS_L3_C_B","is_correct":false,"text":"English is on my chair."},{"id":"SS_L3_C_C","is_correct":false,"text":"I am favorite years old."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('cfdf8765-09ab-578a-9cb6-5bfbb17ac890', '95396767-301e-56ba-a7ee-f86c6bd9ec3f', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2bc1f772-d70f-5677-a06b-bbca7a955719', 'en', 'English', 'английский язык', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a04bfdd3-d1f6-5d0a-810f-1b08e7920129', 'en', 'math', 'математика', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('915855bc-d70a-59d1-8cd8-30715827ccce', 'en', 'science', 'естествознание', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('68d894e1-2af1-5803-8c40-53f4fcc3074d', 'en', 'history', 'история', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d778898d-308a-5ea3-b37b-3ac82733dd4a', 'en', 'art', 'изобразительное искусство', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('99e8f107-7345-5964-a5cb-60a50d4dbebd', 'en', 'music', 'музыка', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('79d04c10-cc58-5129-b908-fe4854f061ac', 'en', 'physical education', 'физкультура', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1fdb0791-5276-5bee-89c9-d1f5c26924a0', 'en', 'Monday', 'понедельник', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('500c9a35-46a7-5336-929e-061e1d0cfb52', 'en', 'Tuesday', 'вторник', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bfc64cfb-745a-5466-95d9-fa16a63b74bb', 'en', 'Wednesday', 'среда', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b1458e59-80d3-5e5b-830a-c40ee07700cf', 'en', 'Thursday', 'четверг', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d0b8f091-f4e1-52c7-860d-2b85b5bedb04', 'en', 'Friday', 'пятница', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f63596fa-e1a7-596d-839b-65eddde8d504', 'en', 'today', 'сегодня', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0d87e567-9d2d-55d9-ba3e-587332645ba9', 'en', 'tomorrow', 'завтра', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3da2c5c5-91f8-533c-8fde-65cf69af6f00', 'en', 'favorite', 'любимый', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0cfd70fc-7a53-51c5-9e9c-e0f354167b14', 'en', 'subject', 'предмет', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7f82c663-74a6-5586-93b2-c958a4438728', 'en', 'easy', 'лёгкий', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('907d61ad-8f55-5b6d-b220-8cc687f71bed', 'en', 'difficult', 'трудный', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('07d6614d-8c80-5538-b334-6bdeaf0c5f7e', 'en', 'interesting', 'интересный', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9ad6500d-db1b-54d1-936e-51e13c844969', 'en', 'What is your favorite subject?', 'Какой твой любимый предмет?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('29be5a2b-f96f-58dd-a597-a84637664f0d', 'en', 'My favorite subject is art', 'Мой любимый предмет — рисование', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdf8765-09ab-578a-9cb6-5bfbb17ac890', id, 'a8359c42-a889-5a64-b5c7-08fd77289802', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'English' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdf8765-09ab-578a-9cb6-5bfbb17ac890', id, 'a8359c42-a889-5a64-b5c7-08fd77289802', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'math' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdf8765-09ab-578a-9cb6-5bfbb17ac890', id, 'a8359c42-a889-5a64-b5c7-08fd77289802', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'science' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdf8765-09ab-578a-9cb6-5bfbb17ac890', id, 'a8359c42-a889-5a64-b5c7-08fd77289802', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'history' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdf8765-09ab-578a-9cb6-5bfbb17ac890', id, 'a8359c42-a889-5a64-b5c7-08fd77289802', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'art' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdf8765-09ab-578a-9cb6-5bfbb17ac890', id, 'a8359c42-a889-5a64-b5c7-08fd77289802', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'music' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdf8765-09ab-578a-9cb6-5bfbb17ac890', id, 'a8359c42-a889-5a64-b5c7-08fd77289802', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'physical education' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdf8765-09ab-578a-9cb6-5bfbb17ac890', id, '53d74c2d-caaa-5f76-9d49-5023c6e9845d', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'Monday' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdf8765-09ab-578a-9cb6-5bfbb17ac890', id, '53d74c2d-caaa-5f76-9d49-5023c6e9845d', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'Tuesday' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdf8765-09ab-578a-9cb6-5bfbb17ac890', id, '53d74c2d-caaa-5f76-9d49-5023c6e9845d', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'Wednesday' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdf8765-09ab-578a-9cb6-5bfbb17ac890', id, '53d74c2d-caaa-5f76-9d49-5023c6e9845d', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'Thursday' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdf8765-09ab-578a-9cb6-5bfbb17ac890', id, '53d74c2d-caaa-5f76-9d49-5023c6e9845d', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'Friday' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdf8765-09ab-578a-9cb6-5bfbb17ac890', id, '53d74c2d-caaa-5f76-9d49-5023c6e9845d', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'today' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdf8765-09ab-578a-9cb6-5bfbb17ac890', id, '53d74c2d-caaa-5f76-9d49-5023c6e9845d', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'tomorrow' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdf8765-09ab-578a-9cb6-5bfbb17ac890', id, '95396767-301e-56ba-a7ee-f86c6bd9ec3f', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'favorite' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdf8765-09ab-578a-9cb6-5bfbb17ac890', id, '95396767-301e-56ba-a7ee-f86c6bd9ec3f', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'subject' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdf8765-09ab-578a-9cb6-5bfbb17ac890', id, '95396767-301e-56ba-a7ee-f86c6bd9ec3f', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'easy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdf8765-09ab-578a-9cb6-5bfbb17ac890', id, '95396767-301e-56ba-a7ee-f86c6bd9ec3f', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'difficult' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdf8765-09ab-578a-9cb6-5bfbb17ac890', id, '95396767-301e-56ba-a7ee-f86c6bd9ec3f', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'interesting' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdf8765-09ab-578a-9cb6-5bfbb17ac890', id, '95396767-301e-56ba-a7ee-f86c6bd9ec3f', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'What is your favorite subject?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdf8765-09ab-578a-9cb6-5bfbb17ac890', id, '95396767-301e-56ba-a7ee-f86c6bd9ec3f', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'My favorite subject is art' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
