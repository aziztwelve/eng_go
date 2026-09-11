-- Track: A2_EXAM_FUTURE_FORMS_AND_COMPARISONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('8076b1f8-b5ec-5fe0-9dc2-877d73c565b9', 'A2_EXAM_FUTURE_FORMS_AND_COMPARISONS', 'Будущее время и сравнения', 'Развивайте экзаменационные навыки уровня A2 по теме «Будущее время и сравнения».', '{"en":"Future Forms and Comparisons","ru":"Будущее время и сравнения"}'::jsonb, '{"en":"Develop A2 exam skills for future forms and comparisons.","ru":"Развивайте экзаменационные навыки уровня A2 по теме «Будущее время и сравнения»."}'::jsonb, 'en', 'A2', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('82a5f9f5-203d-5484-86f4-042e19b222c4', NULL, 'Прошлое и настоящее в задачах', 'Потренировать past simple и present perfect в экзаменационных заданиях.', '{"en":"Past and Present in Exam Tasks","ru":"Прошлое и настоящее в задачах"}'::jsonb, '{"en":"Practise past simple and present perfect in exam tasks.","ru":"Потренировать past simple и present perfect в экзаменационных заданиях."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6354fb35-1384-50b7-82e2-b3f02e8da6af', '82a5f9f5-203d-5484-86f4-042e19b222c4', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"tense","right":"время (глагола)"},{"id":"P2","left":"signal word","right":"слово-маркер"},{"id":"P3","left":"already / yet","right":"уже / ещё"},{"id":"P4","left":"since / for","right":"с / в течение"},{"id":"P5","left":"irregular verb","right":"неправильный глагол"},{"id":"P6","left":"to complete the sentence","right":"завершить предложение"},{"id":"P7","left":"gap fill","right":"задание на пропуски"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('06965ce1-b260-56ef-ae50-4cedde12ca45', '82a5f9f5-203d-5484-86f4-042e19b222c4', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “She has lived here since 2019.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"She has lived here since 2019."},{"id":"Q_B","is_correct":false,"text":"She has lived here in 2019."},{"id":"Q_C","is_correct":false,"text":"She lives here since already 2019."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f3566407-7c8f-52fb-87c5-7a8c340ebdcb', '82a5f9f5-203d-5484-86f4-042e19b222c4', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I have lived here since 2019 and have not changed my job yet.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я живу здесь с 2019 года и ещё не поменял работу.","target_language":"en","word_bank":["and","not","I","my","have","tomorrow","live","2019","since","did","yet.","lived","have","here","changed","job"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('831a0ae3-09ef-5cca-9811-370ff6565bcc', '82a5f9f5-203d-5484-86f4-042e19b222c4', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"moved","instruction":"Выберите подходящее слово.","options":["moved","have moved","are moving"],"sentence_template":"We ___ to London three years ago.","translation_hint":"Мы переехали в Лондон три года назад."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a6bd716e-9d65-55ae-8f62-a453a2d94dd8', '82a5f9f5-203d-5484-86f4-042e19b222c4', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["He","has","already","finished","the","gap-fill","task."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["has","did","task.","already","finished","the","was","He","gap-fill"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd1b85e8-3d54-5d11-abaf-a60a2e75b0d5', '82a5f9f5-203d-5484-86f4-042e19b222c4', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Signal words are your friends: ''yesterday'' means past simple, and ''since'' points to the present perfect.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7bc338bd-d3a4-501c-a14c-0774e49b93bc', '82a5f9f5-203d-5484-86f4-042e19b222c4', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Signal words are your friends: ''yesterday'' means past simple, and ''since'' points to the present perfect.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Слова-маркеры — твои друзья: «yesterday» означает past simple, а «since» указывает на present perfect."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0698c5a2-e164-5849-a79e-d670cadf8839', '82a5f9f5-203d-5484-86f4-042e19b222c4', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"I never remember when to use ''since'' and ''for''.","translation":"Я никак не запомню, когда ''since'', а когда ''for''.","type":"dialogue"},{"character":"Voice 2","text":"Point in time — since; period of time — for. Since Monday, for three days.","translation":"Точка во времени — since; период — for. Since Monday, for three days.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Got it — ''for two years'' but ''since 2020''."},{"is_correct":false,"text":"Got it — ''since two years'' and ''for 2020''."},{"is_correct":false,"text":"The words are pointing my time."}],"text":"What does Voice 1 say?","type":"choice"}],"title":"The Grammar Section"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('756d6593-58cd-5575-9076-b1abe47634f2', '82a5f9f5-203d-5484-86f4-042e19b222c4', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“irregular verb” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A verb with special past forms, like go-went"},{"id":"D_B","is_correct":false,"text":"A verb that ends in -ed in the past"},{"id":"D_C","is_correct":false,"text":"A verb used only in questions"}],"word":"irregular verb"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b39225af-ecdf-5082-8b9b-190713a0af11', '82a5f9f5-203d-5484-86f4-042e19b222c4', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"They have worked on the project since March.","explanation":"The missing word is “worked”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"worked","id":"LW_A","is_correct":true},{"audio_text":"work","id":"LW_B","is_correct":false},{"audio_text":"working","id":"LW_C","is_correct":false}],"sentence_template":"They have ___ the project since March."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c9e95df0-c634-52a5-b4fd-566d1d45a94e', '82a5f9f5-203d-5484-86f4-042e19b222c4', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"already","explanation":"The complete sentence is “I have already sent the form.”.","hint_prefix":"al","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I have ___ sent the form."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e32bf52a-3625-57d9-9de6-764b5aefe35b', '82a5f9f5-203d-5484-86f4-042e19b222c4', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"tense","id":"V1","text":"tense"},{"audio_text":"signal word","id":"V2","text":"signal word"},{"audio_text":"already / yet","id":"V3","text":"already / yet"},{"audio_text":"since / for","id":"V4","text":"since / for"},{"audio_text":"irregular verb","id":"V5","text":"irregular verb"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd8474f2-ac10-5092-b6b9-891b0781d164', '82a5f9f5-203d-5484-86f4-042e19b222c4', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"Have you ever taken this exam before?"}],"explanation":"“Yes, once last year — and I have practised a lot since then.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes, once last year — and I have practised a lot since then."},{"id":"C_B","is_correct":false,"text":"I take it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The exam is taking me once."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8076b1f8-b5ec-5fe0-9dc2-877d73c565b9', '82a5f9f5-203d-5484-86f4-042e19b222c4', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('376ad9fd-030c-5bb7-bcad-74162ea7885b', NULL, 'Будущее в заданиях', 'Потренировать формы будущего и сравнительные степени.', '{"en":"The Future in Exam Tasks","ru":"Будущее в заданиях"}'::jsonb, '{"en":"Practise future forms and comparatives.","ru":"Потренировать формы будущего и сравнительные степени."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('62435b92-4c26-59b1-8828-9aec1f050c26', '376ad9fd-030c-5bb7-bcad-74162ea7885b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"will / going to","right":"will / going to"},{"id":"P2","left":"arrangement","right":"договорённость"},{"id":"P3","left":"prediction","right":"предсказание"},{"id":"P4","left":"comparative","right":"сравнительная степень"},{"id":"P5","left":"superlative","right":"превосходная степень"},{"id":"P6","left":"than","right":"чем"},{"id":"P7","left":"the ...est","right":"самый ..."}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c03ba2fa-8292-5d6a-8cbc-8b031d865556', '376ad9fd-030c-5bb7-bcad-74162ea7885b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “We are going to visit the museum on Saturday.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"We are going to visit the museum on Saturday."},{"id":"Q_B","is_correct":false,"text":"We will visited the museum yesterday."},{"id":"Q_C","is_correct":false,"text":"We visit museum going to Saturday."}],"question":"Which sentence uses going to for a plan?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7ed9cb4c-a6b1-56ca-847d-06f610c76545', '376ad9fd-030c-5bb7-bcad-74162ea7885b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"This option is easier, and that one is the most difficult of the whole year.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Этот вариант проще, а тот — самый сложный за весь год.","target_language":"en","word_bank":["yesterday","that","of","and","most","is","did","easier,","the","option","This","the","year.","whole","was","is","difficult","one"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7cf80dc-6dd8-535c-b69d-5c88f0b254d7', '376ad9fd-030c-5bb7-bcad-74162ea7885b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"is going to","instruction":"Выберите подходящее слово.","options":["is going to","will be","goes to"],"sentence_template":"Look at those clouds — it ___ rain.","translation_hint":"Посмотри на тучи — сейчас пойдёт дождь."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb00d60d-25b7-58fc-b571-6a022052a272', '376ad9fd-030c-5bb7-bcad-74162ea7885b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["My","exam","is","going","to","be","in","June."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["was","to","June.","going","be","in","is","My","exam","did"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d278ac27-240b-5ed0-991f-40c5e1a59a6a', '376ad9fd-030c-5bb7-bcad-74162ea7885b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A plan takes going to; an arrangement takes the present continuous; a prediction takes will.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c854ac04-588f-5923-b093-0c4e4211e2e1', '376ad9fd-030c-5bb7-bcad-74162ea7885b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A plan takes going to; an arrangement takes the present continuous; a prediction takes will.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"План требует going to; договорённость — present continuous; предсказание — will."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7efb4d45-31d8-5a56-9d23-250cfba364cf', '376ad9fd-030c-5bb7-bcad-74162ea7885b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"This question has both ''will'' and ''going to'' as options...","translation":"В этом вопросе и ''will'', и ''going to'' в вариантах...","type":"dialogue"},{"character":"Voice 2","text":"Read the context: is it a plan decided before, or a decision right now?","translation":"Читай контекст: это заранее принятое решение или решение прямо сейчас?","type":"dialogue"},{"options":[{"is_correct":true,"text":"It says ''we decided last week'' — so going to."},{"is_correct":false,"text":"It decided yesterday tomorrow — will."},{"is_correct":false,"text":"The question is going to the context."}],"text":"What does Voice 1 answer?","type":"choice"}],"title":"Choosing the Future Form"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9bbb8986-3073-5101-81db-59aa9a78c88c', '376ad9fd-030c-5bb7-bcad-74162ea7885b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“superlative” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"The form like ''the biggest'' or ''the best''"},{"id":"D_B","is_correct":false,"text":"The form like ''bigger'' or ''better''"},{"id":"D_C","is_correct":false,"text":"The form like ''as big as''"}],"word":"superlative"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('46ccf95c-a3d6-53b7-8497-8d5209c2e7fd', '376ad9fd-030c-5bb7-bcad-74162ea7885b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"She is going to retake the exam in May.","explanation":"The missing word is “going”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"going","id":"LW_A","is_correct":true},{"audio_text":"went","id":"LW_B","is_correct":false},{"audio_text":"gone","id":"LW_C","is_correct":false}],"sentence_template":"She is ___ to retake the exam in May."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e365e4b1-9801-5bb1-8b34-440945c2a00c', '376ad9fd-030c-5bb7-bcad-74162ea7885b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"easier","explanation":"The complete sentence is “This task is easier than the last one.”.","hint_prefix":"ea","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"This task is ___ than the last one."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd3542c8-3346-52c4-946c-9324a4bf8e96', '376ad9fd-030c-5bb7-bcad-74162ea7885b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"will / going to","id":"V1","text":"will / going to"},{"audio_text":"arrangement","id":"V2","text":"arrangement"},{"audio_text":"prediction","id":"V3","text":"prediction"},{"audio_text":"comparative","id":"V4","text":"comparative"},{"audio_text":"superlative","id":"V5","text":"superlative"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('02bd991d-d11e-5a78-a5ca-efc8d4c21c09', '376ad9fd-030c-5bb7-bcad-74162ea7885b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Will vs going to — one more time?"}],"explanation":"“Evidence in the sentence: ''I promise'' → will; ''we planned'' → going to.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Evidence in the sentence: ''I promise'' → will; ''we planned'' → going to."},{"id":"C_B","is_correct":false,"text":"You explained it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The forms are willing me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8076b1f8-b5ec-5fe0-9dc2-877d73c565b9', '376ad9fd-030c-5bb7-bcad-74162ea7885b', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('d31981e5-942f-568e-aab9-c2320103f76d', NULL, 'Если сомневаешься во времени', 'Разобрать типичные ошибки, используя should и первое условное.', '{"en":"If You Doubt the Tense","ru":"Если сомневаешься во времени"}'::jsonb, '{"en":"Analyse typical mistakes using should and the first conditional.","ru":"Разобрать типичные ошибки, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('709173c9-959e-57d5-b60f-06e34d26d911', 'd31981e5-942f-568e-aab9-c2320103f76d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"common mistake","right":"типичная ошибка"},{"id":"P2","left":"to mark the signal","right":"отметить маркер"},{"id":"P3","left":"to translate literally","right":"переводить дословно"},{"id":"P4","left":"reliable","right":"надёжный"},{"id":"P5","left":"to eliminate options","right":"отсеять варианты"},{"id":"P6","left":"guessing","right":"угадывание"},{"id":"P7","left":"clue","right":"ключ / подсказка"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d1e0e3e1-9cf4-53a0-8194-209ccb464c71', 'd31981e5-942f-568e-aab9-c2320103f76d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should underline the time signal before choosing a tense.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should underline the time signal before choosing a tense."},{"id":"Q_B","is_correct":false,"text":"You should to underline it yesterday."},{"id":"Q_C","is_correct":false,"text":"You must underlining signals last exam."}],"question":"Which sentence gives correct exam advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f4f6c8e3-8324-57ef-bbe2-2ab9740d319c', 'd31981e5-942f-568e-aab9-c2320103f76d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you translate literally from Russian, you will often choose the wrong tense.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если дословно переводить с русского, часто выбираешь неправильное время.","target_language":"en","word_bank":["wrong","translate","yesterday","translated","you","Russian,","will","the","literally","If","did","often","tense.","you","choose","from"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0191293c-71b9-55ba-994e-d4d14d371598', 'd31981e5-942f-568e-aab9-c2320103f76d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"guess","instruction":"Выберите подходящее слово.","options":["guess","will guess","guessed"],"sentence_template":"If you eliminate two options, your ___ becomes much safer.","translation_hint":"Если отсеять два варианта, догадка станет гораздо безопаснее."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('98707d92-2028-5ef6-836f-47827bc63c87', 'd31981e5-942f-568e-aab9-c2320103f76d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","check","the","time","markers","twice."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["check","You","time","markers","should","twice.","mustn''t","went","the"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('06ebd952-e61d-57e5-8dcb-fb9e02c2654f', 'd31981e5-942f-568e-aab9-c2320103f76d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If a sentence contains ''ago'', the present perfect is impossible — this clue alone solves half the questions.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('74eba6be-853d-570c-88bb-eede54edf7cd', 'd31981e5-942f-568e-aab9-c2320103f76d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If a sentence contains ''ago'', the present perfect is impossible — this clue alone solves half the questions.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если в предложении есть ''ago'', present perfect невозможен — одна эта подсказка решает половину вопросов."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a8c6f1d-9156-56ee-8b5e-bb8ade9cc6a0', 'd31981e5-942f-568e-aab9-c2320103f76d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"I always write ''I have seen him yesterday'' — why is it wrong?","translation":"Я всё время пишу ''I have seen him yesterday'' — почему это неверно?","type":"dialogue"},{"character":"Voice 2","text":"''Yesterday'' is a finished time, so the present perfect cannot take it.","translation":"''Yesterday'' — завершённое время, present perfect его не принимает.","type":"dialogue"},{"options":[{"is_correct":true,"text":"So with ''yesterday'' I should use past simple — saw."},{"is_correct":false,"text":"So I should using it yesterday again."},{"is_correct":false,"text":"The mistake is seeing my yesterday."}],"text":"What does Voice 1 learn?","type":"choice"}],"title":"The Repeated Mistake"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4bd9ae5f-4d23-5724-ad7d-1581dbf9a740', 'd31981e5-942f-568e-aab9-c2320103f76d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to eliminate” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To remove wrong options one by one"},{"id":"D_B","is_correct":false,"text":"To choose the first option you like"},{"id":"D_C","is_correct":false,"text":"To translate the task into Russian first"}],"word":"to eliminate"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f557612e-cf2b-5272-a95e-13067f345187', 'd31981e5-942f-568e-aab9-c2320103f76d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you see ''ago'', eliminate the perfect option.","explanation":"The missing word is “eliminate”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"eliminate","id":"LW_A","is_correct":true},{"audio_text":"will eliminate","id":"LW_B","is_correct":false},{"audio_text":"eliminated","id":"LW_C","is_correct":false}],"sentence_template":"If you see ''ago'', ___ the perfect option."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a65ccab-a5cb-53b0-9e75-9c7a8efb6be7', 'd31981e5-942f-568e-aab9-c2320103f76d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"literally","explanation":"The complete sentence is “Never translate literally from Russian.”.","hint_prefix":"li","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Never translate ___ from Russian."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2fe8317a-1aef-5049-8a8d-fd45cd330313', 'd31981e5-942f-568e-aab9-c2320103f76d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"common mistake","id":"V1","text":"common mistake"},{"audio_text":"to mark the signal","id":"V2","text":"to mark the signal"},{"audio_text":"to translate literally","id":"V3","text":"to translate literally"},{"audio_text":"reliable","id":"V4","text":"reliable"},{"audio_text":"to eliminate options","id":"V5","text":"to eliminate options"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9598e5bc-97cd-50f0-a1d7-06cddd96dc51', 'd31981e5-942f-568e-aab9-c2320103f76d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Two options look identical to me."}],"explanation":"“Look for the signal word — if you mark it, the difference will appear.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Look for the signal word — if you mark it, the difference will appear."},{"id":"C_B","is_correct":false,"text":"I marked it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The options are doubling me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8076b1f8-b5ec-5fe0-9dc2-877d73c565b9', 'd31981e5-942f-568e-aab9-c2320103f76d', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('861d9a99-75dd-5980-ab8f-96ff01780f91', 'en', 'tense', 'время (глагола)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5173ae2a-b29c-5002-96c5-f990b98e5fdf', 'en', 'signal word', 'слово-маркер', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2b81973b-27a1-5a8a-acc9-df13484db021', 'en', 'already / yet', 'уже / ещё', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('53d1c294-8dd9-5bca-8240-6c900afe8df0', 'en', 'since / for', 'с / в течение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f780c080-a80a-55f7-9576-07d60867caa0', 'en', 'irregular verb', 'неправильный глагол', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('34f8bcb9-9126-5d92-b24c-e3f6005b106b', 'en', 'to complete the sentence', 'завершить предложение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0f839f41-f316-52e5-9109-f4852ace119f', 'en', 'gap fill', 'задание на пропуски', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('03997f78-5719-52a9-ab26-cefe70f3abda', 'en', 'will / going to', 'will / going to', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8e7d729d-71da-5f8a-a729-65d7bb6cf815', 'en', 'arrangement', 'договорённость', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c51800f8-4549-5206-bed0-86fde8f256ab', 'en', 'prediction', 'предсказание', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ce9d7f2a-a4af-501a-906b-6e09dfa15798', 'en', 'comparative', 'сравнительная степень', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b80cc410-fa43-5149-a86e-44c5c7e7c9e7', 'en', 'superlative', 'превосходная степень', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3217421f-8044-50f0-89fa-81eab33100b3', 'en', 'than', 'чем', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9358f898-ba4c-57f8-91d7-96a211c79363', 'en', 'the ...est', 'самый ...', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a87d0e4a-7c6d-560a-ae0e-0654db1688c9', 'en', 'common mistake', 'типичная ошибка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a139528b-3339-59aa-99ae-a5ba4904f43b', 'en', 'to mark the signal', 'отметить маркер', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('72e91ff3-87b2-5e5c-85fe-1db2943c8938', 'en', 'to translate literally', 'переводить дословно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ec0c06cd-69c7-556d-b9d8-5e725183415a', 'en', 'reliable', 'надёжный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('42153c9a-f4c3-5f9d-8530-2422452ef8a7', 'en', 'to eliminate options', 'отсеять варианты', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6a035cdc-00bf-540e-80f4-6c4e6496d627', 'en', 'guessing', 'угадывание', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d4ced17b-c617-5234-862c-77548d58bbac', 'en', 'clue', 'ключ / подсказка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8076b1f8-b5ec-5fe0-9dc2-877d73c565b9', id, '82a5f9f5-203d-5484-86f4-042e19b222c4', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'tense' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8076b1f8-b5ec-5fe0-9dc2-877d73c565b9', id, '82a5f9f5-203d-5484-86f4-042e19b222c4', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'signal word' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8076b1f8-b5ec-5fe0-9dc2-877d73c565b9', id, '82a5f9f5-203d-5484-86f4-042e19b222c4', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'already / yet' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8076b1f8-b5ec-5fe0-9dc2-877d73c565b9', id, '82a5f9f5-203d-5484-86f4-042e19b222c4', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'since / for' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8076b1f8-b5ec-5fe0-9dc2-877d73c565b9', id, '82a5f9f5-203d-5484-86f4-042e19b222c4', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'irregular verb' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8076b1f8-b5ec-5fe0-9dc2-877d73c565b9', id, '82a5f9f5-203d-5484-86f4-042e19b222c4', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'to complete the sentence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8076b1f8-b5ec-5fe0-9dc2-877d73c565b9', id, '82a5f9f5-203d-5484-86f4-042e19b222c4', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'gap fill' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8076b1f8-b5ec-5fe0-9dc2-877d73c565b9', id, '376ad9fd-030c-5bb7-bcad-74162ea7885b', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'will / going to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8076b1f8-b5ec-5fe0-9dc2-877d73c565b9', id, '376ad9fd-030c-5bb7-bcad-74162ea7885b', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'arrangement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8076b1f8-b5ec-5fe0-9dc2-877d73c565b9', id, '376ad9fd-030c-5bb7-bcad-74162ea7885b', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'prediction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8076b1f8-b5ec-5fe0-9dc2-877d73c565b9', id, '376ad9fd-030c-5bb7-bcad-74162ea7885b', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'comparative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8076b1f8-b5ec-5fe0-9dc2-877d73c565b9', id, '376ad9fd-030c-5bb7-bcad-74162ea7885b', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'superlative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8076b1f8-b5ec-5fe0-9dc2-877d73c565b9', id, '376ad9fd-030c-5bb7-bcad-74162ea7885b', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'than' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8076b1f8-b5ec-5fe0-9dc2-877d73c565b9', id, '376ad9fd-030c-5bb7-bcad-74162ea7885b', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'the ...est' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8076b1f8-b5ec-5fe0-9dc2-877d73c565b9', id, 'd31981e5-942f-568e-aab9-c2320103f76d', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'common mistake' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8076b1f8-b5ec-5fe0-9dc2-877d73c565b9', id, 'd31981e5-942f-568e-aab9-c2320103f76d', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to mark the signal' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8076b1f8-b5ec-5fe0-9dc2-877d73c565b9', id, 'd31981e5-942f-568e-aab9-c2320103f76d', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to translate literally' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8076b1f8-b5ec-5fe0-9dc2-877d73c565b9', id, 'd31981e5-942f-568e-aab9-c2320103f76d', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'reliable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8076b1f8-b5ec-5fe0-9dc2-877d73c565b9', id, 'd31981e5-942f-568e-aab9-c2320103f76d', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to eliminate options' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8076b1f8-b5ec-5fe0-9dc2-877d73c565b9', id, 'd31981e5-942f-568e-aab9-c2320103f76d', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'guessing' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8076b1f8-b5ec-5fe0-9dc2-877d73c565b9', id, 'd31981e5-942f-568e-aab9-c2320103f76d', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'clue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
