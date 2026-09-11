-- Track: A2_WORK_PROCEDURES_AND_SAFETY. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('71979bb8-aedd-55bb-bec8-0b0787a658cd', 'A2_WORK_PROCEDURES_AND_SAFETY', 'Рабочие процедуры и безопасность', 'Развивайте практический английский уровня A2 для работы по теме «Рабочие процедуры и безопасность».', '{"en":"Procedures and Safety","ru":"Рабочие процедуры и безопасность"}'::jsonb, '{"en":"Develop practical A2 workplace English for procedures and safety.","ru":"Развивайте практический английский уровня A2 для работы по теме «Рабочие процедуры и безопасность»."}'::jsonb, 'en', 'A2', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0514d77e-7ba0-5363-89e1-af97e5411a90', NULL, 'Инцидент на складе', 'Сообщить о происшествии, используя past simple и present perfect.', '{"en":"The Warehouse Incident","ru":"Инцидент на складе"}'::jsonb, '{"en":"Report an incident using past simple and present perfect.","ru":"Сообщить о происшествии, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1c5535df-245a-5ac3-9c4e-69380dd7b8fa', '0514d77e-7ba0-5363-89e1-af97e5411a90', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"incident","right":"происшествие"},{"id":"P2","left":"to injure","right":"травмировать"},{"id":"P3","left":"first aid kit","right":"аптечка"},{"id":"P4","left":"to fill in a form","right":"заполнить форму"},{"id":"P5","left":"safety officer","right":"инспектор по охране труда"},{"id":"P6","left":"immediately","right":"немедленно"},{"id":"P7","left":"floor","right":"пол / этаж"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3462704c-625f-565e-a658-12c5b5e3b7ca', '0514d77e-7ba0-5363-89e1-af97e5411a90', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The safety officer has already written the report.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The safety officer has already written the report."},{"id":"Q_B","is_correct":false,"text":"The safety officer has written the report yesterday."},{"id":"Q_C","is_correct":false,"text":"The safety officer write the report already."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1b42a4d3-08c4-5131-84e1-245716a22f74', '0514d77e-7ba0-5363-89e1-af97e5411a90', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A small incident happened at the warehouse yesterday, but nobody has been injured.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Вчера на складе произошёл небольшой инцидент, но никто не пострадал.","target_language":"en","word_bank":["warehouse","yesterday,","happened","been","happens","tomorrow","nobody","but","injured.","small","the","A","did","has","at","incident"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2449a1ca-0794-54b0-9084-da419a339a64', '0514d77e-7ba0-5363-89e1-af97e5411a90', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"hurt","instruction":"Выберите подходящее слово.","options":["hurt","has hurt yet","hurting"],"sentence_template":"He ___ his hand while moving the boxes last Friday.","translation_hint":"Он поранил руку, когда переносил коробки в прошлую пятницу."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6a279dd5-4303-5312-92af-1844c8f9c151', '0514d77e-7ba0-5363-89e1-af97e5411a90', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Someone","has","already","called","the","safety","officer","about","the","incident."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["officer","already","safety","the","did","incident.","was","has","called","about","the","Someone"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('55fc533f-bfda-5c06-be19-19bf853feeed', '0514d77e-7ba0-5363-89e1-af97e5411a90', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The floor was wet this morning, and one colleague slipped near the entrance.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7fa5ed8e-dcdb-5fdb-8952-6645d4d99b65', '0514d77e-7ba0-5363-89e1-af97e5411a90', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The floor was wet this morning, and one colleague slipped near the entrance.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Пол был мокрым сегодня утром, и один коллега поскользнулся у входа."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c031695d-43df-50b4-8fdc-1e55c973f71c', '0514d77e-7ba0-5363-89e1-af97e5411a90', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"What happened to your arm?","translation":"Что случилось с твоей рукой?","type":"dialogue"},{"character":"Tom","text":"I slipped on the wet floor near the loading dock this morning.","translation":"Я поскользнулся на мокром полу у зоны погрузки сегодня утром.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Have you reported it to the safety officer?"},{"is_correct":false,"text":"Did you reported it yesterday already?"},{"is_correct":false,"text":"Is your arm working in the office?"}],"text":"What should Anna ask?","type":"choice"}],"title":"Reporting an Incident"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a58c987-5f22-5f97-a925-deb04ca90167', '0514d77e-7ba0-5363-89e1-af97e5411a90', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“incident” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Something unusual and often dangerous that happens"},{"id":"D_B","is_correct":false,"text":"A regular meeting that happens every week"},{"id":"D_C","is_correct":false,"text":"A long holiday from work"}],"word":"incident"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('719e2ece-f41f-5a73-bbe7-4d5c192b3483', '0514d77e-7ba0-5363-89e1-af97e5411a90', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We have filled in the incident report form.","explanation":"The missing word is “filled”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"filled","id":"LW_A","is_correct":true},{"audio_text":"fill","id":"LW_B","is_correct":false},{"audio_text":"filling","id":"LW_C","is_correct":false}],"sentence_template":"We have ___ in the incident report form."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3168731a-112e-53a2-ac5d-3537ba40f726', '0514d77e-7ba0-5363-89e1-af97e5411a90', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"kit","explanation":"The complete sentence is “Nobody has used the first aid kit this year.”.","hint_prefix":"ki","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Nobody has used the first aid ___ this year."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a48dc52c-949e-591e-b485-c68efaafe770', '0514d77e-7ba0-5363-89e1-af97e5411a90', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"incident","id":"V1","text":"incident"},{"audio_text":"to injure","id":"V2","text":"to injure"},{"audio_text":"first aid kit","id":"V3","text":"first aid kit"},{"audio_text":"to fill in a form","id":"V4","text":"to fill in a form"},{"audio_text":"safety officer","id":"V5","text":"safety officer"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('26833ad5-2f7f-5daa-8a81-044d9608771e', '0514d77e-7ba0-5363-89e1-af97e5411a90', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Did you fill in the incident form?"}],"explanation":"“Yes, I filled it in and sent it to the safety officer.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes, I filled it in and sent it to the safety officer."},{"id":"C_B","is_correct":false,"text":"Yes, I have fill it yesterday."},{"id":"C_C","is_correct":false,"text":"The form is filling itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('71979bb8-aedd-55bb-bec8-0b0787a658cd', '0514d77e-7ba0-5363-89e1-af97e5411a90', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7f153f77-3d23-578b-b96a-e4805dfaf403', NULL, 'Обучение по безопасности', 'Рассказать о будущих тренировках по безопасности и сравнить риски.', '{"en":"Safety Training","ru":"Обучение по безопасности"}'::jsonb, '{"en":"Talk about future safety training and compare risks.","ru":"Рассказать о будущих тренировках по безопасности и сравнить риски."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12e6b90e-6d05-5384-987d-ea48df919ccb', '7f153f77-3d23-578b-b96a-e4805dfaf403', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"training session","right":"тренировочное занятие"},{"id":"P2","left":"fire drill","right":"учебная эвакуация"},{"id":"P3","left":"to attend","right":"посетить"},{"id":"P4","left":"protective equipment","right":"средства защиты"},{"id":"P5","left":"exit","right":"выход"},{"id":"P6","left":"more dangerous","right":"опаснее"},{"id":"P7","left":"to practise","right":"практиковать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16826f6c-852f-555e-90af-79de07d3531e', '7f153f77-3d23-578b-b96a-e4805dfaf403', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The fire drill is going to take place on Thursday.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The fire drill is going to take place on Thursday."},{"id":"Q_B","is_correct":false,"text":"The fire drill took place on Thursday last week."},{"id":"Q_C","is_correct":false,"text":"The fire drill has take place yesterday."}],"question":"Which sentence is about the future?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('057111e3-a9ea-5e0b-9c41-0aa0d846644a', '7f153f77-3d23-578b-b96a-e4805dfaf403', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The day after tomorrow we are going to practise the fire drill — it will go faster than last time.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Послезавтра мы будем практиковать эвакуацию — она пройдёт быстрее, чем в прошлый раз.","target_language":"en","word_bank":["did","practise","tomorrow","the","to","last","it","fire","faster","are","after","will","going","than","go","drill","yesterday","—","time.","day","we","went","The"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e9a197f-9bb4-58ef-a9c9-9d950efc9ae6', '7f153f77-3d23-578b-b96a-e4805dfaf403', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"more","instruction":"Выберите подходящее слово.","options":["more","most","much"],"sentence_template":"Working at heights is ___ dangerous than working in the office.","translation_hint":"Работа на высоте опаснее работы в офисе."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a81f3a53-98dd-5f7b-92fa-b1c3807d5cad', '7f153f77-3d23-578b-b96a-e4805dfaf403', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["All","employees","are","going","to","attend","the","safety","training","next","month."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["All","attend","was","going","training","next","the","did","month.","are","employees","safety","to"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('15090c06-c926-5b16-a77c-5e37097cfba5', '7f153f77-3d23-578b-b96a-e4805dfaf403', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If the alarm sounds, you should leave the building through the nearest exit immediately.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3dee696-a9fb-5d16-a9a1-9c19941be232', '7f153f77-3d23-578b-b96a-e4805dfaf403', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If the alarm sounds, you should leave the building through the nearest exit immediately.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если сработает сигнализация, следует немедленно покинуть здание через ближайший выход."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('13d253a1-aa8c-53c7-8a23-3aa8be6ace67', '7f153f77-3d23-578b-b96a-e4805dfaf403', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Manager","text":"Our fire drill is going to start at ten o''clock.","translation":"Наша учебная эвакуация начнётся в десять.","type":"dialogue"},{"character":"Anna","text":"Is it going to be like the one last year?","translation":"Она будет такой же, как в прошлом году?","type":"dialogue"},{"options":[{"is_correct":true,"text":"No, this time the route is going to be shorter."},{"is_correct":false,"text":"Yes, it is going to yesterday again."},{"is_correct":false,"text":"The drill is attending the employees."}],"text":"What does the manager say?","type":"choice"}],"title":"The Fire Drill"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d46fa047-5bc3-54ec-9553-baa9ca76d30b', '7f153f77-3d23-578b-b96a-e4805dfaf403', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“fire drill” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A practice of leaving a building safely in case of fire"},{"id":"D_B","is_correct":false,"text":"A tool for putting out small fires"},{"id":"D_C","is_correct":false,"text":"A meeting about safety rules once a year"}],"word":"fire drill"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d393a46e-0f38-5f05-a584-dbc7f045935f', '7f153f77-3d23-578b-b96a-e4805dfaf403', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The training will last two hours.","explanation":"The missing word is “last”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"last","id":"LW_A","is_correct":true},{"audio_text":"lasted","id":"LW_B","is_correct":false},{"audio_text":"lasting","id":"LW_C","is_correct":false}],"sentence_template":"The training will ___ two hours."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('337081f8-5beb-541d-ba65-1a99e8e75067', '7f153f77-3d23-578b-b96a-e4805dfaf403', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"easier","explanation":"The complete sentence is “The new exit is easier to find than the old one.”.","hint_prefix":"ea","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The new exit is ___ to find than the old one."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc8cb326-dcae-5621-adff-0fce433c4026', '7f153f77-3d23-578b-b96a-e4805dfaf403', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"training session","id":"V1","text":"training session"},{"audio_text":"fire drill","id":"V2","text":"fire drill"},{"audio_text":"to attend","id":"V3","text":"to attend"},{"audio_text":"protective equipment","id":"V4","text":"protective equipment"},{"audio_text":"exit","id":"V5","text":"exit"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dbc18f93-ac82-539f-9129-dcbe755513fd', '7f153f77-3d23-578b-b96a-e4805dfaf403', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Do I have to attend the safety training?"}],"explanation":"“Yes, everyone must attend — if you miss it, you will repeat the course online.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes, everyone must attend — if you miss it, you will repeat the course online."},{"id":"C_B","is_correct":false,"text":"No, I attended it tomorrow already."},{"id":"C_C","is_correct":false,"text":"The training is musting everyone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('71979bb8-aedd-55bb-bec8-0b0787a658cd', '7f153f77-3d23-578b-b96a-e4805dfaf403', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7ec913f1-3bd3-5d0c-ab6b-c26a206b4da4', NULL, 'Правила, которые нельзя нарушать', 'Объяснить строгие правила безопасности с must и первым условным.', '{"en":"Rules You Must Not Break","ru":"Правила, которые нельзя нарушать"}'::jsonb, '{"en":"Explain strict safety rules with must and the first conditional.","ru":"Объяснить строгие правила безопасности с must и первым условным."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('79f22db6-4548-54db-9452-1c749a598c82', '7ec913f1-3bd3-5d0c-ab6b-c26a206b4da4', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to require","right":"требовать"},{"id":"P2","left":"without permission","right":"без разрешения"},{"id":"P3","left":"to lock","right":"закрыть на замок"},{"id":"P4","left":"warning sign","right":"предупреждающий знак"},{"id":"P5","left":"to ignore","right":"игнорировать"},{"id":"P6","left":"strict","right":"строгий"},{"id":"P7","left":"in case of","right":"в случае"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78154eb7-4f39-5551-9364-59ed3caf106e', '7ec913f1-3bd3-5d0c-ab6b-c26a206b4da4', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You must not open this door without permission.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You must not open this door without permission."},{"id":"Q_B","is_correct":false,"text":"You should not opening this door yesterday."},{"id":"Q_C","is_correct":false,"text":"You don''t must open this door last week."}],"question":"Which sentence expresses a strict rule?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1a96fbe4-b94c-53f6-8b62-3c952ef67f00', '7ec913f1-3bd3-5d0c-ab6b-c26a206b4da4', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you ignore the warning signs, you will break the safety rules.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если ты будешь игнорировать предупреждающие знаки, ты нарушишь правила безопасности.","target_language":"en","word_bank":["will","did","signs,","rules.","ignore","warning","the","safety","yesterday","you","If","the","break","ignored","you"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('35e7428c-e4f4-5c09-9dc8-bf75abaa859f', '7ec913f1-3bd3-5d0c-ab6b-c26a206b4da4', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"mustn''t","instruction":"Выберите подходящее слово.","options":["mustn''t","should to","musts"],"sentence_template":"In case of fire, you ___ use the lift.","translation_hint":"В случае пожара нельзя пользоваться лифтом."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b312cc3-5f6c-5cea-b67c-17f21502810f', '7ec913f1-3bd3-5d0c-ab6b-c26a206b4da4', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Every","employee","must","wear","protective","equipment","in","this","area."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["may","protective","area.","employee","this","equipment","went","Every","wear","must","in"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a4b6fee8-6f17-5559-9f57-25b4448d0ae1', '7ec913f1-3bd3-5d0c-ab6b-c26a206b4da4', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you see a warning sign, you must stop and read it carefully before you continue.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d9ca4c0d-b1d8-5429-8677-8c122d0730a6', '7ec913f1-3bd3-5d0c-ab6b-c26a206b4da4', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you see a warning sign, you must stop and read it carefully before you continue.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если ты видишь предупреждающий знак, нужно остановиться и внимательно прочитать его, прежде чем идти дальше."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('59690385-faa4-5463-9af8-71237c8a3adb', '7ec913f1-3bd3-5d0c-ab6b-c26a206b4da4', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Tom","text":"There is a new warning sign near the machine.","translation":"У станка появился новый знак.","type":"dialogue"},{"character":"Anna","text":"What does it say?","translation":"Что на нём написано?","type":"dialogue"},{"options":[{"is_correct":true,"text":"You must not touch the machine without permission."},{"is_correct":false,"text":"You must to not touch the machine yesterday."},{"is_correct":false,"text":"The sign is touching the employees."}],"text":"How does Tom explain the rule?","type":"choice"}],"title":"The Warning Sign"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('92c1e156-4422-5fdc-a74d-7d4691f59026', '7ec913f1-3bd3-5d0c-ab6b-c26a206b4da4', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to ignore” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To pretend you did not see or hear something"},{"id":"D_B","is_correct":false,"text":"To look at something very carefully"},{"id":"D_C","is_correct":false,"text":"To ask questions about a new rule"}],"word":"to ignore"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('410ac352-8fd9-5009-b131-33a71764679a', '7ec913f1-3bd3-5d0c-ab6b-c26a206b4da4', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If the machine makes a strange noise, stop it at once.","explanation":"The missing word is “makes”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"makes","id":"LW_A","is_correct":true},{"audio_text":"will make","id":"LW_B","is_correct":false},{"audio_text":"made","id":"LW_C","is_correct":false}],"sentence_template":"If the machine ___ a strange noise, stop it at once."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a46958b-2a3d-543f-9b09-67aa30ccf35a', '7ec913f1-3bd3-5d0c-ab6b-c26a206b4da4', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"lock","explanation":"The complete sentence is “You must lock the door at the end of the day.”.","hint_prefix":"lo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You must ___ the door at the end of the day."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('50a2e8b2-e5a3-58e2-aff2-0d3b0f5ad072', '7ec913f1-3bd3-5d0c-ab6b-c26a206b4da4', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to require","id":"V1","text":"to require"},{"audio_text":"without permission","id":"V2","text":"without permission"},{"audio_text":"to lock","id":"V3","text":"to lock"},{"audio_text":"warning sign","id":"V4","text":"warning sign"},{"audio_text":"to ignore","id":"V5","text":"to ignore"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('668fac51-0699-5a73-ae18-62d551405790', '7ec913f1-3bd3-5d0c-ab6b-c26a206b4da4', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Can I repair this machine myself?"}],"explanation":"“No, you mustn''t — only certified technicians can open it.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"No, you mustn''t — only certified technicians can open it."},{"id":"C_B","is_correct":false,"text":"Yes, I repaired it myself yesterday always."},{"id":"C_C","is_correct":false,"text":"The machine must to repair you."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('71979bb8-aedd-55bb-bec8-0b0787a658cd', '7ec913f1-3bd3-5d0c-ab6b-c26a206b4da4', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ee649044-88d0-5ac3-bf84-2cacf4f0e111', 'en', 'incident', 'происшествие', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('52ac32cf-bab2-5c2c-a7a3-24dce41371b5', 'en', 'to injure', 'травмировать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3d19242f-56df-5a88-b6fe-9d22aadf071f', 'en', 'first aid kit', 'аптечка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ea19099-bd97-5cfe-94c8-94110980dbde', 'en', 'to fill in a form', 'заполнить форму', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8a30d732-bb9f-58d7-b08b-d8a11d285dc8', 'en', 'safety officer', 'инспектор по охране труда', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0fba5a64-d89d-5856-83ab-bef60d051ba3', 'en', 'immediately', 'немедленно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('659adfd8-d246-5c42-83db-ba8a47478b33', 'en', 'floor', 'пол / этаж', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0363ee4b-a216-5d47-83af-ac50b41490ce', 'en', 'training session', 'тренировочное занятие', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3ffb9847-d8e3-5632-ba07-5f7408fbc82d', 'en', 'fire drill', 'учебная эвакуация', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67e120ed-9dfd-5839-b251-84b9b7429b74', 'en', 'to attend', 'посетить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aff8f020-a946-5eea-bb95-969aa2ff0ae5', 'en', 'protective equipment', 'средства защиты', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aea1cb14-a27e-529b-bd72-79ba057f1e4b', 'en', 'exit', 'выход', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c9bb3d4d-3af6-571f-a3e3-ea2f6c969abb', 'en', 'more dangerous', 'опаснее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8762ee39-c6b2-5ce0-913b-4353891eb2a6', 'en', 'to practise', 'практиковать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b9238b18-e724-5728-8b87-3e9e140ebc88', 'en', 'to require', 'требовать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('64e8a00a-f28b-51fd-8ca8-f61af507e070', 'en', 'without permission', 'без разрешения', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d7c8d1a8-8039-5162-8b5d-c4b7c7decc95', 'en', 'to lock', 'закрыть на замок', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c553d783-238d-59ac-8aa1-dd7fce513537', 'en', 'warning sign', 'предупреждающий знак', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ad0af742-f6d9-5869-8bf3-5b772b35c2a2', 'en', 'to ignore', 'игнорировать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('272ddeb8-afef-55d5-9ef7-7f5f1be835ea', 'en', 'strict', 'строгий', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b6966faa-0052-51e4-96d2-0a412ed1c47f', 'en', 'in case of', 'в случае', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '71979bb8-aedd-55bb-bec8-0b0787a658cd', id, '0514d77e-7ba0-5363-89e1-af97e5411a90', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'incident' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '71979bb8-aedd-55bb-bec8-0b0787a658cd', id, '0514d77e-7ba0-5363-89e1-af97e5411a90', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to injure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '71979bb8-aedd-55bb-bec8-0b0787a658cd', id, '0514d77e-7ba0-5363-89e1-af97e5411a90', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'first aid kit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '71979bb8-aedd-55bb-bec8-0b0787a658cd', id, '0514d77e-7ba0-5363-89e1-af97e5411a90', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'to fill in a form' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '71979bb8-aedd-55bb-bec8-0b0787a658cd', id, '0514d77e-7ba0-5363-89e1-af97e5411a90', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'safety officer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '71979bb8-aedd-55bb-bec8-0b0787a658cd', id, '0514d77e-7ba0-5363-89e1-af97e5411a90', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'immediately' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '71979bb8-aedd-55bb-bec8-0b0787a658cd', id, '0514d77e-7ba0-5363-89e1-af97e5411a90', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'floor' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '71979bb8-aedd-55bb-bec8-0b0787a658cd', id, '7f153f77-3d23-578b-b96a-e4805dfaf403', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'training session' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '71979bb8-aedd-55bb-bec8-0b0787a658cd', id, '7f153f77-3d23-578b-b96a-e4805dfaf403', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'fire drill' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '71979bb8-aedd-55bb-bec8-0b0787a658cd', id, '7f153f77-3d23-578b-b96a-e4805dfaf403', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to attend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '71979bb8-aedd-55bb-bec8-0b0787a658cd', id, '7f153f77-3d23-578b-b96a-e4805dfaf403', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'protective equipment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '71979bb8-aedd-55bb-bec8-0b0787a658cd', id, '7f153f77-3d23-578b-b96a-e4805dfaf403', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'exit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '71979bb8-aedd-55bb-bec8-0b0787a658cd', id, '7f153f77-3d23-578b-b96a-e4805dfaf403', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'more dangerous' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '71979bb8-aedd-55bb-bec8-0b0787a658cd', id, '7f153f77-3d23-578b-b96a-e4805dfaf403', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to practise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '71979bb8-aedd-55bb-bec8-0b0787a658cd', id, '7ec913f1-3bd3-5d0c-ab6b-c26a206b4da4', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to require' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '71979bb8-aedd-55bb-bec8-0b0787a658cd', id, '7ec913f1-3bd3-5d0c-ab6b-c26a206b4da4', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'without permission' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '71979bb8-aedd-55bb-bec8-0b0787a658cd', id, '7ec913f1-3bd3-5d0c-ab6b-c26a206b4da4', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to lock' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '71979bb8-aedd-55bb-bec8-0b0787a658cd', id, '7ec913f1-3bd3-5d0c-ab6b-c26a206b4da4', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'warning sign' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '71979bb8-aedd-55bb-bec8-0b0787a658cd', id, '7ec913f1-3bd3-5d0c-ab6b-c26a206b4da4', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to ignore' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '71979bb8-aedd-55bb-bec8-0b0787a658cd', id, '7ec913f1-3bd3-5d0c-ab6b-c26a206b4da4', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'strict' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '71979bb8-aedd-55bb-bec8-0b0787a658cd', id, '7ec913f1-3bd3-5d0c-ab6b-c26a206b4da4', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'in case of' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
