-- Track: B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('7382d2a4-9665-500e-b30c-a9c75d3fa5b3', 'B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS', 'Выводы, отношение автора и предвзятость', 'Развивайте экзаменационные навыки уровня B2 по теме «Выводы, отношение автора и предвзятость», анализируя сложные задания, доказательства и языковые варианты.', '{"en":"Reading Inference, Attitude and Bias","ru":"Выводы, отношение автора и предвзятость"}'::jsonb, '{"en":"Develop B2 exam skills for reading inference, attitude and bias by analysing complex tasks, evidence, and language choices.","ru":"Развивайте экзаменационные навыки уровня B2 по теме «Выводы, отношение автора и предвзятость», анализируя сложные задания, доказательства и языковые варианты."}'::jsonb, 'en', 'B2', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('eca92ee9-1c03-577d-92d7-711313d13320', NULL, 'Анализ задания и ключевые понятия', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Inferring Unstated Meaning","ru":"Анализ задания и ключевые понятия"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('afa139fc-03d6-5529-9ed8-2fcd3beb737d', 'eca92ee9-1c03-577d-92d7-711313d13320', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L1_D01","left":"implicit meaning","right":"неявный смысл"},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L1_D02","left":"authorial attitude","right":"отношение автора"},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L1_D03","left":"qualified claim","right":"утверждение с оговоркой"},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L1_D04","left":"loaded language","right":"оценочно окрашенная лексика"},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L1_D05","left":"selective evidence","right":"избирательные доказательства"},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L1_D06","left":"underlying assumption","right":"скрытое предположение"},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L1_D07","left":"tentative","right":"осторожный"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b986203a-9afa-5707-a76a-e6b457ee756d', 'eca92ee9-1c03-577d-92d7-711313d13320', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L1_D08","is_correct":true,"text":"The implicit meaning is that the reform produced some benefits, although the author doubts whether they justify the wider cost."},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L1_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L1_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2d61466-f5f6-543f-b350-8c035d69291d', 'eca92ee9-1c03-577d-92d7-711313d13320', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The implicit meaning is that the reform produced some benefits, although the author doubts whether they justify the wider cost.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Неявный смысл заключается в том, что реформа принесла некоторые выгоды, хотя автор сомневается, оправдывают ли они более широкие затраты.","target_language":"en","word_bank":["The","implicit","meaning","is","that","the","reform","produced","some","benefits",",","although","the","author","doubts","whether","they","justify","the","wider","cost","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('542fdbd2-c18f-56f6-82de-e1f5d29ec040', 'eca92ee9-1c03-577d-92d7-711313d13320', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"implicit meaning","instruction":"Выберите подходящее слово.","options":["implicit meaning","loaded language","underlying assumption"],"sentence_template":"The ___ is that the reform produced some benefits, although the author doubts whether they justify the wider cost."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5db3f804-6d3b-5c5a-9344-484036501ad5', 'eca92ee9-1c03-577d-92d7-711313d13320', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","implicit","meaning","is","that","the","reform","produced","some","benefits",",","although","the","author","doubts","whether","they","justify","the","wider","cost","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","cost","wider","the","justify","they","whether","doubts","author","the","although",",","benefits","some","produced","reform","the","that","is","meaning","implicit","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('77d107a7-81f6-5512-bf19-99de9b8a8ead', 'eca92ee9-1c03-577d-92d7-711313d13320', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The implicit meaning is that the reform produced some benefits, although the author doubts whether they justify the wider cost. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5715008-d2fc-5af1-8cae-b6e2b1f029d8', 'eca92ee9-1c03-577d-92d7-711313d13320', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The implicit meaning is that the reform produced some benefits, although the author doubts whether they justify the wider cost. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Неявный смысл заключается в том, что реформа принесла некоторые выгоды, хотя автор сомневается, оправдывают ли они более широкие затраты. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9ac22fb1-f01d-57a4-8575-5afc252aeceb', 'eca92ee9-1c03-577d-92d7-711313d13320', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"The implicit meaning is that the reform produced some benefits, although the author doubts whether they justify the wider cost.","translation":"Неявный смысл заключается в том, что реформа принесла некоторые выгоды, хотя автор сомневается, оправдывают ли они более широкие затраты.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Inferring Unstated Meaning"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e408921-ee4c-5a79-8775-12c9675af6d9', 'eca92ee9-1c03-577d-92d7-711313d13320', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“implicit meaning” means an idea communicated without direct statement.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L1_D11","is_correct":true,"text":"an idea communicated without direct statement"},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L1_D12","is_correct":false,"text":"the writer’s evaluative position toward a topic"},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L1_D13","is_correct":false,"text":"a statement limited to remain accurate"}],"word":"implicit meaning"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4eb009f5-7baa-5a1c-ac72-cbf06df512b5', 'eca92ee9-1c03-577d-92d7-711313d13320', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The implicit meaning is that the reform produced some benefits, although the author doubts whether they justify the wider cost.","explanation":"The missing B2 exam expression is “implicit meaning”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"implicit meaning","id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L1_D14","is_correct":true},{"audio_text":"qualified claim","id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L1_D15","is_correct":false},{"audio_text":"selective evidence","id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L1_D16","is_correct":false}],"sentence_template":"The ___ is that the reform produced some benefits, although the author doubts whether they justify the wider cost."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ff12062e-6ca9-5512-b2d0-19b6832f99ef', 'eca92ee9-1c03-577d-92d7-711313d13320', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"implicit meaning","explanation":"The complete answer uses “implicit meaning” accurately.","hint_prefix":"impl","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ is that the reform produced some benefits, although the author doubts whether they justify the wider cost."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7109da3a-a3fe-598a-b26e-ab9c3bf4b0dc', 'eca92ee9-1c03-577d-92d7-711313d13320', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"implicit meaning","id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L1_D17","text":"implicit meaning"},{"audio_text":"authorial attitude","id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L1_D18","text":"authorial attitude"},{"audio_text":"qualified claim","id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L1_D19","text":"qualified claim"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('852026a0-7fbe-56b9-ba03-507253684e1e', 'eca92ee9-1c03-577d-92d7-711313d13320', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Inferring Unstated Meaning”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L1_D20","is_correct":true,"text":"The implicit meaning is that the reform produced some benefits, although the author doubts whether they justify the wider cost."},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L1_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L1_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7382d2a4-9665-500e-b30c-a9c75d3fa5b3', 'eca92ee9-1c03-577d-92d7-711313d13320', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7a88c0ef-4510-504a-a04d-c50938fb88e1', NULL, 'Точное применение стратегии', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Identifying Authorial Attitude","ru":"Точное применение стратегии"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('615d3941-1cac-51c9-a7fe-ab7fb96aea36', '7a88c0ef-4510-504a-a04d-c50938fb88e1', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L2_D01","left":"implicit meaning","right":"неявный смысл"},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L2_D02","left":"authorial attitude","right":"отношение автора"},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L2_D03","left":"qualified claim","right":"утверждение с оговоркой"},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L2_D04","left":"loaded language","right":"оценочно окрашенная лексика"},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L2_D05","left":"selective evidence","right":"избирательные доказательства"},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L2_D06","left":"underlying assumption","right":"скрытое предположение"},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L2_D07","left":"tentative","right":"осторожный"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('64a45bbc-30f1-5d1e-84f6-82eea4c34e44', '7a88c0ef-4510-504a-a04d-c50938fb88e1', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L2_D08","is_correct":true,"text":"The authorial attitude is cautiously critical, as shown by qualified claims rather than openly hostile language."},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L2_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L2_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e82e24f-4835-57c8-8c8e-11ff1807990d', '7a88c0ef-4510-504a-a04d-c50938fb88e1', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The authorial attitude is cautiously critical, as shown by qualified claims rather than openly hostile language.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Отношение автора является осторожно критическим, что проявляется в утверждениях с оговорками, а не в откровенно враждебной лексике.","target_language":"en","word_bank":["The","authorial","attitude","is","cautiously","critical",",","as","shown","by","qualified","claims","rather","than","openly","hostile","language","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5da9a7b6-387c-516f-8dbf-7d5ad25cd5f4', '7a88c0ef-4510-504a-a04d-c50938fb88e1', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"authorial attitude","instruction":"Выберите подходящее слово.","options":["authorial attitude","selective evidence","tentative"],"sentence_template":"The ___ is cautiously critical, as shown by qualified claims rather than openly hostile language."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc55588f-bf55-5fd6-87a7-dd64ac335258', '7a88c0ef-4510-504a-a04d-c50938fb88e1', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","authorial","attitude","is","cautiously","critical",",","as","shown","by","qualified","claims","rather","than","openly","hostile","language","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","language","hostile","openly","than","rather","claims","qualified","by","shown","as",",","critical","cautiously","is","attitude","authorial","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dcf3e4fb-c28d-5e87-afd3-259f5041e3a7', '7a88c0ef-4510-504a-a04d-c50938fb88e1', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The authorial attitude is cautiously critical, as shown by qualified claims rather than openly hostile language. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('641d4a11-ab8d-5420-ab54-b8552d525ace', '7a88c0ef-4510-504a-a04d-c50938fb88e1', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The authorial attitude is cautiously critical, as shown by qualified claims rather than openly hostile language. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Отношение автора является осторожно критическим, что проявляется в утверждениях с оговорками, а не в откровенно враждебной лексике. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0cd6f219-8465-5f59-ba85-ee251d938b9d', '7a88c0ef-4510-504a-a04d-c50938fb88e1', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"The authorial attitude is cautiously critical, as shown by qualified claims rather than openly hostile language.","translation":"Отношение автора является осторожно критическим, что проявляется в утверждениях с оговорками, а не в откровенно враждебной лексике.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Identifying Authorial Attitude"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('29badab8-519e-5ecc-a811-4760a4742b8f', '7a88c0ef-4510-504a-a04d-c50938fb88e1', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“authorial attitude” means the writer’s evaluative position toward a topic.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L2_D11","is_correct":true,"text":"the writer’s evaluative position toward a topic"},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L2_D12","is_correct":false,"text":"a statement limited to remain accurate"},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L2_D13","is_correct":false,"text":"wording designed to influence emotion or judgement"}],"word":"authorial attitude"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('539b2314-f105-5ee2-9f36-eaa718c63e6c', '7a88c0ef-4510-504a-a04d-c50938fb88e1', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The authorial attitude is cautiously critical, as shown by qualified claims rather than openly hostile language.","explanation":"The missing B2 exam expression is “authorial attitude”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"authorial attitude","id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L2_D14","is_correct":true},{"audio_text":"loaded language","id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L2_D15","is_correct":false},{"audio_text":"underlying assumption","id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L2_D16","is_correct":false}],"sentence_template":"The ___ is cautiously critical, as shown by qualified claims rather than openly hostile language."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('02229750-82bb-596f-a278-429886fea105', '7a88c0ef-4510-504a-a04d-c50938fb88e1', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"authorial attitude","explanation":"The complete answer uses “authorial attitude” accurately.","hint_prefix":"auth","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ is cautiously critical, as shown by qualified claims rather than openly hostile language."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('48bbbfb4-da40-5edb-8f80-658cf790307b', '7a88c0ef-4510-504a-a04d-c50938fb88e1', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"implicit meaning","id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L2_D17","text":"implicit meaning"},{"audio_text":"authorial attitude","id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L2_D18","text":"authorial attitude"},{"audio_text":"qualified claim","id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L2_D19","text":"qualified claim"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c926f2ab-4ff3-5fff-8265-5775ea62eedb', '7a88c0ef-4510-504a-a04d-c50938fb88e1', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Identifying Authorial Attitude”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L2_D20","is_correct":true,"text":"The authorial attitude is cautiously critical, as shown by qualified claims rather than openly hostile language."},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L2_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L2_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7382d2a4-9665-500e-b30c-a9c75d3fa5b3', '7a88c0ef-4510-504a-a04d-c50938fb88e1', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('39fa6ed5-c3c8-5199-ad1a-1095c4f56fb3', NULL, 'Комплексная экзаменационная практика', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Evaluating Bias and Qualification","ru":"Комплексная экзаменационная практика"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b3f73abd-fb90-58fd-b9d1-8fe5c38abca2', '39fa6ed5-c3c8-5199-ad1a-1095c4f56fb3', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L3_D01","left":"implicit meaning","right":"неявный смысл"},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L3_D02","left":"authorial attitude","right":"отношение автора"},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L3_D03","left":"qualified claim","right":"утверждение с оговоркой"},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L3_D04","left":"loaded language","right":"оценочно окрашенная лексика"},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L3_D05","left":"selective evidence","right":"избирательные доказательства"},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L3_D06","left":"underlying assumption","right":"скрытое предположение"},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L3_D07","left":"tentative","right":"осторожный"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('efa1e86e-2e8e-52ce-8400-952b42c21ed4', '39fa6ed5-c3c8-5199-ad1a-1095c4f56fb3', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L3_D08","is_correct":true,"text":"Selective evidence and loaded language suggest bias, but the conclusion should remain tentative unless contrary sources are examined."},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L3_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L3_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f8516e06-a215-5b4a-b764-b0f25ac3d422', '39fa6ed5-c3c8-5199-ad1a-1095c4f56fb3', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Selective evidence and loaded language suggest bias, but the conclusion should remain tentative unless contrary sources are examined.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Избирательные доказательства и оценочно окрашенная лексика указывают на предвзятость, но вывод должен оставаться осторожным до изучения противоположных источников.","target_language":"en","word_bank":["Selective","evidence","and","loaded","language","suggest","bias",",","but","the","conclusion","should","remain","tentative","unless","contrary","sources","are","examined","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8c5035d2-ddc9-55dd-ada8-14d5899ba959', '39fa6ed5-c3c8-5199-ad1a-1095c4f56fb3', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"qualified claim","instruction":"Выберите подходящее слово.","options":["qualified claim","underlying assumption","implicit meaning"],"sentence_template":"Selective evidence and loaded language suggest bias, but the conclusion should remain tentative unless contrary sources are examined."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('559b2b9a-47ae-5ffd-9c70-26799065941f', '39fa6ed5-c3c8-5199-ad1a-1095c4f56fb3', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Selective","evidence","and","loaded","language","suggest","bias",",","but","the","conclusion","should","remain","tentative","unless","contrary","sources","are","examined","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","examined","are","sources","contrary","unless","tentative","remain","should","conclusion","the","but",",","bias","suggest","language","loaded","and","evidence","Selective"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9ba19ebd-8d9b-52d0-8017-a5a7364b895c', '39fa6ed5-c3c8-5199-ad1a-1095c4f56fb3', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Selective evidence and loaded language suggest bias, but the conclusion should remain tentative unless contrary sources are examined. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a5a5cbb5-1a65-5061-9984-cd7b0f0700f6', '39fa6ed5-c3c8-5199-ad1a-1095c4f56fb3', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Selective evidence and loaded language suggest bias, but the conclusion should remain tentative unless contrary sources are examined. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Избирательные доказательства и оценочно окрашенная лексика указывают на предвзятость, но вывод должен оставаться осторожным до изучения противоположных источников. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('713ab5bd-c0b8-5001-a0fa-5abf5d4d34bc', '39fa6ed5-c3c8-5199-ad1a-1095c4f56fb3', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Selective evidence and loaded language suggest bias, but the conclusion should remain tentative unless contrary sources are examined.","translation":"Избирательные доказательства и оценочно окрашенная лексика указывают на предвзятость, но вывод должен оставаться осторожным до изучения противоположных источников.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Evaluating Bias and Qualification"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa981a0d-7319-5739-b6c3-ee25d0a377be', '39fa6ed5-c3c8-5199-ad1a-1095c4f56fb3', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“qualified claim” means a statement limited to remain accurate.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L3_D11","is_correct":true,"text":"a statement limited to remain accurate"},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L3_D12","is_correct":false,"text":"wording designed to influence emotion or judgement"},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L3_D13","is_correct":false,"text":"support chosen while contrary information is omitted"}],"word":"qualified claim"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc59a36f-be13-52c7-866f-4d9406b2f007', '39fa6ed5-c3c8-5199-ad1a-1095c4f56fb3', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Selective evidence and loaded language suggest bias, but the conclusion should remain tentative unless contrary sources are examined.","explanation":"The missing B2 exam expression is “qualified claim”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"qualified claim","id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L3_D14","is_correct":true},{"audio_text":"selective evidence","id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L3_D15","is_correct":false},{"audio_text":"tentative","id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L3_D16","is_correct":false}],"sentence_template":"Selective evidence and loaded language suggest bias, but the conclusion should remain tentative unless contrary sources are examined."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da55f536-5d5a-51e6-a697-5e766cb3f976', '39fa6ed5-c3c8-5199-ad1a-1095c4f56fb3', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"qualified claim","explanation":"The complete answer uses “qualified claim” accurately.","hint_prefix":"qual","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Selective evidence and loaded language suggest bias, but the conclusion should remain tentative unless contrary sources are examined."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('140e357a-91b7-5701-b67c-b03b0b2e00ca', '39fa6ed5-c3c8-5199-ad1a-1095c4f56fb3', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"implicit meaning","id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L3_D17","text":"implicit meaning"},{"audio_text":"authorial attitude","id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L3_D18","text":"authorial attitude"},{"audio_text":"qualified claim","id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L3_D19","text":"qualified claim"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('638da479-9f61-549c-a89a-98e7b67ef063', '39fa6ed5-c3c8-5199-ad1a-1095c4f56fb3', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Evaluating Bias and Qualification”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L3_D20","is_correct":true,"text":"Selective evidence and loaded language suggest bias, but the conclusion should remain tentative unless contrary sources are examined."},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L3_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_READING_INFERENCE_ATTITUDE_AND_BIAS_L3_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7382d2a4-9665-500e-b30c-a9c75d3fa5b3', '39fa6ed5-c3c8-5199-ad1a-1095c4f56fb3', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('47e8c231-d9f9-57ca-a8f6-b2a78c3dd9be', 'en', 'implicit meaning', 'неявный смысл', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('81b16e0a-c190-533f-a7f0-f074072cb85d', 'en', 'authorial attitude', 'отношение автора', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5e139d85-563b-522c-b86a-f212a200a964', 'en', 'qualified claim', 'утверждение с оговоркой', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41afd1cb-b75b-5c77-a1ce-fb77f3d7a4c9', 'en', 'loaded language', 'оценочно окрашенная лексика', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e6f37453-1df3-544b-a6c3-57438c886dd6', 'en', 'selective evidence', 'избирательные доказательства', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ec871ee-94be-5636-a202-2f088ecbdaa0', 'en', 'underlying assumption', 'скрытое предположение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('14224bec-84d5-5cd4-b4f7-2188cf234b36', 'en', 'tentative', 'осторожный', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('47e8c231-d9f9-57ca-a8f6-b2a78c3dd9be', 'en', 'implicit meaning', 'неявный смысл', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('81b16e0a-c190-533f-a7f0-f074072cb85d', 'en', 'authorial attitude', 'отношение автора', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5e139d85-563b-522c-b86a-f212a200a964', 'en', 'qualified claim', 'утверждение с оговоркой', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41afd1cb-b75b-5c77-a1ce-fb77f3d7a4c9', 'en', 'loaded language', 'оценочно окрашенная лексика', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e6f37453-1df3-544b-a6c3-57438c886dd6', 'en', 'selective evidence', 'избирательные доказательства', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ec871ee-94be-5636-a202-2f088ecbdaa0', 'en', 'underlying assumption', 'скрытое предположение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('14224bec-84d5-5cd4-b4f7-2188cf234b36', 'en', 'tentative', 'осторожный', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('47e8c231-d9f9-57ca-a8f6-b2a78c3dd9be', 'en', 'implicit meaning', 'неявный смысл', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('81b16e0a-c190-533f-a7f0-f074072cb85d', 'en', 'authorial attitude', 'отношение автора', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5e139d85-563b-522c-b86a-f212a200a964', 'en', 'qualified claim', 'утверждение с оговоркой', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41afd1cb-b75b-5c77-a1ce-fb77f3d7a4c9', 'en', 'loaded language', 'оценочно окрашенная лексика', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e6f37453-1df3-544b-a6c3-57438c886dd6', 'en', 'selective evidence', 'избирательные доказательства', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ec871ee-94be-5636-a202-2f088ecbdaa0', 'en', 'underlying assumption', 'скрытое предположение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('14224bec-84d5-5cd4-b4f7-2188cf234b36', 'en', 'tentative', 'осторожный', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7382d2a4-9665-500e-b30c-a9c75d3fa5b3', id, 'eca92ee9-1c03-577d-92d7-711313d13320', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'implicit meaning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7382d2a4-9665-500e-b30c-a9c75d3fa5b3', id, 'eca92ee9-1c03-577d-92d7-711313d13320', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'authorial attitude' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7382d2a4-9665-500e-b30c-a9c75d3fa5b3', id, 'eca92ee9-1c03-577d-92d7-711313d13320', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualified claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7382d2a4-9665-500e-b30c-a9c75d3fa5b3', id, 'eca92ee9-1c03-577d-92d7-711313d13320', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'loaded language' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7382d2a4-9665-500e-b30c-a9c75d3fa5b3', id, 'eca92ee9-1c03-577d-92d7-711313d13320', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'selective evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7382d2a4-9665-500e-b30c-a9c75d3fa5b3', id, 'eca92ee9-1c03-577d-92d7-711313d13320', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'underlying assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7382d2a4-9665-500e-b30c-a9c75d3fa5b3', id, 'eca92ee9-1c03-577d-92d7-711313d13320', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'tentative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7382d2a4-9665-500e-b30c-a9c75d3fa5b3', id, '7a88c0ef-4510-504a-a04d-c50938fb88e1', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'implicit meaning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7382d2a4-9665-500e-b30c-a9c75d3fa5b3', id, '7a88c0ef-4510-504a-a04d-c50938fb88e1', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'authorial attitude' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7382d2a4-9665-500e-b30c-a9c75d3fa5b3', id, '7a88c0ef-4510-504a-a04d-c50938fb88e1', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualified claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7382d2a4-9665-500e-b30c-a9c75d3fa5b3', id, '7a88c0ef-4510-504a-a04d-c50938fb88e1', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'loaded language' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7382d2a4-9665-500e-b30c-a9c75d3fa5b3', id, '7a88c0ef-4510-504a-a04d-c50938fb88e1', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'selective evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7382d2a4-9665-500e-b30c-a9c75d3fa5b3', id, '7a88c0ef-4510-504a-a04d-c50938fb88e1', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'underlying assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7382d2a4-9665-500e-b30c-a9c75d3fa5b3', id, '7a88c0ef-4510-504a-a04d-c50938fb88e1', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'tentative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7382d2a4-9665-500e-b30c-a9c75d3fa5b3', id, '39fa6ed5-c3c8-5199-ad1a-1095c4f56fb3', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'implicit meaning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7382d2a4-9665-500e-b30c-a9c75d3fa5b3', id, '39fa6ed5-c3c8-5199-ad1a-1095c4f56fb3', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'authorial attitude' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7382d2a4-9665-500e-b30c-a9c75d3fa5b3', id, '39fa6ed5-c3c8-5199-ad1a-1095c4f56fb3', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualified claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7382d2a4-9665-500e-b30c-a9c75d3fa5b3', id, '39fa6ed5-c3c8-5199-ad1a-1095c4f56fb3', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'loaded language' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7382d2a4-9665-500e-b30c-a9c75d3fa5b3', id, '39fa6ed5-c3c8-5199-ad1a-1095c4f56fb3', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'selective evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7382d2a4-9665-500e-b30c-a9c75d3fa5b3', id, '39fa6ed5-c3c8-5199-ad1a-1095c4f56fb3', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'underlying assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7382d2a4-9665-500e-b30c-a9c75d3fa5b3', id, '39fa6ed5-c3c8-5199-ad1a-1095c4f56fb3', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'tentative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
