-- Track: C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('344bfccc-f2b5-586b-9fce-7f71a3f6a7a7', 'C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE', 'Юридический анализ и консультирование клиента', 'Развивайте продвинутую профессиональную коммуникацию уровня C1 по теме «Юридический анализ и консультирование клиента» в реалистичных ситуациях, требующих точности, ответственности и междисциплинарного взаимодействия.', '{"en":"Law, Case Analysis and Client Advice","ru":"Юридический анализ и консультирование клиента"}'::jsonb, '{"en":"Develop advanced C1 professional communication for law, case analysis and client advice through realistic situations requiring precision, accountability, and interdisciplinary coordination.","ru":"Развивайте продвинутую профессиональную коммуникацию уровня C1 по теме «Юридический анализ и консультирование клиента» в реалистичных ситуациях, требующих точности, ответственности и междисциплинарного взаимодействия."}'::jsonb, 'en', 'C1', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('81fb9223-7baf-50bd-9750-ae7343b9927a', NULL, 'Специализированный контекст', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Clarifying the Client’s Position","ru":"Специализированный контекст"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5d01dcfc-c0a5-522d-8577-042134d2e081', '81fb9223-7baf-50bd-9750-ae7343b9927a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L1_D01","left":"legal exposure","right":"правовой риск"},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L1_D02","left":"burden of proof","right":"бремя доказывания"},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L1_D03","left":"material evidence","right":"существенное доказательство"},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L1_D04","left":"without prejudice","right":"без ущерба для позиции"},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L1_D05","left":"binding obligation","right":"обязательное юридическое условие"},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L1_D06","left":"litigation risk","right":"риск судебного разбирательства"},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L1_D07","left":"informed instruction","right":"осознанное поручение клиента"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('236ea694-da34-58c3-8ff6-62fe3a809f3e', '81fb9223-7baf-50bd-9750-ae7343b9927a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L1_D08","is_correct":true,"text":"The client’s legal exposure depends on whether the disputed statement created a binding obligation or merely expressed an intention."},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L1_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L1_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5cf81f8e-7ccb-5c37-a02e-d790b2b1c119', '81fb9223-7baf-50bd-9750-ae7343b9927a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The client’s legal exposure depends on whether the disputed statement created a binding obligation or merely expressed an intention.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Правовой риск клиента зависит от того, создало ли спорное заявление обязательное условие или лишь выразило намерение.","target_language":"en","word_bank":["The","client’s","legal","exposure","depends","on","whether","the","disputed","statement","created","a","binding","obligation","or","merely","expressed","an","intention","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3976148-7c9d-5b92-9938-ee3039e70e30', '81fb9223-7baf-50bd-9750-ae7343b9927a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"legal exposure","instruction":"Выберите подходящее слово.","options":["legal exposure","without prejudice","litigation risk"],"sentence_template":"The client’s ___ depends on whether the disputed statement created a binding obligation or merely expressed an intention."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('515e11d5-1f54-5950-a5c9-fc72e87e1c7a', '81fb9223-7baf-50bd-9750-ae7343b9927a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","client’s","legal","exposure","depends","on","whether","the","disputed","statement","created","a","binding","obligation","or","merely","expressed","an","intention","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","intention","an","expressed","merely","or","obligation","binding","a","created","statement","disputed","the","whether","on","depends","exposure","legal","client’s","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('69737292-d143-5ad0-a452-903bc75be87e', '81fb9223-7baf-50bd-9750-ae7343b9927a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The client’s legal exposure depends on whether the disputed statement created a binding obligation or merely expressed an intention. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c0e45114-23d9-5d78-b157-36a49e954506', '81fb9223-7baf-50bd-9750-ae7343b9927a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The client’s legal exposure depends on whether the disputed statement created a binding obligation or merely expressed an intention. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Правовой риск клиента зависит от того, создало ли спорное заявление обязательное условие или лишь выразило намерение. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eacec779-0012-5460-886a-e23565a06d81', '81fb9223-7baf-50bd-9750-ae7343b9927a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"The client’s legal exposure depends on whether the disputed statement created a binding obligation or merely expressed an intention.","translation":"Правовой риск клиента зависит от того, создало ли спорное заявление обязательное условие или лишь выразило намерение.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Clarifying the Client’s Position"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('683417f5-9e19-5ff4-9bf4-ba120bad1ec8', '81fb9223-7baf-50bd-9750-ae7343b9927a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“legal exposure” means the potential for legal liability or loss.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L1_D11","is_correct":true,"text":"the potential for legal liability or loss"},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L1_D12","is_correct":false,"text":"the obligation to establish a disputed claim"},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L1_D13","is_correct":false,"text":"information capable of affecting the case outcome"}],"word":"legal exposure"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2ca772f-a144-539e-bc28-5f490695e62e', '81fb9223-7baf-50bd-9750-ae7343b9927a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The client’s legal exposure depends on whether the disputed statement created a binding obligation or merely expressed an intention.","explanation":"The missing professional term is “legal exposure”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"legal exposure","id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L1_D14","is_correct":true},{"audio_text":"material evidence","id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L1_D15","is_correct":false},{"audio_text":"binding obligation","id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L1_D16","is_correct":false}],"sentence_template":"The client’s ___ depends on whether the disputed statement created a binding obligation or merely expressed an intention."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3c8c030f-7fff-5765-9847-32f68fb2bbb9', '81fb9223-7baf-50bd-9750-ae7343b9927a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"legal exposure","explanation":"The complete professional statement uses “legal exposure” precisely.","hint_prefix":"lega","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The client’s ___ depends on whether the disputed statement created a binding obligation or merely expressed an intention."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7bf3828f-dd09-5650-b726-d41588c48763', '81fb9223-7baf-50bd-9750-ae7343b9927a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"legal exposure","id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L1_D17","text":"legal exposure"},{"audio_text":"burden of proof","id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L1_D18","text":"burden of proof"},{"audio_text":"material evidence","id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L1_D19","text":"material evidence"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e19f405e-87e7-5e05-ad4a-f9ba98cb26b3', '81fb9223-7baf-50bd-9750-ae7343b9927a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Clarifying the Client’s Position”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L1_D20","is_correct":true,"text":"The client’s legal exposure depends on whether the disputed statement created a binding obligation or merely expressed an intention."},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L1_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L1_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('344bfccc-f2b5-586b-9fce-7f71a3f6a7a7', '81fb9223-7baf-50bd-9750-ae7343b9927a', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('03e743c1-ec9e-5c3e-9a59-ee58b4f78e60', NULL, 'Профессиональное решение и взаимодействие', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Assessing Evidence and Exposure","ru":"Профессиональное решение и взаимодействие"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65b0401e-0637-5243-b4e2-507f43d4a3a8', '03e743c1-ec9e-5c3e-9a59-ee58b4f78e60', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L2_D01","left":"legal exposure","right":"правовой риск"},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L2_D02","left":"burden of proof","right":"бремя доказывания"},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L2_D03","left":"material evidence","right":"существенное доказательство"},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L2_D04","left":"without prejudice","right":"без ущерба для позиции"},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L2_D05","left":"binding obligation","right":"обязательное юридическое условие"},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L2_D06","left":"litigation risk","right":"риск судебного разбирательства"},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L2_D07","left":"informed instruction","right":"осознанное поручение клиента"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf1273a6-e9a2-5402-be91-c048521fbe3f', '03e743c1-ec9e-5c3e-9a59-ee58b4f78e60', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L2_D08","is_correct":true,"text":"The burden of proof remains uncertain because the available correspondence is relevant but may not constitute material evidence of consent."},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L2_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L2_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2e0a8235-8dc8-570a-82fc-c1bc4a4fc32e', '03e743c1-ec9e-5c3e-9a59-ee58b4f78e60', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The burden of proof remains uncertain because the available correspondence is relevant but may not constitute material evidence of consent.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Бремя доказывания остаётся неопределённым, поскольку имеющаяся переписка уместна, но может не представлять существенного доказательства согласия.","target_language":"en","word_bank":["The","burden","of","proof","remains","uncertain","because","the","available","correspondence","is","relevant","but","may","not","constitute","material","evidence","of","consent","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('58679d14-68d2-523f-8354-91e844dce918', '03e743c1-ec9e-5c3e-9a59-ee58b4f78e60', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"burden of proof","instruction":"Выберите подходящее слово.","options":["burden of proof","binding obligation","informed instruction"],"sentence_template":"The ___ remains uncertain because the available correspondence is relevant but may not constitute material evidence of consent."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eea1f671-b1c4-5808-ab20-6393e3178c09', '03e743c1-ec9e-5c3e-9a59-ee58b4f78e60', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","burden","of","proof","remains","uncertain","because","the","available","correspondence","is","relevant","but","may","not","constitute","material","evidence","of","consent","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","consent","of","evidence","material","constitute","not","may","but","relevant","is","correspondence","available","the","because","uncertain","remains","proof","of","burden","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a8be3a3-3182-5477-810a-3f88f8cbd415', '03e743c1-ec9e-5c3e-9a59-ee58b4f78e60', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The burden of proof remains uncertain because the available correspondence is relevant but may not constitute material evidence of consent. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('161fddc6-808a-50f7-aef9-e4e215f55795', '03e743c1-ec9e-5c3e-9a59-ee58b4f78e60', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The burden of proof remains uncertain because the available correspondence is relevant but may not constitute material evidence of consent. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Бремя доказывания остаётся неопределённым, поскольку имеющаяся переписка уместна, но может не представлять существенного доказательства согласия. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8a3b5e8f-95bc-57e6-8582-a849bd7e80e1', '03e743c1-ec9e-5c3e-9a59-ee58b4f78e60', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"The burden of proof remains uncertain because the available correspondence is relevant but may not constitute material evidence of consent.","translation":"Бремя доказывания остаётся неопределённым, поскольку имеющаяся переписка уместна, но может не представлять существенного доказательства согласия.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Assessing Evidence and Exposure"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('215ae647-90a2-50e2-b164-39ea7a3f3006', '03e743c1-ec9e-5c3e-9a59-ee58b4f78e60', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“burden of proof” means the obligation to establish a disputed claim.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L2_D11","is_correct":true,"text":"the obligation to establish a disputed claim"},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L2_D12","is_correct":false,"text":"information capable of affecting the case outcome"},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L2_D13","is_correct":false,"text":"communication protected during settlement discussion"}],"word":"burden of proof"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f7784fb0-b2d2-532f-9c35-7bb7f8e8d2df', '03e743c1-ec9e-5c3e-9a59-ee58b4f78e60', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The burden of proof remains uncertain because the available correspondence is relevant but may not constitute material evidence of consent.","explanation":"The missing professional term is “burden of proof”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"burden of proof","id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L2_D14","is_correct":true},{"audio_text":"without prejudice","id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L2_D15","is_correct":false},{"audio_text":"litigation risk","id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L2_D16","is_correct":false}],"sentence_template":"The ___ remains uncertain because the available correspondence is relevant but may not constitute material evidence of consent."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('60968b79-77ab-5a37-b70a-fc9eaca70507', '03e743c1-ec9e-5c3e-9a59-ee58b4f78e60', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"burden of proof","explanation":"The complete professional statement uses “burden of proof” precisely.","hint_prefix":"burd","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ remains uncertain because the available correspondence is relevant but may not constitute material evidence of consent."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dcc6bb6a-0413-585b-be34-7fe1cad1cda7', '03e743c1-ec9e-5c3e-9a59-ee58b4f78e60', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"legal exposure","id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L2_D17","text":"legal exposure"},{"audio_text":"burden of proof","id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L2_D18","text":"burden of proof"},{"audio_text":"material evidence","id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L2_D19","text":"material evidence"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b1d37074-bd86-58fa-8571-980c6e166677', '03e743c1-ec9e-5c3e-9a59-ee58b4f78e60', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Assessing Evidence and Exposure”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L2_D20","is_correct":true,"text":"The burden of proof remains uncertain because the available correspondence is relevant but may not constitute material evidence of consent."},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L2_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L2_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('344bfccc-f2b5-586b-9fce-7f71a3f6a7a7', '03e743c1-ec9e-5c3e-9a59-ee58b4f78e60', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('bfc42ee9-45a3-50d0-8406-ca25d7c1b3f6', NULL, 'Ответственность и последующие действия', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Explaining Strategic Options","ru":"Ответственность и последующие действия"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5883c613-787e-5979-9689-c840cdda103d', 'bfc42ee9-45a3-50d0-8406-ca25d7c1b3f6', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L3_D01","left":"legal exposure","right":"правовой риск"},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L3_D02","left":"burden of proof","right":"бремя доказывания"},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L3_D03","left":"material evidence","right":"существенное доказательство"},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L3_D04","left":"without prejudice","right":"без ущерба для позиции"},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L3_D05","left":"binding obligation","right":"обязательное юридическое условие"},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L3_D06","left":"litigation risk","right":"риск судебного разбирательства"},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L3_D07","left":"informed instruction","right":"осознанное поручение клиента"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1f02fcfc-0d9f-5435-a867-e43d3b404294', 'bfc42ee9-45a3-50d0-8406-ca25d7c1b3f6', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L3_D08","is_correct":true,"text":"Advice should compare settlement and litigation risk clearly enough for the client to provide informed instructions without guaranteeing an outcome."},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L3_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L3_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7c2ca196-7c5e-5d98-afe3-b54b2bb55c97', 'bfc42ee9-45a3-50d0-8406-ca25d7c1b3f6', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Advice should compare settlement and litigation risk clearly enough for the client to provide informed instructions without guaranteeing an outcome.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Консультация должна достаточно ясно сравнивать риски урегулирования и суда, чтобы клиент мог дать осознанное поручение без гарантии результата.","target_language":"en","word_bank":["Advice","should","compare","settlement","and","litigation","risk","clearly","enough","for","the","client","to","provide","informed","instructions","without","guaranteeing","an","outcome","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('791440de-1228-53d4-9ddd-7c0c31ebbf0b', 'bfc42ee9-45a3-50d0-8406-ca25d7c1b3f6', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"material evidence","instruction":"Выберите подходящее слово.","options":["material evidence","litigation risk","legal exposure"],"sentence_template":"Advice should compare settlement and litigation risk clearly enough for the client to provide informed instructions without guaranteeing an outcome."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3ebb3b23-c842-52ef-a8cf-53304cfee94a', 'bfc42ee9-45a3-50d0-8406-ca25d7c1b3f6', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Advice","should","compare","settlement","and","litigation","risk","clearly","enough","for","the","client","to","provide","informed","instructions","without","guaranteeing","an","outcome","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","outcome","an","guaranteeing","without","instructions","informed","provide","to","client","the","for","enough","clearly","risk","litigation","and","settlement","compare","should","Advice"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c1c3635-8304-5371-873f-111310b76376', 'bfc42ee9-45a3-50d0-8406-ca25d7c1b3f6', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Advice should compare settlement and litigation risk clearly enough for the client to provide informed instructions without guaranteeing an outcome. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4d859704-6bf0-5f34-b5fb-873d6f4141a5', 'bfc42ee9-45a3-50d0-8406-ca25d7c1b3f6', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Advice should compare settlement and litigation risk clearly enough for the client to provide informed instructions without guaranteeing an outcome. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Консультация должна достаточно ясно сравнивать риски урегулирования и суда, чтобы клиент мог дать осознанное поручение без гарантии результата. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ddf2f7cb-6755-5fc3-ba47-aa38a8dbe836', 'bfc42ee9-45a3-50d0-8406-ca25d7c1b3f6', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"Advice should compare settlement and litigation risk clearly enough for the client to provide informed instructions without guaranteeing an outcome.","translation":"Консультация должна достаточно ясно сравнивать риски урегулирования и суда, чтобы клиент мог дать осознанное поручение без гарантии результата.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Explaining Strategic Options"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b174c0d8-275e-518b-b699-d336720416ba', 'bfc42ee9-45a3-50d0-8406-ca25d7c1b3f6', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“material evidence” means information capable of affecting the case outcome.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L3_D11","is_correct":true,"text":"information capable of affecting the case outcome"},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L3_D12","is_correct":false,"text":"communication protected during settlement discussion"},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L3_D13","is_correct":false,"text":"a duty enforceable under law or contract"}],"word":"material evidence"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('91ed382d-e85b-57d8-bfb5-83a307f39a26', 'bfc42ee9-45a3-50d0-8406-ca25d7c1b3f6', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Advice should compare settlement and litigation risk clearly enough for the client to provide informed instructions without guaranteeing an outcome.","explanation":"The missing professional term is “material evidence”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"material evidence","id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L3_D14","is_correct":true},{"audio_text":"binding obligation","id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L3_D15","is_correct":false},{"audio_text":"informed instruction","id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L3_D16","is_correct":false}],"sentence_template":"Advice should compare settlement and litigation risk clearly enough for the client to provide informed instructions without guaranteeing an outcome."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5818a33-2cf3-5eda-81fd-36c5a0ee8745', 'bfc42ee9-45a3-50d0-8406-ca25d7c1b3f6', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"material evidence","explanation":"The complete professional statement uses “material evidence” precisely.","hint_prefix":"mate","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Advice should compare settlement and litigation risk clearly enough for the client to provide informed instructions without guaranteeing an outcome."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb887c58-c1e7-5e8f-8fea-3f8999a84625', 'bfc42ee9-45a3-50d0-8406-ca25d7c1b3f6', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"legal exposure","id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L3_D17","text":"legal exposure"},{"audio_text":"burden of proof","id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L3_D18","text":"burden of proof"},{"audio_text":"material evidence","id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L3_D19","text":"material evidence"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a33f998-061a-5a25-8163-17321a5efcd5', 'bfc42ee9-45a3-50d0-8406-ca25d7c1b3f6', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Explaining Strategic Options”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L3_D20","is_correct":true,"text":"Advice should compare settlement and litigation risk clearly enough for the client to provide informed instructions without guaranteeing an outcome."},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L3_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_LAW_CASE_ANALYSIS_AND_CLIENT_ADVICE_L3_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('344bfccc-f2b5-586b-9fce-7f71a3f6a7a7', 'bfc42ee9-45a3-50d0-8406-ca25d7c1b3f6', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48c6cae2-8708-5a45-8769-8187b1a28547', 'en', 'legal exposure', 'правовой риск', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7dbf9e6b-c609-5b60-b18e-71a9e303a12d', 'en', 'burden of proof', 'бремя доказывания', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d057c121-62f9-581d-a7ae-fb0f0616a666', 'en', 'material evidence', 'существенное доказательство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('61673394-f806-5dcc-85fd-738fbea25bfa', 'en', 'without prejudice', 'без ущерба для позиции', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4f506ba5-193e-56ea-b87f-1998562f984e', 'en', 'binding obligation', 'обязательное юридическое условие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3b094b4c-4d2c-5c20-8120-93a3e8421242', 'en', 'litigation risk', 'риск судебного разбирательства', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('04bee830-56a0-5d95-8801-47368e7e013d', 'en', 'informed instruction', 'осознанное поручение клиента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48c6cae2-8708-5a45-8769-8187b1a28547', 'en', 'legal exposure', 'правовой риск', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7dbf9e6b-c609-5b60-b18e-71a9e303a12d', 'en', 'burden of proof', 'бремя доказывания', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d057c121-62f9-581d-a7ae-fb0f0616a666', 'en', 'material evidence', 'существенное доказательство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('61673394-f806-5dcc-85fd-738fbea25bfa', 'en', 'without prejudice', 'без ущерба для позиции', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4f506ba5-193e-56ea-b87f-1998562f984e', 'en', 'binding obligation', 'обязательное юридическое условие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3b094b4c-4d2c-5c20-8120-93a3e8421242', 'en', 'litigation risk', 'риск судебного разбирательства', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('04bee830-56a0-5d95-8801-47368e7e013d', 'en', 'informed instruction', 'осознанное поручение клиента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48c6cae2-8708-5a45-8769-8187b1a28547', 'en', 'legal exposure', 'правовой риск', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7dbf9e6b-c609-5b60-b18e-71a9e303a12d', 'en', 'burden of proof', 'бремя доказывания', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d057c121-62f9-581d-a7ae-fb0f0616a666', 'en', 'material evidence', 'существенное доказательство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('61673394-f806-5dcc-85fd-738fbea25bfa', 'en', 'without prejudice', 'без ущерба для позиции', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4f506ba5-193e-56ea-b87f-1998562f984e', 'en', 'binding obligation', 'обязательное юридическое условие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3b094b4c-4d2c-5c20-8120-93a3e8421242', 'en', 'litigation risk', 'риск судебного разбирательства', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('04bee830-56a0-5d95-8801-47368e7e013d', 'en', 'informed instruction', 'осознанное поручение клиента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '344bfccc-f2b5-586b-9fce-7f71a3f6a7a7', id, '81fb9223-7baf-50bd-9750-ae7343b9927a', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'legal exposure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '344bfccc-f2b5-586b-9fce-7f71a3f6a7a7', id, '81fb9223-7baf-50bd-9750-ae7343b9927a', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'burden of proof' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '344bfccc-f2b5-586b-9fce-7f71a3f6a7a7', id, '81fb9223-7baf-50bd-9750-ae7343b9927a', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'material evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '344bfccc-f2b5-586b-9fce-7f71a3f6a7a7', id, '81fb9223-7baf-50bd-9750-ae7343b9927a', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'without prejudice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '344bfccc-f2b5-586b-9fce-7f71a3f6a7a7', id, '81fb9223-7baf-50bd-9750-ae7343b9927a', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'binding obligation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '344bfccc-f2b5-586b-9fce-7f71a3f6a7a7', id, '81fb9223-7baf-50bd-9750-ae7343b9927a', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'litigation risk' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '344bfccc-f2b5-586b-9fce-7f71a3f6a7a7', id, '81fb9223-7baf-50bd-9750-ae7343b9927a', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'informed instruction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '344bfccc-f2b5-586b-9fce-7f71a3f6a7a7', id, '03e743c1-ec9e-5c3e-9a59-ee58b4f78e60', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'legal exposure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '344bfccc-f2b5-586b-9fce-7f71a3f6a7a7', id, '03e743c1-ec9e-5c3e-9a59-ee58b4f78e60', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'burden of proof' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '344bfccc-f2b5-586b-9fce-7f71a3f6a7a7', id, '03e743c1-ec9e-5c3e-9a59-ee58b4f78e60', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'material evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '344bfccc-f2b5-586b-9fce-7f71a3f6a7a7', id, '03e743c1-ec9e-5c3e-9a59-ee58b4f78e60', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'without prejudice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '344bfccc-f2b5-586b-9fce-7f71a3f6a7a7', id, '03e743c1-ec9e-5c3e-9a59-ee58b4f78e60', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'binding obligation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '344bfccc-f2b5-586b-9fce-7f71a3f6a7a7', id, '03e743c1-ec9e-5c3e-9a59-ee58b4f78e60', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'litigation risk' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '344bfccc-f2b5-586b-9fce-7f71a3f6a7a7', id, '03e743c1-ec9e-5c3e-9a59-ee58b4f78e60', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'informed instruction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '344bfccc-f2b5-586b-9fce-7f71a3f6a7a7', id, 'bfc42ee9-45a3-50d0-8406-ca25d7c1b3f6', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'legal exposure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '344bfccc-f2b5-586b-9fce-7f71a3f6a7a7', id, 'bfc42ee9-45a3-50d0-8406-ca25d7c1b3f6', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'burden of proof' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '344bfccc-f2b5-586b-9fce-7f71a3f6a7a7', id, 'bfc42ee9-45a3-50d0-8406-ca25d7c1b3f6', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'material evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '344bfccc-f2b5-586b-9fce-7f71a3f6a7a7', id, 'bfc42ee9-45a3-50d0-8406-ca25d7c1b3f6', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'without prejudice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '344bfccc-f2b5-586b-9fce-7f71a3f6a7a7', id, 'bfc42ee9-45a3-50d0-8406-ca25d7c1b3f6', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'binding obligation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '344bfccc-f2b5-586b-9fce-7f71a3f6a7a7', id, 'bfc42ee9-45a3-50d0-8406-ca25d7c1b3f6', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'litigation risk' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '344bfccc-f2b5-586b-9fce-7f71a3f6a7a7', id, 'bfc42ee9-45a3-50d0-8406-ca25d7c1b3f6', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'informed instruction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
