-- Track: C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('b7c8722e-3630-5e06-9aef-cad9b27fe8bb', 'C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS', 'Грамматика: инверсия, расщеплённые конструкции, эллипсис и эмфаза', 'Освойте экзаменационные навыки C1 по теме «Грамматика: инверсия, расщеплённые конструкции, эллипсис и эмфаза»: анализируйте сложный смысл, контролируйте точность и применяйте надёжную стратегию.', '{"en":"Grammar: Inversion, Clefting, Ellipsis and Emphasis","ru":"Грамматика: инверсия, расщеплённые конструкции, эллипсис и эмфаза"}'::jsonb, '{"en":"Master C1 exam skills for grammar: inversion, clefting, ellipsis and emphasis by analysing complex meaning, controlling linguistic precision, and applying reliable strategy.","ru":"Освойте экзаменационные навыки C1 по теме «Грамматика: инверсия, расщеплённые конструкции, эллипсис и эмфаза»: анализируйте сложный смысл, контролируйте точность и применяйте надёжную стратегию."}'::jsonb, 'en', 'C1', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('d577f8f7-f85b-53bf-898d-c5640455db14', NULL, 'Навык, контекст и ключевые понятия', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Using Inversion Accurately","ru":"Навык, контекст и ключевые понятия"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2369bef7-2631-5f51-af59-c2fda1f92479', 'd577f8f7-f85b-53bf-898d-c5640455db14', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L1_D01","left":"negative inversion","right":"инверсия после отрицательного наречия"},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L1_D02","left":"cleft sentence","right":"расщеплённое предложение"},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L1_D03","left":"fronting","right":"вынесение в начало"},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L1_D04","left":"auxiliary inversion","right":"инверсия вспомогательного глагола"},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L1_D05","left":"ellipsis","right":"эллипсис"},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L1_D06","left":"substitution","right":"замещение"},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L1_D07","left":"emphatic construction","right":"эмфатическая конструкция"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a5adcd0-19ba-5c6a-a45d-b531af828e20', 'd577f8f7-f85b-53bf-898d-c5640455db14', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L1_D08","is_correct":true,"text":"Only after the evidence had been re-examined did the investigators recognise the significance of the discrepancy. The relevant C1 concept is negative inversion."},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L1_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L1_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('01acf0c0-ce4a-531a-8634-4f72a26cc8ab', 'd577f8f7-f85b-53bf-898d-c5640455db14', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Only after the evidence had been re-examined did the investigators recognise the significance of the discrepancy. The relevant C1 concept is negative inversion.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Только после повторного изучения доказательств следователи осознали значимость расхождения. Соответствующее понятие уровня C1 — «инверсия после отрицательного наречия».","target_language":"en","word_bank":["Only","after","the","evidence","had","been","re-examined","did","the","investigators","recognise","the","significance","of","the","discrepancy",".","The","relevant","C","1","concept","is","negative","inversion","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('670a6fc5-7bcf-5a7b-b2ef-2d9b86278bfe', 'd577f8f7-f85b-53bf-898d-c5640455db14', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"negative inversion","instruction":"Выберите подходящее слово.","options":["negative inversion","auxiliary inversion","substitution"],"sentence_template":"Only after the evidence had been re-examined did the investigators recognise the significance of the discrepancy. The relevant C1 concept is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('09ad01f7-1e43-5951-88ca-60a986d613a3', 'd577f8f7-f85b-53bf-898d-c5640455db14', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Only","after","the","evidence","had","been","re-examined","did","the","investigators","recognise","the","significance","of","the","discrepancy",".","The","relevant","C","1","concept","is","negative","inversion","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","inversion","negative","is","concept","1","C","relevant","The",".","discrepancy","the","of","significance","the","recognise","investigators","the","did","re-examined","been","had","evidence","the","after","Only"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7ee3639-ca5f-5de0-a1f3-4a04ecb7fb99', 'd577f8f7-f85b-53bf-898d-c5640455db14', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Only after the evidence had been re-examined did the investigators recognise the significance of the discrepancy. The relevant C1 concept is negative inversion. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f9e25de3-6f5d-59a6-80ea-170db4700703', 'd577f8f7-f85b-53bf-898d-c5640455db14', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Only after the evidence had been re-examined did the investigators recognise the significance of the discrepancy. The relevant C1 concept is negative inversion. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Только после повторного изучения доказательств следователи осознали значимость расхождения. Соответствующее понятие уровня C1 — «инверсия после отрицательного наречия». В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('03c424de-1e22-5ead-af20-aed4c65e2ff2', 'd577f8f7-f85b-53bf-898d-c5640455db14', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Only after the evidence had been re-examined did the investigators recognise the significance of the discrepancy. The relevant C1 concept is negative inversion.","translation":"Только после повторного изучения доказательств следователи осознали значимость расхождения. Соответствующее понятие уровня C1 — «инверсия после отрицательного наречия».","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Using Inversion Accurately"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e4bdca4d-342f-5d66-a5b8-f2f8126ea284', 'd577f8f7-f85b-53bf-898d-c5640455db14', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“negative inversion” means reversal after a restrictive negative expression.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L1_D11","is_correct":true,"text":"reversal after a restrictive negative expression"},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L1_D12","is_correct":false,"text":"a divided structure creating emphasis"},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L1_D13","is_correct":false,"text":"placing an element first for prominence"}],"word":"negative inversion"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9db9c0ba-1a8b-5e06-9e0b-87ad7258517f', 'd577f8f7-f85b-53bf-898d-c5640455db14', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Only after the evidence had been re-examined did the investigators recognise the significance of the discrepancy. The relevant C1 concept is negative inversion.","explanation":"The missing expression is “negative inversion”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"negative inversion","id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L1_D14","is_correct":true},{"audio_text":"fronting","id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L1_D15","is_correct":false},{"audio_text":"ellipsis","id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L1_D16","is_correct":false}],"sentence_template":"Only after the evidence had been re-examined did the investigators recognise the significance of the discrepancy. The relevant C1 concept is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('733a23f8-3eb5-54f8-a068-d3a53d4b2a2b', 'd577f8f7-f85b-53bf-898d-c5640455db14', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"negative inversion","explanation":"The complete answer uses “negative inversion” precisely.","hint_prefix":"nega","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Only after the evidence had been re-examined did the investigators recognise the significance of the discrepancy. The relevant C1 concept is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ad8a5dfc-edf4-5e3a-88ef-3732a6a93fc6', 'd577f8f7-f85b-53bf-898d-c5640455db14', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"negative inversion","id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L1_D17","text":"negative inversion"},{"audio_text":"cleft sentence","id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L1_D18","text":"cleft sentence"},{"audio_text":"fronting","id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L1_D19","text":"fronting"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('de2d51fb-53cc-541a-ac68-aa962a2268e7', 'd577f8f7-f85b-53bf-898d-c5640455db14', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Using Inversion Accurately” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L1_D20","is_correct":true,"text":"Only after the evidence had been re-examined did the investigators recognise the significance of the discrepancy. The relevant C1 concept is negative inversion."},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L1_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L1_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b7c8722e-3630-5e06-9aef-cad9b27fe8bb', 'd577f8f7-f85b-53bf-898d-c5640455db14', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('49ed5547-9e08-59bc-b75f-af93ee3ff062', NULL, 'Продвинутый анализ и применение', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Controlling Cleft Sentences and Emphasis","ru":"Продвинутый анализ и применение"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e5ed62a-3af0-5df0-8c89-f2e442d7e695', '49ed5547-9e08-59bc-b75f-af93ee3ff062', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L2_D01","left":"negative inversion","right":"инверсия после отрицательного наречия"},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L2_D02","left":"cleft sentence","right":"расщеплённое предложение"},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L2_D03","left":"fronting","right":"вынесение в начало"},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L2_D04","left":"auxiliary inversion","right":"инверсия вспомогательного глагола"},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L2_D05","left":"ellipsis","right":"эллипсис"},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L2_D06","left":"substitution","right":"замещение"},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L2_D07","left":"emphatic construction","right":"эмфатическая конструкция"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('50780f7e-ffb8-5f28-933a-be9c78322d23', '49ed5547-9e08-59bc-b75f-af93ee3ff062', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L2_D08","is_correct":true,"text":"What the argument fails to explain is why the same policy produced markedly different outcomes elsewhere. The relevant C1 concept is cleft sentence."},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L2_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L2_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9be434dc-50c3-560c-b5c1-0a484f7e63e7', '49ed5547-9e08-59bc-b75f-af93ee3ff062', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"What the argument fails to explain is why the same policy produced markedly different outcomes elsewhere. The relevant C1 concept is cleft sentence.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Аргумент не объясняет именно то, почему та же политика привела к заметно отличающимся результатам в другом месте. Соответствующее понятие уровня C1 — «расщеплённое предложение».","target_language":"en","word_bank":["What","the","argument","fails","to","explain","is","why","the","same","policy","produced","markedly","different","outcomes","elsewhere",".","The","relevant","C","1","concept","is","cleft","sentence","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c7455d5c-17c7-5561-83e5-d147780588aa', '49ed5547-9e08-59bc-b75f-af93ee3ff062', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"cleft sentence","instruction":"Выберите подходящее слово.","options":["cleft sentence","ellipsis","emphatic construction"],"sentence_template":"What the argument fails to explain is why the same policy produced markedly different outcomes elsewhere. The relevant C1 concept is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ffbc5ad-c00c-5ca0-a86d-2757f4302761', '49ed5547-9e08-59bc-b75f-af93ee3ff062', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["What","the","argument","fails","to","explain","is","why","the","same","policy","produced","markedly","different","outcomes","elsewhere",".","The","relevant","C","1","concept","is","cleft","sentence","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","sentence","cleft","is","concept","1","C","relevant","The",".","elsewhere","outcomes","different","markedly","produced","policy","same","the","why","is","explain","to","fails","argument","the","What"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5bb7039c-fc3f-5bf2-95ce-de207be84f15', '49ed5547-9e08-59bc-b75f-af93ee3ff062', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"What the argument fails to explain is why the same policy produced markedly different outcomes elsewhere. The relevant C1 concept is cleft sentence. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7de89777-d8c3-5269-8129-6a7954996dad', '49ed5547-9e08-59bc-b75f-af93ee3ff062', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"What the argument fails to explain is why the same policy produced markedly different outcomes elsewhere. The relevant C1 concept is cleft sentence. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Аргумент не объясняет именно то, почему та же политика привела к заметно отличающимся результатам в другом месте. Соответствующее понятие уровня C1 — «расщеплённое предложение». В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7333048a-b8a6-50c5-a55d-0d82934cb0d4', '49ed5547-9e08-59bc-b75f-af93ee3ff062', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"What the argument fails to explain is why the same policy produced markedly different outcomes elsewhere. The relevant C1 concept is cleft sentence.","translation":"Аргумент не объясняет именно то, почему та же политика привела к заметно отличающимся результатам в другом месте. Соответствующее понятие уровня C1 — «расщеплённое предложение».","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Controlling Cleft Sentences and Emphasis"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('868d6902-f52b-5d85-99cd-a28099b5d2d3', '49ed5547-9e08-59bc-b75f-af93ee3ff062', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“cleft sentence” means a divided structure creating emphasis.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L2_D11","is_correct":true,"text":"a divided structure creating emphasis"},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L2_D12","is_correct":false,"text":"placing an element first for prominence"},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L2_D13","is_correct":false,"text":"placing an auxiliary before the subject"}],"word":"cleft sentence"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('74d3b8cd-8a57-5588-9377-d52c8789e416', '49ed5547-9e08-59bc-b75f-af93ee3ff062', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"What the argument fails to explain is why the same policy produced markedly different outcomes elsewhere. The relevant C1 concept is cleft sentence.","explanation":"The missing expression is “cleft sentence”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"cleft sentence","id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L2_D14","is_correct":true},{"audio_text":"auxiliary inversion","id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L2_D15","is_correct":false},{"audio_text":"substitution","id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L2_D16","is_correct":false}],"sentence_template":"What the argument fails to explain is why the same policy produced markedly different outcomes elsewhere. The relevant C1 concept is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('54236880-581f-582f-b41a-4ca4db23e79b', '49ed5547-9e08-59bc-b75f-af93ee3ff062', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"cleft sentence","explanation":"The complete answer uses “cleft sentence” precisely.","hint_prefix":"clef","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"What the argument fails to explain is why the same policy produced markedly different outcomes elsewhere. The relevant C1 concept is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('98db47a9-6abd-5499-84aa-b2d36fb2d001', '49ed5547-9e08-59bc-b75f-af93ee3ff062', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"negative inversion","id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L2_D17","text":"negative inversion"},{"audio_text":"cleft sentence","id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L2_D18","text":"cleft sentence"},{"audio_text":"fronting","id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L2_D19","text":"fronting"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d102132b-8b45-55ab-9a3f-e3adbec27595', '49ed5547-9e08-59bc-b75f-af93ee3ff062', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Controlling Cleft Sentences and Emphasis” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L2_D20","is_correct":true,"text":"What the argument fails to explain is why the same policy produced markedly different outcomes elsewhere. The relevant C1 concept is cleft sentence."},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L2_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L2_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b7c8722e-3630-5e06-9aef-cad9b27fe8bb', '49ed5547-9e08-59bc-b75f-af93ee3ff062', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7b8520d1-300e-575e-a876-a4179807c0dd', NULL, 'Экзаменационное решение и проверка', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Applying Ellipsis Without Ambiguity","ru":"Экзаменационное решение и проверка"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c72e0391-b41a-51ea-889b-c7955b778c5a', '7b8520d1-300e-575e-a876-a4179807c0dd', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L3_D01","left":"negative inversion","right":"инверсия после отрицательного наречия"},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L3_D02","left":"cleft sentence","right":"расщеплённое предложение"},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L3_D03","left":"fronting","right":"вынесение в начало"},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L3_D04","left":"auxiliary inversion","right":"инверсия вспомогательного глагола"},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L3_D05","left":"ellipsis","right":"эллипсис"},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L3_D06","left":"substitution","right":"замещение"},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L3_D07","left":"emphatic construction","right":"эмфатическая конструкция"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('15219b26-e346-5055-a2cb-98fe98cc886d', '7b8520d1-300e-575e-a876-a4179807c0dd', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L3_D08","is_correct":true,"text":"Some candidates interpreted the data accurately, while others did not, and the ellipsis avoids unnecessary repetition. The relevant C1 concept is fronting."},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L3_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L3_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a12caaf2-4b9b-5768-8d7d-bc96bd67cafc', '7b8520d1-300e-575e-a876-a4179807c0dd', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Some candidates interpreted the data accurately, while others did not, and the ellipsis avoids unnecessary repetition. The relevant C1 concept is fronting.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Некоторые кандидаты верно интерпретировали данные, а другие — нет; эллипсис устраняет ненужное повторение. Соответствующее понятие уровня C1 — «вынесение в начало».","target_language":"en","word_bank":["Some","candidates","interpreted","the","data","accurately",",","while","others","did","not",",","and","the","ellipsis","avoids","unnecessary","repetition",".","The","relevant","C","1","concept","is","fronting","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('50ea32e3-46b6-52f3-af97-70fce5e205ef', '7b8520d1-300e-575e-a876-a4179807c0dd', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"fronting","instruction":"Выберите подходящее слово.","options":["fronting","substitution","negative inversion"],"sentence_template":"Some candidates interpreted the data accurately, while others did not, and the ellipsis avoids unnecessary repetition. The relevant C1 concept is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a6ff8fb-4b6d-51a8-a871-eb36d3ab34f9', '7b8520d1-300e-575e-a876-a4179807c0dd', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Some","candidates","interpreted","the","data","accurately",",","while","others","did","not",",","and","the","ellipsis","avoids","unnecessary","repetition",".","The","relevant","C","1","concept","is","fronting","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","fronting","is","concept","1","C","relevant","The",".","repetition","unnecessary","avoids","ellipsis","the","and",",","not","did","others","while",",","accurately","data","the","interpreted","candidates","Some"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b4bcf601-d832-53a6-bc6c-5e7bbef301ff', '7b8520d1-300e-575e-a876-a4179807c0dd', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Some candidates interpreted the data accurately, while others did not, and the ellipsis avoids unnecessary repetition. The relevant C1 concept is fronting. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ca76d7cb-158c-53a0-b35c-2014e9ce0cae', '7b8520d1-300e-575e-a876-a4179807c0dd', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Some candidates interpreted the data accurately, while others did not, and the ellipsis avoids unnecessary repetition. The relevant C1 concept is fronting. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Некоторые кандидаты верно интерпретировали данные, а другие — нет; эллипсис устраняет ненужное повторение. Соответствующее понятие уровня C1 — «вынесение в начало». В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('279d2a65-e7fa-5e53-84a0-f4d83c70fd3d', '7b8520d1-300e-575e-a876-a4179807c0dd', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Some candidates interpreted the data accurately, while others did not, and the ellipsis avoids unnecessary repetition. The relevant C1 concept is fronting.","translation":"Некоторые кандидаты верно интерпретировали данные, а другие — нет; эллипсис устраняет ненужное повторение. Соответствующее понятие уровня C1 — «вынесение в начало».","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Applying Ellipsis Without Ambiguity"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c1b44d4a-bfdf-50cf-a35a-3f8a30279476', '7b8520d1-300e-575e-a876-a4179807c0dd', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“fronting” means placing an element first for prominence.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L3_D11","is_correct":true,"text":"placing an element first for prominence"},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L3_D12","is_correct":false,"text":"placing an auxiliary before the subject"},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L3_D13","is_correct":false,"text":"omission of recoverable words"}],"word":"fronting"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6bce2f5d-2378-55db-8ae5-05efbcf0f3a9', '7b8520d1-300e-575e-a876-a4179807c0dd', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Some candidates interpreted the data accurately, while others did not, and the ellipsis avoids unnecessary repetition. The relevant C1 concept is fronting.","explanation":"The missing expression is “fronting”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"fronting","id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L3_D14","is_correct":true},{"audio_text":"ellipsis","id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L3_D15","is_correct":false},{"audio_text":"emphatic construction","id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L3_D16","is_correct":false}],"sentence_template":"Some candidates interpreted the data accurately, while others did not, and the ellipsis avoids unnecessary repetition. The relevant C1 concept is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('82e18724-b38f-5e59-9877-877e45f47ac1', '7b8520d1-300e-575e-a876-a4179807c0dd', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"fronting","explanation":"The complete answer uses “fronting” precisely.","hint_prefix":"fron","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Some candidates interpreted the data accurately, while others did not, and the ellipsis avoids unnecessary repetition. The relevant C1 concept is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3449c2b9-b4b2-52b1-a6ff-8456e80c8a5a', '7b8520d1-300e-575e-a876-a4179807c0dd', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"negative inversion","id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L3_D17","text":"negative inversion"},{"audio_text":"cleft sentence","id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L3_D18","text":"cleft sentence"},{"audio_text":"fronting","id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L3_D19","text":"fronting"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('68e9f81b-e1f4-5f63-ba96-8ccf9ebb918b', '7b8520d1-300e-575e-a876-a4179807c0dd', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Applying Ellipsis Without Ambiguity” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L3_D20","is_correct":true,"text":"Some candidates interpreted the data accurately, while others did not, and the ellipsis avoids unnecessary repetition. The relevant C1 concept is fronting."},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L3_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_GRAMMAR_INVERSION_CLEFTING_ELLIPSIS_AND_EMPHASIS_L3_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b7c8722e-3630-5e06-9aef-cad9b27fe8bb', '7b8520d1-300e-575e-a876-a4179807c0dd', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('201a5b69-df08-52e3-ba3f-c1b3e326c3f8', 'en', 'negative inversion', 'инверсия после отрицательного наречия', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a1f0da46-d19c-5b4e-b81f-767cd0050d41', 'en', 'cleft sentence', 'расщеплённое предложение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6f8a71e2-b47a-5766-97e7-90fc0648884c', 'en', 'fronting', 'вынесение в начало', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('04d29096-296d-5f8c-b315-0c17e14de5c1', 'en', 'auxiliary inversion', 'инверсия вспомогательного глагола', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('daf203b5-948f-57d6-8dc4-1bccf666ac41', 'en', 'ellipsis', 'эллипсис', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7214ae4a-8bf8-5545-94be-01d9e62cb493', 'en', 'substitution', 'замещение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3a9594b3-6046-5123-b2dc-396fef7e6967', 'en', 'emphatic construction', 'эмфатическая конструкция', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('201a5b69-df08-52e3-ba3f-c1b3e326c3f8', 'en', 'negative inversion', 'инверсия после отрицательного наречия', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a1f0da46-d19c-5b4e-b81f-767cd0050d41', 'en', 'cleft sentence', 'расщеплённое предложение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6f8a71e2-b47a-5766-97e7-90fc0648884c', 'en', 'fronting', 'вынесение в начало', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('04d29096-296d-5f8c-b315-0c17e14de5c1', 'en', 'auxiliary inversion', 'инверсия вспомогательного глагола', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('daf203b5-948f-57d6-8dc4-1bccf666ac41', 'en', 'ellipsis', 'эллипсис', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7214ae4a-8bf8-5545-94be-01d9e62cb493', 'en', 'substitution', 'замещение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3a9594b3-6046-5123-b2dc-396fef7e6967', 'en', 'emphatic construction', 'эмфатическая конструкция', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('201a5b69-df08-52e3-ba3f-c1b3e326c3f8', 'en', 'negative inversion', 'инверсия после отрицательного наречия', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a1f0da46-d19c-5b4e-b81f-767cd0050d41', 'en', 'cleft sentence', 'расщеплённое предложение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6f8a71e2-b47a-5766-97e7-90fc0648884c', 'en', 'fronting', 'вынесение в начало', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('04d29096-296d-5f8c-b315-0c17e14de5c1', 'en', 'auxiliary inversion', 'инверсия вспомогательного глагола', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('daf203b5-948f-57d6-8dc4-1bccf666ac41', 'en', 'ellipsis', 'эллипсис', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7214ae4a-8bf8-5545-94be-01d9e62cb493', 'en', 'substitution', 'замещение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3a9594b3-6046-5123-b2dc-396fef7e6967', 'en', 'emphatic construction', 'эмфатическая конструкция', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c8722e-3630-5e06-9aef-cad9b27fe8bb', id, 'd577f8f7-f85b-53bf-898d-c5640455db14', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'negative inversion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c8722e-3630-5e06-9aef-cad9b27fe8bb', id, 'd577f8f7-f85b-53bf-898d-c5640455db14', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'cleft sentence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c8722e-3630-5e06-9aef-cad9b27fe8bb', id, 'd577f8f7-f85b-53bf-898d-c5640455db14', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'fronting' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c8722e-3630-5e06-9aef-cad9b27fe8bb', id, 'd577f8f7-f85b-53bf-898d-c5640455db14', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'auxiliary inversion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c8722e-3630-5e06-9aef-cad9b27fe8bb', id, 'd577f8f7-f85b-53bf-898d-c5640455db14', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'ellipsis' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c8722e-3630-5e06-9aef-cad9b27fe8bb', id, 'd577f8f7-f85b-53bf-898d-c5640455db14', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'substitution' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c8722e-3630-5e06-9aef-cad9b27fe8bb', id, 'd577f8f7-f85b-53bf-898d-c5640455db14', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'emphatic construction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c8722e-3630-5e06-9aef-cad9b27fe8bb', id, '49ed5547-9e08-59bc-b75f-af93ee3ff062', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'negative inversion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c8722e-3630-5e06-9aef-cad9b27fe8bb', id, '49ed5547-9e08-59bc-b75f-af93ee3ff062', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'cleft sentence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c8722e-3630-5e06-9aef-cad9b27fe8bb', id, '49ed5547-9e08-59bc-b75f-af93ee3ff062', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'fronting' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c8722e-3630-5e06-9aef-cad9b27fe8bb', id, '49ed5547-9e08-59bc-b75f-af93ee3ff062', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'auxiliary inversion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c8722e-3630-5e06-9aef-cad9b27fe8bb', id, '49ed5547-9e08-59bc-b75f-af93ee3ff062', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'ellipsis' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c8722e-3630-5e06-9aef-cad9b27fe8bb', id, '49ed5547-9e08-59bc-b75f-af93ee3ff062', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'substitution' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c8722e-3630-5e06-9aef-cad9b27fe8bb', id, '49ed5547-9e08-59bc-b75f-af93ee3ff062', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'emphatic construction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c8722e-3630-5e06-9aef-cad9b27fe8bb', id, '7b8520d1-300e-575e-a876-a4179807c0dd', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'negative inversion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c8722e-3630-5e06-9aef-cad9b27fe8bb', id, '7b8520d1-300e-575e-a876-a4179807c0dd', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'cleft sentence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c8722e-3630-5e06-9aef-cad9b27fe8bb', id, '7b8520d1-300e-575e-a876-a4179807c0dd', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'fronting' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c8722e-3630-5e06-9aef-cad9b27fe8bb', id, '7b8520d1-300e-575e-a876-a4179807c0dd', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'auxiliary inversion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c8722e-3630-5e06-9aef-cad9b27fe8bb', id, '7b8520d1-300e-575e-a876-a4179807c0dd', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'ellipsis' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c8722e-3630-5e06-9aef-cad9b27fe8bb', id, '7b8520d1-300e-575e-a876-a4179807c0dd', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'substitution' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b7c8722e-3630-5e06-9aef-cad9b27fe8bb', id, '7b8520d1-300e-575e-a876-a4179807c0dd', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'emphatic construction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
