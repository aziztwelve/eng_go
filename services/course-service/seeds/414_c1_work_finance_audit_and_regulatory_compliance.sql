-- Track: C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('c4737b90-04e3-5fc0-85ee-334e160f4bc4', 'C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE', 'Финансы, аудит и соблюдение требований', 'Развивайте продвинутую профессиональную коммуникацию уровня C1 по теме «Финансы, аудит и соблюдение требований» в реалистичных ситуациях, требующих точности, ответственности и междисциплинарного взаимодействия.', '{"en":"Finance, Audit and Regulatory Compliance","ru":"Финансы, аудит и соблюдение требований"}'::jsonb, '{"en":"Develop advanced C1 professional communication for finance, audit and regulatory compliance through realistic situations requiring precision, accountability, and interdisciplinary coordination.","ru":"Развивайте продвинутую профессиональную коммуникацию уровня C1 по теме «Финансы, аудит и соблюдение требований» в реалистичных ситуациях, требующих точности, ответственности и междисциплинарного взаимодействия."}'::jsonb, 'en', 'C1', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('d5d74914-d8ac-56e0-83b6-da309e93eef5', NULL, 'Специализированный контекст', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Interpreting Financial Controls","ru":"Специализированный контекст"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c1f49aee-aab2-5aa6-8ed0-8a73d8572831', 'd5d74914-d8ac-56e0-83b6-da309e93eef5', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L1_D01","left":"internal control","right":"внутренний контроль"},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L1_D02","left":"material misstatement","right":"существенное искажение"},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L1_D03","left":"audit trail","right":"аудиторский след"},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L1_D04","left":"segregation of duties","right":"разделение обязанностей"},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L1_D05","left":"regulatory exposure","right":"регуляторный риск"},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L1_D06","left":"control deficiency","right":"недостаток контроля"},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L1_D07","left":"qualified opinion","right":"модифицированное аудиторское мнение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e293233-c3af-5235-acb0-b3bf8d639a36', 'd5d74914-d8ac-56e0-83b6-da309e93eef5', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L1_D08","is_correct":true,"text":"An internal control is effective only if its operation can be demonstrated through a complete and reliable audit trail."},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L1_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L1_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('262600fc-596c-522a-b09c-a2d56639e75a', 'd5d74914-d8ac-56e0-83b6-da309e93eef5', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"An internal control is effective only if its operation can be demonstrated through a complete and reliable audit trail.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Внутренний контроль эффективен лишь тогда, когда его выполнение подтверждается полным и надёжным аудиторским следом.","target_language":"en","word_bank":["An","internal","control","is","effective","only","if","its","operation","can","be","demonstrated","through","a","complete","and","reliable","audit","trail","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9473103d-2244-513c-ba47-5fa26ea98d59', 'd5d74914-d8ac-56e0-83b6-da309e93eef5', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"internal control","instruction":"Выберите подходящее слово.","options":["internal control","segregation of duties","control deficiency"],"sentence_template":"An ___ is effective only if its operation can be demonstrated through a complete and reliable audit trail."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a0af9ed-6900-5b08-9f1d-50f491e2f439', 'd5d74914-d8ac-56e0-83b6-da309e93eef5', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["An","internal","control","is","effective","only","if","its","operation","can","be","demonstrated","through","a","complete","and","reliable","audit","trail","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","trail","audit","reliable","and","complete","a","through","demonstrated","be","can","operation","its","if","only","effective","is","control","internal","An"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f88d4c87-674c-5c58-88bd-61d749b4ab95', 'd5d74914-d8ac-56e0-83b6-da309e93eef5', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"An internal control is effective only if its operation can be demonstrated through a complete and reliable audit trail. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b7773128-8bc9-5d87-b9dc-61f3604d72f8', 'd5d74914-d8ac-56e0-83b6-da309e93eef5', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"An internal control is effective only if its operation can be demonstrated through a complete and reliable audit trail. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Внутренний контроль эффективен лишь тогда, когда его выполнение подтверждается полным и надёжным аудиторским следом. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cbce42d2-7d10-5459-b32c-7750f7618176', 'd5d74914-d8ac-56e0-83b6-da309e93eef5', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"An internal control is effective only if its operation can be demonstrated through a complete and reliable audit trail.","translation":"Внутренний контроль эффективен лишь тогда, когда его выполнение подтверждается полным и надёжным аудиторским следом.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Interpreting Financial Controls"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fa69a284-7328-5810-aadb-395aebe1dea1', 'd5d74914-d8ac-56e0-83b6-da309e93eef5', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“internal control” means a process designed to manage financial and operational risk.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L1_D11","is_correct":true,"text":"a process designed to manage financial and operational risk"},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L1_D12","is_correct":false,"text":"an error capable of influencing financial decisions"},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L1_D13","is_correct":false,"text":"records allowing a transaction to be traced"}],"word":"internal control"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6447adc9-f2e1-51b9-b1cb-a68b159da599', 'd5d74914-d8ac-56e0-83b6-da309e93eef5', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"An internal control is effective only if its operation can be demonstrated through a complete and reliable audit trail.","explanation":"The missing professional term is “internal control”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"internal control","id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L1_D14","is_correct":true},{"audio_text":"audit trail","id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L1_D15","is_correct":false},{"audio_text":"regulatory exposure","id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L1_D16","is_correct":false}],"sentence_template":"An ___ is effective only if its operation can be demonstrated through a complete and reliable audit trail."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8047daf1-ccb3-51d1-be55-01e004b00d73', 'd5d74914-d8ac-56e0-83b6-da309e93eef5', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"internal control","explanation":"The complete professional statement uses “internal control” precisely.","hint_prefix":"inte","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"An ___ is effective only if its operation can be demonstrated through a complete and reliable audit trail."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('13135fe4-80a8-5c7c-af9b-e41721b77a9b', 'd5d74914-d8ac-56e0-83b6-da309e93eef5', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"internal control","id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L1_D17","text":"internal control"},{"audio_text":"material misstatement","id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L1_D18","text":"material misstatement"},{"audio_text":"audit trail","id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L1_D19","text":"audit trail"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('85608923-6f6f-5c43-b2c6-92986ef7059e', 'd5d74914-d8ac-56e0-83b6-da309e93eef5', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Interpreting Financial Controls”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L1_D20","is_correct":true,"text":"An internal control is effective only if its operation can be demonstrated through a complete and reliable audit trail."},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L1_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L1_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c4737b90-04e3-5fc0-85ee-334e160f4bc4', 'd5d74914-d8ac-56e0-83b6-da309e93eef5', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a6e3d9a5-60ce-5543-8f27-8c7a9e42d6ef', NULL, 'Профессиональное решение и взаимодействие', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Investigating an Audit Exception","ru":"Профессиональное решение и взаимодействие"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a8cac42-2358-55f8-a68e-13120338ace1', 'a6e3d9a5-60ce-5543-8f27-8c7a9e42d6ef', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L2_D01","left":"internal control","right":"внутренний контроль"},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L2_D02","left":"material misstatement","right":"существенное искажение"},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L2_D03","left":"audit trail","right":"аудиторский след"},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L2_D04","left":"segregation of duties","right":"разделение обязанностей"},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L2_D05","left":"regulatory exposure","right":"регуляторный риск"},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L2_D06","left":"control deficiency","right":"недостаток контроля"},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L2_D07","left":"qualified opinion","right":"модифицированное аудиторское мнение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('720b3454-951e-5722-88fa-6856b226bea4', 'a6e3d9a5-60ce-5543-8f27-8c7a9e42d6ef', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L2_D08","is_correct":true,"text":"The exception indicates a control deficiency in segregation of duties, although it has not yet resulted in a material misstatement."},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L2_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L2_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('052ca0b4-4ce7-5429-8726-29c126078a74', 'a6e3d9a5-60ce-5543-8f27-8c7a9e42d6ef', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The exception indicates a control deficiency in segregation of duties, although it has not yet resulted in a material misstatement.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Исключение указывает на недостаток контроля в разделении обязанностей, хотя пока не привело к существенному искажению.","target_language":"en","word_bank":["The","exception","indicates","a","control","deficiency","in","segregation","of","duties",",","although","it","has","not","yet","resulted","in","a","material","misstatement","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bbb7f504-2480-5e09-a43b-d78ef697bf77', 'a6e3d9a5-60ce-5543-8f27-8c7a9e42d6ef', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"material misstatement","instruction":"Выберите подходящее слово.","options":["material misstatement","regulatory exposure","qualified opinion"],"sentence_template":"The exception indicates a control deficiency in segregation of duties, although it has not yet resulted in a ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1ad66e84-bedb-59d5-b370-447e46d96656', 'a6e3d9a5-60ce-5543-8f27-8c7a9e42d6ef', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","exception","indicates","a","control","deficiency","in","segregation","of","duties",",","although","it","has","not","yet","resulted","in","a","material","misstatement","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","misstatement","material","a","in","resulted","yet","not","has","it","although",",","duties","of","segregation","in","deficiency","control","a","indicates","exception","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7ee1ff9-4536-518c-85e9-bafd3ac3c594', 'a6e3d9a5-60ce-5543-8f27-8c7a9e42d6ef', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The exception indicates a control deficiency in segregation of duties, although it has not yet resulted in a material misstatement. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1bd32718-a867-54b5-a6b3-a5a31786c440', 'a6e3d9a5-60ce-5543-8f27-8c7a9e42d6ef', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The exception indicates a control deficiency in segregation of duties, although it has not yet resulted in a material misstatement. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Исключение указывает на недостаток контроля в разделении обязанностей, хотя пока не привело к существенному искажению. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('accbd0b6-9755-59f7-93eb-b4c5fddd73b8', 'a6e3d9a5-60ce-5543-8f27-8c7a9e42d6ef', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"The exception indicates a control deficiency in segregation of duties, although it has not yet resulted in a material misstatement.","translation":"Исключение указывает на недостаток контроля в разделении обязанностей, хотя пока не привело к существенному искажению.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Investigating an Audit Exception"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4e8c4deb-f849-5838-9b2f-1173987fc704', 'a6e3d9a5-60ce-5543-8f27-8c7a9e42d6ef', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“material misstatement” means an error capable of influencing financial decisions.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L2_D11","is_correct":true,"text":"an error capable of influencing financial decisions"},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L2_D12","is_correct":false,"text":"records allowing a transaction to be traced"},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L2_D13","is_correct":false,"text":"splitting responsibilities to reduce fraud or error"}],"word":"material misstatement"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d1988cd1-1ef5-5e8b-8a4f-ea3e44840c43', 'a6e3d9a5-60ce-5543-8f27-8c7a9e42d6ef', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The exception indicates a control deficiency in segregation of duties, although it has not yet resulted in a material misstatement.","explanation":"The missing professional term is “material misstatement”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"material misstatement","id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L2_D14","is_correct":true},{"audio_text":"segregation of duties","id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L2_D15","is_correct":false},{"audio_text":"control deficiency","id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L2_D16","is_correct":false}],"sentence_template":"The exception indicates a control deficiency in segregation of duties, although it has not yet resulted in a ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('021b8fc8-00bb-52a2-82c2-189ab382131e', 'a6e3d9a5-60ce-5543-8f27-8c7a9e42d6ef', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"material misstatement","explanation":"The complete professional statement uses “material misstatement” precisely.","hint_prefix":"mate","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The exception indicates a control deficiency in segregation of duties, although it has not yet resulted in a ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('330a6ebd-d4ab-565d-9ae9-e4c74e220872', 'a6e3d9a5-60ce-5543-8f27-8c7a9e42d6ef', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"internal control","id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L2_D17","text":"internal control"},{"audio_text":"material misstatement","id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L2_D18","text":"material misstatement"},{"audio_text":"audit trail","id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L2_D19","text":"audit trail"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('83e315af-97e1-5312-ad55-9bb1c80cc631', 'a6e3d9a5-60ce-5543-8f27-8c7a9e42d6ef', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Investigating an Audit Exception”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L2_D20","is_correct":true,"text":"The exception indicates a control deficiency in segregation of duties, although it has not yet resulted in a material misstatement."},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L2_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L2_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c4737b90-04e3-5fc0-85ee-334e160f4bc4', 'a6e3d9a5-60ce-5543-8f27-8c7a9e42d6ef', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c89dec5c-0143-5d19-98a3-a77193fd7522', NULL, 'Ответственность и последующие действия', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Reporting Regulatory Exposure","ru":"Ответственность и последующие действия"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2754ecbc-9801-5d2f-bf62-eb56e30ec6f2', 'c89dec5c-0143-5d19-98a3-a77193fd7522', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L3_D01","left":"internal control","right":"внутренний контроль"},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L3_D02","left":"material misstatement","right":"существенное искажение"},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L3_D03","left":"audit trail","right":"аудиторский след"},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L3_D04","left":"segregation of duties","right":"разделение обязанностей"},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L3_D05","left":"regulatory exposure","right":"регуляторный риск"},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L3_D06","left":"control deficiency","right":"недостаток контроля"},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L3_D07","left":"qualified opinion","right":"модифицированное аудиторское мнение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7d05f3d-8bd9-5822-9cba-9b51eeda1ef2', 'c89dec5c-0143-5d19-98a3-a77193fd7522', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L3_D08","is_correct":true,"text":"Regulatory exposure should be reported promptly, with a clear distinction between confirmed non-compliance, estimated impact, and unresolved uncertainty."},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L3_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L3_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8c88220-6ce7-5497-a725-62141a0d4fde', 'c89dec5c-0143-5d19-98a3-a77193fd7522', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Regulatory exposure should be reported promptly, with a clear distinction between confirmed non-compliance, estimated impact, and unresolved uncertainty.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Регуляторный риск следует сообщать своевременно, чётко различая подтверждённое несоблюдение, предполагаемое воздействие и нерешённую неопределённость.","target_language":"en","word_bank":["Regulatory","exposure","should","be","reported","promptly",",","with","a","clear","distinction","between","confirmed","non-compliance",",","estimated","impact",",","and","unresolved","uncertainty","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('86ac472f-551e-54d0-a758-1707caa96f1e', 'c89dec5c-0143-5d19-98a3-a77193fd7522', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"audit trail","instruction":"Выберите подходящее слово.","options":["audit trail","control deficiency","internal control"],"sentence_template":"Regulatory exposure should be reported promptly, with a clear distinction between confirmed non-compliance, estimated impact, and unresolved uncertainty."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a37dad2f-300c-53b0-b60c-1b2393335a4e', 'c89dec5c-0143-5d19-98a3-a77193fd7522', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Regulatory","exposure","should","be","reported","promptly",",","with","a","clear","distinction","between","confirmed","non-compliance",",","estimated","impact",",","and","unresolved","uncertainty","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","uncertainty","unresolved","and",",","impact","estimated",",","non-compliance","confirmed","between","distinction","clear","a","with",",","promptly","reported","be","should","exposure","Regulatory"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('479c77b0-b1de-5448-abfb-355326abe2cd', 'c89dec5c-0143-5d19-98a3-a77193fd7522', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Regulatory exposure should be reported promptly, with a clear distinction between confirmed non-compliance, estimated impact, and unresolved uncertainty. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d027fcd1-9832-5905-9954-f604a57d0b63', 'c89dec5c-0143-5d19-98a3-a77193fd7522', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Regulatory exposure should be reported promptly, with a clear distinction between confirmed non-compliance, estimated impact, and unresolved uncertainty. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Регуляторный риск следует сообщать своевременно, чётко различая подтверждённое несоблюдение, предполагаемое воздействие и нерешённую неопределённость. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d84514e-84a6-5277-9090-a79c15026848', 'c89dec5c-0143-5d19-98a3-a77193fd7522', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"Regulatory exposure should be reported promptly, with a clear distinction between confirmed non-compliance, estimated impact, and unresolved uncertainty.","translation":"Регуляторный риск следует сообщать своевременно, чётко различая подтверждённое несоблюдение, предполагаемое воздействие и нерешённую неопределённость.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Reporting Regulatory Exposure"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('699c596d-001f-5eb3-b95e-06d71d1d8a70', 'c89dec5c-0143-5d19-98a3-a77193fd7522', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“audit trail” means records allowing a transaction to be traced.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L3_D11","is_correct":true,"text":"records allowing a transaction to be traced"},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L3_D12","is_correct":false,"text":"splitting responsibilities to reduce fraud or error"},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L3_D13","is_correct":false,"text":"potential loss arising from non-compliance"}],"word":"audit trail"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('79c56e59-3b71-5f45-a73f-68b683b3a3c5', 'c89dec5c-0143-5d19-98a3-a77193fd7522', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Regulatory exposure should be reported promptly, with a clear distinction between confirmed non-compliance, estimated impact, and unresolved uncertainty.","explanation":"The missing professional term is “audit trail”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"audit trail","id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L3_D14","is_correct":true},{"audio_text":"regulatory exposure","id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L3_D15","is_correct":false},{"audio_text":"qualified opinion","id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L3_D16","is_correct":false}],"sentence_template":"Regulatory exposure should be reported promptly, with a clear distinction between confirmed non-compliance, estimated impact, and unresolved uncertainty."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('69922632-c4c4-5081-aa96-4f6f22867ab4', 'c89dec5c-0143-5d19-98a3-a77193fd7522', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"audit trail","explanation":"The complete professional statement uses “audit trail” precisely.","hint_prefix":"audi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Regulatory exposure should be reported promptly, with a clear distinction between confirmed non-compliance, estimated impact, and unresolved uncertainty."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ad761584-0365-5564-8fa6-120f02cf21a6', 'c89dec5c-0143-5d19-98a3-a77193fd7522', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"internal control","id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L3_D17","text":"internal control"},{"audio_text":"material misstatement","id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L3_D18","text":"material misstatement"},{"audio_text":"audit trail","id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L3_D19","text":"audit trail"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('471ec853-c061-5175-93f8-a2ad583d0c32', 'c89dec5c-0143-5d19-98a3-a77193fd7522', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Reporting Regulatory Exposure”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L3_D20","is_correct":true,"text":"Regulatory exposure should be reported promptly, with a clear distinction between confirmed non-compliance, estimated impact, and unresolved uncertainty."},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L3_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_FINANCE_AUDIT_AND_REGULATORY_COMPLIANCE_L3_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c4737b90-04e3-5fc0-85ee-334e160f4bc4', 'c89dec5c-0143-5d19-98a3-a77193fd7522', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b31aa37f-1ac8-59e9-83c8-3f593429245f', 'en', 'internal control', 'внутренний контроль', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ea2aa405-be39-5f1f-b7e4-38b105e54bcc', 'en', 'material misstatement', 'существенное искажение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ffec6d19-70cf-592b-a37d-4f99461dc389', 'en', 'audit trail', 'аудиторский след', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e4c02ce8-91c7-5e7a-be47-6de8eb1e3186', 'en', 'segregation of duties', 'разделение обязанностей', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('87bb2ec2-3d73-53a9-9bdb-84df0e152f20', 'en', 'regulatory exposure', 'регуляторный риск', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4917204d-6273-5ec0-9a5f-6f1d848e64ac', 'en', 'control deficiency', 'недостаток контроля', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67c19cf7-cfe8-5ad2-b938-c272884911f4', 'en', 'qualified opinion', 'модифицированное аудиторское мнение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b31aa37f-1ac8-59e9-83c8-3f593429245f', 'en', 'internal control', 'внутренний контроль', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ea2aa405-be39-5f1f-b7e4-38b105e54bcc', 'en', 'material misstatement', 'существенное искажение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ffec6d19-70cf-592b-a37d-4f99461dc389', 'en', 'audit trail', 'аудиторский след', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e4c02ce8-91c7-5e7a-be47-6de8eb1e3186', 'en', 'segregation of duties', 'разделение обязанностей', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('87bb2ec2-3d73-53a9-9bdb-84df0e152f20', 'en', 'regulatory exposure', 'регуляторный риск', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4917204d-6273-5ec0-9a5f-6f1d848e64ac', 'en', 'control deficiency', 'недостаток контроля', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67c19cf7-cfe8-5ad2-b938-c272884911f4', 'en', 'qualified opinion', 'модифицированное аудиторское мнение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b31aa37f-1ac8-59e9-83c8-3f593429245f', 'en', 'internal control', 'внутренний контроль', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ea2aa405-be39-5f1f-b7e4-38b105e54bcc', 'en', 'material misstatement', 'существенное искажение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ffec6d19-70cf-592b-a37d-4f99461dc389', 'en', 'audit trail', 'аудиторский след', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e4c02ce8-91c7-5e7a-be47-6de8eb1e3186', 'en', 'segregation of duties', 'разделение обязанностей', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('87bb2ec2-3d73-53a9-9bdb-84df0e152f20', 'en', 'regulatory exposure', 'регуляторный риск', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4917204d-6273-5ec0-9a5f-6f1d848e64ac', 'en', 'control deficiency', 'недостаток контроля', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67c19cf7-cfe8-5ad2-b938-c272884911f4', 'en', 'qualified opinion', 'модифицированное аудиторское мнение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c4737b90-04e3-5fc0-85ee-334e160f4bc4', id, 'd5d74914-d8ac-56e0-83b6-da309e93eef5', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'internal control' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c4737b90-04e3-5fc0-85ee-334e160f4bc4', id, 'd5d74914-d8ac-56e0-83b6-da309e93eef5', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'material misstatement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c4737b90-04e3-5fc0-85ee-334e160f4bc4', id, 'd5d74914-d8ac-56e0-83b6-da309e93eef5', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'audit trail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c4737b90-04e3-5fc0-85ee-334e160f4bc4', id, 'd5d74914-d8ac-56e0-83b6-da309e93eef5', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'segregation of duties' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c4737b90-04e3-5fc0-85ee-334e160f4bc4', id, 'd5d74914-d8ac-56e0-83b6-da309e93eef5', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'regulatory exposure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c4737b90-04e3-5fc0-85ee-334e160f4bc4', id, 'd5d74914-d8ac-56e0-83b6-da309e93eef5', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'control deficiency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c4737b90-04e3-5fc0-85ee-334e160f4bc4', id, 'd5d74914-d8ac-56e0-83b6-da309e93eef5', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualified opinion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c4737b90-04e3-5fc0-85ee-334e160f4bc4', id, 'a6e3d9a5-60ce-5543-8f27-8c7a9e42d6ef', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'internal control' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c4737b90-04e3-5fc0-85ee-334e160f4bc4', id, 'a6e3d9a5-60ce-5543-8f27-8c7a9e42d6ef', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'material misstatement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c4737b90-04e3-5fc0-85ee-334e160f4bc4', id, 'a6e3d9a5-60ce-5543-8f27-8c7a9e42d6ef', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'audit trail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c4737b90-04e3-5fc0-85ee-334e160f4bc4', id, 'a6e3d9a5-60ce-5543-8f27-8c7a9e42d6ef', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'segregation of duties' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c4737b90-04e3-5fc0-85ee-334e160f4bc4', id, 'a6e3d9a5-60ce-5543-8f27-8c7a9e42d6ef', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'regulatory exposure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c4737b90-04e3-5fc0-85ee-334e160f4bc4', id, 'a6e3d9a5-60ce-5543-8f27-8c7a9e42d6ef', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'control deficiency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c4737b90-04e3-5fc0-85ee-334e160f4bc4', id, 'a6e3d9a5-60ce-5543-8f27-8c7a9e42d6ef', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualified opinion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c4737b90-04e3-5fc0-85ee-334e160f4bc4', id, 'c89dec5c-0143-5d19-98a3-a77193fd7522', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'internal control' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c4737b90-04e3-5fc0-85ee-334e160f4bc4', id, 'c89dec5c-0143-5d19-98a3-a77193fd7522', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'material misstatement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c4737b90-04e3-5fc0-85ee-334e160f4bc4', id, 'c89dec5c-0143-5d19-98a3-a77193fd7522', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'audit trail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c4737b90-04e3-5fc0-85ee-334e160f4bc4', id, 'c89dec5c-0143-5d19-98a3-a77193fd7522', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'segregation of duties' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c4737b90-04e3-5fc0-85ee-334e160f4bc4', id, 'c89dec5c-0143-5d19-98a3-a77193fd7522', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'regulatory exposure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c4737b90-04e3-5fc0-85ee-334e160f4bc4', id, 'c89dec5c-0143-5d19-98a3-a77193fd7522', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'control deficiency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c4737b90-04e3-5fc0-85ee-334e160f4bc4', id, 'c89dec5c-0143-5d19-98a3-a77193fd7522', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualified opinion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
