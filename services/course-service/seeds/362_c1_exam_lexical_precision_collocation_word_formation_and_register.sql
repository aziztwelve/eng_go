-- Track: C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('8d9666bb-40cb-5b27-977f-7b8c60b3aaf9', 'C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER', 'Лексическая точность, сочетаемость, словообразование и регистр', 'Освойте экзаменационные навыки C1 по теме «Лексическая точность, сочетаемость, словообразование и регистр»: анализируйте сложный смысл, контролируйте точность и применяйте надёжную стратегию.', '{"en":"Lexical Precision, Collocation, Word Formation and Register","ru":"Лексическая точность, сочетаемость, словообразование и регистр"}'::jsonb, '{"en":"Master C1 exam skills for lexical precision, collocation, word formation and register by analysing complex meaning, controlling linguistic precision, and applying reliable strategy.","ru":"Освойте экзаменационные навыки C1 по теме «Лексическая точность, сочетаемость, словообразование и регистр»: анализируйте сложный смысл, контролируйте точность и применяйте надёжную стратегию."}'::jsonb, 'en', 'C1', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7922c044-26a0-5c3a-88ee-edcc7a147c64', NULL, 'Навык, контекст и ключевые понятия', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Selecting Precise Collocations","ru":"Навык, контекст и ключевые понятия"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c8cf516a-c3ab-54d6-8b9b-f9635548bf49', '7922c044-26a0-5c3a-88ee-edcc7a147c64', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D01","left":"semantic distinction","right":"смысловое различие"},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D02","left":"strong collocation","right":"устойчивое словосочетание"},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D03","left":"derivational morphology","right":"словообразовательная морфология"},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D04","left":"negative connotation","right":"отрицательная коннотация"},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D05","left":"register shift","right":"смена регистра"},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D06","left":"lexical ambiguity","right":"лексическая двусмысленность"},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D07","left":"idiomatic precision","right":"идиоматическая точность"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('43df83ae-d2b7-504d-b478-e5aab12b4c39', '7922c044-26a0-5c3a-88ee-edcc7a147c64', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D08","is_correct":true,"text":"The semantic distinction is subtle, but only the strong collocation conveys deliberate and sustained opposition."},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89d49cc5-d6a4-5c15-a4bf-a8d06b2569b9', '7922c044-26a0-5c3a-88ee-edcc7a147c64', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The semantic distinction is subtle, but only the strong collocation conveys deliberate and sustained opposition.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Смысловое различие тонкое, но только устойчивое словосочетание передаёт намеренное и продолжительное противодействие.","target_language":"en","word_bank":["The","semantic","distinction","is","subtle",",","but","only","the","strong","collocation","conveys","deliberate","and","sustained","opposition","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f700dce0-dbc1-55e7-a29d-723cbe7f0b54', '7922c044-26a0-5c3a-88ee-edcc7a147c64', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"semantic distinction","instruction":"Выберите подходящее слово.","options":["semantic distinction","negative connotation","lexical ambiguity"],"sentence_template":"The ___ is subtle, but only the strong collocation conveys deliberate and sustained opposition."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ba373267-27f2-5352-b104-effdeb634965', '7922c044-26a0-5c3a-88ee-edcc7a147c64', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","semantic","distinction","is","subtle",",","but","only","the","strong","collocation","conveys","deliberate","and","sustained","opposition","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","opposition","sustained","and","deliberate","conveys","collocation","strong","the","only","but",",","subtle","is","distinction","semantic","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d398c202-3f69-5f77-9f3a-49e1ded3df53', '7922c044-26a0-5c3a-88ee-edcc7a147c64', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The semantic distinction is subtle, but only the strong collocation conveys deliberate and sustained opposition. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5cdf010d-e8a8-5442-8e03-c17aac36970c', '7922c044-26a0-5c3a-88ee-edcc7a147c64', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The semantic distinction is subtle, but only the strong collocation conveys deliberate and sustained opposition. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Смысловое различие тонкое, но только устойчивое словосочетание передаёт намеренное и продолжительное противодействие. В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('59e6b653-4359-56c2-b342-c37e09fbafab', '7922c044-26a0-5c3a-88ee-edcc7a147c64', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"The semantic distinction is subtle, but only the strong collocation conveys deliberate and sustained opposition.","translation":"Смысловое различие тонкое, но только устойчивое словосочетание передаёт намеренное и продолжительное противодействие.","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Selecting Precise Collocations"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4990a689-7fec-55eb-851c-00a7bc6571ee', '7922c044-26a0-5c3a-88ee-edcc7a147c64', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“semantic distinction” means a difference in meaning between related words.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D11","is_correct":true,"text":"a difference in meaning between related words"},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D12","is_correct":false,"text":"a word combination preferred by proficient speakers"},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D13","is_correct":false,"text":"formation through prefixes and suffixes"}],"word":"semantic distinction"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e8605c2-a912-5b10-9d50-cd30ef8d9c80', '7922c044-26a0-5c3a-88ee-edcc7a147c64', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The semantic distinction is subtle, but only the strong collocation conveys deliberate and sustained opposition.","explanation":"The missing expression is “semantic distinction”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"semantic distinction","id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D14","is_correct":true},{"audio_text":"derivational morphology","id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D15","is_correct":false},{"audio_text":"register shift","id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D16","is_correct":false}],"sentence_template":"The ___ is subtle, but only the strong collocation conveys deliberate and sustained opposition."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('531bee9c-b8b9-507d-8bc4-007df48ece33', '7922c044-26a0-5c3a-88ee-edcc7a147c64', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"semantic distinction","explanation":"The complete answer uses “semantic distinction” precisely.","hint_prefix":"sema","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ is subtle, but only the strong collocation conveys deliberate and sustained opposition."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2805d547-a427-54c3-844e-5da410949e3a', '7922c044-26a0-5c3a-88ee-edcc7a147c64', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"semantic distinction","id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D17","text":"semantic distinction"},{"audio_text":"strong collocation","id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D18","text":"strong collocation"},{"audio_text":"derivational morphology","id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D19","text":"derivational morphology"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12179391-1a5a-5cc9-84b4-3b17a3072ff8', '7922c044-26a0-5c3a-88ee-edcc7a147c64', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Selecting Precise Collocations” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D20","is_correct":true,"text":"The semantic distinction is subtle, but only the strong collocation conveys deliberate and sustained opposition."},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L1_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8d9666bb-40cb-5b27-977f-7b8c60b3aaf9', '7922c044-26a0-5c3a-88ee-edcc7a147c64', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('11e9c3b3-25ce-59bf-b133-0891afeb2c2c', NULL, 'Продвинутый анализ и применение', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Managing Advanced Word Formation","ru":"Продвинутый анализ и применение"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ccd9d5c-0829-5bbc-9494-0394bd06fa20', '11e9c3b3-25ce-59bf-b133-0891afeb2c2c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D01","left":"semantic distinction","right":"смысловое различие"},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D02","left":"strong collocation","right":"устойчивое словосочетание"},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D03","left":"derivational morphology","right":"словообразовательная морфология"},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D04","left":"negative connotation","right":"отрицательная коннотация"},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D05","left":"register shift","right":"смена регистра"},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D06","left":"lexical ambiguity","right":"лексическая двусмысленность"},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D07","left":"idiomatic precision","right":"идиоматическая точность"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('196fabc5-e4a0-54d0-a270-427ead6d0804', '11e9c3b3-25ce-59bf-b133-0891afeb2c2c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D08","is_correct":true,"text":"Successful derivational morphology requires both a valid form and a meaning compatible with the surrounding argument. The relevant C1 concept is strong collocation."},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('51a6ef31-3c04-5fde-99e4-e1b528bcbaf2', '11e9c3b3-25ce-59bf-b133-0891afeb2c2c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Successful derivational morphology requires both a valid form and a meaning compatible with the surrounding argument. The relevant C1 concept is strong collocation.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Успешное словообразование требует правильной формы и значения, совместимого с окружающей аргументацией. Соответствующее понятие уровня C1 — «устойчивое словосочетание».","target_language":"en","word_bank":["Successful","derivational","morphology","requires","both","a","valid","form","and","a","meaning","compatible","with","the","surrounding","argument",".","The","relevant","C","1","concept","is","strong","collocation","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f479fe18-1824-56ba-affb-91422ceab63f', '11e9c3b3-25ce-59bf-b133-0891afeb2c2c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"strong collocation","instruction":"Выберите подходящее слово.","options":["strong collocation","register shift","idiomatic precision"],"sentence_template":"Successful derivational morphology requires both a valid form and a meaning compatible with the surrounding argument. The relevant C1 concept is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('adbc5b8c-9ff7-5127-b36d-a1fe1567b2c0', '11e9c3b3-25ce-59bf-b133-0891afeb2c2c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Successful","derivational","morphology","requires","both","a","valid","form","and","a","meaning","compatible","with","the","surrounding","argument",".","The","relevant","C","1","concept","is","strong","collocation","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","collocation","strong","is","concept","1","C","relevant","The",".","argument","surrounding","the","with","compatible","meaning","a","and","form","valid","a","both","requires","morphology","derivational","Successful"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1c1fe014-8c94-5d51-9771-d0c5cda7be1e', '11e9c3b3-25ce-59bf-b133-0891afeb2c2c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Successful derivational morphology requires both a valid form and a meaning compatible with the surrounding argument. The relevant C1 concept is strong collocation. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ca6fc5db-b784-5cdb-af55-d0869267e62b', '11e9c3b3-25ce-59bf-b133-0891afeb2c2c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Successful derivational morphology requires both a valid form and a meaning compatible with the surrounding argument. The relevant C1 concept is strong collocation. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Успешное словообразование требует правильной формы и значения, совместимого с окружающей аргументацией. Соответствующее понятие уровня C1 — «устойчивое словосочетание». В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4bef0a1a-efc5-5345-ae04-0d880dcd6922', '11e9c3b3-25ce-59bf-b133-0891afeb2c2c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Successful derivational morphology requires both a valid form and a meaning compatible with the surrounding argument. The relevant C1 concept is strong collocation.","translation":"Успешное словообразование требует правильной формы и значения, совместимого с окружающей аргументацией. Соответствующее понятие уровня C1 — «устойчивое словосочетание».","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Managing Advanced Word Formation"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('49012c1c-42cf-5288-b525-b5ec837ab002', '11e9c3b3-25ce-59bf-b133-0891afeb2c2c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“strong collocation” means a word combination preferred by proficient speakers.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D11","is_correct":true,"text":"a word combination preferred by proficient speakers"},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D12","is_correct":false,"text":"formation through prefixes and suffixes"},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D13","is_correct":false,"text":"an unfavourable association carried by a word"}],"word":"strong collocation"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2174a401-b41b-5f0e-af64-32322865e32a', '11e9c3b3-25ce-59bf-b133-0891afeb2c2c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Successful derivational morphology requires both a valid form and a meaning compatible with the surrounding argument. The relevant C1 concept is strong collocation.","explanation":"The missing expression is “strong collocation”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"strong collocation","id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D14","is_correct":true},{"audio_text":"negative connotation","id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D15","is_correct":false},{"audio_text":"lexical ambiguity","id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D16","is_correct":false}],"sentence_template":"Successful derivational morphology requires both a valid form and a meaning compatible with the surrounding argument. The relevant C1 concept is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1f9a2f39-7f09-5a3f-9eff-20b01f41b7eb', '11e9c3b3-25ce-59bf-b133-0891afeb2c2c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"strong collocation","explanation":"The complete answer uses “strong collocation” precisely.","hint_prefix":"stro","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Successful derivational morphology requires both a valid form and a meaning compatible with the surrounding argument. The relevant C1 concept is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b0e235e-3661-55a9-95e4-f18cb005fc4c', '11e9c3b3-25ce-59bf-b133-0891afeb2c2c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"semantic distinction","id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D17","text":"semantic distinction"},{"audio_text":"strong collocation","id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D18","text":"strong collocation"},{"audio_text":"derivational morphology","id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D19","text":"derivational morphology"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c567ef4e-558d-55e3-8539-5e28d0eb25d2', '11e9c3b3-25ce-59bf-b133-0891afeb2c2c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Managing Advanced Word Formation” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D20","is_correct":true,"text":"Successful derivational morphology requires both a valid form and a meaning compatible with the surrounding argument. The relevant C1 concept is strong collocation."},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L2_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8d9666bb-40cb-5b27-977f-7b8c60b3aaf9', '11e9c3b3-25ce-59bf-b133-0891afeb2c2c', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('46fd22d2-676a-52c8-9311-9e5b0856d45d', NULL, 'Экзаменационное решение и проверка', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Adapting Register and Connotation","ru":"Экзаменационное решение и проверка"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a2b7ba30-b067-54aa-9b65-eea8711b095e', '46fd22d2-676a-52c8-9311-9e5b0856d45d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D01","left":"semantic distinction","right":"смысловое различие"},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D02","left":"strong collocation","right":"устойчивое словосочетание"},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D03","left":"derivational morphology","right":"словообразовательная морфология"},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D04","left":"negative connotation","right":"отрицательная коннотация"},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D05","left":"register shift","right":"смена регистра"},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D06","left":"lexical ambiguity","right":"лексическая двусмысленность"},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D07","left":"idiomatic precision","right":"идиоматическая точность"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('356bc98d-67f5-548d-8efa-a9529a3295da', '46fd22d2-676a-52c8-9311-9e5b0856d45d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D08","is_correct":true,"text":"The proposed synonym creates an unintended register shift and carries a negative connotation absent from the original. The relevant C1 concept is derivational morphology."},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eaf6dea3-cafb-5b87-81c5-54736036765e', '46fd22d2-676a-52c8-9311-9e5b0856d45d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The proposed synonym creates an unintended register shift and carries a negative connotation absent from the original. The relevant C1 concept is derivational morphology.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Предложенный синоним вызывает непреднамеренную смену регистра и несёт отсутствующую в оригинале отрицательную коннотацию. Соответствующее понятие уровня C1 — «словообразовательная морфология».","target_language":"en","word_bank":["The","proposed","synonym","creates","an","unintended","register","shift","and","carries","a","negative","connotation","absent","from","the","original",".","The","relevant","C","1","concept","is","derivational","morphology","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd7a08ff-5c73-5f8b-b703-80732c265899', '46fd22d2-676a-52c8-9311-9e5b0856d45d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"derivational morphology","instruction":"Выберите подходящее слово.","options":["derivational morphology","lexical ambiguity","semantic distinction"],"sentence_template":"The proposed synonym creates an unintended register shift and carries a negative connotation absent from the original. The relevant C1 concept is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e1c74d2f-e647-56ed-a0de-9a09962d3d31', '46fd22d2-676a-52c8-9311-9e5b0856d45d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","proposed","synonym","creates","an","unintended","register","shift","and","carries","a","negative","connotation","absent","from","the","original",".","The","relevant","C","1","concept","is","derivational","morphology","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","morphology","derivational","is","concept","1","C","relevant","The",".","original","the","from","absent","connotation","negative","a","carries","and","shift","register","unintended","an","creates","synonym","proposed","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb13039a-36f2-5fac-b216-2c70823df9b7', '46fd22d2-676a-52c8-9311-9e5b0856d45d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The proposed synonym creates an unintended register shift and carries a negative connotation absent from the original. The relevant C1 concept is derivational morphology. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('427eebd6-0833-573b-ae83-994229b718bd', '46fd22d2-676a-52c8-9311-9e5b0856d45d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The proposed synonym creates an unintended register shift and carries a negative connotation absent from the original. The relevant C1 concept is derivational morphology. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Предложенный синоним вызывает непреднамеренную смену регистра и несёт отсутствующую в оригинале отрицательную коннотацию. Соответствующее понятие уровня C1 — «словообразовательная морфология». В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8de71e7-d4b1-5351-a0ef-7242a7a6ddf2', '46fd22d2-676a-52c8-9311-9e5b0856d45d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"The proposed synonym creates an unintended register shift and carries a negative connotation absent from the original. The relevant C1 concept is derivational morphology.","translation":"Предложенный синоним вызывает непреднамеренную смену регистра и несёт отсутствующую в оригинале отрицательную коннотацию. Соответствующее понятие уровня C1 — «словообразовательная морфология».","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Adapting Register and Connotation"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65d1439a-ab06-5ca0-a740-b827b4b391d1', '46fd22d2-676a-52c8-9311-9e5b0856d45d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“derivational morphology” means formation through prefixes and suffixes.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D11","is_correct":true,"text":"formation through prefixes and suffixes"},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D12","is_correct":false,"text":"an unfavourable association carried by a word"},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D13","is_correct":false,"text":"movement between levels of formality"}],"word":"derivational morphology"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('91cec911-23b9-5c1d-9e12-0012996fb2a9', '46fd22d2-676a-52c8-9311-9e5b0856d45d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The proposed synonym creates an unintended register shift and carries a negative connotation absent from the original. The relevant C1 concept is derivational morphology.","explanation":"The missing expression is “derivational morphology”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"derivational morphology","id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D14","is_correct":true},{"audio_text":"register shift","id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D15","is_correct":false},{"audio_text":"idiomatic precision","id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D16","is_correct":false}],"sentence_template":"The proposed synonym creates an unintended register shift and carries a negative connotation absent from the original. The relevant C1 concept is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8680f6b4-9c4d-5bff-b54b-67c67267020f', '46fd22d2-676a-52c8-9311-9e5b0856d45d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"derivational morphology","explanation":"The complete answer uses “derivational morphology” precisely.","hint_prefix":"deri","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The proposed synonym creates an unintended register shift and carries a negative connotation absent from the original. The relevant C1 concept is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4e2fa60-0f83-5a79-94c8-764966fb34c7', '46fd22d2-676a-52c8-9311-9e5b0856d45d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"semantic distinction","id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D17","text":"semantic distinction"},{"audio_text":"strong collocation","id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D18","text":"strong collocation"},{"audio_text":"derivational morphology","id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D19","text":"derivational morphology"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2f05044-ca21-567c-9727-bcf67a5f9981', '46fd22d2-676a-52c8-9311-9e5b0856d45d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Adapting Register and Connotation” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D20","is_correct":true,"text":"The proposed synonym creates an unintended register shift and carries a negative connotation absent from the original. The relevant C1 concept is derivational morphology."},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_LEXICAL_PRECISION_COLLOCATION_WORD_FORMATION_AND_REGISTER_L3_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8d9666bb-40cb-5b27-977f-7b8c60b3aaf9', '46fd22d2-676a-52c8-9311-9e5b0856d45d', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6312a469-f993-5a6d-8ec4-05efc00cbe7c', 'en', 'semantic distinction', 'смысловое различие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9ce123f4-239b-5c14-ac89-95c1c9450aa8', 'en', 'strong collocation', 'устойчивое словосочетание', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1ff9f82e-8afa-5b23-b346-4121f0c57100', 'en', 'derivational morphology', 'словообразовательная морфология', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fc782084-d9ec-5d62-990a-cec2f5de33d4', 'en', 'negative connotation', 'отрицательная коннотация', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5c10b7c7-6a12-5c25-84a4-a909d2535cc4', 'en', 'register shift', 'смена регистра', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf893421-6ac1-5e7c-bb5f-b65fe37305a1', 'en', 'lexical ambiguity', 'лексическая двусмысленность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a78eb1ab-d16e-5e7e-8932-650668033879', 'en', 'idiomatic precision', 'идиоматическая точность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6312a469-f993-5a6d-8ec4-05efc00cbe7c', 'en', 'semantic distinction', 'смысловое различие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9ce123f4-239b-5c14-ac89-95c1c9450aa8', 'en', 'strong collocation', 'устойчивое словосочетание', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1ff9f82e-8afa-5b23-b346-4121f0c57100', 'en', 'derivational morphology', 'словообразовательная морфология', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fc782084-d9ec-5d62-990a-cec2f5de33d4', 'en', 'negative connotation', 'отрицательная коннотация', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5c10b7c7-6a12-5c25-84a4-a909d2535cc4', 'en', 'register shift', 'смена регистра', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf893421-6ac1-5e7c-bb5f-b65fe37305a1', 'en', 'lexical ambiguity', 'лексическая двусмысленность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a78eb1ab-d16e-5e7e-8932-650668033879', 'en', 'idiomatic precision', 'идиоматическая точность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6312a469-f993-5a6d-8ec4-05efc00cbe7c', 'en', 'semantic distinction', 'смысловое различие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9ce123f4-239b-5c14-ac89-95c1c9450aa8', 'en', 'strong collocation', 'устойчивое словосочетание', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1ff9f82e-8afa-5b23-b346-4121f0c57100', 'en', 'derivational morphology', 'словообразовательная морфология', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fc782084-d9ec-5d62-990a-cec2f5de33d4', 'en', 'negative connotation', 'отрицательная коннотация', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5c10b7c7-6a12-5c25-84a4-a909d2535cc4', 'en', 'register shift', 'смена регистра', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf893421-6ac1-5e7c-bb5f-b65fe37305a1', 'en', 'lexical ambiguity', 'лексическая двусмысленность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a78eb1ab-d16e-5e7e-8932-650668033879', 'en', 'idiomatic precision', 'идиоматическая точность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8d9666bb-40cb-5b27-977f-7b8c60b3aaf9', id, '7922c044-26a0-5c3a-88ee-edcc7a147c64', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'semantic distinction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8d9666bb-40cb-5b27-977f-7b8c60b3aaf9', id, '7922c044-26a0-5c3a-88ee-edcc7a147c64', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'strong collocation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8d9666bb-40cb-5b27-977f-7b8c60b3aaf9', id, '7922c044-26a0-5c3a-88ee-edcc7a147c64', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'derivational morphology' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8d9666bb-40cb-5b27-977f-7b8c60b3aaf9', id, '7922c044-26a0-5c3a-88ee-edcc7a147c64', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'negative connotation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8d9666bb-40cb-5b27-977f-7b8c60b3aaf9', id, '7922c044-26a0-5c3a-88ee-edcc7a147c64', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'register shift' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8d9666bb-40cb-5b27-977f-7b8c60b3aaf9', id, '7922c044-26a0-5c3a-88ee-edcc7a147c64', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'lexical ambiguity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8d9666bb-40cb-5b27-977f-7b8c60b3aaf9', id, '7922c044-26a0-5c3a-88ee-edcc7a147c64', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'idiomatic precision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8d9666bb-40cb-5b27-977f-7b8c60b3aaf9', id, '11e9c3b3-25ce-59bf-b133-0891afeb2c2c', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'semantic distinction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8d9666bb-40cb-5b27-977f-7b8c60b3aaf9', id, '11e9c3b3-25ce-59bf-b133-0891afeb2c2c', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'strong collocation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8d9666bb-40cb-5b27-977f-7b8c60b3aaf9', id, '11e9c3b3-25ce-59bf-b133-0891afeb2c2c', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'derivational morphology' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8d9666bb-40cb-5b27-977f-7b8c60b3aaf9', id, '11e9c3b3-25ce-59bf-b133-0891afeb2c2c', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'negative connotation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8d9666bb-40cb-5b27-977f-7b8c60b3aaf9', id, '11e9c3b3-25ce-59bf-b133-0891afeb2c2c', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'register shift' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8d9666bb-40cb-5b27-977f-7b8c60b3aaf9', id, '11e9c3b3-25ce-59bf-b133-0891afeb2c2c', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'lexical ambiguity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8d9666bb-40cb-5b27-977f-7b8c60b3aaf9', id, '11e9c3b3-25ce-59bf-b133-0891afeb2c2c', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'idiomatic precision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8d9666bb-40cb-5b27-977f-7b8c60b3aaf9', id, '46fd22d2-676a-52c8-9311-9e5b0856d45d', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'semantic distinction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8d9666bb-40cb-5b27-977f-7b8c60b3aaf9', id, '46fd22d2-676a-52c8-9311-9e5b0856d45d', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'strong collocation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8d9666bb-40cb-5b27-977f-7b8c60b3aaf9', id, '46fd22d2-676a-52c8-9311-9e5b0856d45d', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'derivational morphology' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8d9666bb-40cb-5b27-977f-7b8c60b3aaf9', id, '46fd22d2-676a-52c8-9311-9e5b0856d45d', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'negative connotation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8d9666bb-40cb-5b27-977f-7b8c60b3aaf9', id, '46fd22d2-676a-52c8-9311-9e5b0856d45d', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'register shift' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8d9666bb-40cb-5b27-977f-7b8c60b3aaf9', id, '46fd22d2-676a-52c8-9311-9e5b0856d45d', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'lexical ambiguity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8d9666bb-40cb-5b27-977f-7b8c60b3aaf9', id, '46fd22d2-676a-52c8-9311-9e5b0856d45d', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'idiomatic precision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
