-- Track: C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('121fead0-2c81-5d02-be58-4fcf7bd9d9c6', 'C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS', 'Чтение: структура аргумента, связность и синтез', 'Освойте экзаменационные навыки C1 по теме «Чтение: структура аргумента, связность и синтез»: анализируйте сложный смысл, контролируйте точность и применяйте надёжную стратегию.', '{"en":"Reading: Argument Structure, Cohesion and Synthesis","ru":"Чтение: структура аргумента, связность и синтез"}'::jsonb, '{"en":"Master C1 exam skills for reading: argument structure, cohesion and synthesis by analysing complex meaning, controlling linguistic precision, and applying reliable strategy.","ru":"Освойте экзаменационные навыки C1 по теме «Чтение: структура аргумента, связность и синтез»: анализируйте сложный смысл, контролируйте точность и применяйте надёжную стратегию."}'::jsonb, 'en', 'C1', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2a91f29c-2040-5f4b-8936-071b36629756', NULL, 'Навык, контекст и ключевые понятия', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Mapping a Complex Argument","ru":"Навык, контекст и ключевые понятия"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cb0e86cf-bb91-59f2-be66-9c2d23034836', '2a91f29c-2040-5f4b-8936-071b36629756', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L1_D01","left":"central premise","right":"основная предпосылка"},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L1_D02","left":"counterargument","right":"контраргумент"},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L1_D03","left":"concession","right":"уступка в аргументации"},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L1_D04","left":"referential cohesion","right":"референциальная связность"},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L1_D05","left":"logical progression","right":"логическое развитие"},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L1_D06","left":"conceptual overlap","right":"концептуальное совпадение"},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L1_D07","left":"points of divergence","right":"точки расхождения"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('67bde118-8318-5750-8333-f4bfb008e405', '2a91f29c-2040-5f4b-8936-071b36629756', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L1_D08","is_correct":true,"text":"The central premise becomes clearer once the counterargument is recognised as a concession rather than the writer’s final position."},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L1_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L1_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('288737db-26b1-556c-82ae-7da077aab1f3', '2a91f29c-2040-5f4b-8936-071b36629756', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The central premise becomes clearer once the counterargument is recognised as a concession rather than the writer’s final position.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Основная предпосылка становится яснее, когда контраргумент распознаётся как уступка, а не окончательная позиция автора.","target_language":"en","word_bank":["The","central","premise","becomes","clearer","once","the","counterargument","is","recognised","as","a","concession","rather","than","the","writer’s","final","position","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76ef7e76-16df-53e0-be1c-546b3c1b72da', '2a91f29c-2040-5f4b-8936-071b36629756', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"central premise","instruction":"Выберите подходящее слово.","options":["central premise","referential cohesion","conceptual overlap"],"sentence_template":"The ___ becomes clearer once the counterargument is recognised as a concession rather than the writer’s final position."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f092559d-c308-5aa7-9a12-499c76f50a9e', '2a91f29c-2040-5f4b-8936-071b36629756', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","central","premise","becomes","clearer","once","the","counterargument","is","recognised","as","a","concession","rather","than","the","writer’s","final","position","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","position","final","writer’s","the","than","rather","concession","a","as","recognised","is","counterargument","the","once","clearer","becomes","premise","central","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e69418b-f67c-5038-8533-0defb0d9fdd2', '2a91f29c-2040-5f4b-8936-071b36629756', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The central premise becomes clearer once the counterargument is recognised as a concession rather than the writer’s final position. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c8daa2b5-72c7-5386-9181-1dec304e9d0c', '2a91f29c-2040-5f4b-8936-071b36629756', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The central premise becomes clearer once the counterargument is recognised as a concession rather than the writer’s final position. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Основная предпосылка становится яснее, когда контраргумент распознаётся как уступка, а не окончательная позиция автора. В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9c347ed3-3c18-5428-b27f-85669414b7f2', '2a91f29c-2040-5f4b-8936-071b36629756', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"The central premise becomes clearer once the counterargument is recognised as a concession rather than the writer’s final position.","translation":"Основная предпосылка становится яснее, когда контраргумент распознаётся как уступка, а не окончательная позиция автора.","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Mapping a Complex Argument"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d07449db-29af-5fd0-9bb9-7ad5e03b4b12', '2a91f29c-2040-5f4b-8936-071b36629756', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“central premise” means the principal proposition supporting an argument.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L1_D11","is_correct":true,"text":"the principal proposition supporting an argument"},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L1_D12","is_correct":false,"text":"a reasoned objection to a position"},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L1_D13","is_correct":false,"text":"acknowledgement of an opposing point"}],"word":"central premise"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f616b9aa-31e0-58e6-abca-c73363598150', '2a91f29c-2040-5f4b-8936-071b36629756', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The central premise becomes clearer once the counterargument is recognised as a concession rather than the writer’s final position.","explanation":"The missing expression is “central premise”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"central premise","id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L1_D14","is_correct":true},{"audio_text":"concession","id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L1_D15","is_correct":false},{"audio_text":"logical progression","id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L1_D16","is_correct":false}],"sentence_template":"The ___ becomes clearer once the counterargument is recognised as a concession rather than the writer’s final position."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6fd5f7d0-340f-566e-9bce-a654290569fe', '2a91f29c-2040-5f4b-8936-071b36629756', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"central premise","explanation":"The complete answer uses “central premise” precisely.","hint_prefix":"cent","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ becomes clearer once the counterargument is recognised as a concession rather than the writer’s final position."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5648e9f5-598d-54ef-a307-815967d87f4c', '2a91f29c-2040-5f4b-8936-071b36629756', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"central premise","id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L1_D17","text":"central premise"},{"audio_text":"counterargument","id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L1_D18","text":"counterargument"},{"audio_text":"concession","id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L1_D19","text":"concession"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('647420dd-1f30-5665-930b-b3a82bba6754', '2a91f29c-2040-5f4b-8936-071b36629756', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Mapping a Complex Argument” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L1_D20","is_correct":true,"text":"The central premise becomes clearer once the counterargument is recognised as a concession rather than the writer’s final position."},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L1_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L1_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('121fead0-2c81-5d02-be58-4fcf7bd9d9c6', '2a91f29c-2040-5f4b-8936-071b36629756', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e5d7548f-5349-5c9a-bfcb-c51ef675b80f', NULL, 'Продвинутый анализ и применение', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Following Cohesion Across Paragraphs","ru":"Продвинутый анализ и применение"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac652cf1-413c-5587-bf11-aa74c0a05a09', 'e5d7548f-5349-5c9a-bfcb-c51ef675b80f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L2_D01","left":"central premise","right":"основная предпосылка"},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L2_D02","left":"counterargument","right":"контраргумент"},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L2_D03","left":"concession","right":"уступка в аргументации"},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L2_D04","left":"referential cohesion","right":"референциальная связность"},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L2_D05","left":"logical progression","right":"логическое развитие"},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L2_D06","left":"conceptual overlap","right":"концептуальное совпадение"},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L2_D07","left":"points of divergence","right":"точки расхождения"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ce2f3e0-c3b2-5ae2-9830-eed9560e8721', 'e5d7548f-5349-5c9a-bfcb-c51ef675b80f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L2_D08","is_correct":true,"text":"Referential cohesion links the example to the earlier principle and preserves the logical progression across paragraphs. The relevant C1 concept is counterargument."},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L2_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L2_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4fe4f94e-8599-5a0e-a264-304d750a3e46', 'e5d7548f-5349-5c9a-bfcb-c51ef675b80f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Referential cohesion links the example to the earlier principle and preserves the logical progression across paragraphs. The relevant C1 concept is counterargument.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Референциальная связность соединяет пример с предыдущим принципом и сохраняет логическое развитие между абзацами. Соответствующее понятие уровня C1 — «контраргумент».","target_language":"en","word_bank":["Referential","cohesion","links","the","example","to","the","earlier","principle","and","preserves","the","logical","progression","across","paragraphs",".","The","relevant","C","1","concept","is","counterargument","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1dec3008-2996-51c8-8540-1377c2405a84', 'e5d7548f-5349-5c9a-bfcb-c51ef675b80f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"counterargument","instruction":"Выберите подходящее слово.","options":["counterargument","logical progression","points of divergence"],"sentence_template":"Referential cohesion links the example to the earlier principle and preserves the logical progression across paragraphs. The relevant C1 concept is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('820db672-69e1-5d1c-b3f3-9eba61cf490b', 'e5d7548f-5349-5c9a-bfcb-c51ef675b80f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Referential","cohesion","links","the","example","to","the","earlier","principle","and","preserves","the","logical","progression","across","paragraphs",".","The","relevant","C","1","concept","is","counterargument","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","counterargument","is","concept","1","C","relevant","The",".","paragraphs","across","progression","logical","the","preserves","and","principle","earlier","the","to","example","the","links","cohesion","Referential"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2e18fe33-f304-542c-a5b5-539f8167ac55', 'e5d7548f-5349-5c9a-bfcb-c51ef675b80f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Referential cohesion links the example to the earlier principle and preserves the logical progression across paragraphs. The relevant C1 concept is counterargument. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d46cbe1-9741-5bdc-9739-f3de809c5d01', 'e5d7548f-5349-5c9a-bfcb-c51ef675b80f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Referential cohesion links the example to the earlier principle and preserves the logical progression across paragraphs. The relevant C1 concept is counterargument. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Референциальная связность соединяет пример с предыдущим принципом и сохраняет логическое развитие между абзацами. Соответствующее понятие уровня C1 — «контраргумент». В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('20c6d6e3-1e48-593f-9c89-61454e22e613', 'e5d7548f-5349-5c9a-bfcb-c51ef675b80f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Referential cohesion links the example to the earlier principle and preserves the logical progression across paragraphs. The relevant C1 concept is counterargument.","translation":"Референциальная связность соединяет пример с предыдущим принципом и сохраняет логическое развитие между абзацами. Соответствующее понятие уровня C1 — «контраргумент».","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Following Cohesion Across Paragraphs"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f119589d-6e0d-52d9-a27d-24067d23a796', 'e5d7548f-5349-5c9a-bfcb-c51ef675b80f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“counterargument” means a reasoned objection to a position.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L2_D11","is_correct":true,"text":"a reasoned objection to a position"},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L2_D12","is_correct":false,"text":"acknowledgement of an opposing point"},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L2_D13","is_correct":false,"text":"connection created through textual references"}],"word":"counterargument"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('506b5fff-685d-5946-8419-c85f14d51d3a', 'e5d7548f-5349-5c9a-bfcb-c51ef675b80f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Referential cohesion links the example to the earlier principle and preserves the logical progression across paragraphs. The relevant C1 concept is counterargument.","explanation":"The missing expression is “counterargument”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"counterargument","id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L2_D14","is_correct":true},{"audio_text":"referential cohesion","id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L2_D15","is_correct":false},{"audio_text":"conceptual overlap","id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L2_D16","is_correct":false}],"sentence_template":"Referential cohesion links the example to the earlier principle and preserves the logical progression across paragraphs. The relevant C1 concept is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0823fd35-e6d4-5c47-a483-1dc80a77f4b7', 'e5d7548f-5349-5c9a-bfcb-c51ef675b80f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"counterargument","explanation":"The complete answer uses “counterargument” precisely.","hint_prefix":"coun","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Referential cohesion links the example to the earlier principle and preserves the logical progression across paragraphs. The relevant C1 concept is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('607aa7ee-48d5-5e01-adb6-39f7b22357e6', 'e5d7548f-5349-5c9a-bfcb-c51ef675b80f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"central premise","id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L2_D17","text":"central premise"},{"audio_text":"counterargument","id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L2_D18","text":"counterargument"},{"audio_text":"concession","id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L2_D19","text":"concession"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('389deee9-a303-5752-9308-46b6ed97a9e1', 'e5d7548f-5349-5c9a-bfcb-c51ef675b80f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Following Cohesion Across Paragraphs” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L2_D20","is_correct":true,"text":"Referential cohesion links the example to the earlier principle and preserves the logical progression across paragraphs. The relevant C1 concept is counterargument."},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L2_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L2_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('121fead0-2c81-5d02-be58-4fcf7bd9d9c6', 'e5d7548f-5349-5c9a-bfcb-c51ef675b80f', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('86a7fe3e-cce7-564f-a52a-3b0f389b17ad', NULL, 'Экзаменационное решение и проверка', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Synthesising Multiple Texts","ru":"Экзаменационное решение и проверка"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a381c8b-fb55-55a2-aad4-a6afcecadcd8', '86a7fe3e-cce7-564f-a52a-3b0f389b17ad', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L3_D01","left":"central premise","right":"основная предпосылка"},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L3_D02","left":"counterargument","right":"контраргумент"},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L3_D03","left":"concession","right":"уступка в аргументации"},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L3_D04","left":"referential cohesion","right":"референциальная связность"},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L3_D05","left":"logical progression","right":"логическое развитие"},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L3_D06","left":"conceptual overlap","right":"концептуальное совпадение"},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L3_D07","left":"points of divergence","right":"точки расхождения"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b5d3aa1b-9fad-5fe0-a93a-1db5eccf4205', '86a7fe3e-cce7-564f-a52a-3b0f389b17ad', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L3_D08","is_correct":true,"text":"A strong synthesis identifies conceptual overlap while explaining the substantive points of divergence between the texts. The relevant C1 concept is concession."},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L3_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L3_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf2fe18a-1b9c-5849-8ad6-3363c62b9bfc', '86a7fe3e-cce7-564f-a52a-3b0f389b17ad', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A strong synthesis identifies conceptual overlap while explaining the substantive points of divergence between the texts. The relevant C1 concept is concession.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Сильный синтез выявляет концептуальное совпадение и объясняет существенные точки расхождения между текстами. Соответствующее понятие уровня C1 — «уступка в аргументации».","target_language":"en","word_bank":["A","strong","synthesis","identifies","conceptual","overlap","while","explaining","the","substantive","points","of","divergence","between","the","texts",".","The","relevant","C","1","concept","is","concession","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('53687660-820c-5433-9ae6-b5e48fbd270e', '86a7fe3e-cce7-564f-a52a-3b0f389b17ad', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"concession","instruction":"Выберите подходящее слово.","options":["concession","conceptual overlap","central premise"],"sentence_template":"A strong synthesis identifies conceptual overlap while explaining the substantive points of divergence between the texts. The relevant C1 concept is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3cf02bdb-5edd-5072-b255-eb6bba37ebad', '86a7fe3e-cce7-564f-a52a-3b0f389b17ad', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","strong","synthesis","identifies","conceptual","overlap","while","explaining","the","substantive","points","of","divergence","between","the","texts",".","The","relevant","C","1","concept","is","concession","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","concession","is","concept","1","C","relevant","The",".","texts","the","between","divergence","of","points","substantive","the","explaining","while","overlap","conceptual","identifies","synthesis","strong","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a332631-6ab3-5779-a182-a9a607b6ba91', '86a7fe3e-cce7-564f-a52a-3b0f389b17ad', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A strong synthesis identifies conceptual overlap while explaining the substantive points of divergence between the texts. The relevant C1 concept is concession. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7a1d65e-6fe7-5023-be78-1313e07bfa7e', '86a7fe3e-cce7-564f-a52a-3b0f389b17ad', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A strong synthesis identifies conceptual overlap while explaining the substantive points of divergence between the texts. The relevant C1 concept is concession. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Сильный синтез выявляет концептуальное совпадение и объясняет существенные точки расхождения между текстами. Соответствующее понятие уровня C1 — «уступка в аргументации». В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8a2b4ebe-646c-58fc-91cf-15fd7621e613', '86a7fe3e-cce7-564f-a52a-3b0f389b17ad', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"A strong synthesis identifies conceptual overlap while explaining the substantive points of divergence between the texts. The relevant C1 concept is concession.","translation":"Сильный синтез выявляет концептуальное совпадение и объясняет существенные точки расхождения между текстами. Соответствующее понятие уровня C1 — «уступка в аргументации».","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Synthesising Multiple Texts"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4362c437-c24d-50ab-b3d5-ac7a3ee68f1f', '86a7fe3e-cce7-564f-a52a-3b0f389b17ad', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“concession” means acknowledgement of an opposing point.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L3_D11","is_correct":true,"text":"acknowledgement of an opposing point"},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L3_D12","is_correct":false,"text":"connection created through textual references"},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L3_D13","is_correct":false,"text":"the ordered movement of ideas"}],"word":"concession"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12695614-3724-5be1-92d3-1589cc4ec440', '86a7fe3e-cce7-564f-a52a-3b0f389b17ad', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A strong synthesis identifies conceptual overlap while explaining the substantive points of divergence between the texts. The relevant C1 concept is concession.","explanation":"The missing expression is “concession”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"concession","id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L3_D14","is_correct":true},{"audio_text":"logical progression","id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L3_D15","is_correct":false},{"audio_text":"points of divergence","id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L3_D16","is_correct":false}],"sentence_template":"A strong synthesis identifies conceptual overlap while explaining the substantive points of divergence between the texts. The relevant C1 concept is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cbcf8f32-f5a8-591e-a798-131e3107f9f5', '86a7fe3e-cce7-564f-a52a-3b0f389b17ad', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"concession","explanation":"The complete answer uses “concession” precisely.","hint_prefix":"conc","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A strong synthesis identifies conceptual overlap while explaining the substantive points of divergence between the texts. The relevant C1 concept is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76339f2e-3cab-55cd-9d63-c84ffc6b39b0', '86a7fe3e-cce7-564f-a52a-3b0f389b17ad', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"central premise","id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L3_D17","text":"central premise"},{"audio_text":"counterargument","id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L3_D18","text":"counterargument"},{"audio_text":"concession","id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L3_D19","text":"concession"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('92026072-e793-5faf-967c-8653ace028d7', '86a7fe3e-cce7-564f-a52a-3b0f389b17ad', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Synthesising Multiple Texts” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L3_D20","is_correct":true,"text":"A strong synthesis identifies conceptual overlap while explaining the substantive points of divergence between the texts. The relevant C1 concept is concession."},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L3_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_READING_ARGUMENT_STRUCTURE_COHESION_AND_SYNTHESIS_L3_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('121fead0-2c81-5d02-be58-4fcf7bd9d9c6', '86a7fe3e-cce7-564f-a52a-3b0f389b17ad', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a16de7c3-53a0-5d9f-96fb-6ccfb999451d', 'en', 'central premise', 'основная предпосылка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('904e4477-c9ac-5518-b1c5-10fac8b3a05d', 'en', 'counterargument', 'контраргумент', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6df170eb-89e2-5b84-ae25-504ad653e53c', 'en', 'concession', 'уступка в аргументации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d8ac4741-03e5-574d-9f19-87efc4083fe6', 'en', 'referential cohesion', 'референциальная связность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('946601d8-a2fe-5e46-a11c-120aed2dfd32', 'en', 'logical progression', 'логическое развитие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('81ce5e33-5f2c-56de-b29f-901d98a77e6e', 'en', 'conceptual overlap', 'концептуальное совпадение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9cb7c63f-cb48-5cdb-aa62-6ba8badb2485', 'en', 'points of divergence', 'точки расхождения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a16de7c3-53a0-5d9f-96fb-6ccfb999451d', 'en', 'central premise', 'основная предпосылка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('904e4477-c9ac-5518-b1c5-10fac8b3a05d', 'en', 'counterargument', 'контраргумент', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6df170eb-89e2-5b84-ae25-504ad653e53c', 'en', 'concession', 'уступка в аргументации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d8ac4741-03e5-574d-9f19-87efc4083fe6', 'en', 'referential cohesion', 'референциальная связность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('946601d8-a2fe-5e46-a11c-120aed2dfd32', 'en', 'logical progression', 'логическое развитие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('81ce5e33-5f2c-56de-b29f-901d98a77e6e', 'en', 'conceptual overlap', 'концептуальное совпадение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9cb7c63f-cb48-5cdb-aa62-6ba8badb2485', 'en', 'points of divergence', 'точки расхождения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a16de7c3-53a0-5d9f-96fb-6ccfb999451d', 'en', 'central premise', 'основная предпосылка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('904e4477-c9ac-5518-b1c5-10fac8b3a05d', 'en', 'counterargument', 'контраргумент', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6df170eb-89e2-5b84-ae25-504ad653e53c', 'en', 'concession', 'уступка в аргументации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d8ac4741-03e5-574d-9f19-87efc4083fe6', 'en', 'referential cohesion', 'референциальная связность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('946601d8-a2fe-5e46-a11c-120aed2dfd32', 'en', 'logical progression', 'логическое развитие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('81ce5e33-5f2c-56de-b29f-901d98a77e6e', 'en', 'conceptual overlap', 'концептуальное совпадение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9cb7c63f-cb48-5cdb-aa62-6ba8badb2485', 'en', 'points of divergence', 'точки расхождения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '121fead0-2c81-5d02-be58-4fcf7bd9d9c6', id, '2a91f29c-2040-5f4b-8936-071b36629756', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'central premise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '121fead0-2c81-5d02-be58-4fcf7bd9d9c6', id, '2a91f29c-2040-5f4b-8936-071b36629756', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'counterargument' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '121fead0-2c81-5d02-be58-4fcf7bd9d9c6', id, '2a91f29c-2040-5f4b-8936-071b36629756', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'concession' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '121fead0-2c81-5d02-be58-4fcf7bd9d9c6', id, '2a91f29c-2040-5f4b-8936-071b36629756', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'referential cohesion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '121fead0-2c81-5d02-be58-4fcf7bd9d9c6', id, '2a91f29c-2040-5f4b-8936-071b36629756', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'logical progression' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '121fead0-2c81-5d02-be58-4fcf7bd9d9c6', id, '2a91f29c-2040-5f4b-8936-071b36629756', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'conceptual overlap' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '121fead0-2c81-5d02-be58-4fcf7bd9d9c6', id, '2a91f29c-2040-5f4b-8936-071b36629756', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'points of divergence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '121fead0-2c81-5d02-be58-4fcf7bd9d9c6', id, 'e5d7548f-5349-5c9a-bfcb-c51ef675b80f', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'central premise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '121fead0-2c81-5d02-be58-4fcf7bd9d9c6', id, 'e5d7548f-5349-5c9a-bfcb-c51ef675b80f', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'counterargument' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '121fead0-2c81-5d02-be58-4fcf7bd9d9c6', id, 'e5d7548f-5349-5c9a-bfcb-c51ef675b80f', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'concession' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '121fead0-2c81-5d02-be58-4fcf7bd9d9c6', id, 'e5d7548f-5349-5c9a-bfcb-c51ef675b80f', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'referential cohesion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '121fead0-2c81-5d02-be58-4fcf7bd9d9c6', id, 'e5d7548f-5349-5c9a-bfcb-c51ef675b80f', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'logical progression' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '121fead0-2c81-5d02-be58-4fcf7bd9d9c6', id, 'e5d7548f-5349-5c9a-bfcb-c51ef675b80f', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'conceptual overlap' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '121fead0-2c81-5d02-be58-4fcf7bd9d9c6', id, 'e5d7548f-5349-5c9a-bfcb-c51ef675b80f', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'points of divergence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '121fead0-2c81-5d02-be58-4fcf7bd9d9c6', id, '86a7fe3e-cce7-564f-a52a-3b0f389b17ad', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'central premise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '121fead0-2c81-5d02-be58-4fcf7bd9d9c6', id, '86a7fe3e-cce7-564f-a52a-3b0f389b17ad', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'counterargument' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '121fead0-2c81-5d02-be58-4fcf7bd9d9c6', id, '86a7fe3e-cce7-564f-a52a-3b0f389b17ad', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'concession' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '121fead0-2c81-5d02-be58-4fcf7bd9d9c6', id, '86a7fe3e-cce7-564f-a52a-3b0f389b17ad', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'referential cohesion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '121fead0-2c81-5d02-be58-4fcf7bd9d9c6', id, '86a7fe3e-cce7-564f-a52a-3b0f389b17ad', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'logical progression' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '121fead0-2c81-5d02-be58-4fcf7bd9d9c6', id, '86a7fe3e-cce7-564f-a52a-3b0f389b17ad', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'conceptual overlap' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '121fead0-2c81-5d02-be58-4fcf7bd9d9c6', id, '86a7fe3e-cce7-564f-a52a-3b0f389b17ad', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'points of divergence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
