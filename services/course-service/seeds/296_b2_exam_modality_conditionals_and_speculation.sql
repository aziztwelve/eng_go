-- Track: B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('91776ef3-370d-54f8-bbb5-386ffcd42678', 'B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION', 'Модальность, условные предложения и предположения', 'Развивайте экзаменационные навыки уровня B2 по теме «Модальность, условные предложения и предположения», анализируя сложные задания, доказательства и языковые варианты.', '{"en":"Modality, Conditionals and Speculation","ru":"Модальность, условные предложения и предположения"}'::jsonb, '{"en":"Develop B2 exam skills for modality, conditionals and speculation by analysing complex tasks, evidence, and language choices.","ru":"Развивайте экзаменационные навыки уровня B2 по теме «Модальность, условные предложения и предположения», анализируя сложные задания, доказательства и языковые варианты."}'::jsonb, 'en', 'B2', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('4db9e543-5b49-5a08-845c-4c868e6cd41a', NULL, 'Анализ задания и ключевые понятия', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Expressing Degrees of Certainty","ru":"Анализ задания и ключевые понятия"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef70652e-10d5-529a-ad60-d53e67c4957c', '4db9e543-5b49-5a08-845c-4c868e6cd41a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L1_D01","left":"degree of certainty","right":"степень уверенности"},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L1_D02","left":"modal deduction","right":"модальный вывод"},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L1_D03","left":"mixed conditional","right":"смешанное условное предложение"},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L1_D04","left":"unreal past","right":"нереальное прошлое"},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L1_D05","left":"necessary condition","right":"необходимое условие"},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L1_D06","left":"remote possibility","right":"маловероятная возможность"},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L1_D07","left":"past speculation","right":"предположение о прошлом"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('85f66af9-e6ff-57d2-8678-71733de3228a', '4db9e543-5b49-5a08-845c-4c868e6cd41a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L1_D08","is_correct":true,"text":"The degree of certainty changes significantly between “must have occurred,” “may have occurred,” and “cannot have occurred.”"},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L1_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L1_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4829d98a-65db-5acd-854e-4dabcb958dbc', '4db9e543-5b49-5a08-845c-4c868e6cd41a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The degree of certainty changes significantly between “must have occurred,” “may have occurred,” and “cannot have occurred.”","instruction":"Соберите перевод.","source_language":"ru","source_text":"Степень уверенности значительно различается в выражениях must have occurred, may have occurred и cannot have occurred.","target_language":"en","word_bank":["The","degree","of","certainty","changes","significantly","between","“","must","have","occurred",",”","“","may","have","occurred",",”","and","“","cannot","have","occurred",".”"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c36b62ae-57ba-5867-8c88-f5e3e8e8621c', '4db9e543-5b49-5a08-845c-4c868e6cd41a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"degree of certainty","instruction":"Выберите подходящее слово.","options":["degree of certainty","unreal past","remote possibility"],"sentence_template":"The ___ changes significantly between “must have occurred,” “may have occurred,” and “cannot have occurred.”"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb53e789-d935-5d01-bf3c-f29a890f6fae', '4db9e543-5b49-5a08-845c-4c868e6cd41a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","degree","of","certainty","changes","significantly","between","“","must","have","occurred",",”","“","may","have","occurred",",”","and","“","cannot","have","occurred",".”"],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".”","occurred","have","cannot","“","and",",”","occurred","have","may","“",",”","occurred","have","must","“","between","significantly","changes","certainty","of","degree","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3199317-347d-524c-8f97-7bdcd37be0b8', '4db9e543-5b49-5a08-845c-4c868e6cd41a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The degree of certainty changes significantly between “must have occurred,” “may have occurred,” and “cannot have occurred.” Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('55ae7654-6dfd-5260-ae5c-ecc511d287fc', '4db9e543-5b49-5a08-845c-4c868e6cd41a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The degree of certainty changes significantly between “must have occurred,” “may have occurred,” and “cannot have occurred.” Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Степень уверенности значительно различается в выражениях must have occurred, may have occurred и cannot have occurred. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bdd2e8c3-cef0-5094-9466-a8c3a1f56525', '4db9e543-5b49-5a08-845c-4c868e6cd41a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"The degree of certainty changes significantly between “must have occurred,” “may have occurred,” and “cannot have occurred.”","translation":"Степень уверенности значительно различается в выражениях must have occurred, may have occurred и cannot have occurred.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Expressing Degrees of Certainty"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('45ecc3e6-bff4-503c-afd9-6c953e499081', '4db9e543-5b49-5a08-845c-4c868e6cd41a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“degree of certainty” means the strength with which a conclusion is expressed.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L1_D11","is_correct":true,"text":"the strength with which a conclusion is expressed"},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L1_D12","is_correct":false,"text":"reasoning expressed through modal verbs"},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L1_D13","is_correct":false,"text":"a conditional linking different time periods"}],"word":"degree of certainty"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7df1ffe9-016d-565a-ad0c-51e263858e49', '4db9e543-5b49-5a08-845c-4c868e6cd41a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The degree of certainty changes significantly between “must have occurred,” “may have occurred,” and “cannot have occurred.”","explanation":"The missing B2 exam expression is “degree of certainty”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"degree of certainty","id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L1_D14","is_correct":true},{"audio_text":"mixed conditional","id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L1_D15","is_correct":false},{"audio_text":"necessary condition","id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L1_D16","is_correct":false}],"sentence_template":"The ___ changes significantly between “must have occurred,” “may have occurred,” and “cannot have occurred.”"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7fe5da95-7244-5b7f-a237-29ccff7ebf48', '4db9e543-5b49-5a08-845c-4c868e6cd41a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"degree of certainty","explanation":"The complete answer uses “degree of certainty” accurately.","hint_prefix":"degr","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ changes significantly between “must have occurred,” “may have occurred,” and “cannot have occurred.”"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fd8f8b3b-95a2-5b5f-bd3c-1fd649f2cfac', '4db9e543-5b49-5a08-845c-4c868e6cd41a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"degree of certainty","id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L1_D17","text":"degree of certainty"},{"audio_text":"modal deduction","id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L1_D18","text":"modal deduction"},{"audio_text":"mixed conditional","id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L1_D19","text":"mixed conditional"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb7f235e-f91e-517b-a956-2e0ff0ce3ef8', '4db9e543-5b49-5a08-845c-4c868e6cd41a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Expressing Degrees of Certainty”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L1_D20","is_correct":true,"text":"The degree of certainty changes significantly between “must have occurred,” “may have occurred,” and “cannot have occurred.”"},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L1_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L1_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('91776ef3-370d-54f8-bbb5-386ffcd42678', '4db9e543-5b49-5a08-845c-4c868e6cd41a', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('61c54002-ef39-5de4-b29e-279e096cbba4', NULL, 'Точное применение стратегии', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Using Mixed Conditionals","ru":"Точное применение стратегии"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9f2d476b-8628-529b-926e-e1172153f9a8', '61c54002-ef39-5de4-b29e-279e096cbba4', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L2_D01","left":"degree of certainty","right":"степень уверенности"},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L2_D02","left":"modal deduction","right":"модальный вывод"},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L2_D03","left":"mixed conditional","right":"смешанное условное предложение"},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L2_D04","left":"unreal past","right":"нереальное прошлое"},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L2_D05","left":"necessary condition","right":"необходимое условие"},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L2_D06","left":"remote possibility","right":"маловероятная возможность"},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L2_D07","left":"past speculation","right":"предположение о прошлом"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5f0037d3-c75e-5a59-bce2-36e84ae47f78', '61c54002-ef39-5de4-b29e-279e096cbba4', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L2_D08","is_correct":true,"text":"If the earlier warning had been taken seriously, the organisation would be better prepared now for a similar disruption."},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L2_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L2_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac1f3d6d-d063-53f0-995a-3adc5f6fac3b', '61c54002-ef39-5de4-b29e-279e096cbba4', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If the earlier warning had been taken seriously, the organisation would be better prepared now for a similar disruption.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Если бы к более раннему предупреждению отнеслись серьёзно, организация сейчас была бы лучше подготовлена к подобному сбою.","target_language":"en","word_bank":["If","the","earlier","warning","had","been","taken","seriously",",","the","organisation","would","be","better","prepared","now","for","a","similar","disruption","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('10f3b547-103c-54f5-850d-7a4db8630944', '61c54002-ef39-5de4-b29e-279e096cbba4', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"modal deduction","instruction":"Выберите подходящее слово.","options":["modal deduction","necessary condition","past speculation"],"sentence_template":"If the earlier warning had been taken seriously, the organisation would be better prepared now for a similar disruption."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6fefb6c5-43aa-5205-9b90-5009e2c44529', '61c54002-ef39-5de4-b29e-279e096cbba4', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["If","the","earlier","warning","had","been","taken","seriously",",","the","organisation","would","be","better","prepared","now","for","a","similar","disruption","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","disruption","similar","a","for","now","prepared","better","be","would","organisation","the",",","seriously","taken","been","had","warning","earlier","the","If"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('58a68249-6d0f-5315-9480-32f7455efc11', '61c54002-ef39-5de4-b29e-279e096cbba4', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If the earlier warning had been taken seriously, the organisation would be better prepared now for a similar disruption. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f5ccbfc7-ab30-5e16-88c4-da9b24493805', '61c54002-ef39-5de4-b29e-279e096cbba4', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If the earlier warning had been taken seriously, the organisation would be better prepared now for a similar disruption. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Если бы к более раннему предупреждению отнеслись серьёзно, организация сейчас была бы лучше подготовлена к подобному сбою. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bff6d580-063f-58c3-b876-249f7a15357f', '61c54002-ef39-5de4-b29e-279e096cbba4', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"If the earlier warning had been taken seriously, the organisation would be better prepared now for a similar disruption.","translation":"Если бы к более раннему предупреждению отнеслись серьёзно, организация сейчас была бы лучше подготовлена к подобному сбою.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Using Mixed Conditionals"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f6ebfb36-85bd-5131-b5dd-17dbfe1137ec', '61c54002-ef39-5de4-b29e-279e096cbba4', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“modal deduction” means reasoning expressed through modal verbs.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L2_D11","is_correct":true,"text":"reasoning expressed through modal verbs"},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L2_D12","is_correct":false,"text":"a conditional linking different time periods"},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L2_D13","is_correct":false,"text":"a hypothetical alternative to a past event"}],"word":"modal deduction"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc5bf575-cc56-5d4d-8e97-801dbfc3e429', '61c54002-ef39-5de4-b29e-279e096cbba4', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If the earlier warning had been taken seriously, the organisation would be better prepared now for a similar disruption.","explanation":"The missing B2 exam expression is “modal deduction”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"modal deduction","id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L2_D14","is_correct":true},{"audio_text":"unreal past","id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L2_D15","is_correct":false},{"audio_text":"remote possibility","id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L2_D16","is_correct":false}],"sentence_template":"If the earlier warning had been taken seriously, the organisation would be better prepared now for a similar disruption."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cb5d25f2-7620-5f11-a0b2-36e4dc7bd200', '61c54002-ef39-5de4-b29e-279e096cbba4', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"modal deduction","explanation":"The complete answer uses “modal deduction” accurately.","hint_prefix":"moda","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"If the earlier warning had been taken seriously, the organisation would be better prepared now for a similar disruption."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('047cb67c-9e9b-569f-9697-e6d73bfbb2cd', '61c54002-ef39-5de4-b29e-279e096cbba4', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"degree of certainty","id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L2_D17","text":"degree of certainty"},{"audio_text":"modal deduction","id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L2_D18","text":"modal deduction"},{"audio_text":"mixed conditional","id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L2_D19","text":"mixed conditional"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fd905c32-44a6-59f9-af8b-ab4aa6e485f6', '61c54002-ef39-5de4-b29e-279e096cbba4', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Using Mixed Conditionals”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L2_D20","is_correct":true,"text":"If the earlier warning had been taken seriously, the organisation would be better prepared now for a similar disruption."},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L2_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L2_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('91776ef3-370d-54f8-bbb5-386ffcd42678', '61c54002-ef39-5de4-b29e-279e096cbba4', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('278d9cdd-bbe1-538e-99f8-664950d05ded', NULL, 'Комплексная экзаменационная практика', 'Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа.', '{"en":"Speculating About Past Events","ru":"Комплексная экзаменационная практика"}'::jsonb, '{"en":"Complete a complex B2 exam task accurately by analysing requirements and evidence, controlling language, and justifying answer choices.","ru":"Точно выполнять сложное экзаменационное задание уровня B2, анализируя требования и доказательства, контролируя язык и обосновывая выбор ответа."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b1511915-3f0e-5345-8f68-8baa00eaa83c', '278d9cdd-bbe1-538e-99f8-664950d05ded', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L3_D01","left":"degree of certainty","right":"степень уверенности"},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L3_D02","left":"modal deduction","right":"модальный вывод"},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L3_D03","left":"mixed conditional","right":"смешанное условное предложение"},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L3_D04","left":"unreal past","right":"нереальное прошлое"},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L3_D05","left":"necessary condition","right":"необходимое условие"},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L3_D06","left":"remote possibility","right":"маловероятная возможность"},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L3_D07","left":"past speculation","right":"предположение о прошлом"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b3dc3c8f-6360-5024-9b29-6f20592cd783', '278d9cdd-bbe1-538e-99f8-664950d05ded', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option meets the task requirement, preserves meaning, and uses accurate B2 language.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L3_D08","is_correct":true,"text":"The figures might have been misreported, although deliberate manipulation cannot be assumed without further evidence."},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L3_D09","is_correct":false,"text":"The answer is correct because it repeats several words from the task, although the meaning is different."},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L3_D10","is_correct":false,"text":"Evidence and grammatical accuracy are unnecessary when an option sounds familiar."}],"question":"Which answer best satisfies the B2 task and preserves the intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('355b5794-61d5-5643-8ab5-f22677990b66', '278d9cdd-bbe1-538e-99f8-664950d05ded', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The figures might have been misreported, although deliberate manipulation cannot be assumed without further evidence.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Возможно, цифры были представлены неверно, хотя без дополнительных доказательств нельзя предполагать преднамеренное искажение.","target_language":"en","word_bank":["The","figures","might","have","been","misreported",",","although","deliberate","manipulation","cannot","be","assumed","without","further","evidence","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bbcd6f59-f554-5b8c-abeb-53e036f7a77d', '278d9cdd-bbe1-538e-99f8-664950d05ded', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"mixed conditional","instruction":"Выберите подходящее слово.","options":["mixed conditional","remote possibility","degree of certainty"],"sentence_template":"The figures might have been misreported, although deliberate manipulation cannot be assumed without further evidence."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d902163e-ad30-5476-b775-43d06ff40940', '278d9cdd-bbe1-538e-99f8-664950d05ded', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","figures","might","have","been","misreported",",","although","deliberate","manipulation","cannot","be","assumed","without","further","evidence","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","evidence","further","without","assumed","be","cannot","manipulation","deliberate","although",",","misreported","been","have","might","figures","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5944146d-7080-572e-8eb2-9b077fa241e6', '278d9cdd-bbe1-538e-99f8-664950d05ded', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The figures might have been misreported, although deliberate manipulation cannot be assumed without further evidence. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9905fc5f-5aeb-598e-82d5-77f86f384b93', '278d9cdd-bbe1-538e-99f8-664950d05ded', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The figures might have been misreported, although deliberate manipulation cannot be assumed without further evidence. Check the evidence carefully because a plausible distractor may repeat vocabulary while changing the intended meaning. Before confirming the answer, identify the relevant clue, eliminate unsupported alternatives, and review the complete sentence for accuracy.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Возможно, цифры были представлены неверно, хотя без дополнительных доказательств нельзя предполагать преднамеренное искажение. Тщательно проверьте доказательство, поскольку правдоподобный отвлекающий вариант может повторять лексику, изменяя предполагаемый смысл. Перед подтверждением ответа найдите соответствующую подсказку, исключите неподтверждённые варианты и проверьте всё предложение на точность."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7846df40-641f-5d9e-a185-76b034a6218e', '278d9cdd-bbe1-538e-99f8-664950d05ded', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"The figures might have been misreported, although deliberate manipulation cannot be assumed without further evidence.","translation":"Возможно, цифры были представлены неверно, хотя без дополнительных доказательств нельзя предполагать преднамеренное искажение.","type":"dialogue"},{"character":"Candidate","text":"Which precise clue supports that interpretation and rules out the closest distractor?","translation":"Какая точная подсказка подтверждает это толкование и исключает наиболее близкий отвлекающий вариант?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Match the task requirement to specific evidence, then check meaning, grammar, and register."},{"is_correct":false,"text":"Choose the option containing the largest number of words repeated from the question."}],"text":"Which exam approach is strongest?","type":"choice"}],"title":"Speculating About Past Events"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4188389e-b04b-546b-8f87-f50b0d50cf81', '278d9cdd-bbe1-538e-99f8-664950d05ded', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“mixed conditional” means a conditional linking different time periods.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L3_D11","is_correct":true,"text":"a conditional linking different time periods"},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L3_D12","is_correct":false,"text":"a hypothetical alternative to a past event"},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L3_D13","is_correct":false,"text":"a requirement without which an outcome cannot occur"}],"word":"mixed conditional"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('86811aa2-94f6-5106-a4ad-466af6f6c5d4', '278d9cdd-bbe1-538e-99f8-664950d05ded', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The figures might have been misreported, although deliberate manipulation cannot be assumed without further evidence.","explanation":"The missing B2 exam expression is “mixed conditional”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"mixed conditional","id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L3_D14","is_correct":true},{"audio_text":"necessary condition","id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L3_D15","is_correct":false},{"audio_text":"past speculation","id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L3_D16","is_correct":false}],"sentence_template":"The figures might have been misreported, although deliberate manipulation cannot be assumed without further evidence."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('783104db-970d-5712-bf24-fe706203b829', '278d9cdd-bbe1-538e-99f8-664950d05ded', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"mixed conditional","explanation":"The complete answer uses “mixed conditional” accurately.","hint_prefix":"mixe","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The figures might have been misreported, although deliberate manipulation cannot be assumed without further evidence."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9dd2a3f5-1518-5170-a666-d4dbe0dbd999', '278d9cdd-bbe1-538e-99f8-664950d05ded', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 exam expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"degree of certainty","id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L3_D17","text":"degree of certainty"},{"audio_text":"modal deduction","id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L3_D18","text":"modal deduction"},{"audio_text":"mixed conditional","id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L3_D19","text":"mixed conditional"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cea2da1d-637b-5f30-847b-1c43c9ff4d98', '278d9cdd-bbe1-538e-99f8-664950d05ded', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you solve the task “Speculating About Past Events”?"}],"explanation":"The correct response demonstrates accurate, evidence-based B2 exam reasoning and controlled language.","instruction":"Ответьте.","options":[{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L3_D20","is_correct":true,"text":"The figures might have been misreported, although deliberate manipulation cannot be assumed without further evidence."},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L3_D21","is_correct":false,"text":"I would ignore the instructions and select the first option containing familiar vocabulary."},{"id":"B2_EXAM_MODALITY_CONDITIONALS_AND_SPECULATION_L3_D22","is_correct":false,"text":"There is no need to check evidence, grammar, or the exact meaning of the response."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('91776ef3-370d-54f8-bbb5-386ffcd42678', '278d9cdd-bbe1-538e-99f8-664950d05ded', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('69839ef1-9f74-5de2-ac43-6a43d06a832f', 'en', 'degree of certainty', 'степень уверенности', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('46314218-4123-5b2b-8439-8136a0e42139', 'en', 'modal deduction', 'модальный вывод', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('31bded44-f22d-521d-967d-e7703b051b19', 'en', 'mixed conditional', 'смешанное условное предложение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('36ee7bbb-ec04-59c6-bf88-cd9520a6cff5', 'en', 'unreal past', 'нереальное прошлое', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f2880862-f8d8-5949-a66a-07e83fe95252', 'en', 'necessary condition', 'необходимое условие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4ccbebf0-4bc6-5b69-bb05-e22fb454373c', 'en', 'remote possibility', 'маловероятная возможность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e2f6beb3-e30f-5f62-99b3-fcf29c0d9daa', 'en', 'past speculation', 'предположение о прошлом', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('69839ef1-9f74-5de2-ac43-6a43d06a832f', 'en', 'degree of certainty', 'степень уверенности', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('46314218-4123-5b2b-8439-8136a0e42139', 'en', 'modal deduction', 'модальный вывод', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('31bded44-f22d-521d-967d-e7703b051b19', 'en', 'mixed conditional', 'смешанное условное предложение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('36ee7bbb-ec04-59c6-bf88-cd9520a6cff5', 'en', 'unreal past', 'нереальное прошлое', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f2880862-f8d8-5949-a66a-07e83fe95252', 'en', 'necessary condition', 'необходимое условие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4ccbebf0-4bc6-5b69-bb05-e22fb454373c', 'en', 'remote possibility', 'маловероятная возможность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e2f6beb3-e30f-5f62-99b3-fcf29c0d9daa', 'en', 'past speculation', 'предположение о прошлом', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('69839ef1-9f74-5de2-ac43-6a43d06a832f', 'en', 'degree of certainty', 'степень уверенности', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('46314218-4123-5b2b-8439-8136a0e42139', 'en', 'modal deduction', 'модальный вывод', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('31bded44-f22d-521d-967d-e7703b051b19', 'en', 'mixed conditional', 'смешанное условное предложение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('36ee7bbb-ec04-59c6-bf88-cd9520a6cff5', 'en', 'unreal past', 'нереальное прошлое', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f2880862-f8d8-5949-a66a-07e83fe95252', 'en', 'necessary condition', 'необходимое условие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4ccbebf0-4bc6-5b69-bb05-e22fb454373c', 'en', 'remote possibility', 'маловероятная возможность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e2f6beb3-e30f-5f62-99b3-fcf29c0d9daa', 'en', 'past speculation', 'предположение о прошлом', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '91776ef3-370d-54f8-bbb5-386ffcd42678', id, '4db9e543-5b49-5a08-845c-4c868e6cd41a', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'degree of certainty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '91776ef3-370d-54f8-bbb5-386ffcd42678', id, '4db9e543-5b49-5a08-845c-4c868e6cd41a', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'modal deduction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '91776ef3-370d-54f8-bbb5-386ffcd42678', id, '4db9e543-5b49-5a08-845c-4c868e6cd41a', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'mixed conditional' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '91776ef3-370d-54f8-bbb5-386ffcd42678', id, '4db9e543-5b49-5a08-845c-4c868e6cd41a', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'unreal past' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '91776ef3-370d-54f8-bbb5-386ffcd42678', id, '4db9e543-5b49-5a08-845c-4c868e6cd41a', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'necessary condition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '91776ef3-370d-54f8-bbb5-386ffcd42678', id, '4db9e543-5b49-5a08-845c-4c868e6cd41a', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'remote possibility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '91776ef3-370d-54f8-bbb5-386ffcd42678', id, '4db9e543-5b49-5a08-845c-4c868e6cd41a', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'past speculation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '91776ef3-370d-54f8-bbb5-386ffcd42678', id, '61c54002-ef39-5de4-b29e-279e096cbba4', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'degree of certainty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '91776ef3-370d-54f8-bbb5-386ffcd42678', id, '61c54002-ef39-5de4-b29e-279e096cbba4', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'modal deduction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '91776ef3-370d-54f8-bbb5-386ffcd42678', id, '61c54002-ef39-5de4-b29e-279e096cbba4', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'mixed conditional' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '91776ef3-370d-54f8-bbb5-386ffcd42678', id, '61c54002-ef39-5de4-b29e-279e096cbba4', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'unreal past' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '91776ef3-370d-54f8-bbb5-386ffcd42678', id, '61c54002-ef39-5de4-b29e-279e096cbba4', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'necessary condition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '91776ef3-370d-54f8-bbb5-386ffcd42678', id, '61c54002-ef39-5de4-b29e-279e096cbba4', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'remote possibility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '91776ef3-370d-54f8-bbb5-386ffcd42678', id, '61c54002-ef39-5de4-b29e-279e096cbba4', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'past speculation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '91776ef3-370d-54f8-bbb5-386ffcd42678', id, '278d9cdd-bbe1-538e-99f8-664950d05ded', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'degree of certainty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '91776ef3-370d-54f8-bbb5-386ffcd42678', id, '278d9cdd-bbe1-538e-99f8-664950d05ded', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'modal deduction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '91776ef3-370d-54f8-bbb5-386ffcd42678', id, '278d9cdd-bbe1-538e-99f8-664950d05ded', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'mixed conditional' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '91776ef3-370d-54f8-bbb5-386ffcd42678', id, '278d9cdd-bbe1-538e-99f8-664950d05ded', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'unreal past' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '91776ef3-370d-54f8-bbb5-386ffcd42678', id, '278d9cdd-bbe1-538e-99f8-664950d05ded', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'necessary condition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '91776ef3-370d-54f8-bbb5-386ffcd42678', id, '278d9cdd-bbe1-538e-99f8-664950d05ded', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'remote possibility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '91776ef3-370d-54f8-bbb5-386ffcd42678', id, '278d9cdd-bbe1-538e-99f8-664950d05ded', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'past speculation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
