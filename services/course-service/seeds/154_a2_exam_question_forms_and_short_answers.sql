-- Track: A2_EXAM_QUESTION_FORMS_AND_SHORT_ANSWERS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('c535cfbb-a238-543b-9e7b-eb509e265b7c', 'A2_EXAM_QUESTION_FORMS_AND_SHORT_ANSWERS', 'Вопросительные формы и краткие ответы', 'Развивайте экзаменационные навыки уровня A2 по теме «Вопросительные формы и краткие ответы».', '{"en":"Question Forms and Short Answers","ru":"Вопросительные формы и краткие ответы"}'::jsonb, '{"en":"Develop A2 exam skills for question forms and short answers.","ru":"Развивайте экзаменационные навыки уровня A2 по теме «Вопросительные формы и краткие ответы»."}'::jsonb, 'en', 'A2', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2509f4a0-8b36-56b2-b759-12a63c50cc33', NULL, 'Вопросы и короткие ответы', 'Тренировать формы вопросов, используя past simple и present perfect.', '{"en":"Questions and Short Answers","ru":"Вопросы и короткие ответы"}'::jsonb, '{"en":"Practise question forms using past simple and present perfect.","ru":"Тренировать формы вопросов, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('95606fb6-50fe-53b2-95c6-bd449046f3e3', '2509f4a0-8b36-56b2-b759-12a63c50cc33', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"auxiliary verb","right":"вспомогательный глагол"},{"id":"P2","left":"subject","right":"подлежащее"},{"id":"P3","left":"word order","right":"порядок слов"},{"id":"P4","left":"short answer","right":"короткий ответ"},{"id":"P5","left":"tag question","right":"разделительный вопрос"},{"id":"P6","left":"Wh-question","right":"специальный вопрос"},{"id":"P7","left":"to invert","right":"инвертировать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('73a7dabe-555a-5e6a-9af3-d436309fffad', '2509f4a0-8b36-56b2-b759-12a63c50cc33', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Where did you buy this dictionary?”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Where did you buy this dictionary?"},{"id":"Q_B","is_correct":false,"text":"Where you did bought this dictionary?"},{"id":"Q_C","is_correct":false,"text":"Where did you bought this dictionary?"}],"question":"Which question is built correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0196a4f2-87ac-534b-a4cd-fdc615a46e3b', '2509f4a0-8b36-56b2-b759-12a63c50cc33', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Have you ever taken this exam before?","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Ты когда-нибудь сдавал этот экзамен раньше?","target_language":"en","word_bank":["before?","ever","Have","did","this","exam","you","tomorrow","taken","have"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6df060d4-5a25-5207-b49a-09af1f729aba', '2509f4a0-8b36-56b2-b759-12a63c50cc33', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"Did","instruction":"Выберите подходящее слово.","options":["Did","Has","Was"],"sentence_template":"___ she called you yesterday?","translation_hint":"Она звонила тебе вчера?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('81754f2e-a209-5717-97cf-bee38cc0c2fe', '2509f4a0-8b36-56b2-b759-12a63c50cc33', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","have","met","him","before,","haven''t","you?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["before,","was","have","met","him","you?","haven''t","You","did"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5012c612-6a5f-5bf4-8165-9373083d357f', '2509f4a0-8b36-56b2-b759-12a63c50cc33', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"In questions the auxiliary jumps before the subject — do, does, did, have or has.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('446918d3-203b-5cfa-b053-56bb4de72678', '2509f4a0-8b36-56b2-b759-12a63c50cc33', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"In questions the auxiliary jumps before the subject — do, does, did, have or has.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"В вопросах вспомогательный глагол встаёт перед подлежащим — do, does, did, have или has."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f35b62f2-cd19-5986-b05c-c2e8a1717fc7', '2509f4a0-8b36-56b2-b759-12a63c50cc33', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"The task says ''Ask your partner about last weekend''.","translation":"В задании: ''Расспроси партнёра о прошлых выходных''.","type":"dialogue"},{"character":"Voice 2","text":"So past simple questions — did you go, did you see...","translation":"Значит, вопросы в past simple — did you go, did you see...","type":"dialogue"},{"options":[{"is_correct":true,"text":"Did you do anything interesting on Saturday?"},{"is_correct":false,"text":"Have you did anything interesting tomorrow?"},{"is_correct":false,"text":"Did you anything interesting on Saturday?"}],"text":"What does Voice 1 form?","type":"choice"}],"title":"The Interview Task"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2ac3d910-a075-5cdb-acde-0a92e6345365', '2509f4a0-8b36-56b2-b759-12a63c50cc33', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“auxiliary verb” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A helping verb like do, does or have"},{"id":"D_B","is_correct":false,"text":"The main action verb of a sentence"},{"id":"D_C","is_correct":false,"text":"A word that shows politeness in requests"}],"word":"auxiliary verb"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08890ba8-cd47-588c-ae71-2879023bad08', '2509f4a0-8b36-56b2-b759-12a63c50cc33', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Have you finished the task yet?","explanation":"The missing word is “Have”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"Have","id":"LW_A","is_correct":true},{"audio_text":"Did","id":"LW_B","is_correct":false},{"audio_text":"Are","id":"LW_C","is_correct":false}],"sentence_template":"___ you finished the task yet?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('57c87231-cd3f-5e1c-b0aa-e2fdedaa6a18', '2509f4a0-8b36-56b2-b759-12a63c50cc33', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"have","explanation":"The complete sentence is “Short answer: Yes, I have .”.","hint_prefix":"ha","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Short answer: Yes, I ___ ."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('94839209-c2e3-5ddf-83bf-9b63db7347ca', '2509f4a0-8b36-56b2-b759-12a63c50cc33', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"auxiliary verb","id":"V1","text":"auxiliary verb"},{"audio_text":"subject","id":"V2","text":"subject"},{"audio_text":"word order","id":"V3","text":"word order"},{"audio_text":"short answer","id":"V4","text":"short answer"},{"audio_text":"tag question","id":"V5","text":"tag question"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eaba3578-4c53-57d2-bb1a-fb8c20200c22', '2509f4a0-8b36-56b2-b759-12a63c50cc33', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"Do you live near the exam centre?"}],"explanation":"“Yes, I do — ten minutes by metro, and I have walked it before.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes, I do — ten minutes by metro, and I have walked it before."},{"id":"C_B","is_correct":false,"text":"Yes, I live it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The centre is examinating me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c535cfbb-a238-543b-9e7b-eb509e265b7c', '2509f4a0-8b36-56b2-b759-12a63c50cc33', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9f438df2-86d8-5bc7-bf29-8390743783fd', NULL, 'Вопросы к будущим задачам', 'Сравнить типы вопросов и потренировать порядок слов.', '{"en":"Questions for Future Tasks","ru":"Вопросы к будущим задачам"}'::jsonb, '{"en":"Compare question types and practise word order.","ru":"Сравнить типы вопросов и потренировать порядок слов."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('28f9cdff-8fac-5c57-bb2f-66b55e94877d', '9f438df2-86d8-5bc7-bf29-8390743783fd', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"subject question","right":"вопрос к подлежащему"},{"id":"P2","left":"more polite","right":"вежливее (более)"},{"id":"P3","left":"indirect question","right":"косвенный вопрос"},{"id":"P4","left":"Could you tell me...?","right":"Не могли бы вы сказать...?"},{"id":"P5","left":"rising intonation","right":"восходящая интонация"},{"id":"P6","left":"to stress","right":"выделить ударением"},{"id":"P7","left":"clarify","right":"уточнить"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cecd1304-2841-5173-b1dc-bbd9d3f1bc27', '9f438df2-86d8-5bc7-bf29-8390743783fd', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Could you tell me where the room is?”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Could you tell me where the room is?"},{"id":"Q_B","is_correct":false,"text":"Where is the room? Tell fast."},{"id":"Q_C","is_correct":false,"text":"You tell me where the room is being?"}],"question":"Which question is more polite?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1819b7b5-cebf-5a83-b755-67c816c2669d', '9f438df2-86d8-5bc7-bf29-8390743783fd', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Could you tell me when the results come out?","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Не могли бы вы сказать, когда начинаются результаты?","target_language":"en","word_bank":["when","can","results","me","tell","did","out?","yesterday","you","come","Could","the"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3088c0de-af40-5542-b751-5f5b3e90f1fe', '9f438df2-86d8-5bc7-bf29-8390743783fd', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"met","instruction":"Выберите подходящее слово.","options":["met","did meet","meets"],"sentence_template":"Who ___ you at the exam centre? — My teacher did.","translation_hint":"Кто встретил тебя в экзаменационном центре? — Мой преподаватель."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('55fbd1cd-00ef-540d-8791-6eae3815bb2e', '9f438df2-86d8-5bc7-bf29-8390743783fd', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Indirect","questions","keep","the","statement","word","order."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["keep","the","did","Indirect","word","order.","questions","was","statement"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f9f380a5-b655-54c1-b71f-1722248573b4', '9f438df2-86d8-5bc7-bf29-8390743783fd', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"In indirect questions there is no inversion — ''Could you tell me where the room is'', not ''where is the room''.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e56871b-624d-533c-a563-b281f4a46319', '9f438df2-86d8-5bc7-bf29-8390743783fd', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"In indirect questions there is no inversion — ''Could you tell me where the room is'', not ''where is the room''.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"В косвенных вопросах нет инверсии — ''Could you tell me where the room is'', а не ''where is the room''."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4e154392-d034-52a0-92e5-940389740ac4', '9f438df2-86d8-5bc7-bf29-8390743783fd', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"How do I ask about the start time politely?","translation":"Как вежливо спросить о времени начала?","type":"dialogue"},{"character":"Voice 2","text":"Use an indirect question — ''Could you tell me what time we start?''","translation":"Используй косвенный вопрос — ''Could you tell me what time we start?''","type":"dialogue"},{"options":[{"is_correct":true,"text":"Interesting — ''we start'', not ''do we start''."},{"is_correct":false,"text":"Interesting — ''what time do we start'' inside it."},{"is_correct":false,"text":"The time is questioning my politeness."}],"text":"What does Voice 1 notice?","type":"choice"}],"title":"Asking the Examiner"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('186c6396-9e71-5599-a62e-094a5bd9c19e', '9f438df2-86d8-5bc7-bf29-8390743783fd', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“indirect question” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A question inside a polite phrase"},{"id":"D_B","is_correct":false,"text":"A question with a question tag at the end"},{"id":"D_C","is_correct":false,"text":"A question answered only with yes or no"}],"word":"indirect question"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('935c53a0-195b-5aef-b2fe-5b02f17a48c0', '9f438df2-86d8-5bc7-bf29-8390743783fd', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Could you tell me where the exit is?","explanation":"The missing word is “tell”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"tell","id":"LW_A","is_correct":true},{"audio_text":"told","id":"LW_B","is_correct":false},{"audio_text":"telling","id":"LW_C","is_correct":false}],"sentence_template":"Could you ___ me where the exit is?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1128087-9526-5c39-8fb3-d84297f9be41', '9f438df2-86d8-5bc7-bf29-8390743783fd', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"more polite","explanation":"The complete sentence is “Indirect questions sound more polite .”.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Indirect questions sound ___ ."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ee4ea516-61df-594a-8150-4d4627c832e5', '9f438df2-86d8-5bc7-bf29-8390743783fd', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"subject question","id":"V1","text":"subject question"},{"audio_text":"more polite","id":"V2","text":"more polite"},{"audio_text":"indirect question","id":"V3","text":"indirect question"},{"audio_text":"Could you tell me...?","id":"V4","text":"Could you tell me...?"},{"audio_text":"rising intonation","id":"V5","text":"rising intonation"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16270e30-be5d-53b3-8584-fdf907749ad6', '9f438df2-86d8-5bc7-bf29-8390743783fd', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"''Who did call you?'' — is this right?"}],"explanation":"“No — a who-question needs no did: ''Who called you?''” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"No — a who-question needs no did: ''Who called you?''"},{"id":"C_B","is_correct":false,"text":"It was right yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The who is doing my calls."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c535cfbb-a238-543b-9e7b-eb509e265b7c', '9f438df2-86d8-5bc7-bf29-8390743783fd', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a828ce19-8855-59ab-8cef-e7a520806917', NULL, 'Если вопрос составлен неверно', 'Разобрать ошибки в вопросах, используя should и первое условное.', '{"en":"If the Question Is Built Wrong","ru":"Если вопрос составлен неверно"}'::jsonb, '{"en":"Analyse question mistakes using should and the first conditional.","ru":"Разобрать ошибки в вопросах, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1618ad34-a0fa-5471-b8d2-ee2b658533df', 'a828ce19-8855-59ab-8cef-e7a520806917', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"inversion","right":"инверсия"},{"id":"P2","left":"to double the verb","right":"удвоить глагол"},{"id":"P3","left":"typical error","right":"типичная ошибка"},{"id":"P4","left":"to self-check","right":"проверить себя"},{"id":"P5","left":"pattern","right":"шаблон"},{"id":"P6","left":"slowly","right":"медленно"},{"id":"P7","left":"word by word","right":"слово за словом"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('13e15439-24f1-52db-b139-436ffb0a445d', 'a828ce19-8855-59ab-8cef-e7a520806917', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should check the auxiliary before writing the question.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should check the auxiliary before writing the question."},{"id":"Q_B","is_correct":false,"text":"You should to check it yesterday."},{"id":"Q_C","is_correct":false,"text":"You must checking auxiliaries last test."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('25abf42b-90d6-57c4-8b02-b637dbf834c0', 'a828ce19-8855-59ab-8cef-e7a520806917', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you forget the inversion, the question will become a statement.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если забудешь инверсию, вопрос станет утверждением.","target_language":"en","word_bank":["inversion,","you","question","become","forgot","yesterday","forget","the","will","a","If","the","statement.","did"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7858cb2-0158-5500-8dea-264783eb59cf', 'a828ce19-8855-59ab-8cef-e7a520806917', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"base","instruction":"Выберите подходящее слово.","options":["base","will base","based"],"sentence_template":"If you write ''did'', the main verb stays in the ___ form.","translation_hint":"Если написал ''did'', основной глагол остаётся в начальной форме."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d77e71d9-89a3-556d-b8ec-840c71a06db3', 'a828ce19-8855-59ab-8cef-e7a520806917', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","read","your","question","word","by","word."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["You","word","went","your","by","question","word.","should","mustn''t","read"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('44e9271f-ec7b-5a65-80f7-c64e09c32121', 'a828ce19-8855-59ab-8cef-e7a520806917', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you translate the question from Russian word by word, the word order will break — build it from the pattern instead.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0c88a9f2-ab3e-5ede-9b65-cca2ef32b53b', 'a828ce19-8855-59ab-8cef-e7a520806917', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you translate the question from Russian word by word, the word order will break — build it from the pattern instead.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если переводить вопрос с русского слово за словом, порядок слов сломается — строй его по шаблону."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da9eaa46-a308-5ba2-872d-cf51ca640619', 'a828ce19-8855-59ab-8cef-e7a520806917', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"I wrote ''Where did you went?'' again...","translation":"Я снова написал ''Where did you went?''...","type":"dialogue"},{"character":"Voice 2","text":"Did — the classic doubled past. What does the rule say?","translation":"Did — классическое удвоение прошедшего. Что говорит правило?","type":"dialogue"},{"options":[{"is_correct":true,"text":"After ''did'', use ''go'', not ''went''."},{"is_correct":false,"text":"After ''did'', use ''went'' twice."},{"is_correct":false,"text":"The question is going where I did."}],"text":"What is the correction?","type":"choice"}],"title":"The Doubled Verb"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc5aa14d-bbb4-5505-9362-7f0da784c7f7', 'a828ce19-8855-59ab-8cef-e7a520806917', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“inversion” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Swapping the subject and the auxiliary in questions"},{"id":"D_B","is_correct":false,"text":"Adding a tag like ''isn''t it'' to any sentence"},{"id":"D_C","is_correct":false,"text":"Rising your voice at the end"}],"word":"inversion"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('671754b7-19f0-590e-87ed-91a268be50bc', 'a828ce19-8855-59ab-8cef-e7a520806917', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you see ''did'', remove the second past verb.","explanation":"The missing word is “remove”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"remove","id":"LW_A","is_correct":true},{"audio_text":"will remove","id":"LW_B","is_correct":false},{"audio_text":"removed","id":"LW_C","is_correct":false}],"sentence_template":"If you see ''did'', ___ the second past verb."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('495c6ad9-2002-520a-8204-8413f3603f75', 'a828ce19-8855-59ab-8cef-e7a520806917', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"before","explanation":"The complete sentence is “Check the auxiliary before writing.”.","hint_prefix":"be","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Check the auxiliary ___ writing."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d02f339-2890-53de-9b79-5ae1f349dbe8', 'a828ce19-8855-59ab-8cef-e7a520806917', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"inversion","id":"V1","text":"inversion"},{"audio_text":"to double the verb","id":"V2","text":"to double the verb"},{"audio_text":"typical error","id":"V3","text":"typical error"},{"audio_text":"to self-check","id":"V4","text":"to self-check"},{"audio_text":"pattern","id":"V5","text":"pattern"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('068c1352-c676-5973-85e3-f79abcea83b3', 'a828ce19-8855-59ab-8cef-e7a520806917', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"My questions lose points every time."}],"explanation":"“Self-check with the pattern: auxiliary + subject + verb — if you run it slowly, errors will show.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Self-check with the pattern: auxiliary + subject + verb — if you run it slowly, errors will show."},{"id":"C_B","is_correct":false,"text":"I checked them yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The questions are losing me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c535cfbb-a238-543b-9e7b-eb509e265b7c', 'a828ce19-8855-59ab-8cef-e7a520806917', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bd737024-c65c-5487-b96b-24641813ef6b', 'en', 'auxiliary verb', 'вспомогательный глагол', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0cfd70fc-7a53-51c5-9e9c-e0f354167b14', 'en', 'subject', 'подлежащее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6c76a216-5d71-5c3f-9d6d-8ccd45d6027b', 'en', 'word order', 'порядок слов', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('477a0aa4-5786-50a7-9e79-00788c2a30db', 'en', 'short answer', 'короткий ответ', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('19bb8773-d6b8-53cc-9c15-9d9d60e9db0e', 'en', 'tag question', 'разделительный вопрос', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7849292a-1f1a-5621-8bc5-44465a814467', 'en', 'Wh-question', 'специальный вопрос', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('932f15a5-c20b-5175-9285-75a6a2844cc8', 'en', 'to invert', 'инвертировать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8bb4a803-918e-5eeb-9ad1-7f3084741feb', 'en', 'subject question', 'вопрос к подлежащему', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('af4ea0de-46b1-528e-8174-a3fca2e1bf27', 'en', 'more polite', 'вежливее (более)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('88fd7f29-f363-5160-97fa-85ab71da2882', 'en', 'indirect question', 'косвенный вопрос', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d950a07b-50be-57ca-809b-acb241cd17fe', 'en', 'Could you tell me...?', 'Не могли бы вы сказать...?', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c200f9be-3fee-58b2-add5-c055a913b3cd', 'en', 'rising intonation', 'восходящая интонация', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0dc7e1c7-05fd-5a26-a44c-6d8be63949c8', 'en', 'to stress', 'выделить ударением', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('076f2a6e-d040-58e4-b99b-6c8f8b0e8b7c', 'en', 'clarify', 'уточнить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1c905ada-cd8d-5323-9c00-a615852f252a', 'en', 'inversion', 'инверсия', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4b413aed-d7eb-5a39-9ae0-0c419acc1c33', 'en', 'to double the verb', 'удвоить глагол', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4df7283b-02ad-5167-a93e-7ef14491b96b', 'en', 'typical error', 'типичная ошибка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('00217584-0ab6-5806-a517-97ea282451d8', 'en', 'to self-check', 'проверить себя', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d05cc0ab-ab5a-5bb3-8ab9-3efd613dbc3c', 'en', 'pattern', 'шаблон', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('44cbf883-528b-552a-83c7-17dca132900d', 'en', 'slowly', 'медленно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('999726b6-030e-5cd0-858a-877f6c8038b1', 'en', 'word by word', 'слово за словом', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c535cfbb-a238-543b-9e7b-eb509e265b7c', id, '2509f4a0-8b36-56b2-b759-12a63c50cc33', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'auxiliary verb' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c535cfbb-a238-543b-9e7b-eb509e265b7c', id, '2509f4a0-8b36-56b2-b759-12a63c50cc33', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'subject' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c535cfbb-a238-543b-9e7b-eb509e265b7c', id, '2509f4a0-8b36-56b2-b759-12a63c50cc33', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'word order' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c535cfbb-a238-543b-9e7b-eb509e265b7c', id, '2509f4a0-8b36-56b2-b759-12a63c50cc33', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'short answer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c535cfbb-a238-543b-9e7b-eb509e265b7c', id, '2509f4a0-8b36-56b2-b759-12a63c50cc33', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'tag question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c535cfbb-a238-543b-9e7b-eb509e265b7c', id, '2509f4a0-8b36-56b2-b759-12a63c50cc33', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'Wh-question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c535cfbb-a238-543b-9e7b-eb509e265b7c', id, '2509f4a0-8b36-56b2-b759-12a63c50cc33', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'to invert' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c535cfbb-a238-543b-9e7b-eb509e265b7c', id, '9f438df2-86d8-5bc7-bf29-8390743783fd', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'subject question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c535cfbb-a238-543b-9e7b-eb509e265b7c', id, '9f438df2-86d8-5bc7-bf29-8390743783fd', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'more polite' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c535cfbb-a238-543b-9e7b-eb509e265b7c', id, '9f438df2-86d8-5bc7-bf29-8390743783fd', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'indirect question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c535cfbb-a238-543b-9e7b-eb509e265b7c', id, '9f438df2-86d8-5bc7-bf29-8390743783fd', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'Could you tell me...?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c535cfbb-a238-543b-9e7b-eb509e265b7c', id, '9f438df2-86d8-5bc7-bf29-8390743783fd', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'rising intonation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c535cfbb-a238-543b-9e7b-eb509e265b7c', id, '9f438df2-86d8-5bc7-bf29-8390743783fd', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to stress' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c535cfbb-a238-543b-9e7b-eb509e265b7c', id, '9f438df2-86d8-5bc7-bf29-8390743783fd', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'clarify' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c535cfbb-a238-543b-9e7b-eb509e265b7c', id, 'a828ce19-8855-59ab-8cef-e7a520806917', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'inversion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c535cfbb-a238-543b-9e7b-eb509e265b7c', id, 'a828ce19-8855-59ab-8cef-e7a520806917', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to double the verb' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c535cfbb-a238-543b-9e7b-eb509e265b7c', id, 'a828ce19-8855-59ab-8cef-e7a520806917', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'typical error' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c535cfbb-a238-543b-9e7b-eb509e265b7c', id, 'a828ce19-8855-59ab-8cef-e7a520806917', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to self-check' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c535cfbb-a238-543b-9e7b-eb509e265b7c', id, 'a828ce19-8855-59ab-8cef-e7a520806917', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'pattern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c535cfbb-a238-543b-9e7b-eb509e265b7c', id, 'a828ce19-8855-59ab-8cef-e7a520806917', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'slowly' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c535cfbb-a238-543b-9e7b-eb509e265b7c', id, 'a828ce19-8855-59ab-8cef-e7a520806917', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'word by word' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
