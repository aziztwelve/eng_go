-- Track: C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('cf04a367-549b-5393-bde2-eff1d0812476', 'C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE', 'Письмо: отчёты, предложения, рецензии и официальная переписка', 'Освойте экзаменационные навыки C1 по теме «Письмо: отчёты, предложения, рецензии и официальная переписка»: анализируйте сложный смысл, контролируйте точность и применяйте надёжную стратегию.', '{"en":"Writing: Reports, Proposals, Reviews and Formal Correspondence","ru":"Письмо: отчёты, предложения, рецензии и официальная переписка"}'::jsonb, '{"en":"Master C1 exam skills for writing: reports, proposals, reviews and formal correspondence by analysing complex meaning, controlling linguistic precision, and applying reliable strategy.","ru":"Освойте экзаменационные навыки C1 по теме «Письмо: отчёты, предложения, рецензии и официальная переписка»: анализируйте сложный смысл, контролируйте точность и применяйте надёжную стратегию."}'::jsonb, 'en', 'C1', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f7f2396b-3171-5e14-a867-422149251c1a', NULL, 'Навык, контекст и ключевые понятия', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Matching Purpose, Reader and Register","ru":"Навык, контекст и ключевые понятия"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6eff8ad5-94b7-5f11-9c48-a498168f3b3d', 'f7f2396b-3171-5e14-a867-422149251c1a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L1_D01","left":"target reader","right":"целевой читатель"},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L1_D02","left":"communicative purpose","right":"коммуникативная цель"},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L1_D03","left":"register control","right":"контроль регистра"},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L1_D04","left":"executive summary","right":"краткое резюме для руководства"},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L1_D05","left":"actionable recommendation","right":"практическая рекомендация"},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L1_D06","left":"balanced appraisal","right":"взвешенная оценка"},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L1_D07","left":"formal convention","right":"норма официального стиля"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('95585dc0-47ae-523b-8ad5-1a74b7210724', 'f7f2396b-3171-5e14-a867-422149251c1a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L1_D08","is_correct":true,"text":"The target reader and communicative purpose should determine register, structure, and the amount of context provided."},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L1_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L1_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b1e33a0b-9113-58e1-b3df-254143c9d92b', 'f7f2396b-3171-5e14-a867-422149251c1a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The target reader and communicative purpose should determine register, structure, and the amount of context provided.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Целевой читатель и коммуникативная цель должны определять регистр, структуру и объём контекста.","target_language":"en","word_bank":["The","target","reader","and","communicative","purpose","should","determine","register",",","structure",",","and","the","amount","of","context","provided","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6a976a80-d19c-5d67-8835-f9f2adb1fdc8', 'f7f2396b-3171-5e14-a867-422149251c1a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"target reader","instruction":"Выберите подходящее слово.","options":["target reader","executive summary","balanced appraisal"],"sentence_template":"The ___ and communicative purpose should determine register, structure, and the amount of context provided."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('df9f72c7-e190-57b3-b2b9-3bbf5a038d77', 'f7f2396b-3171-5e14-a867-422149251c1a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","target","reader","and","communicative","purpose","should","determine","register",",","structure",",","and","the","amount","of","context","provided","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","provided","context","of","amount","the","and",",","structure",",","register","determine","should","purpose","communicative","and","reader","target","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('46d9c8e4-0547-5be7-b6c8-065588030f1b', 'f7f2396b-3171-5e14-a867-422149251c1a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The target reader and communicative purpose should determine register, structure, and the amount of context provided. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa2d5848-6bd6-580b-882c-fd4b7a04ffe3', 'f7f2396b-3171-5e14-a867-422149251c1a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The target reader and communicative purpose should determine register, structure, and the amount of context provided. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Целевой читатель и коммуникативная цель должны определять регистр, структуру и объём контекста. В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('740bd906-ec58-57ff-baf2-775d44794138', 'f7f2396b-3171-5e14-a867-422149251c1a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"The target reader and communicative purpose should determine register, structure, and the amount of context provided.","translation":"Целевой читатель и коммуникативная цель должны определять регистр, структуру и объём контекста.","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Matching Purpose, Reader and Register"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1af4f9df-b727-5233-a84c-1e1794a98119', 'f7f2396b-3171-5e14-a867-422149251c1a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“target reader” means the specific audience for a text.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L1_D11","is_correct":true,"text":"the specific audience for a text"},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L1_D12","is_correct":false,"text":"the result writing is intended to achieve"},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L1_D13","is_correct":false,"text":"consistent language appropriate to context"}],"word":"target reader"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('06babf37-ed48-5078-98c5-52f7ffe14e4f', 'f7f2396b-3171-5e14-a867-422149251c1a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The target reader and communicative purpose should determine register, structure, and the amount of context provided.","explanation":"The missing expression is “target reader”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"target reader","id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L1_D14","is_correct":true},{"audio_text":"register control","id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L1_D15","is_correct":false},{"audio_text":"actionable recommendation","id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L1_D16","is_correct":false}],"sentence_template":"The ___ and communicative purpose should determine register, structure, and the amount of context provided."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b03fbf51-5e9f-5f8b-9b78-6ecdcb83bf5e', 'f7f2396b-3171-5e14-a867-422149251c1a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"target reader","explanation":"The complete answer uses “target reader” precisely.","hint_prefix":"targ","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ and communicative purpose should determine register, structure, and the amount of context provided."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8998edaf-bb8e-58fd-b1da-bab87b6b153e', 'f7f2396b-3171-5e14-a867-422149251c1a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"target reader","id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L1_D17","text":"target reader"},{"audio_text":"communicative purpose","id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L1_D18","text":"communicative purpose"},{"audio_text":"register control","id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L1_D19","text":"register control"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5b4d765a-fed8-56bf-89e9-e2886980125d', 'f7f2396b-3171-5e14-a867-422149251c1a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Matching Purpose, Reader and Register” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L1_D20","is_correct":true,"text":"The target reader and communicative purpose should determine register, structure, and the amount of context provided."},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L1_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L1_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('cf04a367-549b-5393-bde2-eff1d0812476', 'f7f2396b-3171-5e14-a867-422149251c1a', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('1a8bc901-26b3-59e6-a3c1-f7775cfa203c', NULL, 'Продвинутый анализ и применение', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Organising Findings and Recommendations","ru":"Продвинутый анализ и применение"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a671046-0a98-5f9f-bd6e-524f6ac84051', '1a8bc901-26b3-59e6-a3c1-f7775cfa203c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L2_D01","left":"target reader","right":"целевой читатель"},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L2_D02","left":"communicative purpose","right":"коммуникативная цель"},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L2_D03","left":"register control","right":"контроль регистра"},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L2_D04","left":"executive summary","right":"краткое резюме для руководства"},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L2_D05","left":"actionable recommendation","right":"практическая рекомендация"},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L2_D06","left":"balanced appraisal","right":"взвешенная оценка"},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L2_D07","left":"formal convention","right":"норма официального стиля"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b0152d19-242d-53e5-8964-be4782daada3', '1a8bc901-26b3-59e6-a3c1-f7775cfa203c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L2_D08","is_correct":true,"text":"An executive summary should prioritise findings and actionable recommendations rather than reproduce every section. The relevant C1 concept is communicative purpose."},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L2_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L2_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('60f81e46-95ee-5501-b9af-7feeb813a8b0', '1a8bc901-26b3-59e6-a3c1-f7775cfa203c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"An executive summary should prioritise findings and actionable recommendations rather than reproduce every section. The relevant C1 concept is communicative purpose.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Краткое резюме для руководства должно выделять выводы и практические рекомендации, а не повторять каждый раздел. Соответствующее понятие уровня C1 — «коммуникативная цель».","target_language":"en","word_bank":["An","executive","summary","should","prioritise","findings","and","actionable","recommendations","rather","than","reproduce","every","section",".","The","relevant","C","1","concept","is","communicative","purpose","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5bef1d7a-0da2-50c4-b71f-e79f4b254d0e', '1a8bc901-26b3-59e6-a3c1-f7775cfa203c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"communicative purpose","instruction":"Выберите подходящее слово.","options":["communicative purpose","actionable recommendation","formal convention"],"sentence_template":"An executive summary should prioritise findings and actionable recommendations rather than reproduce every section. The relevant C1 concept is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fcdfb0fd-e6a9-5fa8-976b-2bcd8ccd5610', '1a8bc901-26b3-59e6-a3c1-f7775cfa203c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["An","executive","summary","should","prioritise","findings","and","actionable","recommendations","rather","than","reproduce","every","section",".","The","relevant","C","1","concept","is","communicative","purpose","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","purpose","communicative","is","concept","1","C","relevant","The",".","section","every","reproduce","than","rather","recommendations","actionable","and","findings","prioritise","should","summary","executive","An"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4d679f3d-c260-5dcd-a455-6d0ce146b8aa', '1a8bc901-26b3-59e6-a3c1-f7775cfa203c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"An executive summary should prioritise findings and actionable recommendations rather than reproduce every section. The relevant C1 concept is communicative purpose. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8a620970-fa9d-5a67-bace-05fc546efbba', '1a8bc901-26b3-59e6-a3c1-f7775cfa203c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"An executive summary should prioritise findings and actionable recommendations rather than reproduce every section. The relevant C1 concept is communicative purpose. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Краткое резюме для руководства должно выделять выводы и практические рекомендации, а не повторять каждый раздел. Соответствующее понятие уровня C1 — «коммуникативная цель». В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4faa69cd-733a-523a-bc50-1239ae626b2b', '1a8bc901-26b3-59e6-a3c1-f7775cfa203c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"An executive summary should prioritise findings and actionable recommendations rather than reproduce every section. The relevant C1 concept is communicative purpose.","translation":"Краткое резюме для руководства должно выделять выводы и практические рекомендации, а не повторять каждый раздел. Соответствующее понятие уровня C1 — «коммуникативная цель».","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Organising Findings and Recommendations"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e4d00ba-4cbb-5766-a15a-2ce0bab884fd', '1a8bc901-26b3-59e6-a3c1-f7775cfa203c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“communicative purpose” means the result writing is intended to achieve.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L2_D11","is_correct":true,"text":"the result writing is intended to achieve"},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L2_D12","is_correct":false,"text":"consistent language appropriate to context"},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L2_D13","is_correct":false,"text":"a concise overview of findings"}],"word":"communicative purpose"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e686addd-936f-5ffd-b0fb-fabab828af0e', '1a8bc901-26b3-59e6-a3c1-f7775cfa203c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"An executive summary should prioritise findings and actionable recommendations rather than reproduce every section. The relevant C1 concept is communicative purpose.","explanation":"The missing expression is “communicative purpose”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"communicative purpose","id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L2_D14","is_correct":true},{"audio_text":"executive summary","id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L2_D15","is_correct":false},{"audio_text":"balanced appraisal","id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L2_D16","is_correct":false}],"sentence_template":"An executive summary should prioritise findings and actionable recommendations rather than reproduce every section. The relevant C1 concept is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('448515cd-fc2f-55b6-99b0-741664081df8', '1a8bc901-26b3-59e6-a3c1-f7775cfa203c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"communicative purpose","explanation":"The complete answer uses “communicative purpose” precisely.","hint_prefix":"comm","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"An executive summary should prioritise findings and actionable recommendations rather than reproduce every section. The relevant C1 concept is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('abdacd31-2c01-5151-8236-dbca015246f7', '1a8bc901-26b3-59e6-a3c1-f7775cfa203c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"target reader","id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L2_D17","text":"target reader"},{"audio_text":"communicative purpose","id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L2_D18","text":"communicative purpose"},{"audio_text":"register control","id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L2_D19","text":"register control"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c51a579-933a-52a5-86cd-6d138ce1123a', '1a8bc901-26b3-59e6-a3c1-f7775cfa203c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Organising Findings and Recommendations” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L2_D20","is_correct":true,"text":"An executive summary should prioritise findings and actionable recommendations rather than reproduce every section. The relevant C1 concept is communicative purpose."},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L2_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L2_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('cf04a367-549b-5393-bde2-eff1d0812476', '1a8bc901-26b3-59e6-a3c1-f7775cfa203c', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('865d0cc1-d1f6-5de8-928b-8da6c132104c', NULL, 'Экзаменационное решение и проверка', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Using Persuasion with Appropriate Formality","ru":"Экзаменационное решение и проверка"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bccbf73f-f3a9-566b-99b8-3d0fa83c52c6', '865d0cc1-d1f6-5de8-928b-8da6c132104c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L3_D01","left":"target reader","right":"целевой читатель"},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L3_D02","left":"communicative purpose","right":"коммуникативная цель"},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L3_D03","left":"register control","right":"контроль регистра"},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L3_D04","left":"executive summary","right":"краткое резюме для руководства"},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L3_D05","left":"actionable recommendation","right":"практическая рекомендация"},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L3_D06","left":"balanced appraisal","right":"взвешенная оценка"},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L3_D07","left":"formal convention","right":"норма официального стиля"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3049d781-398b-52a3-a6d8-a0ef0da55850', '865d0cc1-d1f6-5de8-928b-8da6c132104c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L3_D08","is_correct":true,"text":"A balanced appraisal remains persuasive by acknowledging genuine limitations before justifying the preferred recommendation. The relevant C1 concept is register control."},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L3_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L3_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a0654ae4-c738-5b5a-8154-50c5644ee389', '865d0cc1-d1f6-5de8-928b-8da6c132104c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A balanced appraisal remains persuasive by acknowledging genuine limitations before justifying the preferred recommendation. The relevant C1 concept is register control.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Взвешенная оценка остаётся убедительной, признавая реальные ограничения перед обоснованием предпочтительной рекомендации. Соответствующее понятие уровня C1 — «контроль регистра».","target_language":"en","word_bank":["A","balanced","appraisal","remains","persuasive","by","acknowledging","genuine","limitations","before","justifying","the","preferred","recommendation",".","The","relevant","C","1","concept","is","register","control","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('635959a1-0547-5242-b636-7f7a5a27ae4d', '865d0cc1-d1f6-5de8-928b-8da6c132104c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"register control","instruction":"Выберите подходящее слово.","options":["register control","balanced appraisal","target reader"],"sentence_template":"A balanced appraisal remains persuasive by acknowledging genuine limitations before justifying the preferred recommendation. The relevant C1 concept is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0f1951b4-8038-589d-ad41-28ef40ca9bef', '865d0cc1-d1f6-5de8-928b-8da6c132104c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","balanced","appraisal","remains","persuasive","by","acknowledging","genuine","limitations","before","justifying","the","preferred","recommendation",".","The","relevant","C","1","concept","is","register","control","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","control","register","is","concept","1","C","relevant","The",".","recommendation","preferred","the","justifying","before","limitations","genuine","acknowledging","by","persuasive","remains","appraisal","balanced","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('50a0ff38-4775-5a63-a1f2-8374fb63fa2c', '865d0cc1-d1f6-5de8-928b-8da6c132104c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A balanced appraisal remains persuasive by acknowledging genuine limitations before justifying the preferred recommendation. The relevant C1 concept is register control. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c689490e-d83b-52f8-a215-0958ffb3b1d9', '865d0cc1-d1f6-5de8-928b-8da6c132104c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A balanced appraisal remains persuasive by acknowledging genuine limitations before justifying the preferred recommendation. The relevant C1 concept is register control. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Взвешенная оценка остаётся убедительной, признавая реальные ограничения перед обоснованием предпочтительной рекомендации. Соответствующее понятие уровня C1 — «контроль регистра». В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('910bd1d3-4a80-5e83-a951-d1acdc975a93', '865d0cc1-d1f6-5de8-928b-8da6c132104c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"A balanced appraisal remains persuasive by acknowledging genuine limitations before justifying the preferred recommendation. The relevant C1 concept is register control.","translation":"Взвешенная оценка остаётся убедительной, признавая реальные ограничения перед обоснованием предпочтительной рекомендации. Соответствующее понятие уровня C1 — «контроль регистра».","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Using Persuasion with Appropriate Formality"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0fe122f9-3f0d-5998-b01c-6d52143cbcb9', '865d0cc1-d1f6-5de8-928b-8da6c132104c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“register control” means consistent language appropriate to context.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L3_D11","is_correct":true,"text":"consistent language appropriate to context"},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L3_D12","is_correct":false,"text":"a concise overview of findings"},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L3_D13","is_correct":false,"text":"a step that can realistically be implemented"}],"word":"register control"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08b97ad9-7fbd-5198-8ad5-45ed06557b22', '865d0cc1-d1f6-5de8-928b-8da6c132104c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A balanced appraisal remains persuasive by acknowledging genuine limitations before justifying the preferred recommendation. The relevant C1 concept is register control.","explanation":"The missing expression is “register control”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"register control","id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L3_D14","is_correct":true},{"audio_text":"actionable recommendation","id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L3_D15","is_correct":false},{"audio_text":"formal convention","id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L3_D16","is_correct":false}],"sentence_template":"A balanced appraisal remains persuasive by acknowledging genuine limitations before justifying the preferred recommendation. The relevant C1 concept is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('253eade3-e4d8-55b3-8dc0-3a770a9e6445', '865d0cc1-d1f6-5de8-928b-8da6c132104c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"register control","explanation":"The complete answer uses “register control” precisely.","hint_prefix":"regi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A balanced appraisal remains persuasive by acknowledging genuine limitations before justifying the preferred recommendation. The relevant C1 concept is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5bcf7b01-4826-5c32-8417-9d0e75efb568', '865d0cc1-d1f6-5de8-928b-8da6c132104c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"target reader","id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L3_D17","text":"target reader"},{"audio_text":"communicative purpose","id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L3_D18","text":"communicative purpose"},{"audio_text":"register control","id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L3_D19","text":"register control"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b7f4985-d0c7-5e6e-89e2-83cca0302f25', '865d0cc1-d1f6-5de8-928b-8da6c132104c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Using Persuasion with Appropriate Formality” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L3_D20","is_correct":true,"text":"A balanced appraisal remains persuasive by acknowledging genuine limitations before justifying the preferred recommendation. The relevant C1 concept is register control."},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L3_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_WRITING_REPORTS_PROPOSALS_REVIEWS_AND_FORMAL_CORRESPONDENCE_L3_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('cf04a367-549b-5393-bde2-eff1d0812476', '865d0cc1-d1f6-5de8-928b-8da6c132104c', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d81c4d1a-aac2-5be1-b13b-7132dc43c887', 'en', 'target reader', 'целевой читатель', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0c4ccf08-13c1-5554-83bf-5be7093dba80', 'en', 'communicative purpose', 'коммуникативная цель', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('96cfc81c-826a-5eb9-a51b-d0ebd23d1780', 'en', 'register control', 'контроль регистра', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d2482feb-7bb2-55ae-a25b-1c24ebcc9ad7', 'en', 'executive summary', 'краткое резюме для руководства', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('70fef830-a713-5254-96d1-60bbe7f8559e', 'en', 'actionable recommendation', 'практическая рекомендация', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6b44d0e6-71b0-5045-a28d-17a84350d6c3', 'en', 'balanced appraisal', 'взвешенная оценка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b614cff0-915b-522b-ae93-3bdca5bac20a', 'en', 'formal convention', 'норма официального стиля', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d81c4d1a-aac2-5be1-b13b-7132dc43c887', 'en', 'target reader', 'целевой читатель', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0c4ccf08-13c1-5554-83bf-5be7093dba80', 'en', 'communicative purpose', 'коммуникативная цель', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('96cfc81c-826a-5eb9-a51b-d0ebd23d1780', 'en', 'register control', 'контроль регистра', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d2482feb-7bb2-55ae-a25b-1c24ebcc9ad7', 'en', 'executive summary', 'краткое резюме для руководства', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('70fef830-a713-5254-96d1-60bbe7f8559e', 'en', 'actionable recommendation', 'практическая рекомендация', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6b44d0e6-71b0-5045-a28d-17a84350d6c3', 'en', 'balanced appraisal', 'взвешенная оценка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b614cff0-915b-522b-ae93-3bdca5bac20a', 'en', 'formal convention', 'норма официального стиля', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d81c4d1a-aac2-5be1-b13b-7132dc43c887', 'en', 'target reader', 'целевой читатель', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0c4ccf08-13c1-5554-83bf-5be7093dba80', 'en', 'communicative purpose', 'коммуникативная цель', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('96cfc81c-826a-5eb9-a51b-d0ebd23d1780', 'en', 'register control', 'контроль регистра', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d2482feb-7bb2-55ae-a25b-1c24ebcc9ad7', 'en', 'executive summary', 'краткое резюме для руководства', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('70fef830-a713-5254-96d1-60bbe7f8559e', 'en', 'actionable recommendation', 'практическая рекомендация', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6b44d0e6-71b0-5045-a28d-17a84350d6c3', 'en', 'balanced appraisal', 'взвешенная оценка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b614cff0-915b-522b-ae93-3bdca5bac20a', 'en', 'formal convention', 'норма официального стиля', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cf04a367-549b-5393-bde2-eff1d0812476', id, 'f7f2396b-3171-5e14-a867-422149251c1a', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'target reader' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cf04a367-549b-5393-bde2-eff1d0812476', id, 'f7f2396b-3171-5e14-a867-422149251c1a', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'communicative purpose' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cf04a367-549b-5393-bde2-eff1d0812476', id, 'f7f2396b-3171-5e14-a867-422149251c1a', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'register control' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cf04a367-549b-5393-bde2-eff1d0812476', id, 'f7f2396b-3171-5e14-a867-422149251c1a', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'executive summary' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cf04a367-549b-5393-bde2-eff1d0812476', id, 'f7f2396b-3171-5e14-a867-422149251c1a', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'actionable recommendation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cf04a367-549b-5393-bde2-eff1d0812476', id, 'f7f2396b-3171-5e14-a867-422149251c1a', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'balanced appraisal' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cf04a367-549b-5393-bde2-eff1d0812476', id, 'f7f2396b-3171-5e14-a867-422149251c1a', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'formal convention' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cf04a367-549b-5393-bde2-eff1d0812476', id, '1a8bc901-26b3-59e6-a3c1-f7775cfa203c', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'target reader' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cf04a367-549b-5393-bde2-eff1d0812476', id, '1a8bc901-26b3-59e6-a3c1-f7775cfa203c', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'communicative purpose' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cf04a367-549b-5393-bde2-eff1d0812476', id, '1a8bc901-26b3-59e6-a3c1-f7775cfa203c', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'register control' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cf04a367-549b-5393-bde2-eff1d0812476', id, '1a8bc901-26b3-59e6-a3c1-f7775cfa203c', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'executive summary' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cf04a367-549b-5393-bde2-eff1d0812476', id, '1a8bc901-26b3-59e6-a3c1-f7775cfa203c', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'actionable recommendation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cf04a367-549b-5393-bde2-eff1d0812476', id, '1a8bc901-26b3-59e6-a3c1-f7775cfa203c', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'balanced appraisal' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cf04a367-549b-5393-bde2-eff1d0812476', id, '1a8bc901-26b3-59e6-a3c1-f7775cfa203c', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'formal convention' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cf04a367-549b-5393-bde2-eff1d0812476', id, '865d0cc1-d1f6-5de8-928b-8da6c132104c', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'target reader' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cf04a367-549b-5393-bde2-eff1d0812476', id, '865d0cc1-d1f6-5de8-928b-8da6c132104c', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'communicative purpose' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cf04a367-549b-5393-bde2-eff1d0812476', id, '865d0cc1-d1f6-5de8-928b-8da6c132104c', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'register control' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cf04a367-549b-5393-bde2-eff1d0812476', id, '865d0cc1-d1f6-5de8-928b-8da6c132104c', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'executive summary' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cf04a367-549b-5393-bde2-eff1d0812476', id, '865d0cc1-d1f6-5de8-928b-8da6c132104c', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'actionable recommendation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cf04a367-549b-5393-bde2-eff1d0812476', id, '865d0cc1-d1f6-5de8-928b-8da6c132104c', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'balanced appraisal' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cf04a367-549b-5393-bde2-eff1d0812476', id, '865d0cc1-d1f6-5de8-928b-8da6c132104c', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'formal convention' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
