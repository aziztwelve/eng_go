-- Track: C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('d3ebfee6-fdee-5db3-a22b-4983c5dffc06', 'C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL', 'Говорение: развёрнутый ответ, анализ и управление дискурсом', 'Освойте экзаменационные навыки C1 по теме «Говорение: развёрнутый ответ, анализ и управление дискурсом»: анализируйте сложный смысл, контролируйте точность и применяйте надёжную стратегию.', '{"en":"Speaking: Long Turns, Analysis and Discourse Control","ru":"Говорение: развёрнутый ответ, анализ и управление дискурсом"}'::jsonb, '{"en":"Master C1 exam skills for speaking: long turns, analysis and discourse control by analysing complex meaning, controlling linguistic precision, and applying reliable strategy.","ru":"Освойте экзаменационные навыки C1 по теме «Говорение: развёрнутый ответ, анализ и управление дискурсом»: анализируйте сложный смысл, контролируйте точность и применяйте надёжную стратегию."}'::jsonb, 'en', 'C1', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a13a76f0-b34d-5a21-b985-a3e9a555f23f', NULL, 'Навык, контекст и ключевые понятия', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Structuring an Analytical Long Turn","ru":"Навык, контекст и ключевые понятия"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2e23871-7c6f-59a3-aa75-dbcd7d511adf', 'a13a76f0-b34d-5a21-b985-a3e9a555f23f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L1_D01","left":"discourse marker","right":"дискурсивный маркер"},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L1_D02","left":"analytical comparison","right":"аналитическое сравнение"},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L1_D03","left":"qualified judgement","right":"оговорённое суждение"},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L1_D04","left":"thematic development","right":"тематическое развитие"},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L1_D05","left":"self-correction","right":"самокоррекция"},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L1_D06","left":"paraphrasing strategy","right":"стратегия перефразирования"},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L1_D07","left":"concluding synthesis","right":"итоговый синтез"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('95e03102-6ee3-53e5-b899-8ee54e7a6d10', 'a13a76f0-b34d-5a21-b985-a3e9a555f23f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L1_D08","is_correct":true,"text":"An analytical comparison prioritises significance, uses clear discourse markers, and avoids describing each option separately."},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L1_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L1_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e90c3246-96a7-5fb2-b971-09e6fe035829', 'a13a76f0-b34d-5a21-b985-a3e9a555f23f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"An analytical comparison prioritises significance, uses clear discourse markers, and avoids describing each option separately.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Аналитическое сравнение подчёркивает значимость, использует ясные дискурсивные маркеры и не описывает варианты по отдельности.","target_language":"en","word_bank":["An","analytical","comparison","prioritises","significance",",","uses","clear","discourse","markers",",","and","avoids","describing","each","option","separately","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('60dfc895-ad1c-56e8-83b2-2683311898b6', 'a13a76f0-b34d-5a21-b985-a3e9a555f23f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"discourse marker","instruction":"Выберите подходящее слово.","options":["discourse marker","thematic development","paraphrasing strategy"],"sentence_template":"An analytical comparison prioritises significance, uses clear ___s, and avoids describing each option separately."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1efa0b2a-6507-5c88-a62d-beb73862e02f', 'a13a76f0-b34d-5a21-b985-a3e9a555f23f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["An","analytical","comparison","prioritises","significance",",","uses","clear","discourse","markers",",","and","avoids","describing","each","option","separately","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","separately","option","each","describing","avoids","and",",","markers","discourse","clear","uses",",","significance","prioritises","comparison","analytical","An"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71ccce9c-4a6d-5af9-bfdc-df4fbcee0cb9', 'a13a76f0-b34d-5a21-b985-a3e9a555f23f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"An analytical comparison prioritises significance, uses clear discourse markers, and avoids describing each option separately. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('14e3c528-da4d-545a-aed7-c32cdeff62f5', 'a13a76f0-b34d-5a21-b985-a3e9a555f23f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"An analytical comparison prioritises significance, uses clear discourse markers, and avoids describing each option separately. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Аналитическое сравнение подчёркивает значимость, использует ясные дискурсивные маркеры и не описывает варианты по отдельности. В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('80e9d11d-9c17-56b2-882b-8179430c55d4', 'a13a76f0-b34d-5a21-b985-a3e9a555f23f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"An analytical comparison prioritises significance, uses clear discourse markers, and avoids describing each option separately.","translation":"Аналитическое сравнение подчёркивает значимость, использует ясные дискурсивные маркеры и не описывает варианты по отдельности.","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Structuring an Analytical Long Turn"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c62945f1-7ef9-5a6f-8475-426ed6126c66', 'a13a76f0-b34d-5a21-b985-a3e9a555f23f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“discourse marker” means an expression signalling relations between ideas.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L1_D11","is_correct":true,"text":"an expression signalling relations between ideas"},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L1_D12","is_correct":false,"text":"comparison that explains significance"},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L1_D13","is_correct":false,"text":"an evaluation limited by conditions"}],"word":"discourse marker"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b9ecbdc-4e86-58ec-a588-94949dcd0b20', 'a13a76f0-b34d-5a21-b985-a3e9a555f23f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"An analytical comparison prioritises significance, uses clear discourse markers, and avoids describing each option separately.","explanation":"The missing expression is “discourse marker”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"discourse marker","id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L1_D14","is_correct":true},{"audio_text":"qualified judgement","id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L1_D15","is_correct":false},{"audio_text":"self-correction","id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L1_D16","is_correct":false}],"sentence_template":"An analytical comparison prioritises significance, uses clear ___s, and avoids describing each option separately."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0903fa55-9cf6-5bd4-8419-c15f871348da', 'a13a76f0-b34d-5a21-b985-a3e9a555f23f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"discourse marker","explanation":"The complete answer uses “discourse marker” precisely.","hint_prefix":"disc","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"An analytical comparison prioritises significance, uses clear ___s, and avoids describing each option separately."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b6dfd54f-04e4-5a97-8b8f-e4abe034df8f', 'a13a76f0-b34d-5a21-b985-a3e9a555f23f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"discourse marker","id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L1_D17","text":"discourse marker"},{"audio_text":"analytical comparison","id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L1_D18","text":"analytical comparison"},{"audio_text":"qualified judgement","id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L1_D19","text":"qualified judgement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('958395f5-bd12-5bbf-be71-a353ae5a5342', 'a13a76f0-b34d-5a21-b985-a3e9a555f23f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Structuring an Analytical Long Turn” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L1_D20","is_correct":true,"text":"An analytical comparison prioritises significance, uses clear discourse markers, and avoids describing each option separately."},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L1_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L1_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d3ebfee6-fdee-5db3-a22b-4983c5dffc06', 'a13a76f0-b34d-5a21-b985-a3e9a555f23f', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b2b93723-9a8d-55e8-b5ea-8fdb6767fe45', NULL, 'Продвинутый анализ и применение', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Qualifying and Developing Ideas","ru":"Продвинутый анализ и применение"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('643c9c4b-ba1d-511e-8342-7fdd3aca4f33', 'b2b93723-9a8d-55e8-b5ea-8fdb6767fe45', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L2_D01","left":"discourse marker","right":"дискурсивный маркер"},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L2_D02","left":"analytical comparison","right":"аналитическое сравнение"},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L2_D03","left":"qualified judgement","right":"оговорённое суждение"},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L2_D04","left":"thematic development","right":"тематическое развитие"},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L2_D05","left":"self-correction","right":"самокоррекция"},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L2_D06","left":"paraphrasing strategy","right":"стратегия перефразирования"},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L2_D07","left":"concluding synthesis","right":"итоговый синтез"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d259364c-3ab3-5eda-9ed0-66e3ef291b2f', 'b2b93723-9a8d-55e8-b5ea-8fdb6767fe45', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L2_D08","is_correct":true,"text":"A qualified judgement develops the central claim while acknowledging relevant exceptions and limitations. The relevant C1 concept is analytical comparison."},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L2_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L2_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f4d74377-a3c6-5a66-a024-4e87ff046c24', 'b2b93723-9a8d-55e8-b5ea-8fdb6767fe45', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A qualified judgement develops the central claim while acknowledging relevant exceptions and limitations. The relevant C1 concept is analytical comparison.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Оговорённое суждение развивает основную мысль, признавая значимые исключения и ограничения. Соответствующее понятие уровня C1 — «аналитическое сравнение».","target_language":"en","word_bank":["A","qualified","judgement","develops","the","central","claim","while","acknowledging","relevant","exceptions","and","limitations",".","The","relevant","C","1","concept","is","analytical","comparison","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('30cf05f9-b60f-5759-ab33-ef015fe45778', 'b2b93723-9a8d-55e8-b5ea-8fdb6767fe45', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"analytical comparison","instruction":"Выберите подходящее слово.","options":["analytical comparison","self-correction","concluding synthesis"],"sentence_template":"A qualified judgement develops the central claim while acknowledging relevant exceptions and limitations. The relevant C1 concept is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7b7a75c-1cba-560a-99aa-41fb53e88f2d', 'b2b93723-9a8d-55e8-b5ea-8fdb6767fe45', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","qualified","judgement","develops","the","central","claim","while","acknowledging","relevant","exceptions","and","limitations",".","The","relevant","C","1","concept","is","analytical","comparison","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","comparison","analytical","is","concept","1","C","relevant","The",".","limitations","and","exceptions","relevant","acknowledging","while","claim","central","the","develops","judgement","qualified","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7c206e19-244d-5c93-9fcd-214c7d0be08b', 'b2b93723-9a8d-55e8-b5ea-8fdb6767fe45', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A qualified judgement develops the central claim while acknowledging relevant exceptions and limitations. The relevant C1 concept is analytical comparison. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2afeccea-5a68-5948-84a1-e648b15e7f86', 'b2b93723-9a8d-55e8-b5ea-8fdb6767fe45', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A qualified judgement develops the central claim while acknowledging relevant exceptions and limitations. The relevant C1 concept is analytical comparison. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Оговорённое суждение развивает основную мысль, признавая значимые исключения и ограничения. Соответствующее понятие уровня C1 — «аналитическое сравнение». В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8274b102-3c34-5456-be0f-7a47378bf5cc', 'b2b93723-9a8d-55e8-b5ea-8fdb6767fe45', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"A qualified judgement develops the central claim while acknowledging relevant exceptions and limitations. The relevant C1 concept is analytical comparison.","translation":"Оговорённое суждение развивает основную мысль, признавая значимые исключения и ограничения. Соответствующее понятие уровня C1 — «аналитическое сравнение».","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Qualifying and Developing Ideas"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d88775e8-35c1-53d0-ab5f-618db1647030', 'b2b93723-9a8d-55e8-b5ea-8fdb6767fe45', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“analytical comparison” means comparison that explains significance.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L2_D11","is_correct":true,"text":"comparison that explains significance"},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L2_D12","is_correct":false,"text":"an evaluation limited by conditions"},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L2_D13","is_correct":false,"text":"coherent expansion of a central idea"}],"word":"analytical comparison"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('398d7639-f7b5-5ca3-afe5-c8f1a9715bb1', 'b2b93723-9a8d-55e8-b5ea-8fdb6767fe45', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A qualified judgement develops the central claim while acknowledging relevant exceptions and limitations. The relevant C1 concept is analytical comparison.","explanation":"The missing expression is “analytical comparison”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"analytical comparison","id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L2_D14","is_correct":true},{"audio_text":"thematic development","id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L2_D15","is_correct":false},{"audio_text":"paraphrasing strategy","id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L2_D16","is_correct":false}],"sentence_template":"A qualified judgement develops the central claim while acknowledging relevant exceptions and limitations. The relevant C1 concept is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bbac4e94-a63a-50e5-a6f1-aab9d45e2a2c', 'b2b93723-9a8d-55e8-b5ea-8fdb6767fe45', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"analytical comparison","explanation":"The complete answer uses “analytical comparison” precisely.","hint_prefix":"anal","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A qualified judgement develops the central claim while acknowledging relevant exceptions and limitations. The relevant C1 concept is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8aa3bd2f-8645-537e-b820-59444deb1cce', 'b2b93723-9a8d-55e8-b5ea-8fdb6767fe45', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"discourse marker","id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L2_D17","text":"discourse marker"},{"audio_text":"analytical comparison","id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L2_D18","text":"analytical comparison"},{"audio_text":"qualified judgement","id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L2_D19","text":"qualified judgement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('77b80065-8d93-53d0-a436-73f21f791bd7', 'b2b93723-9a8d-55e8-b5ea-8fdb6767fe45', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Qualifying and Developing Ideas” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L2_D20","is_correct":true,"text":"A qualified judgement develops the central claim while acknowledging relevant exceptions and limitations. The relevant C1 concept is analytical comparison."},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L2_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L2_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d3ebfee6-fdee-5db3-a22b-4983c5dffc06', 'b2b93723-9a8d-55e8-b5ea-8fdb6767fe45', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7c36e9a5-3b6e-54ba-a186-28d742e78b6e', NULL, 'Экзаменационное решение и проверка', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Recovering Fluency Under Pressure","ru":"Экзаменационное решение и проверка"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b5b498ee-53c6-5d17-b20a-018c838d027b', '7c36e9a5-3b6e-54ba-a186-28d742e78b6e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L3_D01","left":"discourse marker","right":"дискурсивный маркер"},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L3_D02","left":"analytical comparison","right":"аналитическое сравнение"},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L3_D03","left":"qualified judgement","right":"оговорённое суждение"},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L3_D04","left":"thematic development","right":"тематическое развитие"},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L3_D05","left":"self-correction","right":"самокоррекция"},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L3_D06","left":"paraphrasing strategy","right":"стратегия перефразирования"},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L3_D07","left":"concluding synthesis","right":"итоговый синтез"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6fc72ffb-8a70-5531-8e44-28ce56028dd9', '7c36e9a5-3b6e-54ba-a186-28d742e78b6e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L3_D08","is_correct":true,"text":"When a precise term is unavailable, a controlled paraphrasing strategy preserves fluency better than prolonged hesitation. The relevant C1 concept is qualified judgement."},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L3_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L3_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4c966a45-2989-5861-bb24-52f658eee7d1', '7c36e9a5-3b6e-54ba-a186-28d742e78b6e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"When a precise term is unavailable, a controlled paraphrasing strategy preserves fluency better than prolonged hesitation. The relevant C1 concept is qualified judgement.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Когда точный термин недоступен, контролируемая стратегия перефразирования сохраняет беглость лучше длительной паузы. Соответствующее понятие уровня C1 — «оговорённое суждение».","target_language":"en","word_bank":["When","a","precise","term","is","unavailable",",","a","controlled","paraphrasing","strategy","preserves","fluency","better","than","prolonged","hesitation",".","The","relevant","C","1","concept","is","qualified","judgement","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a2cd7eed-27fa-5d03-894d-925bd4408dd4', '7c36e9a5-3b6e-54ba-a186-28d742e78b6e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"qualified judgement","instruction":"Выберите подходящее слово.","options":["qualified judgement","paraphrasing strategy","discourse marker"],"sentence_template":"When a precise term is unavailable, a controlled paraphrasing strategy preserves fluency better than prolonged hesitation. The relevant C1 concept is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b23e7df0-1518-55ef-a066-5877ee741005', '7c36e9a5-3b6e-54ba-a186-28d742e78b6e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["When","a","precise","term","is","unavailable",",","a","controlled","paraphrasing","strategy","preserves","fluency","better","than","prolonged","hesitation",".","The","relevant","C","1","concept","is","qualified","judgement","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","judgement","qualified","is","concept","1","C","relevant","The",".","hesitation","prolonged","than","better","fluency","preserves","strategy","paraphrasing","controlled","a",",","unavailable","is","term","precise","a","When"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8a270ff7-5752-5eb7-aee2-31bf8cfb6c05', '7c36e9a5-3b6e-54ba-a186-28d742e78b6e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"When a precise term is unavailable, a controlled paraphrasing strategy preserves fluency better than prolonged hesitation. The relevant C1 concept is qualified judgement. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('af63142b-618e-5571-bce1-21d3b1c76a7a', '7c36e9a5-3b6e-54ba-a186-28d742e78b6e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"When a precise term is unavailable, a controlled paraphrasing strategy preserves fluency better than prolonged hesitation. The relevant C1 concept is qualified judgement. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Когда точный термин недоступен, контролируемая стратегия перефразирования сохраняет беглость лучше длительной паузы. Соответствующее понятие уровня C1 — «оговорённое суждение». В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9809dfcf-e2d0-5c60-b7fc-849b1de5f3fb', '7c36e9a5-3b6e-54ba-a186-28d742e78b6e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"When a precise term is unavailable, a controlled paraphrasing strategy preserves fluency better than prolonged hesitation. The relevant C1 concept is qualified judgement.","translation":"Когда точный термин недоступен, контролируемая стратегия перефразирования сохраняет беглость лучше длительной паузы. Соответствующее понятие уровня C1 — «оговорённое суждение».","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Recovering Fluency Under Pressure"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f9e87a80-1a3c-5132-9578-7cdef7075a40', '7c36e9a5-3b6e-54ba-a186-28d742e78b6e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“qualified judgement” means an evaluation limited by conditions.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L3_D11","is_correct":true,"text":"an evaluation limited by conditions"},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L3_D12","is_correct":false,"text":"coherent expansion of a central idea"},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L3_D13","is_correct":false,"text":"a speaker’s repair of inaccurate language"}],"word":"qualified judgement"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d17ec6e4-8432-5754-8c52-2283343236dd', '7c36e9a5-3b6e-54ba-a186-28d742e78b6e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"When a precise term is unavailable, a controlled paraphrasing strategy preserves fluency better than prolonged hesitation. The relevant C1 concept is qualified judgement.","explanation":"The missing expression is “qualified judgement”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"qualified judgement","id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L3_D14","is_correct":true},{"audio_text":"self-correction","id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L3_D15","is_correct":false},{"audio_text":"concluding synthesis","id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L3_D16","is_correct":false}],"sentence_template":"When a precise term is unavailable, a controlled paraphrasing strategy preserves fluency better than prolonged hesitation. The relevant C1 concept is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7e1b293-8c24-5784-b64d-86ab17bb131c', '7c36e9a5-3b6e-54ba-a186-28d742e78b6e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"qualified judgement","explanation":"The complete answer uses “qualified judgement” precisely.","hint_prefix":"qual","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"When a precise term is unavailable, a controlled paraphrasing strategy preserves fluency better than prolonged hesitation. The relevant C1 concept is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5f7ab44c-e6c5-5496-b0b2-1d499e6f2f41', '7c36e9a5-3b6e-54ba-a186-28d742e78b6e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"discourse marker","id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L3_D17","text":"discourse marker"},{"audio_text":"analytical comparison","id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L3_D18","text":"analytical comparison"},{"audio_text":"qualified judgement","id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L3_D19","text":"qualified judgement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d019e58-8d7b-5e12-8333-ba4db9e037a0', '7c36e9a5-3b6e-54ba-a186-28d742e78b6e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Recovering Fluency Under Pressure” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L3_D20","is_correct":true,"text":"When a precise term is unavailable, a controlled paraphrasing strategy preserves fluency better than prolonged hesitation. The relevant C1 concept is qualified judgement."},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L3_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_SPEAKING_LONG_TURNS_ANALYSIS_AND_DISCOURSE_CONTROL_L3_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d3ebfee6-fdee-5db3-a22b-4983c5dffc06', '7c36e9a5-3b6e-54ba-a186-28d742e78b6e', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8627df46-2b3a-5bb4-bb1b-e6803fbe795e', 'en', 'discourse marker', 'дискурсивный маркер', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('76b30445-c5df-59f4-bc90-44c93102b934', 'en', 'analytical comparison', 'аналитическое сравнение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e2448847-94b3-5169-bb77-cd895a6105d6', 'en', 'qualified judgement', 'оговорённое суждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b6597572-d3fc-5200-af86-7ba282e83d51', 'en', 'thematic development', 'тематическое развитие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67acc0f3-4465-5aa9-bc85-6bdff369d265', 'en', 'self-correction', 'самокоррекция', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c9ca302b-7e12-532e-ab55-f96392fceb0a', 'en', 'paraphrasing strategy', 'стратегия перефразирования', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('22f4a56d-e2ed-5744-a705-1f9cbdecd1f7', 'en', 'concluding synthesis', 'итоговый синтез', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8627df46-2b3a-5bb4-bb1b-e6803fbe795e', 'en', 'discourse marker', 'дискурсивный маркер', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('76b30445-c5df-59f4-bc90-44c93102b934', 'en', 'analytical comparison', 'аналитическое сравнение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e2448847-94b3-5169-bb77-cd895a6105d6', 'en', 'qualified judgement', 'оговорённое суждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b6597572-d3fc-5200-af86-7ba282e83d51', 'en', 'thematic development', 'тематическое развитие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67acc0f3-4465-5aa9-bc85-6bdff369d265', 'en', 'self-correction', 'самокоррекция', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c9ca302b-7e12-532e-ab55-f96392fceb0a', 'en', 'paraphrasing strategy', 'стратегия перефразирования', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('22f4a56d-e2ed-5744-a705-1f9cbdecd1f7', 'en', 'concluding synthesis', 'итоговый синтез', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8627df46-2b3a-5bb4-bb1b-e6803fbe795e', 'en', 'discourse marker', 'дискурсивный маркер', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('76b30445-c5df-59f4-bc90-44c93102b934', 'en', 'analytical comparison', 'аналитическое сравнение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e2448847-94b3-5169-bb77-cd895a6105d6', 'en', 'qualified judgement', 'оговорённое суждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b6597572-d3fc-5200-af86-7ba282e83d51', 'en', 'thematic development', 'тематическое развитие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67acc0f3-4465-5aa9-bc85-6bdff369d265', 'en', 'self-correction', 'самокоррекция', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c9ca302b-7e12-532e-ab55-f96392fceb0a', 'en', 'paraphrasing strategy', 'стратегия перефразирования', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('22f4a56d-e2ed-5744-a705-1f9cbdecd1f7', 'en', 'concluding synthesis', 'итоговый синтез', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ebfee6-fdee-5db3-a22b-4983c5dffc06', id, 'a13a76f0-b34d-5a21-b985-a3e9a555f23f', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'discourse marker' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ebfee6-fdee-5db3-a22b-4983c5dffc06', id, 'a13a76f0-b34d-5a21-b985-a3e9a555f23f', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'analytical comparison' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ebfee6-fdee-5db3-a22b-4983c5dffc06', id, 'a13a76f0-b34d-5a21-b985-a3e9a555f23f', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualified judgement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ebfee6-fdee-5db3-a22b-4983c5dffc06', id, 'a13a76f0-b34d-5a21-b985-a3e9a555f23f', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'thematic development' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ebfee6-fdee-5db3-a22b-4983c5dffc06', id, 'a13a76f0-b34d-5a21-b985-a3e9a555f23f', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'self-correction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ebfee6-fdee-5db3-a22b-4983c5dffc06', id, 'a13a76f0-b34d-5a21-b985-a3e9a555f23f', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'paraphrasing strategy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ebfee6-fdee-5db3-a22b-4983c5dffc06', id, 'a13a76f0-b34d-5a21-b985-a3e9a555f23f', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'concluding synthesis' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ebfee6-fdee-5db3-a22b-4983c5dffc06', id, 'b2b93723-9a8d-55e8-b5ea-8fdb6767fe45', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'discourse marker' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ebfee6-fdee-5db3-a22b-4983c5dffc06', id, 'b2b93723-9a8d-55e8-b5ea-8fdb6767fe45', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'analytical comparison' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ebfee6-fdee-5db3-a22b-4983c5dffc06', id, 'b2b93723-9a8d-55e8-b5ea-8fdb6767fe45', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualified judgement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ebfee6-fdee-5db3-a22b-4983c5dffc06', id, 'b2b93723-9a8d-55e8-b5ea-8fdb6767fe45', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'thematic development' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ebfee6-fdee-5db3-a22b-4983c5dffc06', id, 'b2b93723-9a8d-55e8-b5ea-8fdb6767fe45', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'self-correction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ebfee6-fdee-5db3-a22b-4983c5dffc06', id, 'b2b93723-9a8d-55e8-b5ea-8fdb6767fe45', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'paraphrasing strategy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ebfee6-fdee-5db3-a22b-4983c5dffc06', id, 'b2b93723-9a8d-55e8-b5ea-8fdb6767fe45', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'concluding synthesis' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ebfee6-fdee-5db3-a22b-4983c5dffc06', id, '7c36e9a5-3b6e-54ba-a186-28d742e78b6e', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'discourse marker' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ebfee6-fdee-5db3-a22b-4983c5dffc06', id, '7c36e9a5-3b6e-54ba-a186-28d742e78b6e', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'analytical comparison' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ebfee6-fdee-5db3-a22b-4983c5dffc06', id, '7c36e9a5-3b6e-54ba-a186-28d742e78b6e', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualified judgement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ebfee6-fdee-5db3-a22b-4983c5dffc06', id, '7c36e9a5-3b6e-54ba-a186-28d742e78b6e', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'thematic development' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ebfee6-fdee-5db3-a22b-4983c5dffc06', id, '7c36e9a5-3b6e-54ba-a186-28d742e78b6e', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'self-correction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ebfee6-fdee-5db3-a22b-4983c5dffc06', id, '7c36e9a5-3b6e-54ba-a186-28d742e78b6e', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'paraphrasing strategy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ebfee6-fdee-5db3-a22b-4983c5dffc06', id, '7c36e9a5-3b6e-54ba-a186-28d742e78b6e', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'concluding synthesis' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
