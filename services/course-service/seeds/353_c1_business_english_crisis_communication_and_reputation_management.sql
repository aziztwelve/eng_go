-- Track: C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('2b2d2399-7b91-58dd-b601-493cad5f4fc0', 'C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT', 'Кризисная коммуникация и управление репутацией', 'Освойте продвинутый деловой английский уровня C1 по теме «Кризисная коммуникация и управление репутацией» через реалистичные рабочие ситуации, требующие точного анализа, дипломатичной аргументации и ответственных решений.', '{"en":"Crisis Communication and Reputation Management","ru":"Кризисная коммуникация и управление репутацией"}'::jsonb, '{"en":"Master advanced C1 business English for crisis communication and reputation management through realistic workplace situations requiring precise analysis, diplomatic argument, and accountable decisions.","ru":"Освойте продвинутый деловой английский уровня C1 по теме «Кризисная коммуникация и управление репутацией» через реалистичные рабочие ситуации, требующие точного анализа, дипломатичной аргументации и ответственных решений."}'::jsonb, 'en', 'C1', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('d6c57c0a-7ee1-56a3-bacc-8babe3be40c9', NULL, 'Реальная деловая ситуация и ключевые понятия', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Establishing Facts During a Crisis","ru":"Реальная деловая ситуация и ключевые понятия"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('13d3fb88-e204-5bd3-b8c3-849397c80312', 'd6c57c0a-7ee1-56a3-bacc-8babe3be40c9', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L1_D01","left":"holding statement","right":"предварительное заявление"},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L1_D02","left":"reputational exposure","right":"репутационный риск"},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L1_D03","left":"verified fact","right":"проверенный факт"},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L1_D04","left":"message discipline","right":"последовательность коммуникации"},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L1_D05","left":"stakeholder assurance","right":"заверение заинтересованных сторон"},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L1_D06","left":"corrective action","right":"корректирующее действие"},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L1_D07","left":"independent review","right":"независимая проверка"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('36f77b26-7227-54d7-9570-db0b9a6ea37e', 'd6c57c0a-7ee1-56a3-bacc-8babe3be40c9', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L1_D08","is_correct":true,"text":"The holding statement should acknowledge the seriousness of the incident, separate verified facts from speculation, and commit to a specific update time."},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L1_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L1_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6f22ed0f-69e3-59f5-a1b4-aee88cafae9a', 'd6c57c0a-7ee1-56a3-bacc-8babe3be40c9', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The holding statement should acknowledge the seriousness of the incident, separate verified facts from speculation, and commit to a specific update time.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Предварительное заявление должно признать серьёзность инцидента, отделить проверенные факты от предположений и указать конкретное время следующего обновления.","target_language":"en","word_bank":["The","holding","statement","should","acknowledge","the","seriousness","of","the","incident",",","separate","verified","facts","from","speculation",",","and","commit","to","a","specific","update","time","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5f3c22a4-ccd0-5c1b-a88c-a6f1deefd2c4', 'd6c57c0a-7ee1-56a3-bacc-8babe3be40c9', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"holding statement","instruction":"Выберите подходящее слово.","options":["holding statement","message discipline","corrective action"],"sentence_template":"The ___ should acknowledge the seriousness of the incident, separate verified facts from speculation, and commit to a specific update time."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d751be8-1233-5457-9e66-6ea7a00d234e', 'd6c57c0a-7ee1-56a3-bacc-8babe3be40c9', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","holding","statement","should","acknowledge","the","seriousness","of","the","incident",",","separate","verified","facts","from","speculation",",","and","commit","to","a","specific","update","time","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","time","update","specific","a","to","commit","and",",","speculation","from","facts","verified","separate",",","incident","the","of","seriousness","the","acknowledge","should","statement","holding","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c8a21b74-3adf-55e5-943d-f0e7d64b25ae', 'd6c57c0a-7ee1-56a3-bacc-8babe3be40c9', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The holding statement should acknowledge the seriousness of the incident, separate verified facts from speculation, and commit to a specific update time. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('364ec364-6ce6-5cd9-8733-77d2c9f13233', 'd6c57c0a-7ee1-56a3-bacc-8babe3be40c9', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The holding statement should acknowledge the seriousness of the incident, separate verified facts from speculation, and commit to a specific update time. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Предварительное заявление должно признать серьёзность инцидента, отделить проверенные факты от предположений и указать конкретное время следующего обновления. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b0abc7eb-b7f6-503a-8d22-57a313187b5a', 'd6c57c0a-7ee1-56a3-bacc-8babe3be40c9', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"The holding statement should acknowledge the seriousness of the incident, separate verified facts from speculation, and commit to a specific update time.","translation":"Предварительное заявление должно признать серьёзность инцидента, отделить проверенные факты от предположений и указать конкретное время следующего обновления.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Establishing Facts During a Crisis"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4de2c66b-89a1-5143-815d-ebb8e7f4d1fb', 'd6c57c0a-7ee1-56a3-bacc-8babe3be40c9', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“holding statement” means a brief initial response issued while facts are still being established.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L1_D11","is_correct":true,"text":"a brief initial response issued while facts are still being established"},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L1_D12","is_correct":false,"text":"the potential for an event to damage public trust"},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L1_D13","is_correct":false,"text":"information confirmed through a reliable process"}],"word":"holding statement"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d005862b-d5f7-53bb-bc36-ddce00ec1090', 'd6c57c0a-7ee1-56a3-bacc-8babe3be40c9', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The holding statement should acknowledge the seriousness of the incident, separate verified facts from speculation, and commit to a specific update time.","explanation":"The missing C1 business expression is “holding statement”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"holding statement","id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L1_D14","is_correct":true},{"audio_text":"verified fact","id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L1_D15","is_correct":false},{"audio_text":"stakeholder assurance","id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L1_D16","is_correct":false}],"sentence_template":"The ___ should acknowledge the seriousness of the incident, separate verified facts from speculation, and commit to a specific update time."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b9aaca5-74e5-51be-bd38-6506ace5cbce', 'd6c57c0a-7ee1-56a3-bacc-8babe3be40c9', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"holding statement","explanation":"The complete business statement uses “holding statement” accurately in context.","hint_prefix":"hold","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ should acknowledge the seriousness of the incident, separate verified facts from speculation, and commit to a specific update time."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('acad694c-0998-56cb-a714-a7942e01521b', 'd6c57c0a-7ee1-56a3-bacc-8babe3be40c9', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"holding statement","id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L1_D17","text":"holding statement"},{"audio_text":"reputational exposure","id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L1_D18","text":"reputational exposure"},{"audio_text":"verified fact","id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L1_D19","text":"verified fact"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('61416673-0bbd-5b64-9fd6-451ba268dc4d', 'd6c57c0a-7ee1-56a3-bacc-8babe3be40c9', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Establishing Facts During a Crisis”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L1_D20","is_correct":true,"text":"The holding statement should acknowledge the seriousness of the incident, separate verified facts from speculation, and commit to a specific update time."},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L1_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L1_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2b2d2399-7b91-58dd-b601-493cad5f4fc0', 'd6c57c0a-7ee1-56a3-bacc-8babe3be40c9', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('31694042-415e-56c1-8e9a-8343a9801b35', NULL, 'Анализ, аргументация и взаимодействие', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Addressing Stakeholders and the Media","ru":"Анализ, аргументация и взаимодействие"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5810bd58-840a-5190-b944-69d9654e8504', '31694042-415e-56c1-8e9a-8343a9801b35', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L2_D01","left":"holding statement","right":"предварительное заявление"},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L2_D02","left":"reputational exposure","right":"репутационный риск"},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L2_D03","left":"verified fact","right":"проверенный факт"},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L2_D04","left":"message discipline","right":"последовательность коммуникации"},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L2_D05","left":"stakeholder assurance","right":"заверение заинтересованных сторон"},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L2_D06","left":"corrective action","right":"корректирующее действие"},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L2_D07","left":"independent review","right":"независимая проверка"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd92d9e8-c25b-5e28-a3ff-5cadbe95e82a', '31694042-415e-56c1-8e9a-8343a9801b35', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L2_D08","is_correct":true,"text":"Message discipline does not mean avoiding difficult questions; it means answering consistently without exceeding the evidence currently available."},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L2_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L2_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('026582c9-b730-5afc-a92f-910cd42ea42f', '31694042-415e-56c1-8e9a-8343a9801b35', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Message discipline does not mean avoiding difficult questions; it means answering consistently without exceeding the evidence currently available.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Последовательность коммуникации не означает уклонения от сложных вопросов; она означает единообразные ответы без выхода за пределы имеющихся доказательств.","target_language":"en","word_bank":["Message","discipline","does","not","mean","avoiding","difficult","questions",";","it","means","answering","consistently","without","exceeding","the","evidence","currently","available","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('782f064e-e7a4-517f-9606-38f0c86a6637', '31694042-415e-56c1-8e9a-8343a9801b35', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"reputational exposure","instruction":"Выберите подходящее слово.","options":["reputational exposure","stakeholder assurance","independent review"],"sentence_template":"Message discipline does not mean avoiding difficult questions; it means answering consistently without exceeding the evidence currently available."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3466c2e9-90d3-528b-b6d2-9baf5ea5503a', '31694042-415e-56c1-8e9a-8343a9801b35', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Message","discipline","does","not","mean","avoiding","difficult","questions",";","it","means","answering","consistently","without","exceeding","the","evidence","currently","available","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","available","currently","evidence","the","exceeding","without","consistently","answering","means","it",";","questions","difficult","avoiding","mean","not","does","discipline","Message"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('31f067f2-bea5-50e4-8dba-ed6389ba988a', '31694042-415e-56c1-8e9a-8343a9801b35', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Message discipline does not mean avoiding difficult questions; it means answering consistently without exceeding the evidence currently available. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0001a0a5-1bc0-53ed-83c3-a338b81f2562', '31694042-415e-56c1-8e9a-8343a9801b35', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Message discipline does not mean avoiding difficult questions; it means answering consistently without exceeding the evidence currently available. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Последовательность коммуникации не означает уклонения от сложных вопросов; она означает единообразные ответы без выхода за пределы имеющихся доказательств. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e6a04a2-4bf6-5d47-b348-d02f39820806', '31694042-415e-56c1-8e9a-8343a9801b35', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"Message discipline does not mean avoiding difficult questions; it means answering consistently without exceeding the evidence currently available.","translation":"Последовательность коммуникации не означает уклонения от сложных вопросов; она означает единообразные ответы без выхода за пределы имеющихся доказательств.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Addressing Stakeholders and the Media"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb8c9a73-5796-5734-ac9e-783665229186', '31694042-415e-56c1-8e9a-8343a9801b35', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“reputational exposure” means the potential for an event to damage public trust.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L2_D11","is_correct":true,"text":"the potential for an event to damage public trust"},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L2_D12","is_correct":false,"text":"information confirmed through a reliable process"},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L2_D13","is_correct":false,"text":"consistent use of accurate agreed messages across spokespeople"}],"word":"reputational exposure"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ca1e0a8c-85f2-5aee-af9d-cebea06a325c', '31694042-415e-56c1-8e9a-8343a9801b35', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Message discipline does not mean avoiding difficult questions; it means answering consistently without exceeding the evidence currently available.","explanation":"The missing C1 business expression is “reputational exposure”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"reputational exposure","id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L2_D14","is_correct":true},{"audio_text":"message discipline","id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L2_D15","is_correct":false},{"audio_text":"corrective action","id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L2_D16","is_correct":false}],"sentence_template":"Message discipline does not mean avoiding difficult questions; it means answering consistently without exceeding the evidence currently available."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2fa8d78a-621f-53b8-a1f0-80a244ab22fb', '31694042-415e-56c1-8e9a-8343a9801b35', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"reputational exposure","explanation":"The complete business statement uses “reputational exposure” accurately in context.","hint_prefix":"repu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Message discipline does not mean avoiding difficult questions; it means answering consistently without exceeding the evidence currently available."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c88f06a1-b5b6-5e25-85f7-320a9e4e88e1', '31694042-415e-56c1-8e9a-8343a9801b35', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"holding statement","id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L2_D17","text":"holding statement"},{"audio_text":"reputational exposure","id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L2_D18","text":"reputational exposure"},{"audio_text":"verified fact","id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L2_D19","text":"verified fact"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9f56d180-98c4-5989-90de-741366b87017', '31694042-415e-56c1-8e9a-8343a9801b35', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Addressing Stakeholders and the Media”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L2_D20","is_correct":true,"text":"Message discipline does not mean avoiding difficult questions; it means answering consistently without exceeding the evidence currently available."},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L2_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L2_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2b2d2399-7b91-58dd-b601-493cad5f4fc0', '31694042-415e-56c1-8e9a-8343a9801b35', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('8fa48506-498d-5283-a4ec-c5778775b467', NULL, 'Решение, ответственность и последующие действия', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Rebuilding Trust Through Accountable Action","ru":"Решение, ответственность и последующие действия"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aee108eb-c474-54d9-9672-93ddf8967d43', '8fa48506-498d-5283-a4ec-c5778775b467', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L3_D01","left":"holding statement","right":"предварительное заявление"},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L3_D02","left":"reputational exposure","right":"репутационный риск"},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L3_D03","left":"verified fact","right":"проверенный факт"},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L3_D04","left":"message discipline","right":"последовательность коммуникации"},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L3_D05","left":"stakeholder assurance","right":"заверение заинтересованных сторон"},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L3_D06","left":"corrective action","right":"корректирующее действие"},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L3_D07","left":"independent review","right":"независимая проверка"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('98d5fe5c-aff9-5067-8599-7d9509749ea2', '8fa48506-498d-5283-a4ec-c5778775b467', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L3_D08","is_correct":true,"text":"Reputational recovery requires transparent corrective action, independent review, and measurable evidence that the underlying failure has been addressed."},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L3_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L3_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('162a9b2d-5bce-532c-a902-50f158899044', '8fa48506-498d-5283-a4ec-c5778775b467', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Reputational recovery requires transparent corrective action, independent review, and measurable evidence that the underlying failure has been addressed.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Восстановление репутации требует прозрачных корректирующих действий, независимой проверки и измеримых доказательств устранения основной причины сбоя.","target_language":"en","word_bank":["Reputational","recovery","requires","transparent","corrective","action",",","independent","review",",","and","measurable","evidence","that","the","underlying","failure","has","been","addressed","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ff46c86a-e517-59b7-9ebb-9f65f072159c', '8fa48506-498d-5283-a4ec-c5778775b467', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"verified fact","instruction":"Выберите подходящее слово.","options":["verified fact","corrective action","holding statement"],"sentence_template":"Reputational recovery requires transparent corrective action, independent review, and measurable evidence that the underlying failure has been addressed."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f49b528b-7dcb-5035-9f42-9c7a09427fec', '8fa48506-498d-5283-a4ec-c5778775b467', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Reputational","recovery","requires","transparent","corrective","action",",","independent","review",",","and","measurable","evidence","that","the","underlying","failure","has","been","addressed","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","addressed","been","has","failure","underlying","the","that","evidence","measurable","and",",","review","independent",",","action","corrective","transparent","requires","recovery","Reputational"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90111e00-7e56-5437-a0ac-f9083f261d3f', '8fa48506-498d-5283-a4ec-c5778775b467', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Reputational recovery requires transparent corrective action, independent review, and measurable evidence that the underlying failure has been addressed. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e94ee2b1-23db-523d-8d43-acd20528cdcb', '8fa48506-498d-5283-a4ec-c5778775b467', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Reputational recovery requires transparent corrective action, independent review, and measurable evidence that the underlying failure has been addressed. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Восстановление репутации требует прозрачных корректирующих действий, независимой проверки и измеримых доказательств устранения основной причины сбоя. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ee3da7cb-f02e-58e2-b609-b9bfab0410cb', '8fa48506-498d-5283-a4ec-c5778775b467', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"Reputational recovery requires transparent corrective action, independent review, and measurable evidence that the underlying failure has been addressed.","translation":"Восстановление репутации требует прозрачных корректирующих действий, независимой проверки и измеримых доказательств устранения основной причины сбоя.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Rebuilding Trust Through Accountable Action"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('486868c5-be68-51f5-9f89-f25fe46c4c80', '8fa48506-498d-5283-a4ec-c5778775b467', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“verified fact” means information confirmed through a reliable process.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L3_D11","is_correct":true,"text":"information confirmed through a reliable process"},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L3_D12","is_correct":false,"text":"consistent use of accurate agreed messages across spokespeople"},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L3_D13","is_correct":false,"text":"communication intended to maintain justified confidence"}],"word":"verified fact"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a8979ef2-efb0-5ab3-9f11-6fcdb55ac581', '8fa48506-498d-5283-a4ec-c5778775b467', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Reputational recovery requires transparent corrective action, independent review, and measurable evidence that the underlying failure has been addressed.","explanation":"The missing C1 business expression is “verified fact”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"verified fact","id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L3_D14","is_correct":true},{"audio_text":"stakeholder assurance","id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L3_D15","is_correct":false},{"audio_text":"independent review","id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L3_D16","is_correct":false}],"sentence_template":"Reputational recovery requires transparent corrective action, independent review, and measurable evidence that the underlying failure has been addressed."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('caa50991-441a-577d-8abd-4bf51fa24360', '8fa48506-498d-5283-a4ec-c5778775b467', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"verified fact","explanation":"The complete business statement uses “verified fact” accurately in context.","hint_prefix":"veri","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Reputational recovery requires transparent corrective action, independent review, and measurable evidence that the underlying failure has been addressed."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a07ca7ed-fc4f-538c-ba7d-b2671a9ca66b', '8fa48506-498d-5283-a4ec-c5778775b467', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"holding statement","id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L3_D17","text":"holding statement"},{"audio_text":"reputational exposure","id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L3_D18","text":"reputational exposure"},{"audio_text":"verified fact","id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L3_D19","text":"verified fact"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b3be96e6-ad6a-53aa-97b4-a5d1ebb7b033', '8fa48506-498d-5283-a4ec-c5778775b467', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Rebuilding Trust Through Accountable Action”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L3_D20","is_correct":true,"text":"Reputational recovery requires transparent corrective action, independent review, and measurable evidence that the underlying failure has been addressed."},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L3_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_CRISIS_COMMUNICATION_AND_REPUTATION_MANAGEMENT_L3_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2b2d2399-7b91-58dd-b601-493cad5f4fc0', '8fa48506-498d-5283-a4ec-c5778775b467', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eaff11a0-ca49-5fb9-9f9a-e9fb7f4faf28', 'en', 'holding statement', 'предварительное заявление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cbba38ab-66c2-54c4-995e-601efc762c6b', 'en', 'reputational exposure', 'репутационный риск', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1ebc1b51-4cf0-53f5-a24c-93538412078a', 'en', 'verified fact', 'проверенный факт', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('144212e0-5f57-5a33-a79f-55d39608e5aa', 'en', 'message discipline', 'последовательность коммуникации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e0470e13-2b58-544d-9312-70748d893b3a', 'en', 'stakeholder assurance', 'заверение заинтересованных сторон', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9a3a938a-fbef-5f0b-b216-e04dc3f4184b', 'en', 'corrective action', 'корректирующее действие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('754339b6-f602-5d7c-9c0b-5096f03056fe', 'en', 'independent review', 'независимая проверка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eaff11a0-ca49-5fb9-9f9a-e9fb7f4faf28', 'en', 'holding statement', 'предварительное заявление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cbba38ab-66c2-54c4-995e-601efc762c6b', 'en', 'reputational exposure', 'репутационный риск', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1ebc1b51-4cf0-53f5-a24c-93538412078a', 'en', 'verified fact', 'проверенный факт', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('144212e0-5f57-5a33-a79f-55d39608e5aa', 'en', 'message discipline', 'последовательность коммуникации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e0470e13-2b58-544d-9312-70748d893b3a', 'en', 'stakeholder assurance', 'заверение заинтересованных сторон', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9a3a938a-fbef-5f0b-b216-e04dc3f4184b', 'en', 'corrective action', 'корректирующее действие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('754339b6-f602-5d7c-9c0b-5096f03056fe', 'en', 'independent review', 'независимая проверка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eaff11a0-ca49-5fb9-9f9a-e9fb7f4faf28', 'en', 'holding statement', 'предварительное заявление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cbba38ab-66c2-54c4-995e-601efc762c6b', 'en', 'reputational exposure', 'репутационный риск', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1ebc1b51-4cf0-53f5-a24c-93538412078a', 'en', 'verified fact', 'проверенный факт', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('144212e0-5f57-5a33-a79f-55d39608e5aa', 'en', 'message discipline', 'последовательность коммуникации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e0470e13-2b58-544d-9312-70748d893b3a', 'en', 'stakeholder assurance', 'заверение заинтересованных сторон', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9a3a938a-fbef-5f0b-b216-e04dc3f4184b', 'en', 'corrective action', 'корректирующее действие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('754339b6-f602-5d7c-9c0b-5096f03056fe', 'en', 'independent review', 'независимая проверка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2b2d2399-7b91-58dd-b601-493cad5f4fc0', id, 'd6c57c0a-7ee1-56a3-bacc-8babe3be40c9', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'holding statement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2b2d2399-7b91-58dd-b601-493cad5f4fc0', id, 'd6c57c0a-7ee1-56a3-bacc-8babe3be40c9', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'reputational exposure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2b2d2399-7b91-58dd-b601-493cad5f4fc0', id, 'd6c57c0a-7ee1-56a3-bacc-8babe3be40c9', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'verified fact' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2b2d2399-7b91-58dd-b601-493cad5f4fc0', id, 'd6c57c0a-7ee1-56a3-bacc-8babe3be40c9', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'message discipline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2b2d2399-7b91-58dd-b601-493cad5f4fc0', id, 'd6c57c0a-7ee1-56a3-bacc-8babe3be40c9', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'stakeholder assurance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2b2d2399-7b91-58dd-b601-493cad5f4fc0', id, 'd6c57c0a-7ee1-56a3-bacc-8babe3be40c9', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'corrective action' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2b2d2399-7b91-58dd-b601-493cad5f4fc0', id, 'd6c57c0a-7ee1-56a3-bacc-8babe3be40c9', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'independent review' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2b2d2399-7b91-58dd-b601-493cad5f4fc0', id, '31694042-415e-56c1-8e9a-8343a9801b35', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'holding statement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2b2d2399-7b91-58dd-b601-493cad5f4fc0', id, '31694042-415e-56c1-8e9a-8343a9801b35', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'reputational exposure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2b2d2399-7b91-58dd-b601-493cad5f4fc0', id, '31694042-415e-56c1-8e9a-8343a9801b35', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'verified fact' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2b2d2399-7b91-58dd-b601-493cad5f4fc0', id, '31694042-415e-56c1-8e9a-8343a9801b35', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'message discipline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2b2d2399-7b91-58dd-b601-493cad5f4fc0', id, '31694042-415e-56c1-8e9a-8343a9801b35', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'stakeholder assurance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2b2d2399-7b91-58dd-b601-493cad5f4fc0', id, '31694042-415e-56c1-8e9a-8343a9801b35', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'corrective action' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2b2d2399-7b91-58dd-b601-493cad5f4fc0', id, '31694042-415e-56c1-8e9a-8343a9801b35', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'independent review' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2b2d2399-7b91-58dd-b601-493cad5f4fc0', id, '8fa48506-498d-5283-a4ec-c5778775b467', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'holding statement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2b2d2399-7b91-58dd-b601-493cad5f4fc0', id, '8fa48506-498d-5283-a4ec-c5778775b467', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'reputational exposure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2b2d2399-7b91-58dd-b601-493cad5f4fc0', id, '8fa48506-498d-5283-a4ec-c5778775b467', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'verified fact' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2b2d2399-7b91-58dd-b601-493cad5f4fc0', id, '8fa48506-498d-5283-a4ec-c5778775b467', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'message discipline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2b2d2399-7b91-58dd-b601-493cad5f4fc0', id, '8fa48506-498d-5283-a4ec-c5778775b467', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'stakeholder assurance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2b2d2399-7b91-58dd-b601-493cad5f4fc0', id, '8fa48506-498d-5283-a4ec-c5778775b467', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'corrective action' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2b2d2399-7b91-58dd-b601-493cad5f4fc0', id, '8fa48506-498d-5283-a4ec-c5778775b467', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'independent review' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
