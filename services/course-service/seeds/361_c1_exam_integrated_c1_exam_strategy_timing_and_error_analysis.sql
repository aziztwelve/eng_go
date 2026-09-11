-- Track: C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('9a077c5c-7c16-5a01-be2a-5917554eb23d', 'C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS', 'Комплексная стратегия экзамена C1, время и анализ ошибок', 'Освойте экзаменационные навыки C1 по теме «Комплексная стратегия экзамена C1, время и анализ ошибок»: анализируйте сложный смысл, контролируйте точность и применяйте надёжную стратегию.', '{"en":"Integrated C1 Exam Strategy, Timing and Error Analysis","ru":"Комплексная стратегия экзамена C1, время и анализ ошибок"}'::jsonb, '{"en":"Master C1 exam skills for integrated c1 exam strategy, timing and error analysis by analysing complex meaning, controlling linguistic precision, and applying reliable strategy.","ru":"Освойте экзаменационные навыки C1 по теме «Комплексная стратегия экзамена C1, время и анализ ошибок»: анализируйте сложный смысл, контролируйте точность и применяйте надёжную стратегию."}'::jsonb, 'en', 'C1', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('41e140a5-0a58-5721-bdd5-3e99c071ce5c', NULL, 'Навык, контекст и ключевые понятия', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Allocating Time by Task Demand","ru":"Навык, контекст и ключевые понятия"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9f0202dc-3f6e-56f8-83c4-0b7148933219', '41e140a5-0a58-5721-bdd5-3e99c071ce5c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L1_D01","left":"task demand","right":"требование задания"},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L1_D02","left":"time allocation","right":"распределение времени"},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L1_D03","left":"evidence location","right":"место доказательства"},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L1_D04","left":"confidence threshold","right":"порог уверенности"},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L1_D05","left":"error pattern","right":"типичная модель ошибки"},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L1_D06","left":"strategic review","right":"стратегическая проверка"},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L1_D07","left":"performance criterion","right":"критерий выполнения"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd82c1bb-d2aa-509f-ac5b-4ccc8979e2d5', '41e140a5-0a58-5721-bdd5-3e99c071ce5c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L1_D08","is_correct":true,"text":"Time allocation should reflect task demand and available marks rather than the order of the questions."},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L1_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L1_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4fddd353-ba1d-5023-9bb8-a2b91a70329b', '41e140a5-0a58-5721-bdd5-3e99c071ce5c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Time allocation should reflect task demand and available marks rather than the order of the questions.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Распределение времени должно отражать требования задания и доступные баллы, а не порядок вопросов.","target_language":"en","word_bank":["Time","allocation","should","reflect","task","demand","and","available","marks","rather","than","the","order","of","the","questions","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9fa5d2bd-9032-5e45-93c9-1de2a02a409e', '41e140a5-0a58-5721-bdd5-3e99c071ce5c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"task demand","instruction":"Выберите подходящее слово.","options":["task demand","confidence threshold","strategic review"],"sentence_template":"Time allocation should reflect ___ and available marks rather than the order of the questions."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('93b6d949-6cf3-5532-9f8f-1a326c918968', '41e140a5-0a58-5721-bdd5-3e99c071ce5c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Time","allocation","should","reflect","task","demand","and","available","marks","rather","than","the","order","of","the","questions","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","questions","the","of","order","the","than","rather","marks","available","and","demand","task","reflect","should","allocation","Time"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e0b4c962-36a9-5001-be49-ee9b85d61480', '41e140a5-0a58-5721-bdd5-3e99c071ce5c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Time allocation should reflect task demand and available marks rather than the order of the questions. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('968560c3-7d6f-5287-8869-40387bcaaedc', '41e140a5-0a58-5721-bdd5-3e99c071ce5c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Time allocation should reflect task demand and available marks rather than the order of the questions. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Распределение времени должно отражать требования задания и доступные баллы, а не порядок вопросов. В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6fe4d29f-2929-5117-8091-c52e0de1bead', '41e140a5-0a58-5721-bdd5-3e99c071ce5c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Time allocation should reflect task demand and available marks rather than the order of the questions.","translation":"Распределение времени должно отражать требования задания и доступные баллы, а не порядок вопросов.","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Allocating Time by Task Demand"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bca93a96-b350-51ea-8a2f-c2b0343b9d1e', '41e140a5-0a58-5721-bdd5-3e99c071ce5c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“task demand” means the precise ability a question requires.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L1_D11","is_correct":true,"text":"the precise ability a question requires"},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L1_D12","is_correct":false,"text":"planned division of examination time"},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L1_D13","is_correct":false,"text":"the exact source section supporting an answer"}],"word":"task demand"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76bf5819-680b-5020-ab7b-12342a0699bb', '41e140a5-0a58-5721-bdd5-3e99c071ce5c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Time allocation should reflect task demand and available marks rather than the order of the questions.","explanation":"The missing expression is “task demand”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"task demand","id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L1_D14","is_correct":true},{"audio_text":"evidence location","id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L1_D15","is_correct":false},{"audio_text":"error pattern","id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L1_D16","is_correct":false}],"sentence_template":"Time allocation should reflect ___ and available marks rather than the order of the questions."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4c99a574-b281-5001-8e66-5d56c36b508c', '41e140a5-0a58-5721-bdd5-3e99c071ce5c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"task demand","explanation":"The complete answer uses “task demand” precisely.","hint_prefix":"task","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Time allocation should reflect ___ and available marks rather than the order of the questions."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('87bab932-7ca0-52f0-8ae5-c696d8715d03', '41e140a5-0a58-5721-bdd5-3e99c071ce5c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"task demand","id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L1_D17","text":"task demand"},{"audio_text":"time allocation","id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L1_D18","text":"time allocation"},{"audio_text":"evidence location","id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L1_D19","text":"evidence location"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3306e3b8-ce5f-50d2-8038-fc083dbc38b7', '41e140a5-0a58-5721-bdd5-3e99c071ce5c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Allocating Time by Task Demand” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L1_D20","is_correct":true,"text":"Time allocation should reflect task demand and available marks rather than the order of the questions."},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L1_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L1_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('9a077c5c-7c16-5a01-be2a-5917554eb23d', '41e140a5-0a58-5721-bdd5-3e99c071ce5c', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e2061e98-70ca-5e1a-a9de-270c4b10e702', NULL, 'Продвинутый анализ и применение', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Making Evidence-Based Decisions","ru":"Продвинутый анализ и применение"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6109f227-9a2d-5ee6-b147-967c83daa58f', 'e2061e98-70ca-5e1a-a9de-270c4b10e702', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L2_D01","left":"task demand","right":"требование задания"},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L2_D02","left":"time allocation","right":"распределение времени"},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L2_D03","left":"evidence location","right":"место доказательства"},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L2_D04","left":"confidence threshold","right":"порог уверенности"},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L2_D05","left":"error pattern","right":"типичная модель ошибки"},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L2_D06","left":"strategic review","right":"стратегическая проверка"},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L2_D07","left":"performance criterion","right":"критерий выполнения"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('39d0aff5-d436-5496-9949-1bb305d10aee', 'e2061e98-70ca-5e1a-a9de-270c4b10e702', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L2_D08","is_correct":true,"text":"An answer should be linked to a precise evidence location and reconsidered when it exceeds what the source supports. The relevant C1 concept is time allocation."},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L2_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L2_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c1f2e66e-513d-5607-81cf-f19096b4ed0b', 'e2061e98-70ca-5e1a-a9de-270c4b10e702', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"An answer should be linked to a precise evidence location and reconsidered when it exceeds what the source supports. The relevant C1 concept is time allocation.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Ответ следует связывать с точным местом доказательства и пересматривать, если он выходит за пределы источника. Соответствующее понятие уровня C1 — «распределение времени».","target_language":"en","word_bank":["An","answer","should","be","linked","to","a","precise","evidence","location","and","reconsidered","when","it","exceeds","what","the","source","supports",".","The","relevant","C","1","concept","is","time","allocation","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7bb93a30-25de-59c3-9c20-09c4e68d37d7', 'e2061e98-70ca-5e1a-a9de-270c4b10e702', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"time allocation","instruction":"Выберите подходящее слово.","options":["time allocation","error pattern","performance criterion"],"sentence_template":"An answer should be linked to a precise evidence location and reconsidered when it exceeds what the source supports. The relevant C1 concept is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a6dc2654-cccc-546f-9e7d-d3334697f973', 'e2061e98-70ca-5e1a-a9de-270c4b10e702', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["An","answer","should","be","linked","to","a","precise","evidence","location","and","reconsidered","when","it","exceeds","what","the","source","supports",".","The","relevant","C","1","concept","is","time","allocation","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","allocation","time","is","concept","1","C","relevant","The",".","supports","source","the","what","exceeds","it","when","reconsidered","and","location","evidence","precise","a","to","linked","be","should","answer","An"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('59a4cdf1-dccd-5dd2-9000-a63f324cf850', 'e2061e98-70ca-5e1a-a9de-270c4b10e702', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"An answer should be linked to a precise evidence location and reconsidered when it exceeds what the source supports. The relevant C1 concept is time allocation. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c54b36a-c6c0-505a-a0fc-91742344d205', 'e2061e98-70ca-5e1a-a9de-270c4b10e702', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"An answer should be linked to a precise evidence location and reconsidered when it exceeds what the source supports. The relevant C1 concept is time allocation. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Ответ следует связывать с точным местом доказательства и пересматривать, если он выходит за пределы источника. Соответствующее понятие уровня C1 — «распределение времени». В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4dda0bb-d48d-534b-a243-68600b1d510d', 'e2061e98-70ca-5e1a-a9de-270c4b10e702', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"An answer should be linked to a precise evidence location and reconsidered when it exceeds what the source supports. The relevant C1 concept is time allocation.","translation":"Ответ следует связывать с точным местом доказательства и пересматривать, если он выходит за пределы источника. Соответствующее понятие уровня C1 — «распределение времени».","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Making Evidence-Based Decisions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('36984c21-f956-5e4a-aac2-391e819c54f9', 'e2061e98-70ca-5e1a-a9de-270c4b10e702', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“time allocation” means planned division of examination time.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L2_D11","is_correct":true,"text":"planned division of examination time"},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L2_D12","is_correct":false,"text":"the exact source section supporting an answer"},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L2_D13","is_correct":false,"text":"certainty used to decide whether to move on"}],"word":"time allocation"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cff654ba-1ee0-557e-9edc-790f500d555b', 'e2061e98-70ca-5e1a-a9de-270c4b10e702', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"An answer should be linked to a precise evidence location and reconsidered when it exceeds what the source supports. The relevant C1 concept is time allocation.","explanation":"The missing expression is “time allocation”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"time allocation","id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L2_D14","is_correct":true},{"audio_text":"confidence threshold","id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L2_D15","is_correct":false},{"audio_text":"strategic review","id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L2_D16","is_correct":false}],"sentence_template":"An answer should be linked to a precise evidence location and reconsidered when it exceeds what the source supports. The relevant C1 concept is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4ea71c2d-65d9-5900-9321-df50ed7aaa96', 'e2061e98-70ca-5e1a-a9de-270c4b10e702', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"time allocation","explanation":"The complete answer uses “time allocation” precisely.","hint_prefix":"time","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"An answer should be linked to a precise evidence location and reconsidered when it exceeds what the source supports. The relevant C1 concept is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('50d5673a-0f7a-59ea-9685-67885bff655f', 'e2061e98-70ca-5e1a-a9de-270c4b10e702', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"task demand","id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L2_D17","text":"task demand"},{"audio_text":"time allocation","id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L2_D18","text":"time allocation"},{"audio_text":"evidence location","id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L2_D19","text":"evidence location"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8f7b779b-6bd4-59c9-bfa8-f36f267a882c', 'e2061e98-70ca-5e1a-a9de-270c4b10e702', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Making Evidence-Based Decisions” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L2_D20","is_correct":true,"text":"An answer should be linked to a precise evidence location and reconsidered when it exceeds what the source supports. The relevant C1 concept is time allocation."},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L2_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L2_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('9a077c5c-7c16-5a01-be2a-5917554eb23d', 'e2061e98-70ca-5e1a-a9de-270c4b10e702', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9e56b256-480a-5076-86de-ff99b9394653', NULL, 'Экзаменационное решение и проверка', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Analysing Errors and Refining Strategy","ru":"Экзаменационное решение и проверка"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3cd31872-ddeb-557a-a8e4-ec41ff94ea15', '9e56b256-480a-5076-86de-ff99b9394653', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L3_D01","left":"task demand","right":"требование задания"},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L3_D02","left":"time allocation","right":"распределение времени"},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L3_D03","left":"evidence location","right":"место доказательства"},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L3_D04","left":"confidence threshold","right":"порог уверенности"},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L3_D05","left":"error pattern","right":"типичная модель ошибки"},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L3_D06","left":"strategic review","right":"стратегическая проверка"},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L3_D07","left":"performance criterion","right":"критерий выполнения"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d2467e0-1b25-5632-954c-aa7f75a2381f', '9e56b256-480a-5076-86de-ff99b9394653', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L3_D08","is_correct":true,"text":"Error analysis is useful only when each recurring pattern leads to a specific change in strategy or final review. The relevant C1 concept is evidence location."},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L3_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L3_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0aa6233e-ac70-5bec-a3bf-042c0ccb3d30', '9e56b256-480a-5076-86de-ff99b9394653', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Error analysis is useful only when each recurring pattern leads to a specific change in strategy or final review. The relevant C1 concept is evidence location.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Анализ ошибок полезен лишь тогда, когда каждая повторяющаяся модель приводит к конкретному изменению стратегии или проверки. Соответствующее понятие уровня C1 — «место доказательства».","target_language":"en","word_bank":["Error","analysis","is","useful","only","when","each","recurring","pattern","leads","to","a","specific","change","in","strategy","or","final","review",".","The","relevant","C","1","concept","is","evidence","location","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('baeeada3-dc79-5c1b-a4a5-98aed980441b', '9e56b256-480a-5076-86de-ff99b9394653', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"evidence location","instruction":"Выберите подходящее слово.","options":["evidence location","strategic review","task demand"],"sentence_template":"Error analysis is useful only when each recurring pattern leads to a specific change in strategy or final review. The relevant C1 concept is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9fb397ca-1b73-52fc-812a-a2e365062d00', '9e56b256-480a-5076-86de-ff99b9394653', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Error","analysis","is","useful","only","when","each","recurring","pattern","leads","to","a","specific","change","in","strategy","or","final","review",".","The","relevant","C","1","concept","is","evidence","location","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","location","evidence","is","concept","1","C","relevant","The",".","review","final","or","strategy","in","change","specific","a","to","leads","pattern","recurring","each","when","only","useful","is","analysis","Error"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('785947a3-0950-5eb5-b77b-df9b5a98193a', '9e56b256-480a-5076-86de-ff99b9394653', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Error analysis is useful only when each recurring pattern leads to a specific change in strategy or final review. The relevant C1 concept is evidence location. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7755bc8-6613-52d3-8930-a3f1d9fb1bc2', '9e56b256-480a-5076-86de-ff99b9394653', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Error analysis is useful only when each recurring pattern leads to a specific change in strategy or final review. The relevant C1 concept is evidence location. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Анализ ошибок полезен лишь тогда, когда каждая повторяющаяся модель приводит к конкретному изменению стратегии или проверки. Соответствующее понятие уровня C1 — «место доказательства». В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3cd46579-ceb3-5793-8bc6-5336020feded', '9e56b256-480a-5076-86de-ff99b9394653', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Error analysis is useful only when each recurring pattern leads to a specific change in strategy or final review. The relevant C1 concept is evidence location.","translation":"Анализ ошибок полезен лишь тогда, когда каждая повторяющаяся модель приводит к конкретному изменению стратегии или проверки. Соответствующее понятие уровня C1 — «место доказательства».","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Analysing Errors and Refining Strategy"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('efe220e9-bd88-5db6-8d3d-31c977ec4ed7', '9e56b256-480a-5076-86de-ff99b9394653', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“evidence location” means the exact source section supporting an answer.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L3_D11","is_correct":true,"text":"the exact source section supporting an answer"},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L3_D12","is_correct":false,"text":"certainty used to decide whether to move on"},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L3_D13","is_correct":false,"text":"a recurring cause of incorrect performance"}],"word":"evidence location"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a3a59d5b-8f42-501b-960d-26bccca107e7', '9e56b256-480a-5076-86de-ff99b9394653', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Error analysis is useful only when each recurring pattern leads to a specific change in strategy or final review. The relevant C1 concept is evidence location.","explanation":"The missing expression is “evidence location”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"evidence location","id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L3_D14","is_correct":true},{"audio_text":"error pattern","id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L3_D15","is_correct":false},{"audio_text":"performance criterion","id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L3_D16","is_correct":false}],"sentence_template":"Error analysis is useful only when each recurring pattern leads to a specific change in strategy or final review. The relevant C1 concept is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d2426af0-ad06-58d6-9736-0fa60cdfc786', '9e56b256-480a-5076-86de-ff99b9394653', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"evidence location","explanation":"The complete answer uses “evidence location” precisely.","hint_prefix":"evid","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Error analysis is useful only when each recurring pattern leads to a specific change in strategy or final review. The relevant C1 concept is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('315649a6-c4a9-5724-8047-c92ea229c3e6', '9e56b256-480a-5076-86de-ff99b9394653', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"task demand","id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L3_D17","text":"task demand"},{"audio_text":"time allocation","id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L3_D18","text":"time allocation"},{"audio_text":"evidence location","id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L3_D19","text":"evidence location"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5d2aa642-7720-5847-8cdd-2f0ccf9d7fde', '9e56b256-480a-5076-86de-ff99b9394653', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Analysing Errors and Refining Strategy” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L3_D20","is_correct":true,"text":"Error analysis is useful only when each recurring pattern leads to a specific change in strategy or final review. The relevant C1 concept is evidence location."},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L3_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_INTEGRATED_C1_EXAM_STRATEGY_TIMING_AND_ERROR_ANALYSIS_L3_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('9a077c5c-7c16-5a01-be2a-5917554eb23d', '9e56b256-480a-5076-86de-ff99b9394653', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('30af93b6-839f-5ed1-a6db-426031f2c4b9', 'en', 'task demand', 'требование задания', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d688e7b1-a262-5648-b39e-7fbfd7b69ef3', 'en', 'time allocation', 'распределение времени', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('49d92f42-b0d2-5e14-a6d7-1d7e9bed04e1', 'en', 'evidence location', 'место доказательства', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('10d73e4b-d0ca-5375-90df-edb379c99592', 'en', 'confidence threshold', 'порог уверенности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d500b11b-7930-5fcd-a5d3-0bdabbd3ca74', 'en', 'error pattern', 'типичная модель ошибки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8e0b951a-c99a-5ea8-b527-e46c5fe4c538', 'en', 'strategic review', 'стратегическая проверка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c29da8b6-4aa3-5458-8be9-b3cfceeee307', 'en', 'performance criterion', 'критерий выполнения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('30af93b6-839f-5ed1-a6db-426031f2c4b9', 'en', 'task demand', 'требование задания', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d688e7b1-a262-5648-b39e-7fbfd7b69ef3', 'en', 'time allocation', 'распределение времени', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('49d92f42-b0d2-5e14-a6d7-1d7e9bed04e1', 'en', 'evidence location', 'место доказательства', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('10d73e4b-d0ca-5375-90df-edb379c99592', 'en', 'confidence threshold', 'порог уверенности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d500b11b-7930-5fcd-a5d3-0bdabbd3ca74', 'en', 'error pattern', 'типичная модель ошибки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8e0b951a-c99a-5ea8-b527-e46c5fe4c538', 'en', 'strategic review', 'стратегическая проверка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c29da8b6-4aa3-5458-8be9-b3cfceeee307', 'en', 'performance criterion', 'критерий выполнения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('30af93b6-839f-5ed1-a6db-426031f2c4b9', 'en', 'task demand', 'требование задания', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d688e7b1-a262-5648-b39e-7fbfd7b69ef3', 'en', 'time allocation', 'распределение времени', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('49d92f42-b0d2-5e14-a6d7-1d7e9bed04e1', 'en', 'evidence location', 'место доказательства', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('10d73e4b-d0ca-5375-90df-edb379c99592', 'en', 'confidence threshold', 'порог уверенности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d500b11b-7930-5fcd-a5d3-0bdabbd3ca74', 'en', 'error pattern', 'типичная модель ошибки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8e0b951a-c99a-5ea8-b527-e46c5fe4c538', 'en', 'strategic review', 'стратегическая проверка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c29da8b6-4aa3-5458-8be9-b3cfceeee307', 'en', 'performance criterion', 'критерий выполнения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9a077c5c-7c16-5a01-be2a-5917554eb23d', id, '41e140a5-0a58-5721-bdd5-3e99c071ce5c', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'task demand' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9a077c5c-7c16-5a01-be2a-5917554eb23d', id, '41e140a5-0a58-5721-bdd5-3e99c071ce5c', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'time allocation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9a077c5c-7c16-5a01-be2a-5917554eb23d', id, '41e140a5-0a58-5721-bdd5-3e99c071ce5c', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence location' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9a077c5c-7c16-5a01-be2a-5917554eb23d', id, '41e140a5-0a58-5721-bdd5-3e99c071ce5c', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'confidence threshold' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9a077c5c-7c16-5a01-be2a-5917554eb23d', id, '41e140a5-0a58-5721-bdd5-3e99c071ce5c', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'error pattern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9a077c5c-7c16-5a01-be2a-5917554eb23d', id, '41e140a5-0a58-5721-bdd5-3e99c071ce5c', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'strategic review' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9a077c5c-7c16-5a01-be2a-5917554eb23d', id, '41e140a5-0a58-5721-bdd5-3e99c071ce5c', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'performance criterion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9a077c5c-7c16-5a01-be2a-5917554eb23d', id, 'e2061e98-70ca-5e1a-a9de-270c4b10e702', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'task demand' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9a077c5c-7c16-5a01-be2a-5917554eb23d', id, 'e2061e98-70ca-5e1a-a9de-270c4b10e702', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'time allocation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9a077c5c-7c16-5a01-be2a-5917554eb23d', id, 'e2061e98-70ca-5e1a-a9de-270c4b10e702', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence location' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9a077c5c-7c16-5a01-be2a-5917554eb23d', id, 'e2061e98-70ca-5e1a-a9de-270c4b10e702', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'confidence threshold' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9a077c5c-7c16-5a01-be2a-5917554eb23d', id, 'e2061e98-70ca-5e1a-a9de-270c4b10e702', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'error pattern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9a077c5c-7c16-5a01-be2a-5917554eb23d', id, 'e2061e98-70ca-5e1a-a9de-270c4b10e702', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'strategic review' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9a077c5c-7c16-5a01-be2a-5917554eb23d', id, 'e2061e98-70ca-5e1a-a9de-270c4b10e702', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'performance criterion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9a077c5c-7c16-5a01-be2a-5917554eb23d', id, '9e56b256-480a-5076-86de-ff99b9394653', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'task demand' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9a077c5c-7c16-5a01-be2a-5917554eb23d', id, '9e56b256-480a-5076-86de-ff99b9394653', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'time allocation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9a077c5c-7c16-5a01-be2a-5917554eb23d', id, '9e56b256-480a-5076-86de-ff99b9394653', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence location' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9a077c5c-7c16-5a01-be2a-5917554eb23d', id, '9e56b256-480a-5076-86de-ff99b9394653', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'confidence threshold' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9a077c5c-7c16-5a01-be2a-5917554eb23d', id, '9e56b256-480a-5076-86de-ff99b9394653', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'error pattern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9a077c5c-7c16-5a01-be2a-5917554eb23d', id, '9e56b256-480a-5076-86de-ff99b9394653', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'strategic review' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9a077c5c-7c16-5a01-be2a-5917554eb23d', id, '9e56b256-480a-5076-86de-ff99b9394653', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'performance criterion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
