-- Track: A2_EXAM_PRESENT_AND_PAST_TENSES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('5e249bad-044f-597f-94a7-551fbc467fbe', 'A2_EXAM_PRESENT_AND_PAST_TENSES', 'Настоящее и прошедшее время', 'Развивайте экзаменационные навыки уровня A2 по теме «Настоящее и прошедшее время».', '{"en":"Present and Past Tenses","ru":"Настоящее и прошедшее время"}'::jsonb, '{"en":"Develop A2 exam skills for present and past tenses.","ru":"Развивайте экзаменационные навыки уровня A2 по теме «Настоящее и прошедшее время»."}'::jsonb, 'en', 'A2', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('4eb8a61e-9aed-598e-a7bc-fe811a1fbe9d', NULL, 'Времена в контексте', 'Тренировать времена в экзаменационных текстах, используя past simple и present perfect.', '{"en":"Tenses in Context","ru":"Времена в контексте"}'::jsonb, '{"en":"Practise tenses in exam texts using past simple and present perfect.","ru":"Тренировать времена в экзаменационных текстах, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2670d3ea-5148-5132-9123-ee5bacbd9e01', '4eb8a61e-9aed-598e-a7bc-fe811a1fbe9d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"past simple","right":"прошедшее простое"},{"id":"P2","left":"present perfect","right":"настоящее совершённое"},{"id":"P3","left":"while / when","right":"пока / когда"},{"id":"P4","left":"ago","right":"тому назад"},{"id":"P5","left":"state verb","right":"глагол состояния"},{"id":"P6","left":"continuous","right":"длительное время"},{"id":"P7","left":"context","right":"контекст"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8cbcf945-8c46-5ab8-923d-9635f1ed3ce4', '4eb8a61e-9aed-598e-a7bc-fe811a1fbe9d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I was reading when she called.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I was reading when she called."},{"id":"Q_B","is_correct":false,"text":"I read when she was calling yesterday."},{"id":"Q_C","is_correct":false,"text":"I was read when she has called."}],"question":"Which sentence uses the past continuous correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f337bd47-fb7d-56a9-9db3-f31f77f85705', '4eb8a61e-9aed-598e-a7bc-fe811a1fbe9d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I was writing the essay when the power went off.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я писал эссе, когда отключился свет.","target_language":"en","word_bank":["the","I","yesterday","off.","essay","writing","went","the","was","was","when","power","did"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d86c2f3-2705-58ac-9a5f-b25db4efcf94', '4eb8a61e-9aed-598e-a7bc-fe811a1fbe9d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"for","instruction":"Выберите подходящее слово.","options":["for","since","ago"],"sentence_template":"They have known each other ___ ten years.","translation_hint":"Они знакомы десять лет."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('048927b7-8665-54d5-8395-1028f2422e1f', '4eb8a61e-9aed-598e-a7bc-fe811a1fbe9d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","were","waiting","for","the","results","the","whole","evening."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["waiting","evening.","was","We","for","the","results","the","whole","did","were"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9be0ed32-c147-53db-bd17-5f2621a533f3', '4eb8a61e-9aed-598e-a7bc-fe811a1fbe9d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The context decides: ''while'' pairs two continuous actions, and ''when'' interrupts them with a short one.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('05f3925f-a5e8-5b7a-91e5-0478cfb6055c', '4eb8a61e-9aed-598e-a7bc-fe811a1fbe9d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The context decides: ''while'' pairs two continuous actions, and ''when'' interrupts them with a short one.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Контекст решает: ''while'' объединяет два длительных действия, а ''when'' прерывает их коротким."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('72370d8a-3499-5ccc-898a-77e59d5d289d', '4eb8a61e-9aed-598e-a7bc-fe811a1fbe9d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"The text begins ''Yesterday I ___ (walk) home when...''","translation":"Текст начинается ''Yesterday I ___ (walk) home when...''","type":"dialogue"},{"character":"Voice 2","text":"Two actions — a long one and a short interrupting one.","translation":"Два действия — длительное и короткое, прерывающее.","type":"dialogue"},{"options":[{"is_correct":true,"text":"was walking — the long background action."},{"is_correct":false,"text":"walked — yesterday asks for past simple only."},{"is_correct":false,"text":"have walked — it is a life experience."}],"text":"What is the answer?","type":"choice"}],"title":"The Story Task"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c096ae72-5218-507f-bac5-fc28c776ad22', '4eb8a61e-9aed-598e-a7bc-fe811a1fbe9d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“state verb” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A verb like know or love, rarely used in continuous"},{"id":"D_B","is_correct":false,"text":"A verb of movement like run or jump"},{"id":"D_C","is_correct":false,"text":"A verb used only in the past tense"}],"word":"state verb"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e815265d-d116-55c0-aa56-d6ee49a42528', '4eb8a61e-9aed-598e-a7bc-fe811a1fbe9d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"She was cooking dinner when I arrived.","explanation":"The missing word is “was cooking”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"was cooking","id":"LW_A","is_correct":true},{"audio_text":"cooked","id":"LW_B","is_correct":false},{"audio_text":"has cooked","id":"LW_C","is_correct":false}],"sentence_template":"She ___ dinner when I arrived."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90580c9f-6f3e-5976-b970-9de6c7aff4fe', '4eb8a61e-9aed-598e-a7bc-fe811a1fbe9d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"ago","explanation":"The complete sentence is “I met him three years ago .”.","hint_prefix":"ag","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I met him three years ___ ."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('342aa110-1c20-5dad-8877-a8000474865e', '4eb8a61e-9aed-598e-a7bc-fe811a1fbe9d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"past simple","id":"V1","text":"past simple"},{"audio_text":"present perfect","id":"V2","text":"present perfect"},{"audio_text":"while / when","id":"V3","text":"while / when"},{"audio_text":"ago","id":"V4","text":"ago"},{"audio_text":"state verb","id":"V5","text":"state verb"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('73955f6e-8758-5f11-b718-dcaa79c93ef6', '4eb8a61e-9aed-598e-a7bc-fe811a1fbe9d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"How do you spot the continuous gap?"}],"explanation":"“Look for ''while'' or a longer action around it — if you see them, the continuous will fit.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Look for ''while'' or a longer action around it — if you see them, the continuous will fit."},{"id":"C_B","is_correct":false,"text":"I saw it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The gap is continuing me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('5e249bad-044f-597f-94a7-551fbc467fbe', '4eb8a61e-9aed-598e-a7bc-fe811a1fbe9d', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f4c70d9e-59c9-5ad5-ab9b-6ca3c168c614', NULL, 'Рассказ о прошлом в заданиях', 'Сравнить употребление времён и спланировать практику.', '{"en":"Telling the Past in Tasks","ru":"Рассказ о прошлом в заданиях"}'::jsonb, '{"en":"Compare tense usage and plan practice.","ru":"Сравнить употребление времён и спланировать практику."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('45687c90-4832-51ee-8f72-315f286e17d0', 'f4c70d9e-59c9-5ad5-ab9b-6ca3c168c614', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"storytelling","right":"рассказывание историй"},{"id":"P2","left":"more natural","right":"естественнее"},{"id":"P3","left":"sequence of events","right":"последовательность событий"},{"id":"P4","left":"background","right":"фон"},{"id":"P5","left":"to link events","right":"связать события"},{"id":"P6","left":"vivid","right":"яркий"},{"id":"P7","left":"then / after that","right":"затем / после этого"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc0911c3-463f-5de9-86c2-0e629b3685a3', 'f4c70d9e-59c9-5ad5-ab9b-6ca3c168c614', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Continuous for background makes a story more natural.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Continuous for background makes a story more natural."},{"id":"Q_B","is_correct":false,"text":"Continuous is naturaler for stories."},{"id":"Q_C","is_correct":false,"text":"The continuous is most natural than simple."}],"question":"Which sentence compares two ways of telling a story correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b053078-0c39-535f-ab52-31870361996b', 'f4c70d9e-59c9-5ad5-ab9b-6ca3c168c614', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"This week I am going to write three picture-based stories.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"На этой неделе я собираюсь написать три истории по картинкам.","target_language":"en","word_bank":["am","I","to","This","picture-based","three","write","going","did","yesterday","stories.","wrote","week"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fbae1eff-9eab-504a-a8de-b81c2d0c1ec1', 'f4c70d9e-59c9-5ad5-ab9b-6ca3c168c614', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"then","instruction":"Выберите подходящее слово.","options":["then","than","when"],"sentence_template":"First he arrived, ___ he opened the letter, and after that everything changed.","translation_hint":"Сначала он пришёл, затем открыл письмо, и после этого всё изменилось."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa4759fe-466b-5002-b5a1-ecfeab8bd20d', 'f4c70d9e-59c9-5ad5-ab9b-6ca3c168c614', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","past","simple","moves","the","events;","the","continuous","paints","the","background."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["the","continuous","simple","The","events;","moves","the","paints","the","did","background.","was","past"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('45acdc63-593e-577a-933f-440eb10a90a7', 'f4c70d9e-59c9-5ad5-ab9b-6ca3c168c614', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you set the background in the continuous first, the short past actions will feel more vivid.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5831cfc6-5ee9-5364-97c6-37203e1797f5', 'f4c70d9e-59c9-5ad5-ab9b-6ca3c168c614', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you set the background in the continuous first, the short past actions will feel more vivid.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если сначала задать фон длительным временем, короткие действия в past simple будут звучать ярче."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d9cc66eb-04af-5412-ac1e-fc978648d011', 'f4c70d9e-59c9-5ad5-ab9b-6ca3c168c614', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"For this picture, which tense for ''the sun shine''?","translation":"Для этой картинки какое время для ''sun shine''?","type":"dialogue"},{"character":"Voice 2","text":"Continuous — it is the background, not an event.","translation":"Длительное — это фон, а не событие.","type":"dialogue"},{"options":[{"is_correct":true,"text":"The sun was shining while they were carrying the boat."},{"is_correct":false,"text":"The sun shone while they carried the boat out."},{"is_correct":false,"text":"The sun has shone since they carry boats."}],"text":"What does Voice 1 write?","type":"choice"}],"title":"The Picture Story"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d01b717f-8723-5f88-b0c7-d2e8562bff00', 'f4c70d9e-59c9-5ad5-ab9b-6ca3c168c614', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“background” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"The longer situation around the main events"},{"id":"D_B","is_correct":false,"text":"The most important event of the story"},{"id":"D_C","is_correct":false,"text":"The final sentence of a story"}],"word":"background"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('77f28a3d-4225-57a2-866a-4d0eaa171d1c', 'f4c70d9e-59c9-5ad5-ab9b-6ca3c168c614', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to link the events with ''after that''.","explanation":"The missing word is “link”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"link","id":"LW_A","is_correct":true},{"audio_text":"linked","id":"LW_B","is_correct":false},{"audio_text":"linking","id":"LW_C","is_correct":false}],"sentence_template":"I am going to ___ the events with ''after that''."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc2e9177-9d07-550a-8add-802c8a97ec9a', 'f4c70d9e-59c9-5ad5-ab9b-6ca3c168c614', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"more natural","explanation":"The complete sentence is “A story with background feels more natural .”.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A story with background feels ___ ."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0c8cec36-42eb-5c6f-8413-e9de82c5cd19', 'f4c70d9e-59c9-5ad5-ab9b-6ca3c168c614', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"storytelling","id":"V1","text":"storytelling"},{"audio_text":"more natural","id":"V2","text":"more natural"},{"audio_text":"sequence of events","id":"V3","text":"sequence of events"},{"audio_text":"background","id":"V4","text":"background"},{"audio_text":"to link events","id":"V5","text":"to link events"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a85e386-c3e9-538d-a2e4-022067fbe024', 'f4c70d9e-59c9-5ad5-ab9b-6ca3c168c614', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"All past simple sounds flat in my story."}],"explanation":"“Add one continuous sentence at the start — if the background is there, the events will pop.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Add one continuous sentence at the start — if the background is there, the events will pop."},{"id":"C_B","is_correct":false,"text":"I added it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The story is simplifying me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('5e249bad-044f-597f-94a7-551fbc467fbe', 'f4c70d9e-59c9-5ad5-ab9b-6ca3c168c614', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('60cf04c6-cc41-5cd2-918d-49a074cd415e', NULL, 'Если время выбрано неверно', 'Разобрать ошибки во временах, используя should и первое условное.', '{"en":"If the Tense Is Chosen Wrong","ru":"Если время выбрано неверно"}'::jsonb, '{"en":"Analyse tense mistakes using should and the first conditional.","ru":"Разобрать ошибки во временах, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eed02cf0-14d6-58d2-aa6f-e8d59d4c0598', '60cf04c6-cc41-5cd2-918d-49a074cd415e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"error log","right":"журнал ошибок"},{"id":"P2","left":"to repeat a mistake","right":"повторить ошибку"},{"id":"P3","left":"pattern","right":"паттерн"},{"id":"P4","left":"to drill","right":"дриллить (прорабатывать)"},{"id":"P5","left":"carefully","right":"внимательно"},{"id":"P6","left":"correction","right":"исправление"},{"id":"P7","left":"rule","right":"правило"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2935c287-36a5-5d31-9624-48d3b0cc0473', '60cf04c6-cc41-5cd2-918d-49a074cd415e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should keep an error log and review it weekly.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should keep an error log and review it weekly."},{"id":"Q_B","is_correct":false,"text":"You should to keep it yesterday."},{"id":"Q_C","is_correct":false,"text":"You must keeping logs last month."}],"question":"Which sentence gives correct advice about mistakes?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c49377eb-2980-50f6-97b6-ac59c715e362', '60cf04c6-cc41-5cd2-918d-49a074cd415e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you keep an error log, you will see the patterns within a week.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если ты ведёшь журнал ошибок, паттерны видны за неделю.","target_language":"en","word_bank":["within","did","an","error","kept","keep","patterns","will","you","If","you","week.","log,","see","a","yesterday","the"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('226ff41e-1925-57c8-9b7c-bab47d3732c4', '60cf04c6-cc41-5cd2-918d-49a074cd415e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"becomes","instruction":"Выберите подходящее слово.","options":["becomes","will become","became"],"sentence_template":"If you drill one rule a day, it ___ yours.","translation_hint":"Если прорабатывать одно правило в день, оно станет твоим."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f5b28a54-b7cc-50be-a87d-730ccdc570d8', '60cf04c6-cc41-5cd2-918d-49a074cd415e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","read","the","correction","aloud."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["the","went","mustn''t","should","aloud.","read","correction","You"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c44de2cc-e2ea-5fc6-9dc7-aa2efc498a8c', '60cf04c6-cc41-5cd2-918d-49a074cd415e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you write the correct version three times, your hand will remember it even under exam stress.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('df2a958b-297a-599a-99e0-0b067cd1a3ea', '60cf04c6-cc41-5cd2-918d-49a074cd415e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you write the correct version three times, your hand will remember it even under exam stress.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если написать правильный вариант три раза, рука запомнит его даже в экзаменационном стрессе."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9f06bd94-ea5e-53ab-a068-6295bb5ed9e4', '60cf04c6-cc41-5cd2-918d-49a074cd415e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"I have made the same tense mistake in every mock this month.","translation":"Я допускал одну и ту же ошибку во времени в каждом пробнике за месяц.","type":"dialogue"},{"character":"Voice 2","text":"Every single one? That is a pattern, not bad luck.","translation":"В каждом? Это паттерн, а не невезение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"You should drill that one rule until it is automatic."},{"is_correct":false,"text":"You must drilled it yesterday already."},{"is_correct":false,"text":"The mistake is mocking your month."}],"text":"What does Voice 2 advise?","type":"choice"}],"title":"The Same Mistake"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('42ca431c-c5c8-5816-ab70-0938ffcb7edc', '60cf04c6-cc41-5cd2-918d-49a074cd415e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“error log” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A notebook where you collect your own mistakes"},{"id":"D_B","is_correct":false,"text":"A list of rules from the textbook"},{"id":"D_C","is_correct":false,"text":"A diary about your exam feelings"}],"word":"error log"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e817dd91-63df-5956-b4d8-c9e4ec4df296', '60cf04c6-cc41-5cd2-918d-49a074cd415e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you repeat the mistake again, log it.","explanation":"The missing word is “repeat”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"repeat","id":"LW_A","is_correct":true},{"audio_text":"will repeat","id":"LW_B","is_correct":false},{"audio_text":"repeated","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ the mistake again, log it."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41df1644-a208-52de-b340-2b312292e4b2', '60cf04c6-cc41-5cd2-918d-49a074cd415e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"error","explanation":"The complete sentence is “Read your error log before the exam.”.","hint_prefix":"er","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Read your ___ log before the exam."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b9a634bc-c039-5b75-bdb2-5adff08ffc09', '60cf04c6-cc41-5cd2-918d-49a074cd415e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"error log","id":"V1","text":"error log"},{"audio_text":"to repeat a mistake","id":"V2","text":"to repeat a mistake"},{"audio_text":"pattern","id":"V3","text":"pattern"},{"audio_text":"to drill","id":"V4","text":"to drill"},{"audio_text":"carefully","id":"V5","text":"carefully"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d59f8380-247b-5417-a04f-69ef5d47175a', '60cf04c6-cc41-5cd2-918d-49a074cd415e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"I always confuse these two tenses."}],"explanation":"“Drill five sentences daily — if you do it for a week, the choice will become automatic.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Drill five sentences daily — if you do it for a week, the choice will become automatic."},{"id":"C_B","is_correct":false,"text":"I drilled them yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The tenses are confusing my week."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('5e249bad-044f-597f-94a7-551fbc467fbe', '60cf04c6-cc41-5cd2-918d-49a074cd415e', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bd5ea281-9c59-5c6a-8efd-df402cc20a35', 'en', 'past simple', 'прошедшее простое', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('79a2f2f2-bb3d-5be3-a399-e2d2606a97c3', 'en', 'present perfect', 'настоящее совершённое', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('32193605-09cc-5f3d-8448-63b2d7a68bca', 'en', 'while / when', 'пока / когда', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6c7d3e66-948e-5160-a4f4-0b2a93d47bab', 'en', 'ago', 'тому назад', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0f4d689d-b1b0-5737-9005-583c3228bc15', 'en', 'state verb', 'глагол состояния', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a7c5ac35-b941-5f25-8da1-bc15bdefe343', 'en', 'continuous', 'длительное время', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f8b20701-60d3-544b-9aed-6456f497de49', 'en', 'context', 'контекст', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2d427d74-21f1-5613-bd84-239825f2c91e', 'en', 'storytelling', 'рассказывание историй', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a4dec117-2670-5314-b7fe-f85b62f78979', 'en', 'more natural', 'естественнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('92fb42b3-5ef8-5c11-a4da-97f956cccea0', 'en', 'sequence of events', 'последовательность событий', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8ea3818e-551c-52c5-89de-dea467f1303c', 'en', 'background', 'фон', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1363a48b-2c57-52a1-861e-77410cef1d70', 'en', 'to link events', 'связать события', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('75ed6026-2509-513a-8f48-b15853cd2be8', 'en', 'vivid', 'яркий', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('79bfe5fe-bf6e-547a-9ea0-02951fe629ad', 'en', 'then / after that', 'затем / после этого', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1a0bfd8c-a84e-5433-a072-9c69aec220f3', 'en', 'error log', 'журнал ошибок', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2fdfab14-789e-5a85-9d7c-ef11f5f23139', 'en', 'to repeat a mistake', 'повторить ошибку', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d05cc0ab-ab5a-5bb3-8ab9-3efd613dbc3c', 'en', 'pattern', 'паттерн', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5d8b4485-088a-547b-8d24-56ca497eb093', 'en', 'to drill', 'дриллить (прорабатывать)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('99f682c0-9bab-5599-a9d4-04f2062d533c', 'en', 'carefully', 'внимательно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4418c559-a9fd-53b7-b6b2-b0815421d38e', 'en', 'correction', 'исправление', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9c153aca-3c1f-55df-881f-51e8d99f4a2a', 'en', 'rule', 'правило', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5e249bad-044f-597f-94a7-551fbc467fbe', id, '4eb8a61e-9aed-598e-a7bc-fe811a1fbe9d', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'past simple' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5e249bad-044f-597f-94a7-551fbc467fbe', id, '4eb8a61e-9aed-598e-a7bc-fe811a1fbe9d', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'present perfect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5e249bad-044f-597f-94a7-551fbc467fbe', id, '4eb8a61e-9aed-598e-a7bc-fe811a1fbe9d', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'while / when' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5e249bad-044f-597f-94a7-551fbc467fbe', id, '4eb8a61e-9aed-598e-a7bc-fe811a1fbe9d', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'ago' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5e249bad-044f-597f-94a7-551fbc467fbe', id, '4eb8a61e-9aed-598e-a7bc-fe811a1fbe9d', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'state verb' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5e249bad-044f-597f-94a7-551fbc467fbe', id, '4eb8a61e-9aed-598e-a7bc-fe811a1fbe9d', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'continuous' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5e249bad-044f-597f-94a7-551fbc467fbe', id, '4eb8a61e-9aed-598e-a7bc-fe811a1fbe9d', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'context' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5e249bad-044f-597f-94a7-551fbc467fbe', id, 'f4c70d9e-59c9-5ad5-ab9b-6ca3c168c614', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'storytelling' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5e249bad-044f-597f-94a7-551fbc467fbe', id, 'f4c70d9e-59c9-5ad5-ab9b-6ca3c168c614', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'more natural' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5e249bad-044f-597f-94a7-551fbc467fbe', id, 'f4c70d9e-59c9-5ad5-ab9b-6ca3c168c614', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'sequence of events' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5e249bad-044f-597f-94a7-551fbc467fbe', id, 'f4c70d9e-59c9-5ad5-ab9b-6ca3c168c614', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'background' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5e249bad-044f-597f-94a7-551fbc467fbe', id, 'f4c70d9e-59c9-5ad5-ab9b-6ca3c168c614', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to link events' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5e249bad-044f-597f-94a7-551fbc467fbe', id, 'f4c70d9e-59c9-5ad5-ab9b-6ca3c168c614', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'vivid' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5e249bad-044f-597f-94a7-551fbc467fbe', id, 'f4c70d9e-59c9-5ad5-ab9b-6ca3c168c614', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'then / after that' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5e249bad-044f-597f-94a7-551fbc467fbe', id, '60cf04c6-cc41-5cd2-918d-49a074cd415e', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'error log' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5e249bad-044f-597f-94a7-551fbc467fbe', id, '60cf04c6-cc41-5cd2-918d-49a074cd415e', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to repeat a mistake' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5e249bad-044f-597f-94a7-551fbc467fbe', id, '60cf04c6-cc41-5cd2-918d-49a074cd415e', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'pattern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5e249bad-044f-597f-94a7-551fbc467fbe', id, '60cf04c6-cc41-5cd2-918d-49a074cd415e', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to drill' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5e249bad-044f-597f-94a7-551fbc467fbe', id, '60cf04c6-cc41-5cd2-918d-49a074cd415e', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'carefully' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5e249bad-044f-597f-94a7-551fbc467fbe', id, '60cf04c6-cc41-5cd2-918d-49a074cd415e', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'correction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5e249bad-044f-597f-94a7-551fbc467fbe', id, '60cf04c6-cc41-5cd2-918d-49a074cd415e', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'rule' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
