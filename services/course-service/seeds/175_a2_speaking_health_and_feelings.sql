-- Track: A2_SPEAKING_HEALTH_AND_FEELINGS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('6d091297-ed66-5918-84e1-e1065a6ae377', 'A2_SPEAKING_HEALTH_AND_FEELINGS', 'Здоровье и самочувствие', 'Развивайте разговорные навыки уровня A2 по теме «Здоровье и самочувствие».', '{"en":"Health and Feelings","ru":"Здоровье и самочувствие"}'::jsonb, '{"en":"Develop A2 speaking skills for health and feelings.","ru":"Развивайте разговорные навыки уровня A2 по теме «Здоровье и самочувствие»."}'::jsonb, 'en', 'A2', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('30275549-70c6-53c2-ba2d-886b387d4aae', NULL, 'Как я себя чувствую', 'Рассказать о самочувствии, используя past simple и present perfect.', '{"en":"How I Have Been Feeling","ru":"Как я себя чувствую"}'::jsonb, '{"en":"Talk about health using past simple and present perfect.","ru":"Рассказать о самочувствии, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae874818-3e78-5d68-900a-bd02d47c1d2c', '30275549-70c6-53c2-ba2d-886b387d4aae', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to catch a cold","right":"простудиться"},{"id":"P2","left":"symptoms","right":"симптомы"},{"id":"P3","left":"to recover","right":"поправиться"},{"id":"P4","left":"prescription","right":"рецепт"},{"id":"P5","left":"to feel dizzy","right":"чувствовать головокружение"},{"id":"P6","left":"appointment with a doctor","right":"приём у врача"},{"id":"P7","left":"twice a year","right":"дважды в год"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a8e0114c-4319-59b1-afae-e2a39f5b9f14', '30275549-70c6-53c2-ba2d-886b387d4aae', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I have had a sore throat since Monday.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I have had a sore throat since Monday."},{"id":"Q_B","is_correct":false,"text":"I have a sore throat yesterday."},{"id":"Q_C","is_correct":false,"text":"I have sore throat since Monday already."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fcce940c-2619-5fd6-bbf1-f3f7e60b8f4a', '30275549-70c6-53c2-ba2d-886b387d4aae', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I caught a cold last week, but I have almost recovered.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я простудился на прошлой неделе, но уже почти выздоровел.","target_language":"en","word_bank":["week,","I","cold","last","tomorrow","caught","recovered.","almost","have","but","catch","a","did","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4612cde3-f669-5cd2-b554-5a3dc53125eb', '30275549-70c6-53c2-ba2d-886b387d4aae', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"gave","instruction":"Выберите подходящее слово.","options":["gave","has give","giving"],"sentence_template":"The doctor ___ me a prescription for the cough.","translation_hint":"Врач выписал мне рецепт от кашля."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7182a63-190e-51ca-b6db-ea51c0178595', '30275549-70c6-53c2-ba2d-886b387d4aae', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["She","has","already","made","an","appointment","with","the","doctor."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["has","already","was","did","an","made","the","She","appointment","with","doctor."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b5b1a66b-90a9-5d0b-8489-b68cee4b7f4c', '30275549-70c6-53c2-ba2d-886b387d4aae', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The symptoms have almost disappeared, but I have stayed at home for the whole week.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1c840bf-af19-575d-915f-0bb2613ff9a0', '30275549-70c6-53c2-ba2d-886b387d4aae', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The symptoms have almost disappeared, but I have stayed at home for the whole week.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Симптомы почти исчезли, но я оставался дома всю неделю."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e4356bba-858a-5d9b-bdb9-74cfea6c58f2', '30275549-70c6-53c2-ba2d-886b387d4aae', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Doctor","text":"What seems to be the problem today?","translation":"Что вас беспокоит сегодня?","type":"dialogue"},{"character":"Patient","text":"I have had a headache and felt dizzy since Tuesday.","translation":"У меня болит голова и кружится с вторника.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Have you taken any medicine so far?"},{"is_correct":false,"text":"Did you has taken it tomorrow?"},{"is_correct":false,"text":"Is the headache visiting you today?"}],"text":"What does the doctor ask?","type":"choice"}],"title":"At the Surgery"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4e04f7a9-c3f5-51f5-a1fa-3f64f3c7ec46', '30275549-70c6-53c2-ba2d-886b387d4aae', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“prescription” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A doctor''s paper that lets you get medicine"},{"id":"D_B","is_correct":false,"text":"A note that frees you from work"},{"id":"D_C","is_correct":false,"text":"A list of exercises from a trainer"}],"word":"prescription"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a2ff8a3d-686c-57cd-b92a-cdcd3f014310', '30275549-70c6-53c2-ba2d-886b387d4aae', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have caught a cold twice this winter.","explanation":"The missing word is “caught”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"caught","id":"LW_A","is_correct":true},{"audio_text":"catch","id":"LW_B","is_correct":false},{"audio_text":"catching","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ a cold twice this winter."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b37ee917-5494-5104-9106-9b013420b952', '30275549-70c6-53c2-ba2d-886b387d4aae', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"recovered","explanation":"The complete sentence is “He has recovered from the flu.”.","hint_prefix":"re","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"He has ___ from the flu."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e909231e-4def-522d-9a51-d31fbd495aec', '30275549-70c6-53c2-ba2d-886b387d4aae', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to catch a cold","id":"V1","text":"to catch a cold"},{"audio_text":"symptoms","id":"V2","text":"symptoms"},{"audio_text":"to recover","id":"V3","text":"to recover"},{"audio_text":"prescription","id":"V4","text":"prescription"},{"audio_text":"to feel dizzy","id":"V5","text":"to feel dizzy"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7228959c-4fc0-522e-bba5-56595229a162', '30275549-70c6-53c2-ba2d-886b387d4aae', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"You sound terrible!"}],"explanation":"“Thanks — I have had this cough for a week, and I am seeing the doctor tomorrow.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Thanks — I have had this cough for a week, and I am seeing the doctor tomorrow."},{"id":"C_B","is_correct":false,"text":"I sound it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The cough is sounding me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6d091297-ed66-5918-84e1-e1065a6ae377', '30275549-70c6-53c2-ba2d-886b387d4aae', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('8052d5c9-335a-5743-aeff-6241fe0d2f99', NULL, 'Здоровые привычки', 'Сравнить подходы к здоровью и рассказать о планах.', '{"en":"Healthy Habits","ru":"Здоровые привычки"}'::jsonb, '{"en":"Compare health approaches and talk about plans.","ru":"Сравнить подходы к здоровью и рассказать о планах."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eed5789a-fb9f-5a93-b58c-9a17cd2162d3', '8052d5c9-335a-5743-aeff-6241fe0d2f99', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"workout","right":"тренировка"},{"id":"P2","left":"more energetic","right":"энергичнее"},{"id":"P3","left":"to join a gym","right":"записаться в спортзал"},{"id":"P4","left":"balanced diet","right":"сбалансированное питание"},{"id":"P5","left":"to cut out","right":"полностью убрать (из рациона)"},{"id":"P6","left":"sleep schedule","right":"режим сна"},{"id":"P7","left":"regularly","right":"регулярно"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('73da3fd5-67a6-54d3-b163-e11774ca5fe2', '8052d5c9-335a-5743-aeff-6241fe0d2f99', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Exercising outdoors is more enjoyable than a gym for me.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Exercising outdoors is more enjoyable than a gym for me."},{"id":"Q_B","is_correct":false,"text":"Outdoors is enjoyabler than the gym."},{"id":"Q_C","is_correct":false,"text":"Outdoors is most enjoyable than gym."}],"question":"Which sentence compares two options correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0059cad6-e624-5ae4-a3a9-36e73f474d52', '8052d5c9-335a-5743-aeff-6241fe0d2f99', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I am going to join a gym and fix my sleep schedule.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я собираюсь записаться в спортзал и наладить режим сна.","target_language":"en","word_bank":["joined","my","I","going","gym","yesterday","join","am","and","fix","sleep","did","to","schedule.","a"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('62b82ba7-e18a-5c3c-83f7-61dc5a8d2db7', '8052d5c9-335a-5743-aeff-6241fe0d2f99', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"more","instruction":"Выберите подходящее слово.","options":["more","most","much"],"sentence_template":"A balanced diet is ___ important than any supplement.","translation_hint":"Сбалансированное питание важнее любых добавок."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e9d63d9-1ade-5a2f-a605-bf740abd09a4', '8052d5c9-335a-5743-aeff-6241fe0d2f99', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["He","is","going","to","work","out","three","times","a","week."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["week.","did","going","He","was","out","three","a","to","times","is","work"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('545af572-d41c-58df-b0e0-903d5103fd07', '8052d5c9-335a-5743-aeff-6241fe0d2f99', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you walk to work instead of driving, you will feel more energetic without a gym.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cad19d73-4092-5bb3-a271-df299bf4f8c1', '8052d5c9-335a-5743-aeff-6241fe0d2f99', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you walk to work instead of driving, you will feel more energetic without a gym.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если ходить на работу пешком вместо машины, будешь энергичнее без спортзала."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('88c6efdb-b970-5192-8f52-b46b1d71f0a0', '8052d5c9-335a-5743-aeff-6241fe0d2f99', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"Have you decided — the gym or the swimming pool?","translation":"Ты решил — спортзал или бассейн?","type":"dialogue"},{"character":"Tom","text":"The pool is more expensive, but swimming is easier on my knees.","translation":"Бассейн дороже, но плавание легче для моих коленей.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I am going to join the pool from Monday."},{"is_correct":false,"text":"I joined it yesterday tomorrow."},{"is_correct":false,"text":"The knees are swimming in the pool."}],"text":"What does Tom decide?","type":"choice"}],"title":"The Fitness Decision"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b5a51ea2-83de-5216-827d-78943bc60fd5', '8052d5c9-335a-5743-aeff-6241fe0d2f99', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“balanced diet” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Eating different healthy foods in the right amounts"},{"id":"D_B","is_correct":false,"text":"Eating only one type of food all week"},{"id":"D_C","is_correct":false,"text":"Skipping meals to lose weight fast"}],"word":"balanced diet"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7fd5de1b-eec8-50bf-b6b7-0884b50ffe46', '8052d5c9-335a-5743-aeff-6241fe0d2f99', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to join a gym this month.","explanation":"The missing word is “join”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"join","id":"LW_A","is_correct":true},{"audio_text":"joined","id":"LW_B","is_correct":false},{"audio_text":"joining","id":"LW_C","is_correct":false}],"sentence_template":"I am going to ___ a gym this month."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('73321849-3c78-5fcc-af5e-f1f36a45c963', '8052d5c9-335a-5743-aeff-6241fe0d2f99', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"stronger","explanation":"The complete sentence is “She feels stronger after the workouts.”.","hint_prefix":"st","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"She feels ___ after the workouts."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('77c35d7d-266c-5ee0-b2c7-417422a3963e', '8052d5c9-335a-5743-aeff-6241fe0d2f99', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"workout","id":"V1","text":"workout"},{"audio_text":"more energetic","id":"V2","text":"more energetic"},{"audio_text":"to join a gym","id":"V3","text":"to join a gym"},{"audio_text":"balanced diet","id":"V4","text":"balanced diet"},{"audio_text":"to cut out","id":"V5","text":"to cut out"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd7ab0d9-a0fe-5ca6-8cd8-41f63e80fc90', '8052d5c9-335a-5743-aeff-6241fe0d2f99', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"I want to start eating better."}],"explanation":"“Start small — if you add one vegetable meal a day, you will not even miss the old food.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Start small — if you add one vegetable meal a day, you will not even miss the old food."},{"id":"C_B","is_correct":false,"text":"I started it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The food is eating me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6d091297-ed66-5918-84e1-e1065a6ae377', '8052d5c9-335a-5743-aeff-6241fe0d2f99', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9be15899-326c-5383-9176-7db47af7d85c', NULL, 'Если заболеешь', 'Объяснить действия при болезни, используя should и первое условное.', '{"en":"If You Fall Ill","ru":"Если заболеешь"}'::jsonb, '{"en":"Explain what to do when ill using should and the first conditional.","ru":"Объяснить действия при болезни, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d18f0e5e-06c7-5869-8fa3-1de13ba5e7f9', '9be15899-326c-5383-9176-7db47af7d85c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to stay in bed","right":"оставаться в постели"},{"id":"P2","left":"fever","right":"жар"},{"id":"P3","left":"to call in sick","right":"сообщить о болезни на работе"},{"id":"P4","left":"medicine","right":"лекарство"},{"id":"P5","left":"rest","right":"отдых"},{"id":"P6","left":"to get worse","right":"ухудшиться"},{"id":"P7","left":"within a week","right":"в течение недели"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9ec9217a-831b-5224-ac89-7ac3a80edc34', '9be15899-326c-5383-9176-7db47af7d85c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should call in sick if you have a fever.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should call in sick if you have a fever."},{"id":"Q_B","is_correct":false,"text":"You should to call yesterday."},{"id":"Q_C","is_correct":false,"text":"You must calling in sick last week."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4ebd3d1e-8b18-5a84-a495-7e61ea90220e', '9be15899-326c-5383-9176-7db47af7d85c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If the fever does not go within three days, you should see a doctor.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если жар не пройдёт за три дня, обратитесь к врачу.","target_language":"en","word_bank":["a","you","the","go","fever","see","days,","should","does","yesterday","within","not","If","three","did","went","doctor."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3b407e3f-a797-513c-91d2-3712033187fe', '9be15899-326c-5383-9176-7db47af7d85c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"take","instruction":"Выберите подходящее слово.","options":["take","will take","took"],"sentence_template":"If you ___ medicine with food, it will not upset your stomach.","translation_hint":"Если принимать лекарство с едой, оно не будет раздражать желудок."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b96a9fd4-b811-52d3-8181-d9069396ebbc', '9be15899-326c-5383-9176-7db47af7d85c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","rest","and","drink","plenty","of","liquids."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["drink","You","went","should","liquids.","and","plenty","of","rest","mustn''t"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2cfeb75b-6fb6-55b6-994c-7266ecfe412f', '9be15899-326c-5383-9176-7db47af7d85c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you go to work with a fever, you will recover more slowly and may infect your colleagues.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1039b17f-8871-5a7c-9c2f-fdbf0fc1207d', '9be15899-326c-5383-9176-7db47af7d85c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you go to work with a fever, you will recover more slowly and may infect your colleagues.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если пойти на работу с жаром, выздоровление пойдёт медленнее, и можно заразить коллег."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0cca7c86-6ec2-55c9-94b4-3cc6d2420fb0', '9be15899-326c-5383-9176-7db47af7d85c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"I feel awful, but the report is due today.","translation":"Мне ужасно плохо, но отчёт нужно сдать сегодня.","type":"dialogue"},{"character":"Tom","text":"If you have a fever, you should call in sick.","translation":"Если у тебя жар, стоит взять больничный.","type":"dialogue"},{"options":[{"is_correct":true,"text":"You are right — if I stay in bed, I will be back by Thursday."},{"is_correct":false,"text":"I will stayed in bed yesterday tomorrow."},{"is_correct":false,"text":"The report is having my fever."}],"text":"What does Anna decide?","type":"choice"}],"title":"The Monday Fever"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('36667d1d-5fff-5d7f-a654-d3ff75f09e1b', '9be15899-326c-5383-9176-7db47af7d85c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to call in sick” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To phone work to say you are ill"},{"id":"D_B","is_correct":false,"text":"To arrive at work later than usual"},{"id":"D_C","is_correct":false,"text":"To cancel a meeting because of a holiday"}],"word":"to call in sick"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac292f09-cead-5a07-914a-07f166d49a01', '9be15899-326c-5383-9176-7db47af7d85c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If the symptoms get worse, call an ambulance.","explanation":"The missing word is “get”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"get","id":"LW_A","is_correct":true},{"audio_text":"will get","id":"LW_B","is_correct":false},{"audio_text":"got","id":"LW_C","is_correct":false}],"sentence_template":"If the symptoms ___ worse, call an ambulance."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8873f024-afde-560f-b596-4a28584224dc', '9be15899-326c-5383-9176-7db47af7d85c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"medicine","explanation":"The complete sentence is “You should take the medicine twice a day.”.","hint_prefix":"me","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should take the ___ twice a day."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8da460f0-c375-585b-83c6-20990f2f17a1', '9be15899-326c-5383-9176-7db47af7d85c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to stay in bed","id":"V1","text":"to stay in bed"},{"audio_text":"fever","id":"V2","text":"fever"},{"audio_text":"to call in sick","id":"V3","text":"to call in sick"},{"audio_text":"medicine","id":"V4","text":"medicine"},{"audio_text":"rest","id":"V5","text":"rest"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8a513ca5-9f61-556a-a4bf-a9289e798c26', '9be15899-326c-5383-9176-7db47af7d85c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"My headache has lasted two days."}],"explanation":"“You should see a doctor — if it is a migraine, they can prescribe something stronger.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"You should see a doctor — if it is a migraine, they can prescribe something stronger."},{"id":"C_B","is_correct":false,"text":"I saw one yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The headache is prescribing me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6d091297-ed66-5918-84e1-e1065a6ae377', '9be15899-326c-5383-9176-7db47af7d85c', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('89134f9e-54ae-5c0d-97de-25e425fb8cfa', 'en', 'to catch a cold', 'простудиться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ee291291-b178-5036-ba75-026bbbaa5ea1', 'en', 'symptoms', 'симптомы', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('33573699-bb9d-5a8b-b944-9e187b65a2be', 'en', 'to recover', 'поправиться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3fcdf5d7-55fb-5927-bb04-f8437b8e62ab', 'en', 'prescription', 'рецепт', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2c443f65-dd26-52b0-b29d-0373744ac562', 'en', 'to feel dizzy', 'чувствовать головокружение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('234dc2d2-e15f-529a-ac47-802c3d380ea8', 'en', 'appointment with a doctor', 'приём у врача', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ee43c0a3-cb7d-5d90-b3ad-839e2d5bb2f6', 'en', 'twice a year', 'дважды в год', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('df80164f-6be7-5980-b58a-2a895bde0264', 'en', 'workout', 'тренировка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5c8bd3c9-3bbe-5033-a76c-637bcb2401e5', 'en', 'more energetic', 'энергичнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d628c79c-7cb7-5cae-8ed5-cda2d4d8e667', 'en', 'to join a gym', 'записаться в спортзал', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('749aa1ea-1d86-5a04-bb73-af6519f05464', 'en', 'balanced diet', 'сбалансированное питание', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6842c3e8-bbc2-5c1d-8347-f0ef029771dc', 'en', 'to cut out', 'полностью убрать (из рациона)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f694d035-8545-504d-9d63-a8bb0bc5714d', 'en', 'sleep schedule', 'режим сна', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b91591cb-a38e-5ed2-bc8e-f05b47a31e0e', 'en', 'regularly', 'регулярно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('393659bc-c7f2-5087-8408-3857eaefdbae', 'en', 'to stay in bed', 'оставаться в постели', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a5cf0238-8feb-5847-976c-67554dc4331d', 'en', 'fever', 'жар', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3df12801-86d2-53e2-89df-13a5f912fc6d', 'en', 'to call in sick', 'сообщить о болезни на работе', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4e5b8943-3fb7-5ea0-9f13-e360fe4544c6', 'en', 'medicine', 'лекарство', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ca79bbd8-257e-5464-b4c5-a24985fced4e', 'en', 'rest', 'отдых', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('37a01ec3-1a1e-591d-9f41-abec43b5e64c', 'en', 'to get worse', 'ухудшиться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0591f315-45f1-5540-a408-7648b6b2f92e', 'en', 'within a week', 'в течение недели', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6d091297-ed66-5918-84e1-e1065a6ae377', id, '30275549-70c6-53c2-ba2d-886b387d4aae', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'to catch a cold' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6d091297-ed66-5918-84e1-e1065a6ae377', id, '30275549-70c6-53c2-ba2d-886b387d4aae', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'symptoms' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6d091297-ed66-5918-84e1-e1065a6ae377', id, '30275549-70c6-53c2-ba2d-886b387d4aae', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to recover' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6d091297-ed66-5918-84e1-e1065a6ae377', id, '30275549-70c6-53c2-ba2d-886b387d4aae', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'prescription' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6d091297-ed66-5918-84e1-e1065a6ae377', id, '30275549-70c6-53c2-ba2d-886b387d4aae', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to feel dizzy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6d091297-ed66-5918-84e1-e1065a6ae377', id, '30275549-70c6-53c2-ba2d-886b387d4aae', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'appointment with a doctor' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6d091297-ed66-5918-84e1-e1065a6ae377', id, '30275549-70c6-53c2-ba2d-886b387d4aae', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'twice a year' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6d091297-ed66-5918-84e1-e1065a6ae377', id, '8052d5c9-335a-5743-aeff-6241fe0d2f99', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'workout' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6d091297-ed66-5918-84e1-e1065a6ae377', id, '8052d5c9-335a-5743-aeff-6241fe0d2f99', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'more energetic' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6d091297-ed66-5918-84e1-e1065a6ae377', id, '8052d5c9-335a-5743-aeff-6241fe0d2f99', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to join a gym' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6d091297-ed66-5918-84e1-e1065a6ae377', id, '8052d5c9-335a-5743-aeff-6241fe0d2f99', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'balanced diet' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6d091297-ed66-5918-84e1-e1065a6ae377', id, '8052d5c9-335a-5743-aeff-6241fe0d2f99', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to cut out' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6d091297-ed66-5918-84e1-e1065a6ae377', id, '8052d5c9-335a-5743-aeff-6241fe0d2f99', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'sleep schedule' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6d091297-ed66-5918-84e1-e1065a6ae377', id, '8052d5c9-335a-5743-aeff-6241fe0d2f99', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'regularly' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6d091297-ed66-5918-84e1-e1065a6ae377', id, '9be15899-326c-5383-9176-7db47af7d85c', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to stay in bed' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6d091297-ed66-5918-84e1-e1065a6ae377', id, '9be15899-326c-5383-9176-7db47af7d85c', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'fever' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6d091297-ed66-5918-84e1-e1065a6ae377', id, '9be15899-326c-5383-9176-7db47af7d85c', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to call in sick' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6d091297-ed66-5918-84e1-e1065a6ae377', id, '9be15899-326c-5383-9176-7db47af7d85c', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'medicine' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6d091297-ed66-5918-84e1-e1065a6ae377', id, '9be15899-326c-5383-9176-7db47af7d85c', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'rest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6d091297-ed66-5918-84e1-e1065a6ae377', id, '9be15899-326c-5383-9176-7db47af7d85c', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to get worse' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6d091297-ed66-5918-84e1-e1065a6ae377', id, '9be15899-326c-5383-9176-7db47af7d85c', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'within a week' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
