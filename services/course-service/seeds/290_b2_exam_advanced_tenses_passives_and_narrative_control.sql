-- Track: B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('c1f85fb0-4fd5-5fc5-b6ee-1dd461f2cb34', 'B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL', 'Сложные времена, пассивный залог и повествование', 'Развивайте экзаменационные навыки уровня B2 по теме «Сложные времена, пассивный залог и повествование», анализируя сложные задания, доказательства и языковые варианты.', '{"en":"Advanced Tenses, Passives and Narrative Control","ru":"Сложные времена, пассивный залог и повествование"}'::jsonb, '{"en":"Develop B2 exam skills for advanced tenses, passives and narrative control by analysing complex tasks, evidence, and language choices.","ru":"Развивайте экзаменационные навыки уровня B2 по теме «Сложные времена, пассивный залог и повествование», анализируя сложные задания, доказательства и языковые варианты."}'::jsonb, 'en', 'B2', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('fd7318b7-6539-5d32-bbf9-e3bda38008fe', NULL, 'Анализ задания и ключевые понятия', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Controlling Narrative Sequence","ru":"Анализ задания и ключевые понятия"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d21dd22-b907-5c53-a37e-e260e811b426', 'fd7318b7-6539-5d32-bbf9-e3bda38008fe', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L1_D01","left":"narrative sequence","right":"повествовательная последовательность"},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L1_D02","left":"past perfect continuous","right":"прошедшее совершенное длительное"},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L1_D03","left":"future perfect","right":"будущее совершенное"},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L1_D04","left":"passive reporting structure","right":"пассивная конструкция сообщения"},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L1_D05","left":"causative form","right":"каузативная конструкция"},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L1_D06","left":"background event","right":"фоновое событие"},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L1_D07","left":"completed outcome","right":"завершённый результат"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('231792ea-0328-58e4-a951-34d85a3c6208', 'fd7318b7-6539-5d32-bbf9-e3bda38008fe', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L1_D08","is_correct":true,"text":"The narrative sequence becomes clear once the past perfect distinguishes the earlier warning from the decision that followed."},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L1_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L1_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d51bd8b8-8a61-5c9f-8288-0c51be054bc3', 'fd7318b7-6539-5d32-bbf9-e3bda38008fe', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The narrative sequence becomes clear once the past perfect distinguishes the earlier warning from the decision that followed.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Повествовательная последовательность становится ясной, когда Past Perfect отделяет более раннее предупреждение от последовавшего решения.","target_language":"en","word_bank":["The","narrative","sequence","becomes","clear","once","the","past","perfect","distinguishes","the","earlier","warning","from","the","decision","that","followed","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('551ed9ec-b1b3-546d-a44c-29cfb2adce22', 'fd7318b7-6539-5d32-bbf9-e3bda38008fe', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"narrative sequence","instruction":"Выберите подходящее слово.","options":["narrative sequence","passive reporting structure","background event"],"sentence_template":"The ___ becomes clear once the past perfect distinguishes the earlier warning from the decision that followed."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb57b25c-b7a6-52d8-bdc3-acac0c46d6c3', 'fd7318b7-6539-5d32-bbf9-e3bda38008fe', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","narrative","sequence","becomes","clear","once","the","past","perfect","distinguishes","the","earlier","warning","from","the","decision","that","followed","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","followed","that","decision","the","from","warning","earlier","the","distinguishes","perfect","past","the","once","clear","becomes","sequence","narrative","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d04cebc-7dd1-5cef-bf60-4ba7076ecd22', 'fd7318b7-6539-5d32-bbf9-e3bda38008fe', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The narrative sequence becomes clear once the past perfect distinguishes the earlier warning from the decision that followed. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2b265cc-1c89-52cb-9473-2eeb28c8716a', 'fd7318b7-6539-5d32-bbf9-e3bda38008fe', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The narrative sequence becomes clear once the past perfect distinguishes the earlier warning from the decision that followed. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Повествовательная последовательность становится ясной, когда Past Perfect отделяет более раннее предупреждение от последовавшего решения. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb918b9e-ebbc-5074-954d-027c1255c7e6', 'fd7318b7-6539-5d32-bbf9-e3bda38008fe', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"The narrative sequence becomes clear once the past perfect distinguishes the earlier warning from the decision that followed.","translation":"Повествовательная последовательность становится ясной, когда Past Perfect отделяет более раннее предупреждение от последовавшего решения.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Controlling Narrative Sequence"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('781a30e9-bc55-5f86-a18c-fcc4d79ce5cd', 'fd7318b7-6539-5d32-bbf9-e3bda38008fe', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“narrative sequence” means the chronological and logical order of events.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L1_D11","is_correct":true,"text":"the chronological and logical order of events"},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L1_D12","is_correct":false,"text":"a form showing duration before a past point"},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L1_D13","is_correct":false,"text":"a form showing completion before a future time"}],"word":"narrative sequence"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5bd8e443-a006-5ae5-b0b9-077fe0c81b39', 'fd7318b7-6539-5d32-bbf9-e3bda38008fe', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The narrative sequence becomes clear once the past perfect distinguishes the earlier warning from the decision that followed.","explanation":"The missing B2 exam expression is “narrative sequence”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"narrative sequence","id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L1_D14","is_correct":true},{"audio_text":"future perfect","id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L1_D15","is_correct":false},{"audio_text":"causative form","id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L1_D16","is_correct":false}],"sentence_template":"The ___ becomes clear once the past perfect distinguishes the earlier warning from the decision that followed."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7b23c2d4-2143-59ef-8232-a95754f78b9a', 'fd7318b7-6539-5d32-bbf9-e3bda38008fe', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"narrative sequence","explanation":"The complete answer uses “narrative sequence” accurately.","hint_prefix":"narr","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ becomes clear once the past perfect distinguishes the earlier warning from the decision that followed."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('98bb89d0-f3fa-5e61-b907-12277a5bea04', 'fd7318b7-6539-5d32-bbf9-e3bda38008fe', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"narrative sequence","id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L1_D17","text":"narrative sequence"},{"audio_text":"past perfect continuous","id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L1_D18","text":"past perfect continuous"},{"audio_text":"future perfect","id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L1_D19","text":"future perfect"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('27c14031-a69e-5e63-9141-12a762d4551a', 'fd7318b7-6539-5d32-bbf9-e3bda38008fe', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Controlling Narrative Sequence”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L1_D20","is_correct":true,"text":"The narrative sequence becomes clear once the past perfect distinguishes the earlier warning from the decision that followed."},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L1_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L1_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c1f85fb0-4fd5-5fc5-b6ee-1dd461f2cb34', 'fd7318b7-6539-5d32-bbf9-e3bda38008fe', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0d6f25b8-e13f-5595-8d45-6d3a84f55619', NULL, 'Точное применение стратегии', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Using Perfect and Continuous Forms","ru":"Точное применение стратегии"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9adce087-a9ee-585a-9786-d8db35508ecc', '0d6f25b8-e13f-5595-8d45-6d3a84f55619', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L2_D01","left":"narrative sequence","right":"повествовательная последовательность"},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L2_D02","left":"past perfect continuous","right":"прошедшее совершенное длительное"},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L2_D03","left":"future perfect","right":"будущее совершенное"},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L2_D04","left":"passive reporting structure","right":"пассивная конструкция сообщения"},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L2_D05","left":"causative form","right":"каузативная конструкция"},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L2_D06","left":"background event","right":"фоновое событие"},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L2_D07","left":"completed outcome","right":"завершённый результат"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5304a858-e3b2-5221-b881-09cfd5cc0b64', '0d6f25b8-e13f-5595-8d45-6d3a84f55619', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L2_D08","is_correct":true,"text":"They had been negotiating for several months before the revised agreement was finally approved."},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L2_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L2_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('22c6f21e-b9d7-57af-9a4d-acf6b6f0e660', '0d6f25b8-e13f-5595-8d45-6d3a84f55619', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"They had been negotiating for several months before the revised agreement was finally approved.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Они вели переговоры несколько месяцев, прежде чем пересмотренное соглашение наконец было утверждено.","target_language":"en","word_bank":["They","had","been","negotiating","for","several","months","before","the","revised","agreement","was","finally","approved","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5d2fea1a-f9ab-52e1-b072-51f3a66d8baf', '0d6f25b8-e13f-5595-8d45-6d3a84f55619', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"past perfect continuous","instruction":"Выберите подходящее слово.","options":["past perfect continuous","causative form","completed outcome"],"sentence_template":"They had been negotiating for several months before the revised agreement was finally approved."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ed0dc65d-9c75-53e0-884c-8d54090d3316', '0d6f25b8-e13f-5595-8d45-6d3a84f55619', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["They","had","been","negotiating","for","several","months","before","the","revised","agreement","was","finally","approved","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","approved","finally","was","agreement","revised","the","before","months","several","for","negotiating","been","had","They"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ebc10b8d-9bbd-582a-a2c5-05e7508c9bd7', '0d6f25b8-e13f-5595-8d45-6d3a84f55619', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"They had been negotiating for several months before the revised agreement was finally approved. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5409c44a-9e44-5761-b2dd-286eaf5e8ab1', '0d6f25b8-e13f-5595-8d45-6d3a84f55619', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"They had been negotiating for several months before the revised agreement was finally approved. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Они вели переговоры несколько месяцев, прежде чем пересмотренное соглашение наконец было утверждено. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ebc51945-c99e-53ef-8212-b7bf47dbd493', '0d6f25b8-e13f-5595-8d45-6d3a84f55619', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"They had been negotiating for several months before the revised agreement was finally approved.","translation":"Они вели переговоры несколько месяцев, прежде чем пересмотренное соглашение наконец было утверждено.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Using Perfect and Continuous Forms"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f0b5c1fe-c0b4-5c8e-b745-bb3b9c74c217', '0d6f25b8-e13f-5595-8d45-6d3a84f55619', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“past perfect continuous” means a form showing duration before a past point.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L2_D11","is_correct":true,"text":"a form showing duration before a past point"},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L2_D12","is_correct":false,"text":"a form showing completion before a future time"},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L2_D13","is_correct":false,"text":"an impersonal form used to report beliefs or claims"}],"word":"past perfect continuous"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5c4c5fd6-7b5e-5291-9278-52185027f42e', '0d6f25b8-e13f-5595-8d45-6d3a84f55619', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"They had been negotiating for several months before the revised agreement was finally approved.","explanation":"The missing B2 exam expression is “past perfect continuous”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"past perfect continuous","id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L2_D14","is_correct":true},{"audio_text":"passive reporting structure","id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L2_D15","is_correct":false},{"audio_text":"background event","id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L2_D16","is_correct":false}],"sentence_template":"They had been negotiating for several months before the revised agreement was finally approved."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5c26abc-e570-5acb-9179-66be7c3636c1', '0d6f25b8-e13f-5595-8d45-6d3a84f55619', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"past perfect continuous","explanation":"The complete answer uses “past perfect continuous” accurately.","hint_prefix":"past","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"They had been negotiating for several months before the revised agreement was finally approved."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f31d77ba-5cdd-5402-9918-c01b1292b357', '0d6f25b8-e13f-5595-8d45-6d3a84f55619', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"narrative sequence","id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L2_D17","text":"narrative sequence"},{"audio_text":"past perfect continuous","id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L2_D18","text":"past perfect continuous"},{"audio_text":"future perfect","id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L2_D19","text":"future perfect"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a05fd615-5ef1-551b-a72d-df4f8f0eeb2d', '0d6f25b8-e13f-5595-8d45-6d3a84f55619', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Using Perfect and Continuous Forms”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L2_D20","is_correct":true,"text":"They had been negotiating for several months before the revised agreement was finally approved."},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L2_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L2_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c1f85fb0-4fd5-5fc5-b6ee-1dd461f2cb34', '0d6f25b8-e13f-5595-8d45-6d3a84f55619', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('14b2d82e-7ab2-5d13-bc56-7a73ea3122de', NULL, 'Комплексная экзаменационная практика', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Choosing Active and Passive Voice","ru":"Комплексная экзаменационная практика"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('db4d76bf-fa50-5084-9a00-09ad17284114', '14b2d82e-7ab2-5d13-bc56-7a73ea3122de', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L3_D01","left":"narrative sequence","right":"повествовательная последовательность"},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L3_D02","left":"past perfect continuous","right":"прошедшее совершенное длительное"},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L3_D03","left":"future perfect","right":"будущее совершенное"},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L3_D04","left":"passive reporting structure","right":"пассивная конструкция сообщения"},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L3_D05","left":"causative form","right":"каузативная конструкция"},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L3_D06","left":"background event","right":"фоновое событие"},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L3_D07","left":"completed outcome","right":"завершённый результат"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d2468f40-a0b2-5947-a7a8-1273b0844daa', '14b2d82e-7ab2-5d13-bc56-7a73ea3122de', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L3_D08","is_correct":true,"text":"By the end of the review, the evidence will have been assessed and the final recommendations will have been published."},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L3_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L3_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3f1371e6-aebc-58e1-bcf0-bdab274b3119', '14b2d82e-7ab2-5d13-bc56-7a73ea3122de', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"By the end of the review, the evidence will have been assessed and the final recommendations will have been published.","instruction":"Соберите перевод.","source_language":"ru","source_text":"К концу проверки доказательства будут оценены, а окончательные рекомендации опубликованы.","target_language":"en","word_bank":["By","the","end","of","the","review",",","the","evidence","will","have","been","assessed","and","the","final","recommendations","will","have","been","published","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1155e4a0-737b-5d6a-b388-5229c2fec2ed', '14b2d82e-7ab2-5d13-bc56-7a73ea3122de', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"future perfect","instruction":"Выберите подходящее слово.","options":["future perfect","background event","narrative sequence"],"sentence_template":"By the end of the review, the evidence will have been assessed and the final recommendations will have been published."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a8655c02-4775-5538-94a8-8ab31288a1c8', '14b2d82e-7ab2-5d13-bc56-7a73ea3122de', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["By","the","end","of","the","review",",","the","evidence","will","have","been","assessed","and","the","final","recommendations","will","have","been","published","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","published","been","have","will","recommendations","final","the","and","assessed","been","have","will","evidence","the",",","review","the","of","end","the","By"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('09c8dd65-30ad-5d04-8f35-db1e7670508b', '14b2d82e-7ab2-5d13-bc56-7a73ea3122de', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"By the end of the review, the evidence will have been assessed and the final recommendations will have been published. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b16a6d1-0b5a-5d40-822e-34e0610a816a', '14b2d82e-7ab2-5d13-bc56-7a73ea3122de', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"By the end of the review, the evidence will have been assessed and the final recommendations will have been published. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"К концу проверки доказательства будут оценены, а окончательные рекомендации опубликованы. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a1973e3f-40d9-5deb-bdce-43bb24cd29fb', '14b2d82e-7ab2-5d13-bc56-7a73ea3122de', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"By the end of the review, the evidence will have been assessed and the final recommendations will have been published.","translation":"К концу проверки доказательства будут оценены, а окончательные рекомендации опубликованы.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Choosing Active and Passive Voice"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('564ffbe1-dab3-5028-b73c-a1e4508e3482', '14b2d82e-7ab2-5d13-bc56-7a73ea3122de', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“future perfect” means a form showing completion before a future time.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L3_D11","is_correct":true,"text":"a form showing completion before a future time"},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L3_D12","is_correct":false,"text":"an impersonal form used to report beliefs or claims"},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L3_D13","is_correct":false,"text":"a structure showing that someone arranges an action"}],"word":"future perfect"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('300c293f-5346-56c1-a131-2b427e47d1ce', '14b2d82e-7ab2-5d13-bc56-7a73ea3122de', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"By the end of the review, the evidence will have been assessed and the final recommendations will have been published.","explanation":"The missing B2 exam expression is “future perfect”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"future perfect","id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L3_D14","is_correct":true},{"audio_text":"causative form","id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L3_D15","is_correct":false},{"audio_text":"completed outcome","id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L3_D16","is_correct":false}],"sentence_template":"By the end of the review, the evidence will have been assessed and the final recommendations will have been published."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('165c0c1f-42b6-5c2e-8e37-8350853a9017', '14b2d82e-7ab2-5d13-bc56-7a73ea3122de', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"future perfect","explanation":"The complete answer uses “future perfect” accurately.","hint_prefix":"futu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"By the end of the review, the evidence will have been assessed and the final recommendations will have been published."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9f63b18f-899f-551d-b0ff-58a1c70c2c31', '14b2d82e-7ab2-5d13-bc56-7a73ea3122de', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"narrative sequence","id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L3_D17","text":"narrative sequence"},{"audio_text":"past perfect continuous","id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L3_D18","text":"past perfect continuous"},{"audio_text":"future perfect","id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L3_D19","text":"future perfect"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f660946b-a1fe-561b-bdba-42ddc0a7d10a', '14b2d82e-7ab2-5d13-bc56-7a73ea3122de', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Choosing Active and Passive Voice”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L3_D20","is_correct":true,"text":"By the end of the review, the evidence will have been assessed and the final recommendations will have been published."},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L3_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_ADVANCED_TENSES_PASSIVES_AND_NARRATIVE_CONTROL_L3_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c1f85fb0-4fd5-5fc5-b6ee-1dd461f2cb34', '14b2d82e-7ab2-5d13-bc56-7a73ea3122de', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b09e049c-fe93-5bfb-afc4-aef0d75488d9', 'en', 'narrative sequence', 'повествовательная последовательность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('591c2d5b-e0ce-533e-b3ac-dd304e414469', 'en', 'past perfect continuous', 'прошедшее совершенное длительное', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1c18c548-22f4-5e0c-97dc-b77d63d7000e', 'en', 'future perfect', 'будущее совершенное', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0bb02b4f-5067-5b91-8fb6-a00db721d6c5', 'en', 'passive reporting structure', 'пассивная конструкция сообщения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cfa7fe49-e152-58d3-8a42-97594935acf0', 'en', 'causative form', 'каузативная конструкция', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('57196840-096a-5392-9586-2c22c3e38b91', 'en', 'background event', 'фоновое событие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ec8ed438-db73-5258-b90c-e37864055015', 'en', 'completed outcome', 'завершённый результат', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b09e049c-fe93-5bfb-afc4-aef0d75488d9', 'en', 'narrative sequence', 'повествовательная последовательность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('591c2d5b-e0ce-533e-b3ac-dd304e414469', 'en', 'past perfect continuous', 'прошедшее совершенное длительное', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1c18c548-22f4-5e0c-97dc-b77d63d7000e', 'en', 'future perfect', 'будущее совершенное', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0bb02b4f-5067-5b91-8fb6-a00db721d6c5', 'en', 'passive reporting structure', 'пассивная конструкция сообщения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cfa7fe49-e152-58d3-8a42-97594935acf0', 'en', 'causative form', 'каузативная конструкция', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('57196840-096a-5392-9586-2c22c3e38b91', 'en', 'background event', 'фоновое событие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ec8ed438-db73-5258-b90c-e37864055015', 'en', 'completed outcome', 'завершённый результат', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b09e049c-fe93-5bfb-afc4-aef0d75488d9', 'en', 'narrative sequence', 'повествовательная последовательность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('591c2d5b-e0ce-533e-b3ac-dd304e414469', 'en', 'past perfect continuous', 'прошедшее совершенное длительное', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1c18c548-22f4-5e0c-97dc-b77d63d7000e', 'en', 'future perfect', 'будущее совершенное', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0bb02b4f-5067-5b91-8fb6-a00db721d6c5', 'en', 'passive reporting structure', 'пассивная конструкция сообщения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cfa7fe49-e152-58d3-8a42-97594935acf0', 'en', 'causative form', 'каузативная конструкция', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('57196840-096a-5392-9586-2c22c3e38b91', 'en', 'background event', 'фоновое событие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ec8ed438-db73-5258-b90c-e37864055015', 'en', 'completed outcome', 'завершённый результат', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c1f85fb0-4fd5-5fc5-b6ee-1dd461f2cb34', id, 'fd7318b7-6539-5d32-bbf9-e3bda38008fe', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'narrative sequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c1f85fb0-4fd5-5fc5-b6ee-1dd461f2cb34', id, 'fd7318b7-6539-5d32-bbf9-e3bda38008fe', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'past perfect continuous' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c1f85fb0-4fd5-5fc5-b6ee-1dd461f2cb34', id, 'fd7318b7-6539-5d32-bbf9-e3bda38008fe', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'future perfect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c1f85fb0-4fd5-5fc5-b6ee-1dd461f2cb34', id, 'fd7318b7-6539-5d32-bbf9-e3bda38008fe', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'passive reporting structure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c1f85fb0-4fd5-5fc5-b6ee-1dd461f2cb34', id, 'fd7318b7-6539-5d32-bbf9-e3bda38008fe', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'causative form' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c1f85fb0-4fd5-5fc5-b6ee-1dd461f2cb34', id, 'fd7318b7-6539-5d32-bbf9-e3bda38008fe', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'background event' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c1f85fb0-4fd5-5fc5-b6ee-1dd461f2cb34', id, 'fd7318b7-6539-5d32-bbf9-e3bda38008fe', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'completed outcome' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c1f85fb0-4fd5-5fc5-b6ee-1dd461f2cb34', id, '0d6f25b8-e13f-5595-8d45-6d3a84f55619', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'narrative sequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c1f85fb0-4fd5-5fc5-b6ee-1dd461f2cb34', id, '0d6f25b8-e13f-5595-8d45-6d3a84f55619', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'past perfect continuous' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c1f85fb0-4fd5-5fc5-b6ee-1dd461f2cb34', id, '0d6f25b8-e13f-5595-8d45-6d3a84f55619', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'future perfect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c1f85fb0-4fd5-5fc5-b6ee-1dd461f2cb34', id, '0d6f25b8-e13f-5595-8d45-6d3a84f55619', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'passive reporting structure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c1f85fb0-4fd5-5fc5-b6ee-1dd461f2cb34', id, '0d6f25b8-e13f-5595-8d45-6d3a84f55619', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'causative form' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c1f85fb0-4fd5-5fc5-b6ee-1dd461f2cb34', id, '0d6f25b8-e13f-5595-8d45-6d3a84f55619', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'background event' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c1f85fb0-4fd5-5fc5-b6ee-1dd461f2cb34', id, '0d6f25b8-e13f-5595-8d45-6d3a84f55619', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'completed outcome' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c1f85fb0-4fd5-5fc5-b6ee-1dd461f2cb34', id, '14b2d82e-7ab2-5d13-bc56-7a73ea3122de', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'narrative sequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c1f85fb0-4fd5-5fc5-b6ee-1dd461f2cb34', id, '14b2d82e-7ab2-5d13-bc56-7a73ea3122de', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'past perfect continuous' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c1f85fb0-4fd5-5fc5-b6ee-1dd461f2cb34', id, '14b2d82e-7ab2-5d13-bc56-7a73ea3122de', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'future perfect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c1f85fb0-4fd5-5fc5-b6ee-1dd461f2cb34', id, '14b2d82e-7ab2-5d13-bc56-7a73ea3122de', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'passive reporting structure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c1f85fb0-4fd5-5fc5-b6ee-1dd461f2cb34', id, '14b2d82e-7ab2-5d13-bc56-7a73ea3122de', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'causative form' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c1f85fb0-4fd5-5fc5-b6ee-1dd461f2cb34', id, '14b2d82e-7ab2-5d13-bc56-7a73ea3122de', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'background event' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c1f85fb0-4fd5-5fc5-b6ee-1dd461f2cb34', id, '14b2d82e-7ab2-5d13-bc56-7a73ea3122de', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'completed outcome' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
