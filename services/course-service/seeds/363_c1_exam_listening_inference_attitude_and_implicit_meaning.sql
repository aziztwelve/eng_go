-- Track: C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('2ec28c05-ce09-56a5-a31b-f51d08b8ea4c', 'C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING', 'Аудирование: выводы, отношение и скрытый смысл', 'Освойте экзаменационные навыки C1 по теме «Аудирование: выводы, отношение и скрытый смысл»: анализируйте сложный смысл, контролируйте точность и применяйте надёжную стратегию.', '{"en":"Listening: Inference, Attitude and Implicit Meaning","ru":"Аудирование: выводы, отношение и скрытый смысл"}'::jsonb, '{"en":"Master C1 exam skills for listening: inference, attitude and implicit meaning by analysing complex meaning, controlling linguistic precision, and applying reliable strategy.","ru":"Освойте экзаменационные навыки C1 по теме «Аудирование: выводы, отношение и скрытый смысл»: анализируйте сложный смысл, контролируйте точность и применяйте надёжную стратегию."}'::jsonb, 'en', 'C1', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f7ff4153-ee89-543e-9584-cf860bda40c2', NULL, 'Навык, контекст и ключевые понятия', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Inferring Meaning from Context","ru":"Навык, контекст и ключевые понятия"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b98c87d0-6aab-58f1-9e25-f752d1ac5fb7', 'f7ff4153-ee89-543e-9584-cf860bda40c2', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L1_D01","left":"pragmatic meaning","right":"прагматическое значение"},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L1_D02","left":"hedging device","right":"средство смягчения"},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L1_D03","left":"speaker alignment","right":"согласованность позиций говорящих"},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L1_D04","left":"prosodic cue","right":"просодический сигнал"},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L1_D05","left":"implied criticism","right":"скрытая критика"},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L1_D06","left":"plausible distractor","right":"правдоподобный отвлекающий вариант"},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L1_D07","left":"discourse shift","right":"смена направления дискурса"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c1bb6462-7632-50ab-a7a9-09cce3aec6b4', 'f7ff4153-ee89-543e-9584-cf860bda40c2', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L1_D08","is_correct":true,"text":"The pragmatic meaning depends less on the literal words than on the hedging device and contrastive stress."},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L1_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L1_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2efe232f-5826-579f-af41-2fe96efb6dff', 'f7ff4153-ee89-543e-9584-cf860bda40c2', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The pragmatic meaning depends less on the literal words than on the hedging device and contrastive stress.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Прагматическое значение зависит меньше от буквальных слов, чем от средства смягчения и контрастного ударения.","target_language":"en","word_bank":["The","pragmatic","meaning","depends","less","on","the","literal","words","than","on","the","hedging","device","and","contrastive","stress","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('625e2dfb-d5a7-5857-bf13-571827c2d673', 'f7ff4153-ee89-543e-9584-cf860bda40c2', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"pragmatic meaning","instruction":"Выберите подходящее слово.","options":["pragmatic meaning","prosodic cue","plausible distractor"],"sentence_template":"The ___ depends less on the literal words than on the hedging device and contrastive stress."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f198a4de-f2b3-5916-98d4-a9759accea43', 'f7ff4153-ee89-543e-9584-cf860bda40c2', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","pragmatic","meaning","depends","less","on","the","literal","words","than","on","the","hedging","device","and","contrastive","stress","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","stress","contrastive","and","device","hedging","the","on","than","words","literal","the","on","less","depends","meaning","pragmatic","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bfc97891-ee61-50c9-9fd6-df1a6c03ebea', 'f7ff4153-ee89-543e-9584-cf860bda40c2', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The pragmatic meaning depends less on the literal words than on the hedging device and contrastive stress. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7bc48b45-8c57-5ab9-b235-2a456f0005f4', 'f7ff4153-ee89-543e-9584-cf860bda40c2', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The pragmatic meaning depends less on the literal words than on the hedging device and contrastive stress. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Прагматическое значение зависит меньше от буквальных слов, чем от средства смягчения и контрастного ударения. В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fb1186b1-6145-572f-b537-cd2eb5dd4766', 'f7ff4153-ee89-543e-9584-cf860bda40c2', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"The pragmatic meaning depends less on the literal words than on the hedging device and contrastive stress.","translation":"Прагматическое значение зависит меньше от буквальных слов, чем от средства смягчения и контрастного ударения.","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Inferring Meaning from Context"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d835647-e3f1-5c29-a792-1463ce28cfd3', 'f7ff4153-ee89-543e-9584-cf860bda40c2', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“pragmatic meaning” means meaning inferred from context and intention.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L1_D11","is_correct":true,"text":"meaning inferred from context and intention"},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L1_D12","is_correct":false,"text":"language reducing certainty or directness"},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L1_D13","is_correct":false,"text":"the degree to which speakers agree"}],"word":"pragmatic meaning"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7fede95a-c4f6-5b85-bd6d-82cc7d852a16', 'f7ff4153-ee89-543e-9584-cf860bda40c2', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The pragmatic meaning depends less on the literal words than on the hedging device and contrastive stress.","explanation":"The missing expression is “pragmatic meaning”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"pragmatic meaning","id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L1_D14","is_correct":true},{"audio_text":"speaker alignment","id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L1_D15","is_correct":false},{"audio_text":"implied criticism","id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L1_D16","is_correct":false}],"sentence_template":"The ___ depends less on the literal words than on the hedging device and contrastive stress."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d11626df-002b-5b85-abba-45f6e814385f', 'f7ff4153-ee89-543e-9584-cf860bda40c2', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"pragmatic meaning","explanation":"The complete answer uses “pragmatic meaning” precisely.","hint_prefix":"prag","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ depends less on the literal words than on the hedging device and contrastive stress."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a79bbc18-59b1-5258-a5fc-f47eed6dc6d3', 'f7ff4153-ee89-543e-9584-cf860bda40c2', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"pragmatic meaning","id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L1_D17","text":"pragmatic meaning"},{"audio_text":"hedging device","id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L1_D18","text":"hedging device"},{"audio_text":"speaker alignment","id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L1_D19","text":"speaker alignment"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2480b3e0-4409-5016-a4f7-ea2514125733', 'f7ff4153-ee89-543e-9584-cf860bda40c2', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Inferring Meaning from Context” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L1_D20","is_correct":true,"text":"The pragmatic meaning depends less on the literal words than on the hedging device and contrastive stress."},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L1_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L1_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2ec28c05-ce09-56a5-a31b-f51d08b8ea4c', 'f7ff4153-ee89-543e-9584-cf860bda40c2', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('05ba08ca-7904-5815-a715-8da86487f168', NULL, 'Продвинутый анализ и применение', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Recognising Attitude and Alignment","ru":"Продвинутый анализ и применение"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d60d70d-da59-5c31-9576-98138dfb60dc', '05ba08ca-7904-5815-a715-8da86487f168', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L2_D01","left":"pragmatic meaning","right":"прагматическое значение"},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L2_D02","left":"hedging device","right":"средство смягчения"},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L2_D03","left":"speaker alignment","right":"согласованность позиций говорящих"},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L2_D04","left":"prosodic cue","right":"просодический сигнал"},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L2_D05","left":"implied criticism","right":"скрытая критика"},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L2_D06","left":"plausible distractor","right":"правдоподобный отвлекающий вариант"},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L2_D07","left":"discourse shift","right":"смена направления дискурса"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('850e1397-5d33-588c-aebf-200ea7f9e954', '05ba08ca-7904-5815-a715-8da86487f168', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L2_D08","is_correct":true,"text":"Speaker alignment changes after the second participant accepts the evidence but rejects the proposed interpretation. The relevant C1 concept is hedging device."},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L2_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L2_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fab05c6d-2702-5222-b562-fd3d756bfd81', '05ba08ca-7904-5815-a715-8da86487f168', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Speaker alignment changes after the second participant accepts the evidence but rejects the proposed interpretation. The relevant C1 concept is hedging device.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Согласованность позиций говорящих меняется после того, как второй участник принимает доказательства, но отвергает интерпретацию. Соответствующее понятие уровня C1 — «средство смягчения».","target_language":"en","word_bank":["Speaker","alignment","changes","after","the","second","participant","accepts","the","evidence","but","rejects","the","proposed","interpretation",".","The","relevant","C","1","concept","is","hedging","device","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b437014-9ede-5e6d-961a-d10b40a20066', '05ba08ca-7904-5815-a715-8da86487f168', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"hedging device","instruction":"Выберите подходящее слово.","options":["hedging device","implied criticism","discourse shift"],"sentence_template":"Speaker alignment changes after the second participant accepts the evidence but rejects the proposed interpretation. The relevant C1 concept is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('81f89471-4c25-5f47-9190-5b8d1cbd9a8e', '05ba08ca-7904-5815-a715-8da86487f168', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Speaker","alignment","changes","after","the","second","participant","accepts","the","evidence","but","rejects","the","proposed","interpretation",".","The","relevant","C","1","concept","is","hedging","device","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","device","hedging","is","concept","1","C","relevant","The",".","interpretation","proposed","the","rejects","but","evidence","the","accepts","participant","second","the","after","changes","alignment","Speaker"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('229c636e-b9ca-59ba-983d-9c88f9d0706e', '05ba08ca-7904-5815-a715-8da86487f168', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Speaker alignment changes after the second participant accepts the evidence but rejects the proposed interpretation. The relevant C1 concept is hedging device. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1302344c-fe28-56ea-a2bc-05b4f8d5a9b6', '05ba08ca-7904-5815-a715-8da86487f168', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Speaker alignment changes after the second participant accepts the evidence but rejects the proposed interpretation. The relevant C1 concept is hedging device. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Согласованность позиций говорящих меняется после того, как второй участник принимает доказательства, но отвергает интерпретацию. Соответствующее понятие уровня C1 — «средство смягчения». В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9112277d-689a-5212-a054-67aabbf0e30e', '05ba08ca-7904-5815-a715-8da86487f168', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"Speaker alignment changes after the second participant accepts the evidence but rejects the proposed interpretation. The relevant C1 concept is hedging device.","translation":"Согласованность позиций говорящих меняется после того, как второй участник принимает доказательства, но отвергает интерпретацию. Соответствующее понятие уровня C1 — «средство смягчения».","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Recognising Attitude and Alignment"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fe858161-9425-53b9-b981-434729f265bd', '05ba08ca-7904-5815-a715-8da86487f168', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“hedging device” means language reducing certainty or directness.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L2_D11","is_correct":true,"text":"language reducing certainty or directness"},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L2_D12","is_correct":false,"text":"the degree to which speakers agree"},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L2_D13","is_correct":false,"text":"meaning conveyed through stress or intonation"}],"word":"hedging device"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('42d0932a-e329-5950-baf2-03179f6f1b07', '05ba08ca-7904-5815-a715-8da86487f168', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Speaker alignment changes after the second participant accepts the evidence but rejects the proposed interpretation. The relevant C1 concept is hedging device.","explanation":"The missing expression is “hedging device”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"hedging device","id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L2_D14","is_correct":true},{"audio_text":"prosodic cue","id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L2_D15","is_correct":false},{"audio_text":"plausible distractor","id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L2_D16","is_correct":false}],"sentence_template":"Speaker alignment changes after the second participant accepts the evidence but rejects the proposed interpretation. The relevant C1 concept is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('10e9e034-be4f-5e1c-af8b-c28a8129e397', '05ba08ca-7904-5815-a715-8da86487f168', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"hedging device","explanation":"The complete answer uses “hedging device” precisely.","hint_prefix":"hedg","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Speaker alignment changes after the second participant accepts the evidence but rejects the proposed interpretation. The relevant C1 concept is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a4bbbb2-ad1f-5aec-8a1f-c6d330f750ff', '05ba08ca-7904-5815-a715-8da86487f168', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"pragmatic meaning","id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L2_D17","text":"pragmatic meaning"},{"audio_text":"hedging device","id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L2_D18","text":"hedging device"},{"audio_text":"speaker alignment","id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L2_D19","text":"speaker alignment"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3c9d66c4-c094-5b9e-8ae8-95953783730b', '05ba08ca-7904-5815-a715-8da86487f168', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Recognising Attitude and Alignment” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L2_D20","is_correct":true,"text":"Speaker alignment changes after the second participant accepts the evidence but rejects the proposed interpretation. The relevant C1 concept is hedging device."},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L2_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L2_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2ec28c05-ce09-56a5-a31b-f51d08b8ea4c', '05ba08ca-7904-5815-a715-8da86487f168', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('38d482e0-b57c-5a80-8f30-ac451230263c', NULL, 'Экзаменационное решение и проверка', 'Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям.', '{"en":"Managing Distractors in Dense Audio","ru":"Экзаменационное решение и проверка"}'::jsonb, '{"en":"Complete a demanding C1 exam task by recognising implication and qualification, justifying the response precisely, and reviewing it against explicit criteria.","ru":"Уверенно выполнять сложное задание C1, распознавая подтекст и ограничения, точно обосновывая ответ и проверяя его по критериям."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('47d2ee52-ed84-5750-8a67-3fc94afa655a', '38d482e0-b57c-5a80-8f30-ac451230263c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L3_D01","left":"pragmatic meaning","right":"прагматическое значение"},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L3_D02","left":"hedging device","right":"средство смягчения"},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L3_D03","left":"speaker alignment","right":"согласованность позиций говорящих"},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L3_D04","left":"prosodic cue","right":"просодический сигнал"},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L3_D05","left":"implied criticism","right":"скрытая критика"},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L3_D06","left":"plausible distractor","right":"правдоподобный отвлекающий вариант"},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L3_D07","left":"discourse shift","right":"смена направления дискурса"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cb00da99-cf0f-511f-b122-b264534a914f', '38d482e0-b57c-5a80-8f30-ac451230263c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 language and evidence-based interpretation.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L3_D08","is_correct":true,"text":"The plausible distractor repeats one detail, whereas the correct answer captures the speaker’s later discourse shift. The relevant C1 concept is speaker alignment."},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L3_D09","is_correct":false,"text":"The most familiar option must be correct even when the evidence qualifies it."},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L3_D10","is_correct":false,"text":"Complex language should be selected regardless of meaning or task requirements."}],"question":"Which response demonstrates the strongest C1 exam reasoning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc77384b-b5b3-5dfc-a5bd-131fef5f453b', '38d482e0-b57c-5a80-8f30-ac451230263c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The plausible distractor repeats one detail, whereas the correct answer captures the speaker’s later discourse shift. The relevant C1 concept is speaker alignment.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Правдоподобный отвлекающий вариант повторяет одну деталь, тогда как правильный ответ отражает последующую смену позиции говорящего. Соответствующее понятие уровня C1 — «согласованность позиций говорящих».","target_language":"en","word_bank":["The","plausible","distractor","repeats","one","detail",",","whereas","the","correct","answer","captures","the","speaker’s","later","discourse","shift",".","The","relevant","C","1","concept","is","speaker","alignment","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fd788909-846c-54ac-a080-28ce7ffeb3d9', '38d482e0-b57c-5a80-8f30-ac451230263c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"speaker alignment","instruction":"Выберите подходящее слово.","options":["speaker alignment","plausible distractor","pragmatic meaning"],"sentence_template":"The plausible distractor repeats one detail, whereas the correct answer captures the speaker’s later discourse shift. The relevant C1 concept is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4105c32c-2262-57d1-bdf3-40216d6a6e65', '38d482e0-b57c-5a80-8f30-ac451230263c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","plausible","distractor","repeats","one","detail",",","whereas","the","correct","answer","captures","the","speaker’s","later","discourse","shift",".","The","relevant","C","1","concept","is","speaker","alignment","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","alignment","speaker","is","concept","1","C","relevant","The",".","shift","discourse","later","speaker’s","the","captures","answer","correct","the","whereas",",","detail","one","repeats","distractor","plausible","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('31e04683-f693-58af-a40c-71e15c39d1e1', '38d482e0-b57c-5a80-8f30-ac451230263c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The plausible distractor repeats one detail, whereas the correct answer captures the speaker’s later discourse shift. The relevant C1 concept is speaker alignment. Under timed conditions, identify the decisive evidence before comparing closely related options.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('10c56f21-545f-53a3-bdc0-d00c04fe6d54', '38d482e0-b57c-5a80-8f30-ac451230263c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The plausible distractor repeats one detail, whereas the correct answer captures the speaker’s later discourse shift. The relevant C1 concept is speaker alignment. Under timed conditions, identify the decisive evidence before comparing closely related options. Reject any plausible option that extends beyond the qualified position.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Правдоподобный отвлекающий вариант повторяет одну деталь, тогда как правильный ответ отражает последующую смену позиции говорящего. Соответствующее понятие уровня C1 — «согласованность позиций говорящих». В условиях ограниченного времени найдите решающее доказательство и отклоните вариант, выходящий за пределы оговорённой позиции."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae7a3e03-98ea-5ff0-a177-3402e747eb58', '38d482e0-b57c-5a80-8f30-ac451230263c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Examiner","text":"The plausible distractor repeats one detail, whereas the correct answer captures the speaker’s later discourse shift. The relevant C1 concept is speaker alignment.","translation":"Правдоподобный отвлекающий вариант повторяет одну деталь, тогда как правильный ответ отражает последующую смену позиции говорящего. Соответствующее понятие уровня C1 — «согласованность позиций говорящих».","type":"dialogue"},{"character":"Candidate","text":"Which precise feature provides the strongest evidence for that interpretation?","translation":"Какая конкретная особенность даёт самое сильное доказательство этой интерпретации?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would identify the wording, explain its implication, and reject the option that overstates the evidence."},{"is_correct":false,"text":"I would choose quickly because detailed evidence is unnecessary."}],"text":"Which answer shows effective C1 reasoning?","type":"choice"}],"title":"Managing Distractors in Dense Audio"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9461d2a5-1aba-5f68-8ec1-476d0dd57f86', '38d482e0-b57c-5a80-8f30-ac451230263c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“speaker alignment” means the degree to which speakers agree.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L3_D11","is_correct":true,"text":"the degree to which speakers agree"},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L3_D12","is_correct":false,"text":"meaning conveyed through stress or intonation"},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L3_D13","is_correct":false,"text":"a negative judgement communicated indirectly"}],"word":"speaker alignment"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0954fa6-6f74-5854-a8dd-e4b5f23ea8f6', '38d482e0-b57c-5a80-8f30-ac451230263c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The plausible distractor repeats one detail, whereas the correct answer captures the speaker’s later discourse shift. The relevant C1 concept is speaker alignment.","explanation":"The missing expression is “speaker alignment”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"speaker alignment","id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L3_D14","is_correct":true},{"audio_text":"implied criticism","id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L3_D15","is_correct":false},{"audio_text":"discourse shift","id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L3_D16","is_correct":false}],"sentence_template":"The plausible distractor repeats one detail, whereas the correct answer captures the speaker’s later discourse shift. The relevant C1 concept is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b5bd7a29-c359-55a1-9ac6-8670702d897b', '38d482e0-b57c-5a80-8f30-ac451230263c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"speaker alignment","explanation":"The complete answer uses “speaker alignment” precisely.","hint_prefix":"spea","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The plausible distractor repeats one detail, whereas the correct answer captures the speaker’s later discourse shift. The relevant C1 concept is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('14382a47-e98c-527b-a504-931ea1beb4d3', '38d482e0-b57c-5a80-8f30-ac451230263c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each C1 exam expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"pragmatic meaning","id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L3_D17","text":"pragmatic meaning"},{"audio_text":"hedging device","id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L3_D18","text":"hedging device"},{"audio_text":"speaker alignment","id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L3_D19","text":"speaker alignment"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('61b2a610-b5be-517c-b1da-8d6317fbf56e', '38d482e0-b57c-5a80-8f30-ac451230263c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tutor","text":"How would you approach “Managing Distractors in Dense Audio” under exam conditions?"}],"explanation":"The correct response applies accurate C1 language and evidence-based exam strategy.","instruction":"Ответьте.","options":[{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L3_D20","is_correct":true,"text":"The plausible distractor repeats one detail, whereas the correct answer captures the speaker’s later discourse shift. The relevant C1 concept is speaker alignment."},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L3_D21","is_correct":false,"text":"I would ignore qualification and select the option repeating the most words."},{"id":"C1_EXAM_LISTENING_INFERENCE_ATTITUDE_AND_IMPLICIT_MEANING_L3_D22","is_correct":false,"text":"I would use advanced vocabulary even if it made the response inaccurate."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2ec28c05-ce09-56a5-a31b-f51d08b8ea4c', '38d482e0-b57c-5a80-8f30-ac451230263c', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7a5b2eca-38f4-5014-b4e3-7716eb6a614a', 'en', 'pragmatic meaning', 'прагматическое значение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9973ba2a-fc11-5cd4-bb29-d0aca2c1c874', 'en', 'hedging device', 'средство смягчения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1b154371-6beb-5609-9b7b-7ec1fdd41365', 'en', 'speaker alignment', 'согласованность позиций говорящих', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d03cc77d-db27-58cd-be77-d55c67db9124', 'en', 'prosodic cue', 'просодический сигнал', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ade4402f-9fb6-5d5a-8b94-e28e01e0d090', 'en', 'implied criticism', 'скрытая критика', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('646ca49a-c11a-5785-825c-a960c1c9b475', 'en', 'plausible distractor', 'правдоподобный отвлекающий вариант', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c95ecbb8-cb4c-5040-aa82-a30ca8145b8a', 'en', 'discourse shift', 'смена направления дискурса', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7a5b2eca-38f4-5014-b4e3-7716eb6a614a', 'en', 'pragmatic meaning', 'прагматическое значение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9973ba2a-fc11-5cd4-bb29-d0aca2c1c874', 'en', 'hedging device', 'средство смягчения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1b154371-6beb-5609-9b7b-7ec1fdd41365', 'en', 'speaker alignment', 'согласованность позиций говорящих', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d03cc77d-db27-58cd-be77-d55c67db9124', 'en', 'prosodic cue', 'просодический сигнал', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ade4402f-9fb6-5d5a-8b94-e28e01e0d090', 'en', 'implied criticism', 'скрытая критика', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('646ca49a-c11a-5785-825c-a960c1c9b475', 'en', 'plausible distractor', 'правдоподобный отвлекающий вариант', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c95ecbb8-cb4c-5040-aa82-a30ca8145b8a', 'en', 'discourse shift', 'смена направления дискурса', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7a5b2eca-38f4-5014-b4e3-7716eb6a614a', 'en', 'pragmatic meaning', 'прагматическое значение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9973ba2a-fc11-5cd4-bb29-d0aca2c1c874', 'en', 'hedging device', 'средство смягчения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1b154371-6beb-5609-9b7b-7ec1fdd41365', 'en', 'speaker alignment', 'согласованность позиций говорящих', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d03cc77d-db27-58cd-be77-d55c67db9124', 'en', 'prosodic cue', 'просодический сигнал', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ade4402f-9fb6-5d5a-8b94-e28e01e0d090', 'en', 'implied criticism', 'скрытая критика', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('646ca49a-c11a-5785-825c-a960c1c9b475', 'en', 'plausible distractor', 'правдоподобный отвлекающий вариант', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c95ecbb8-cb4c-5040-aa82-a30ca8145b8a', 'en', 'discourse shift', 'смена направления дискурса', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ec28c05-ce09-56a5-a31b-f51d08b8ea4c', id, 'f7ff4153-ee89-543e-9584-cf860bda40c2', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'pragmatic meaning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ec28c05-ce09-56a5-a31b-f51d08b8ea4c', id, 'f7ff4153-ee89-543e-9584-cf860bda40c2', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'hedging device' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ec28c05-ce09-56a5-a31b-f51d08b8ea4c', id, 'f7ff4153-ee89-543e-9584-cf860bda40c2', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'speaker alignment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ec28c05-ce09-56a5-a31b-f51d08b8ea4c', id, 'f7ff4153-ee89-543e-9584-cf860bda40c2', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'prosodic cue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ec28c05-ce09-56a5-a31b-f51d08b8ea4c', id, 'f7ff4153-ee89-543e-9584-cf860bda40c2', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'implied criticism' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ec28c05-ce09-56a5-a31b-f51d08b8ea4c', id, 'f7ff4153-ee89-543e-9584-cf860bda40c2', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'plausible distractor' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ec28c05-ce09-56a5-a31b-f51d08b8ea4c', id, 'f7ff4153-ee89-543e-9584-cf860bda40c2', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'discourse shift' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ec28c05-ce09-56a5-a31b-f51d08b8ea4c', id, '05ba08ca-7904-5815-a715-8da86487f168', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'pragmatic meaning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ec28c05-ce09-56a5-a31b-f51d08b8ea4c', id, '05ba08ca-7904-5815-a715-8da86487f168', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'hedging device' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ec28c05-ce09-56a5-a31b-f51d08b8ea4c', id, '05ba08ca-7904-5815-a715-8da86487f168', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'speaker alignment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ec28c05-ce09-56a5-a31b-f51d08b8ea4c', id, '05ba08ca-7904-5815-a715-8da86487f168', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'prosodic cue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ec28c05-ce09-56a5-a31b-f51d08b8ea4c', id, '05ba08ca-7904-5815-a715-8da86487f168', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'implied criticism' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ec28c05-ce09-56a5-a31b-f51d08b8ea4c', id, '05ba08ca-7904-5815-a715-8da86487f168', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'plausible distractor' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ec28c05-ce09-56a5-a31b-f51d08b8ea4c', id, '05ba08ca-7904-5815-a715-8da86487f168', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'discourse shift' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ec28c05-ce09-56a5-a31b-f51d08b8ea4c', id, '38d482e0-b57c-5a80-8f30-ac451230263c', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'pragmatic meaning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ec28c05-ce09-56a5-a31b-f51d08b8ea4c', id, '38d482e0-b57c-5a80-8f30-ac451230263c', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'hedging device' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ec28c05-ce09-56a5-a31b-f51d08b8ea4c', id, '38d482e0-b57c-5a80-8f30-ac451230263c', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'speaker alignment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ec28c05-ce09-56a5-a31b-f51d08b8ea4c', id, '38d482e0-b57c-5a80-8f30-ac451230263c', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'prosodic cue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ec28c05-ce09-56a5-a31b-f51d08b8ea4c', id, '38d482e0-b57c-5a80-8f30-ac451230263c', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'implied criticism' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ec28c05-ce09-56a5-a31b-f51d08b8ea4c', id, '38d482e0-b57c-5a80-8f30-ac451230263c', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'plausible distractor' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ec28c05-ce09-56a5-a31b-f51d08b8ea4c', id, '38d482e0-b57c-5a80-8f30-ac451230263c', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'discourse shift' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
