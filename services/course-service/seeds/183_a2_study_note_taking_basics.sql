-- Track: A2_STUDY_NOTE_TAKING_BASICS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('1c4a06a4-c7a0-5689-8365-c346f9abe788', 'A2_STUDY_NOTE_TAKING_BASICS', 'Основы ведения записей', 'Развивайте учебные навыки уровня A2 по теме «Основы ведения записей».', '{"en":"Note-Taking Basics","ru":"Основы ведения записей"}'::jsonb, '{"en":"Develop A2 study skills for note-taking basics.","ru":"Развивайте учебные навыки уровня A2 по теме «Основы ведения записей»."}'::jsonb, 'en', 'A2', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e4b2ca38-51df-52fd-bb70-c8ef62561bd8', NULL, 'Мои записи на лекциях', 'Рассказать о конспектах, используя past simple и present perfect.', '{"en":"My Lecture Notes","ru":"Мои записи на лекциях"}'::jsonb, '{"en":"Talk about notes using past simple and present perfect.","ru":"Рассказать о конспектах, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c04caed1-fb57-5d27-ab43-d99822a50f94', 'e4b2ca38-51df-52fd-bb70-c8ef62561bd8', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to take notes","right":"делать записи"},{"id":"P2","left":"abbreviation","right":"сокращение"},{"id":"P3","left":"margin","right":"поля (страницы)"},{"id":"P4","left":"to highlight","right":"выделить маркером"},{"id":"P5","left":"to review notes","right":"повторить записи"},{"id":"P6","left":"key point","right":"ключевая мысль"},{"id":"P7","left":"to miss (a point)","right":"пропустить (мысль)"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ffb8cb1b-763e-5e1e-a52c-8d830512ae17', 'e4b2ca38-51df-52fd-bb70-c8ef62561bd8', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I have reviewed all the notes from this module.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I have reviewed all the notes from this module."},{"id":"Q_B","is_correct":false,"text":"I have reviewed them last module."},{"id":"Q_C","is_correct":false,"text":"I review the notes already now."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2e05e793-0050-5b0a-89fa-b41048fdadf9', 'e4b2ca38-51df-52fd-bb70-c8ef62561bd8', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I missed a key point at the last lecture, but a friend has shared his notes.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"На прошлой лекции я пропустил ключевую мысль, но друг дал свои записи.","target_language":"en","word_bank":["tomorrow","his","last","key","missed","I","the","friend","a","notes.","point","but","a","shared","lecture,","did","has","miss","at"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e43a85d-b9b5-53bd-bdab-5478a969aa95', 'e4b2ca38-51df-52fd-bb70-c8ef62561bd8', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"margin","instruction":"Выберите подходящее слово.","options":["margin","margins","marginal"],"sentence_template":"She wrote the dates in the ___ of every page.","translation_hint":"Она записывала даты на полях каждой страницы."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a226d1e-df2d-5993-9d88-89dc4ed4bef6', 'e4b2ca38-51df-52fd-bb70-c8ef62561bd8', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","have","highlighted","the","main","definitions","in","yellow."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["the","definitions","have","did","yellow.","in","was","main","highlighted","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('63f7e0cd-a7cf-51d0-bbf2-942abae806c4', 'e4b2ca38-51df-52fd-bb70-c8ef62561bd8', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I used only abbreviations in class, so I have rewritten the notes the same evening while I still remembered everything.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('77682b08-a5e2-5643-a4e5-50a866588aee', 'e4b2ca38-51df-52fd-bb70-c8ef62561bd8', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I used only abbreviations in class, so I have rewritten the notes the same evening while I still remembered everything.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"На занятии я пользовался только сокращениями, поэтому в тот же вечер переписал записи, пока всё помнил."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e6b71d13-401f-58c0-b916-8adf256761f4', 'e4b2ca38-51df-52fd-bb70-c8ef62561bd8', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"Could I copy your notes from Tuesday? I missed that lecture.","translation":"Можно сфотографировать твои записи со вторника? Я пропустил ту лекцию.","type":"dialogue"},{"character":"Voice 2","text":"Sure — but I have used a lot of abbreviations.","translation":"Конечно — только у меня много сокращений.","type":"dialogue"},{"options":[{"is_correct":true,"text":"No problem — what does this arrow in the margin mean?"},{"is_correct":false,"text":"No problem, it meant tomorrow yesterday."},{"is_correct":false,"text":"Is the abbreviation copying the lecture?"}],"text":"What does Voice 1 ask?","type":"choice"}],"title":"Comparing Notes"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0de476e0-859b-55fd-8eb0-af5c17818102', 'e4b2ca38-51df-52fd-bb70-c8ef62561bd8', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“abbreviation” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A short form of a word or phrase"},{"id":"D_B","is_correct":false,"text":"A full sentence written at the top"},{"id":"D_C","is_correct":false,"text":"A drawing in the notebook margin"}],"word":"abbreviation"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('868d747e-9146-5ba7-b243-5ebe56c3c88a', 'e4b2ca38-51df-52fd-bb70-c8ef62561bd8', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have reviewed the notes twice this week.","explanation":"The missing word is “reviewed”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"reviewed","id":"LW_A","is_correct":true},{"audio_text":"review","id":"LW_B","is_correct":false},{"audio_text":"reviewing","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ the notes twice this week."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ec01f942-8e7e-5b8d-adb8-49e9a2666d7d', 'e4b2ca38-51df-52fd-bb70-c8ef62561bd8', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"Highlight","explanation":"The complete sentence is “Highlight the key points before the exam.”.","hint_prefix":"Hi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ the key points before the exam."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('37bcfcdf-c1a6-516f-a687-9dc5ddf240ea', 'e4b2ca38-51df-52fd-bb70-c8ef62561bd8', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to take notes","id":"V1","text":"to take notes"},{"audio_text":"abbreviation","id":"V2","text":"abbreviation"},{"audio_text":"margin","id":"V3","text":"margin"},{"audio_text":"to highlight","id":"V4","text":"to highlight"},{"audio_text":"to review notes","id":"V5","text":"to review notes"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('de990c64-da8c-5a58-9c85-aa5edc109d73', 'e4b2ca38-51df-52fd-bb70-c8ef62561bd8', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Your notes look so tidy!"}],"explanation":"“I have rewritten them in the evening since September — it doubles as revision.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"I have rewritten them in the evening since September — it doubles as revision."},{"id":"C_B","is_correct":false,"text":"I rewrote them yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The notes are tidying me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1c4a06a4-c7a0-5689-8365-c346f9abe788', 'e4b2ca38-51df-52fd-bb70-c8ef62561bd8', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('71321c92-7659-5d0b-8ec4-d28c56ac09ce', NULL, 'Новый способ записывать', 'Сравнить способы ведения записей и выбрать систему.', '{"en":"A New Way of Taking Notes","ru":"Новый способ записывать"}'::jsonb, '{"en":"Compare note-taking systems and choose one.","ru":"Сравнить способы ведения записей и выбрать систему."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a8c70672-63b1-5df2-9b64-7fd03e223291', '71321c92-7659-5d0b-8ec4-d28c56ac09ce', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"outline","right":"план (тезисный)"},{"id":"P2","left":"mind map","right":"интеллект-карта"},{"id":"P3","left":"more visual","right":"нагляднее"},{"id":"P4","left":"Cornell method","right":"метод Корнелла"},{"id":"P5","left":"to structure","right":"структурировать"},{"id":"P6","left":"typed notes","right":"печатные записи"},{"id":"P7","left":"handwritten","right":"рукописный"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('97ac7b95-78d2-5d6a-a37a-fd9da9ba2378', '71321c92-7659-5d0b-8ec4-d28c56ac09ce', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “A mind map is more visual than a plain outline.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"A mind map is more visual than a plain outline."},{"id":"Q_B","is_correct":false,"text":"A mind map is visualer than outline."},{"id":"Q_C","is_correct":false,"text":"A mind map is most visual than outline."}],"question":"Which sentence compares two note styles correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4574345f-3f51-5624-a536-b193b0432f4a', '71321c92-7659-5d0b-8ec4-d28c56ac09ce', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"From this month I am going to take notes with the Cornell method.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"С этого месяца я собираюсь вести записи по методу Корнелла.","target_language":"en","word_bank":["I","yesterday","Cornell","this","with","to","going","From","am","method.","month","take","did","the","notes","took"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('552ce5ce-cc3b-5e32-8e5c-3bb7ebe6836b', '71321c92-7659-5d0b-8ec4-d28c56ac09ce', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"better","instruction":"Выберите подходящее слово.","options":["better","best","more good"],"sentence_template":"Handwritten notes are ___ for memory than typed ones.","translation_hint":"Рукописные записи запоминаются лучше печатных."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c433ce95-50ca-5f18-9108-1af7e7417071', '71321c92-7659-5d0b-8ec4-d28c56ac09ce', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","going","to","structure","the","topic","as","a","mind","map."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["a","We","the","did","to","was","as","going","map.","are","structure","topic","mind"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a6b907de-95af-5384-8a16-f4543c1881da', '71321c92-7659-5d0b-8ec4-d28c56ac09ce', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you leave a summary line at the bottom of each page, revision will take minutes, not hours.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c043451f-51b2-5188-88b2-53b7ab263794', '71321c92-7659-5d0b-8ec4-d28c56ac09ce', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you leave a summary line at the bottom of each page, revision will take minutes, not hours.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если оставлять строку-резюме внизу каждой страницы, повторение займёт минуты, а не часы."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9fc4f686-ab0e-5dec-be89-6eadc4049414', '71321c92-7659-5d0b-8ec4-d28c56ac09ce', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"Do you type your notes or write by hand?","translation":"Ты печатаешь записи или пишешь от руки?","type":"dialogue"},{"character":"Voice 2","text":"Handwritten — a mind map is also more visual for me than an outline.","translation":"От руки — и интеллект-карта для меня нагляднее плана.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I am going to try mind maps for the history course then."},{"is_correct":false,"text":"I tried them yesterday tomorrow."},{"is_correct":false,"text":"The outline is mapping your hand."}],"text":"What does Voice 1 say?","type":"choice"}],"title":"Choosing a System"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('74f5f1d5-83af-50e0-82e3-70915ef054bc', '71321c92-7659-5d0b-8ec4-d28c56ac09ce', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“mind map” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A diagram with the topic in the centre and ideas around it"},{"id":"D_B","is_correct":false,"text":"A numbered list of sentences"},{"id":"D_C","is_correct":false,"text":"A table with dates and names only"}],"word":"mind map"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c064a3c2-103d-5dd5-a5ca-60b47ed5234a', '71321c92-7659-5d0b-8ec4-d28c56ac09ce', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to structure the chapter first.","explanation":"The missing word is “structure”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"structure","id":"LW_A","is_correct":true},{"audio_text":"structured","id":"LW_B","is_correct":false},{"audio_text":"structuring","id":"LW_C","is_correct":false}],"sentence_template":"I am going to ___ the chapter first."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1b726e70-5001-59d7-ac2d-a19120e54b97', '71321c92-7659-5d0b-8ec4-d28c56ac09ce', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"more","explanation":"The complete sentence is “Typed notes are more searchable.”.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Typed notes are ___ searchable."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a4190fe-444b-5a59-9218-adbfa23aa616', '71321c92-7659-5d0b-8ec4-d28c56ac09ce', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"outline","id":"V1","text":"outline"},{"audio_text":"mind map","id":"V2","text":"mind map"},{"audio_text":"more visual","id":"V3","text":"more visual"},{"audio_text":"Cornell method","id":"V4","text":"Cornell method"},{"audio_text":"to structure","id":"V5","text":"to structure"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4c7b1d5e-4836-5105-baf1-f5585be8ff50', '71321c92-7659-5d0b-8ec4-d28c56ac09ce', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"How do you remember diagrams?"}],"explanation":"“I redraw them from memory — if the map is wrong, I check the original.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"I redraw them from memory — if the map is wrong, I check the original."},{"id":"C_B","is_correct":false,"text":"I drew them yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The diagrams are remembering me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1c4a06a4-c7a0-5689-8365-c346f9abe788', '71321c92-7659-5d0b-8ec4-d28c56ac09ce', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('90232bf3-b6f2-5172-950b-d48244ffef6b', NULL, 'Если записи не помогают', 'Дать советы о записях, используя should и первое условное.', '{"en":"If the Notes Do Not Help","ru":"Если записи не помогают"}'::jsonb, '{"en":"Give note advice using should and the first conditional.","ru":"Дать советы о записях, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('24d9afa3-a96c-5106-a660-dac6e473a4a3', '90232bf3-b6f2-5172-950b-d48244ffef6b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to reread","right":"перечитать"},{"id":"P2","left":"to summarise","right":"резюмировать"},{"id":"P3","left":"in your own words","right":"своими словами"},{"id":"P4","left":"to copy blindly","right":"бездумно списывать"},{"id":"P5","left":"effective","right":"эффективный"},{"id":"P6","left":"to review regularly","right":"регулярно повторять"},{"id":"P7","left":"cluttered","right":"захламлённый (о записях)"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0907dfbd-6856-50e1-a786-9f166fcf5d56', '90232bf3-b6f2-5172-950b-d48244ffef6b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should write summaries in your own words.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should write summaries in your own words."},{"id":"Q_B","is_correct":false,"text":"You should to write them yesterday."},{"id":"Q_C","is_correct":false,"text":"You must writing summaries last lecture."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('91c0086c-6588-56b4-a5f7-28c5c6b7b105', '90232bf3-b6f2-5172-950b-d48244ffef6b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you only reread your notes, you will remember almost nothing.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если просто перечитывать записи, они почти не запоминаются.","target_language":"en","word_bank":["only","yesterday","remember","will","reread","reread","your","nothing.","If","you","notes,","you","almost","did"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('06519b40-75f0-5157-a685-1caf65817524', '90232bf3-b6f2-5172-950b-d48244ffef6b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"will not make","instruction":"Выберите подходящее слово.","options":["will not make","not make","does not made"],"sentence_template":"If you copy blindly, the material ___ sense later.","translation_hint":"Если бездумно списывать, материал позже не сложится в систему."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('72b819f5-d666-5a62-97a8-948ced874fdf', '90232bf3-b6f2-5172-950b-d48244ffef6b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","review","your","notes","within","a","day."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["mustn''t","within","notes","went","day.","should","your","review","You","a"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c8eecc8-a43a-5516-8fe5-39ef4b9183db', '90232bf3-b6f2-5172-950b-d48244ffef6b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you close the notebook and retell the topic aloud, you will remember much more than by rereading.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ebbe913f-4880-5896-a72a-b7d41b780afb', '90232bf3-b6f2-5172-950b-d48244ffef6b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you close the notebook and retell the topic aloud, you will remember much more than by rereading.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если закрыть тетрадь и пересказать тему вслух, запомнится гораздо больше, чем при перечитывании."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9fe59682-ecf3-58ee-a857-52cd33e209d1', '90232bf3-b6f2-5172-950b-d48244ffef6b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"My notes are so cluttered that I cannot study from them.","translation":"Мои записи так захламлены, что по ним нельзя заниматься.","type":"dialogue"},{"character":"Voice 2","text":"Have you tried summarising each page in one sentence?","translation":"Пробовал резюмировать каждую страницу одним предложением?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Not yet — I will do it this evening, while it is fresh."},{"is_correct":false,"text":"I did it yesterday tomorrow already."},{"is_correct":false,"text":"The notebook is cluttering my studies."}],"text":"What does Voice 1 decide?","type":"choice"}],"title":"The Cluttered Notebook"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5684f727-3162-5ebb-ad40-13226a3f5be8', '90232bf3-b6f2-5172-950b-d48244ffef6b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“cluttered” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Messy and hard to read"},{"id":"D_B","is_correct":false,"text":"Neat, with clear headings and margins"},{"id":"D_C","is_correct":false,"text":"Short, with one idea per line"}],"word":"cluttered"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae3d9b85-d833-547d-a1d9-494d5ea339d7', '90232bf3-b6f2-5172-950b-d48244ffef6b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you review regularly, the exam will be easier.","explanation":"The missing word is “review”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"review","id":"LW_A","is_correct":true},{"audio_text":"will review","id":"LW_B","is_correct":false},{"audio_text":"reviewed","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ regularly, the exam will be easier."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5bf220ab-092e-5740-a8a4-4201f7eb4d95', '90232bf3-b6f2-5172-950b-d48244ffef6b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"own","explanation":"The complete sentence is “Summarise it in your own words.”.","hint_prefix":"ow","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Summarise it in your ___ words."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('870c3f18-122e-59af-b27d-2a2f51fa8002', '90232bf3-b6f2-5172-950b-d48244ffef6b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to reread","id":"V1","text":"to reread"},{"audio_text":"to summarise","id":"V2","text":"to summarise"},{"audio_text":"in your own words","id":"V3","text":"in your own words"},{"audio_text":"to copy blindly","id":"V4","text":"to copy blindly"},{"audio_text":"effective","id":"V5","text":"effective"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d31b7bc9-08a0-5113-869d-b62efe5cc5cd', '90232bf3-b6f2-5172-950b-d48244ffef6b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"I forget everything right after the lecture."}],"explanation":"“Review the same day — if you wait a week, you will be learning it from scratch.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Review the same day — if you wait a week, you will be learning it from scratch."},{"id":"C_B","is_correct":false,"text":"I reviewed it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The lecture is forgetting me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1c4a06a4-c7a0-5689-8365-c346f9abe788', '90232bf3-b6f2-5172-950b-d48244ffef6b', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bf96817d-0bbc-5960-ac73-6099e9f10b0b', 'en', 'to take notes', 'делать записи', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2b87c974-8b73-5bda-bc0b-dee4286d98e4', 'en', 'abbreviation', 'сокращение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('374b26ad-6b40-545a-bfa9-0ebf15c41060', 'en', 'margin', 'поля (страницы)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('92ae6822-be4c-5d80-9c61-44fb258cf97a', 'en', 'to highlight', 'выделить маркером', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('10e664fa-cfef-5db0-af80-1063befac7a5', 'en', 'to review notes', 'повторить записи', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f689ac61-039f-523b-be85-8ddca920e58d', 'en', 'key point', 'ключевая мысль', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cefc36c9-9053-54c7-abee-94525f45b4d6', 'en', 'to miss (a point)', 'пропустить (мысль)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9fcc15a9-a349-5ace-a586-4003f410f10e', 'en', 'outline', 'план (тезисный)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c12475b5-340f-535e-ad9c-5f560f64f372', 'en', 'mind map', 'интеллект-карта', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a34341bb-0c61-5357-94d7-59cdde624f3c', 'en', 'more visual', 'нагляднее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('61e636a1-6835-579a-9233-b8d72eda61eb', 'en', 'Cornell method', 'метод Корнелла', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bc20c85e-a24f-5ff1-bb3e-765da07e98f4', 'en', 'to structure', 'структурировать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5b393866-ecf6-51ee-8637-e039ea5d7250', 'en', 'typed notes', 'печатные записи', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1536ef61-47c5-5818-aff1-f32e29f2a4f7', 'en', 'handwritten', 'рукописный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('49e7cafa-5b0d-5dd8-a82c-dac42b9675c9', 'en', 'to reread', 'перечитать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6d7379ba-7980-5053-80b5-40b49501e9d9', 'en', 'to summarise', 'резюмировать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b99807ef-993f-5adc-be20-32fd7d7b6a3a', 'en', 'in your own words', 'своими словами', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aafd201c-9cb3-5730-b46b-3501011e4745', 'en', 'to copy blindly', 'бездумно списывать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e961815e-771f-5826-a8a4-eb7d9bcd60fe', 'en', 'effective', 'эффективный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9c2c842f-8083-5cf0-a8c1-29a93d2b7253', 'en', 'to review regularly', 'регулярно повторять', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('383f7aa1-4106-5621-a1d4-9ec0ab963833', 'en', 'cluttered', 'захламлённый (о записях)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c4a06a4-c7a0-5689-8365-c346f9abe788', id, 'e4b2ca38-51df-52fd-bb70-c8ef62561bd8', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'to take notes' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c4a06a4-c7a0-5689-8365-c346f9abe788', id, 'e4b2ca38-51df-52fd-bb70-c8ef62561bd8', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'abbreviation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c4a06a4-c7a0-5689-8365-c346f9abe788', id, 'e4b2ca38-51df-52fd-bb70-c8ef62561bd8', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'margin' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c4a06a4-c7a0-5689-8365-c346f9abe788', id, 'e4b2ca38-51df-52fd-bb70-c8ef62561bd8', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'to highlight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c4a06a4-c7a0-5689-8365-c346f9abe788', id, 'e4b2ca38-51df-52fd-bb70-c8ef62561bd8', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to review notes' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c4a06a4-c7a0-5689-8365-c346f9abe788', id, 'e4b2ca38-51df-52fd-bb70-c8ef62561bd8', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'key point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c4a06a4-c7a0-5689-8365-c346f9abe788', id, 'e4b2ca38-51df-52fd-bb70-c8ef62561bd8', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'to miss (a point)' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c4a06a4-c7a0-5689-8365-c346f9abe788', id, '71321c92-7659-5d0b-8ec4-d28c56ac09ce', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'outline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c4a06a4-c7a0-5689-8365-c346f9abe788', id, '71321c92-7659-5d0b-8ec4-d28c56ac09ce', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'mind map' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c4a06a4-c7a0-5689-8365-c346f9abe788', id, '71321c92-7659-5d0b-8ec4-d28c56ac09ce', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'more visual' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c4a06a4-c7a0-5689-8365-c346f9abe788', id, '71321c92-7659-5d0b-8ec4-d28c56ac09ce', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'Cornell method' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c4a06a4-c7a0-5689-8365-c346f9abe788', id, '71321c92-7659-5d0b-8ec4-d28c56ac09ce', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to structure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c4a06a4-c7a0-5689-8365-c346f9abe788', id, '71321c92-7659-5d0b-8ec4-d28c56ac09ce', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'typed notes' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c4a06a4-c7a0-5689-8365-c346f9abe788', id, '71321c92-7659-5d0b-8ec4-d28c56ac09ce', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'handwritten' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c4a06a4-c7a0-5689-8365-c346f9abe788', id, '90232bf3-b6f2-5172-950b-d48244ffef6b', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to reread' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c4a06a4-c7a0-5689-8365-c346f9abe788', id, '90232bf3-b6f2-5172-950b-d48244ffef6b', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to summarise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c4a06a4-c7a0-5689-8365-c346f9abe788', id, '90232bf3-b6f2-5172-950b-d48244ffef6b', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'in your own words' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c4a06a4-c7a0-5689-8365-c346f9abe788', id, '90232bf3-b6f2-5172-950b-d48244ffef6b', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to copy blindly' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c4a06a4-c7a0-5689-8365-c346f9abe788', id, '90232bf3-b6f2-5172-950b-d48244ffef6b', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'effective' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c4a06a4-c7a0-5689-8365-c346f9abe788', id, '90232bf3-b6f2-5172-950b-d48244ffef6b', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to review regularly' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c4a06a4-c7a0-5689-8365-c346f9abe788', id, '90232bf3-b6f2-5172-950b-d48244ffef6b', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'cluttered' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
