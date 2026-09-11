-- Track: C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('368737cd-4816-5bb0-87be-1ef73b44033b', 'C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION', 'Письмо: дискурсивные эссе, аргументация и критическая оценка', 'Освойте экзаменационные навыки C1 по теме «Письмо: дискурсивные эссе, аргументация и критическая оценка»: анализируйте сложный смысл, контролируйте точность и применяйте надёжную стратегию.', '{"en":"Writing: Discursive Essays, Argument and Critical Evaluation","ru":"Письмо: дискурсивные эссе, аргументация и критическая оценка"}'::jsonb, '{"en":"Master C1 exam skills for writing: discursive essays, argument and critical evaluation by analysing complex meaning, controlling linguistic precision, and applying reliable strategy.","ru":"Освойте экзаменационные навыки C1 по теме «Письмо: дискурсивные эссе, аргументация и критическая оценка»: анализируйте сложный смысл, контролируйте точность и применяйте надёжную стратегию."}'::jsonb, 'en', 'C1', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a83df557-50f6-5785-a0e6-54dd3f60170e', NULL, 'Навык, контекст и ключевые понятия', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Interpreting the Essay Question","ru":"Навык, контекст и ключевые понятия"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a8baa03e-0001-51a2-a863-180358c7af94', 'a83df557-50f6-5785-a0e6-54dd3f60170e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L1_D01","left":"controlling idea","right":"управляющая идея"},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L1_D02","left":"line of argument","right":"линия аргументации"},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L1_D03","left":"critical evaluation","right":"критическая оценка"},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L1_D04","left":"counterclaim","right":"встречное утверждение"},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L1_D05","left":"evidential support","right":"доказательная поддержка"},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L1_D06","left":"cohesive device","right":"средство связности"},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L1_D07","left":"lexical precision","right":"лексическая точность"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5c2e7bdc-df1f-52ac-a63b-43ce313f9cef', 'a83df557-50f6-5785-a0e6-54dd3f60170e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L1_D08","is_correct":true,"text":"The controlling idea must answer the precise question and establish a sustainable line of argument."},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L1_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L1_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c9db10ff-7828-54c3-b7da-3c03aafeb860', 'a83df557-50f6-5785-a0e6-54dd3f60170e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The controlling idea must answer the precise question and establish a sustainable line of argument.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Управляющая идея должна точно отвечать на вопрос и задавать последовательную линию аргументации.","target_language":"en","word_bank":["The","controlling","idea","must","answer","the","precise","question","and","establish","a","sustainable","line","of","argument","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('67ca71e6-3e1d-51f2-8e1f-22fa531f5285', 'a83df557-50f6-5785-a0e6-54dd3f60170e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"controlling idea","instruction":"Выберите подходящее слово.","options":["controlling idea","counterclaim","cohesive device"],"sentence_template":"The ___ must answer the precise question and establish a sustainable line of argument."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c497bc43-ce40-56d8-9093-8db1ef957f10', 'a83df557-50f6-5785-a0e6-54dd3f60170e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","controlling","idea","must","answer","the","precise","question","and","establish","a","sustainable","line","of","argument","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","argument","of","line","sustainable","a","establish","and","question","precise","the","answer","must","idea","controlling","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c3094a04-baef-549a-864c-afc700fe93a4', 'a83df557-50f6-5785-a0e6-54dd3f60170e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The controlling idea must answer the precise question and establish a sustainable line of argument. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5b272c6b-0616-5826-86ce-21b9db575292', 'a83df557-50f6-5785-a0e6-54dd3f60170e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The controlling idea must answer the precise question and establish a sustainable line of argument. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Управляющая идея должна точно отвечать на вопрос и задавать последовательную линию аргументации. В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('32a8247f-b53a-5ef8-8b57-a71aa3fd987c', 'a83df557-50f6-5785-a0e6-54dd3f60170e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"The controlling idea must answer the precise question and establish a sustainable line of argument.","translation":"Управляющая идея должна точно отвечать на вопрос и задавать последовательную линию аргументации.","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Interpreting the Essay Question"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7919adda-83f2-5d8b-b3e4-4f1aeb10df52', 'a83df557-50f6-5785-a0e6-54dd3f60170e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“controlling idea” means the central proposition directing a text.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L1_D11","is_correct":true,"text":"the central proposition directing a text"},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L1_D12","is_correct":false,"text":"connected reasoning supporting a position"},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L1_D13","is_correct":false,"text":"balanced assessment of strengths and limits"}],"word":"controlling idea"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8bd89baa-a3e4-554e-968b-0225a5aaffbc', 'a83df557-50f6-5785-a0e6-54dd3f60170e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The controlling idea must answer the precise question and establish a sustainable line of argument.","explanation":"The missing expression is “controlling idea”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"controlling idea","id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L1_D14","is_correct":true},{"audio_text":"critical evaluation","id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L1_D15","is_correct":false},{"audio_text":"evidential support","id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L1_D16","is_correct":false}],"sentence_template":"The ___ must answer the precise question and establish a sustainable line of argument."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c26ccea4-0066-5bea-94f7-f833484c7575', 'a83df557-50f6-5785-a0e6-54dd3f60170e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"controlling idea","explanation":"The complete answer uses “controlling idea” precisely.","hint_prefix":"cont","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ must answer the precise question and establish a sustainable line of argument."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('870f379e-17da-54cf-a681-d08bcad66113', 'a83df557-50f6-5785-a0e6-54dd3f60170e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"controlling idea","id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L1_D17","text":"controlling idea"},{"audio_text":"line of argument","id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L1_D18","text":"line of argument"},{"audio_text":"critical evaluation","id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L1_D19","text":"critical evaluation"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d00e0eb6-83d2-5d69-a455-f7cd07fc7f0f', 'a83df557-50f6-5785-a0e6-54dd3f60170e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Interpreting the Essay Question” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L1_D20","is_correct":true,"text":"The controlling idea must answer the precise question and establish a sustainable line of argument."},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L1_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L1_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('368737cd-4816-5bb0-87be-1ef73b44033b', 'a83df557-50f6-5785-a0e6-54dd3f60170e', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('94c04f4f-cf2d-5d1c-8cd5-27e353af3881', NULL, 'Продвинутый анализ и применение', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Building a Nuanced Argument","ru":"Продвинутый анализ и применение"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e306060-7aa9-542e-a41a-b6830198cf7b', '94c04f4f-cf2d-5d1c-8cd5-27e353af3881', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L2_D01","left":"controlling idea","right":"управляющая идея"},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L2_D02","left":"line of argument","right":"линия аргументации"},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L2_D03","left":"critical evaluation","right":"критическая оценка"},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L2_D04","left":"counterclaim","right":"встречное утверждение"},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L2_D05","left":"evidential support","right":"доказательная поддержка"},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L2_D06","left":"cohesive device","right":"средство связности"},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L2_D07","left":"lexical precision","right":"лексическая точность"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('30d6ddc0-9dd0-5d14-ad84-b5f2317e603e', '94c04f4f-cf2d-5d1c-8cd5-27e353af3881', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L2_D08","is_correct":true,"text":"A persuasive paragraph integrates evidential support, addresses a credible counterclaim, and explains why the evidence matters. The relevant C1 concept is line of argument."},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L2_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L2_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ab3e7d3-9104-50f3-a83c-4c4e8c3da6ee', '94c04f4f-cf2d-5d1c-8cd5-27e353af3881', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A persuasive paragraph integrates evidential support, addresses a credible counterclaim, and explains why the evidence matters. The relevant C1 concept is line of argument.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Убедительный абзац объединяет доказательства, рассматривает обоснованное встречное утверждение и объясняет их значимость. Соответствующее понятие уровня C1 — «линия аргументации».","target_language":"en","word_bank":["A","persuasive","paragraph","integrates","evidential","support",",","addresses","a","credible","counterclaim",",","and","explains","why","the","evidence","matters",".","The","relevant","C","1","concept","is","line","of","argument","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d93ead78-d53c-5ca3-8651-e787f2dad542', '94c04f4f-cf2d-5d1c-8cd5-27e353af3881', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"line of argument","instruction":"Выберите подходящее слово.","options":["line of argument","evidential support","lexical precision"],"sentence_template":"A persuasive paragraph integrates evidential support, addresses a credible counterclaim, and explains why the evidence matters. The relevant C1 concept is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ebd5deca-af84-561b-9f67-0d7f21936cd6', '94c04f4f-cf2d-5d1c-8cd5-27e353af3881', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","persuasive","paragraph","integrates","evidential","support",",","addresses","a","credible","counterclaim",",","and","explains","why","the","evidence","matters",".","The","relevant","C","1","concept","is","line","of","argument","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","argument","of","line","is","concept","1","C","relevant","The",".","matters","evidence","the","why","explains","and",",","counterclaim","credible","a","addresses",",","support","evidential","integrates","paragraph","persuasive","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd5fb5f7-5668-57a8-b8f8-e03588beec6e', '94c04f4f-cf2d-5d1c-8cd5-27e353af3881', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A persuasive paragraph integrates evidential support, addresses a credible counterclaim, and explains why the evidence matters. The relevant C1 concept is line of argument. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b6388d4-0305-5724-956a-7882c1b951a9', '94c04f4f-cf2d-5d1c-8cd5-27e353af3881', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A persuasive paragraph integrates evidential support, addresses a credible counterclaim, and explains why the evidence matters. The relevant C1 concept is line of argument. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Убедительный абзац объединяет доказательства, рассматривает обоснованное встречное утверждение и объясняет их значимость. Соответствующее понятие уровня C1 — «линия аргументации». В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0235d975-b1f1-5636-a723-c2206c0f2fe6', '94c04f4f-cf2d-5d1c-8cd5-27e353af3881', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"A persuasive paragraph integrates evidential support, addresses a credible counterclaim, and explains why the evidence matters. The relevant C1 concept is line of argument.","translation":"Убедительный абзац объединяет доказательства, рассматривает обоснованное встречное утверждение и объясняет их значимость. Соответствующее понятие уровня C1 — «линия аргументации».","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Building a Nuanced Argument"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e5944672-1512-5295-a52f-de2c6169ecb0', '94c04f4f-cf2d-5d1c-8cd5-27e353af3881', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“line of argument” means connected reasoning supporting a position.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L2_D11","is_correct":true,"text":"connected reasoning supporting a position"},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L2_D12","is_correct":false,"text":"balanced assessment of strengths and limits"},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L2_D13","is_correct":false,"text":"a claim challenging the main position"}],"word":"line of argument"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cba7d6e1-5c85-5dca-ae99-99d0feb157e6', '94c04f4f-cf2d-5d1c-8cd5-27e353af3881', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A persuasive paragraph integrates evidential support, addresses a credible counterclaim, and explains why the evidence matters. The relevant C1 concept is line of argument.","explanation":"The missing expression is “line of argument”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"line of argument","id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L2_D14","is_correct":true},{"audio_text":"counterclaim","id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L2_D15","is_correct":false},{"audio_text":"cohesive device","id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L2_D16","is_correct":false}],"sentence_template":"A persuasive paragraph integrates evidential support, addresses a credible counterclaim, and explains why the evidence matters. The relevant C1 concept is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef6aba4a-bf80-561c-a9f2-8eb3eb8d2e0c', '94c04f4f-cf2d-5d1c-8cd5-27e353af3881', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"line of argument","explanation":"The complete answer uses “line of argument” precisely.","hint_prefix":"line","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A persuasive paragraph integrates evidential support, addresses a credible counterclaim, and explains why the evidence matters. The relevant C1 concept is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('20f74b9a-c129-5c1a-ae6b-ed7ba14c1c43', '94c04f4f-cf2d-5d1c-8cd5-27e353af3881', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"controlling idea","id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L2_D17","text":"controlling idea"},{"audio_text":"line of argument","id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L2_D18","text":"line of argument"},{"audio_text":"critical evaluation","id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L2_D19","text":"critical evaluation"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9f6d5e2d-f322-5384-af80-c36fb6048d4e', '94c04f4f-cf2d-5d1c-8cd5-27e353af3881', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Building a Nuanced Argument” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L2_D20","is_correct":true,"text":"A persuasive paragraph integrates evidential support, addresses a credible counterclaim, and explains why the evidence matters. The relevant C1 concept is line of argument."},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L2_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L2_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('368737cd-4816-5bb0-87be-1ef73b44033b', '94c04f4f-cf2d-5d1c-8cd5-27e353af3881', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('bd00a02d-1092-5432-9da1-f9a14b18dd73', NULL, 'Экзаменационное решение и проверка', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Editing for Coherence and Precision","ru":"Экзаменационное решение и проверка"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b16b97a8-cd16-541e-9309-ecf4d69bf664', 'bd00a02d-1092-5432-9da1-f9a14b18dd73', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L3_D01","left":"controlling idea","right":"управляющая идея"},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L3_D02","left":"line of argument","right":"линия аргументации"},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L3_D03","left":"critical evaluation","right":"критическая оценка"},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L3_D04","left":"counterclaim","right":"встречное утверждение"},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L3_D05","left":"evidential support","right":"доказательная поддержка"},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L3_D06","left":"cohesive device","right":"средство связности"},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L3_D07","left":"lexical precision","right":"лексическая точность"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('29ab391e-1515-5c64-948d-6d80b164be62', 'bd00a02d-1092-5432-9da1-f9a14b18dd73', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L3_D08","is_correct":true,"text":"Effective editing improves lexical precision and cohesion without replacing clear reasoning with elaborate language. The relevant C1 concept is critical evaluation."},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L3_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L3_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8adbbd44-034f-5b11-b056-b424c2ee6635', 'bd00a02d-1092-5432-9da1-f9a14b18dd73', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Effective editing improves lexical precision and cohesion without replacing clear reasoning with elaborate language. The relevant C1 concept is critical evaluation.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Эффективное редактирование повышает лексическую точность и связность, не заменяя ясное рассуждение сложным языком. Соответствующее понятие уровня C1 — «критическая оценка».","target_language":"en","word_bank":["Effective","editing","improves","lexical","precision","and","cohesion","without","replacing","clear","reasoning","with","elaborate","language",".","The","relevant","C","1","concept","is","critical","evaluation","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc32fbaf-9a62-5c90-8e5b-ef1bc1a5e4f4', 'bd00a02d-1092-5432-9da1-f9a14b18dd73', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"critical evaluation","instruction":"Выберите подходящее слово.","options":["critical evaluation","cohesive device","controlling idea"],"sentence_template":"Effective editing improves lexical precision and cohesion without replacing clear reasoning with elaborate language. The relevant C1 concept is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4622d86c-ff00-506c-8bc3-156fe542823e', 'bd00a02d-1092-5432-9da1-f9a14b18dd73', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Effective","editing","improves","lexical","precision","and","cohesion","without","replacing","clear","reasoning","with","elaborate","language",".","The","relevant","C","1","concept","is","critical","evaluation","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","evaluation","critical","is","concept","1","C","relevant","The",".","language","elaborate","with","reasoning","clear","replacing","without","cohesion","and","precision","lexical","improves","editing","Effective"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('40d05627-ec7e-54af-a197-b766542bc618', 'bd00a02d-1092-5432-9da1-f9a14b18dd73', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Effective editing improves lexical precision and cohesion without replacing clear reasoning with elaborate language. The relevant C1 concept is critical evaluation. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a685f1bf-73f8-59dc-93b1-cda61a6fd1b9', 'bd00a02d-1092-5432-9da1-f9a14b18dd73', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Effective editing improves lexical precision and cohesion without replacing clear reasoning with elaborate language. The relevant C1 concept is critical evaluation. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Эффективное редактирование повышает лексическую точность и связность, не заменяя ясное рассуждение сложным языком. Соответствующее понятие уровня C1 — «критическая оценка». В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e78cc2ba-b0bb-59f4-988a-ed52d0859a7c', 'bd00a02d-1092-5432-9da1-f9a14b18dd73', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Effective editing improves lexical precision and cohesion without replacing clear reasoning with elaborate language. The relevant C1 concept is critical evaluation.","translation":"Эффективное редактирование повышает лексическую точность и связность, не заменяя ясное рассуждение сложным языком. Соответствующее понятие уровня C1 — «критическая оценка».","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Editing for Coherence and Precision"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('794fba9e-840d-530a-87c6-c7e658ad1d78', 'bd00a02d-1092-5432-9da1-f9a14b18dd73', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“critical evaluation” means balanced assessment of strengths and limits.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L3_D11","is_correct":true,"text":"balanced assessment of strengths and limits"},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L3_D12","is_correct":false,"text":"a claim challenging the main position"},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L3_D13","is_correct":false,"text":"information used to justify a claim"}],"word":"critical evaluation"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1ee13b18-7a73-587e-931d-79c55957ab20', 'bd00a02d-1092-5432-9da1-f9a14b18dd73', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Effective editing improves lexical precision and cohesion without replacing clear reasoning with elaborate language. The relevant C1 concept is critical evaluation.","explanation":"The missing expression is “critical evaluation”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"critical evaluation","id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L3_D14","is_correct":true},{"audio_text":"evidential support","id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L3_D15","is_correct":false},{"audio_text":"lexical precision","id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L3_D16","is_correct":false}],"sentence_template":"Effective editing improves lexical precision and cohesion without replacing clear reasoning with elaborate language. The relevant C1 concept is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('66e4042a-2398-5ae4-b11a-e9c0c293ee40', 'bd00a02d-1092-5432-9da1-f9a14b18dd73', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"critical evaluation","explanation":"The complete answer uses “critical evaluation” precisely.","hint_prefix":"crit","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Effective editing improves lexical precision and cohesion without replacing clear reasoning with elaborate language. The relevant C1 concept is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c213e3d-2692-5a35-84bd-4e6988c2ba4a', 'bd00a02d-1092-5432-9da1-f9a14b18dd73', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"controlling idea","id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L3_D17","text":"controlling idea"},{"audio_text":"line of argument","id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L3_D18","text":"line of argument"},{"audio_text":"critical evaluation","id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L3_D19","text":"critical evaluation"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b9f5a0b4-a253-5d71-a9ad-d187ec1b9c25', 'bd00a02d-1092-5432-9da1-f9a14b18dd73', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Editing for Coherence and Precision” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L3_D20","is_correct":true,"text":"Effective editing improves lexical precision and cohesion without replacing clear reasoning with elaborate language. The relevant C1 concept is critical evaluation."},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L3_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_WRITING_DISCURSIVE_ESSAYS_ARGUMENT_AND_CRITICAL_EVALUATION_L3_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('368737cd-4816-5bb0-87be-1ef73b44033b', 'bd00a02d-1092-5432-9da1-f9a14b18dd73', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('90cc057e-caf6-5a8e-abd8-e96b8df6c0b3', 'en', 'controlling idea', 'управляющая идея', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('07923af3-a6dd-569d-9a11-996be1837890', 'en', 'line of argument', 'линия аргументации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d815c107-849e-5417-8ad4-973c48d07667', 'en', 'critical evaluation', 'критическая оценка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1d19f3d1-2b3f-537c-8357-9427296e9fd0', 'en', 'counterclaim', 'встречное утверждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0d23e86b-f69e-57c1-a581-9b5e63274f06', 'en', 'evidential support', 'доказательная поддержка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('68e29210-a957-5f59-ba0e-e836c23e3d1e', 'en', 'cohesive device', 'средство связности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0aedb3e2-efd6-5ee0-b1d8-c2a7de182537', 'en', 'lexical precision', 'лексическая точность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('90cc057e-caf6-5a8e-abd8-e96b8df6c0b3', 'en', 'controlling idea', 'управляющая идея', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('07923af3-a6dd-569d-9a11-996be1837890', 'en', 'line of argument', 'линия аргументации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d815c107-849e-5417-8ad4-973c48d07667', 'en', 'critical evaluation', 'критическая оценка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1d19f3d1-2b3f-537c-8357-9427296e9fd0', 'en', 'counterclaim', 'встречное утверждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0d23e86b-f69e-57c1-a581-9b5e63274f06', 'en', 'evidential support', 'доказательная поддержка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('68e29210-a957-5f59-ba0e-e836c23e3d1e', 'en', 'cohesive device', 'средство связности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0aedb3e2-efd6-5ee0-b1d8-c2a7de182537', 'en', 'lexical precision', 'лексическая точность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('90cc057e-caf6-5a8e-abd8-e96b8df6c0b3', 'en', 'controlling idea', 'управляющая идея', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('07923af3-a6dd-569d-9a11-996be1837890', 'en', 'line of argument', 'линия аргументации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d815c107-849e-5417-8ad4-973c48d07667', 'en', 'critical evaluation', 'критическая оценка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1d19f3d1-2b3f-537c-8357-9427296e9fd0', 'en', 'counterclaim', 'встречное утверждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0d23e86b-f69e-57c1-a581-9b5e63274f06', 'en', 'evidential support', 'доказательная поддержка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('68e29210-a957-5f59-ba0e-e836c23e3d1e', 'en', 'cohesive device', 'средство связности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0aedb3e2-efd6-5ee0-b1d8-c2a7de182537', 'en', 'lexical precision', 'лексическая точность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '368737cd-4816-5bb0-87be-1ef73b44033b', id, 'a83df557-50f6-5785-a0e6-54dd3f60170e', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'controlling idea' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '368737cd-4816-5bb0-87be-1ef73b44033b', id, 'a83df557-50f6-5785-a0e6-54dd3f60170e', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'line of argument' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '368737cd-4816-5bb0-87be-1ef73b44033b', id, 'a83df557-50f6-5785-a0e6-54dd3f60170e', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'critical evaluation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '368737cd-4816-5bb0-87be-1ef73b44033b', id, 'a83df557-50f6-5785-a0e6-54dd3f60170e', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'counterclaim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '368737cd-4816-5bb0-87be-1ef73b44033b', id, 'a83df557-50f6-5785-a0e6-54dd3f60170e', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidential support' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '368737cd-4816-5bb0-87be-1ef73b44033b', id, 'a83df557-50f6-5785-a0e6-54dd3f60170e', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'cohesive device' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '368737cd-4816-5bb0-87be-1ef73b44033b', id, 'a83df557-50f6-5785-a0e6-54dd3f60170e', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'lexical precision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '368737cd-4816-5bb0-87be-1ef73b44033b', id, '94c04f4f-cf2d-5d1c-8cd5-27e353af3881', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'controlling idea' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '368737cd-4816-5bb0-87be-1ef73b44033b', id, '94c04f4f-cf2d-5d1c-8cd5-27e353af3881', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'line of argument' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '368737cd-4816-5bb0-87be-1ef73b44033b', id, '94c04f4f-cf2d-5d1c-8cd5-27e353af3881', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'critical evaluation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '368737cd-4816-5bb0-87be-1ef73b44033b', id, '94c04f4f-cf2d-5d1c-8cd5-27e353af3881', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'counterclaim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '368737cd-4816-5bb0-87be-1ef73b44033b', id, '94c04f4f-cf2d-5d1c-8cd5-27e353af3881', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidential support' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '368737cd-4816-5bb0-87be-1ef73b44033b', id, '94c04f4f-cf2d-5d1c-8cd5-27e353af3881', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'cohesive device' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '368737cd-4816-5bb0-87be-1ef73b44033b', id, '94c04f4f-cf2d-5d1c-8cd5-27e353af3881', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'lexical precision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '368737cd-4816-5bb0-87be-1ef73b44033b', id, 'bd00a02d-1092-5432-9da1-f9a14b18dd73', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'controlling idea' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '368737cd-4816-5bb0-87be-1ef73b44033b', id, 'bd00a02d-1092-5432-9da1-f9a14b18dd73', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'line of argument' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '368737cd-4816-5bb0-87be-1ef73b44033b', id, 'bd00a02d-1092-5432-9da1-f9a14b18dd73', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'critical evaluation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '368737cd-4816-5bb0-87be-1ef73b44033b', id, 'bd00a02d-1092-5432-9da1-f9a14b18dd73', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'counterclaim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '368737cd-4816-5bb0-87be-1ef73b44033b', id, 'bd00a02d-1092-5432-9da1-f9a14b18dd73', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidential support' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '368737cd-4816-5bb0-87be-1ef73b44033b', id, 'bd00a02d-1092-5432-9da1-f9a14b18dd73', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'cohesive device' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '368737cd-4816-5bb0-87be-1ef73b44033b', id, 'bd00a02d-1092-5432-9da1-f9a14b18dd73', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'lexical precision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
