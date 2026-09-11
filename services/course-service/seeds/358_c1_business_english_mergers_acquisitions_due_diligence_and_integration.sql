-- Track: C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('8eb87c6a-9b1e-5627-8cd8-691edb9945f2', 'C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION', 'Слияния и поглощения, комплексная проверка и интеграция', 'Освойте продвинутый деловой английский уровня C1 по теме «Слияния и поглощения, комплексная проверка и интеграция» через реалистичные рабочие ситуации, требующие точного анализа, дипломатичной аргументации и ответственных решений.', '{"en":"Mergers and Acquisitions, Due Diligence and Integration","ru":"Слияния и поглощения, комплексная проверка и интеграция"}'::jsonb, '{"en":"Master advanced C1 business English for mergers and acquisitions, due diligence and integration through realistic workplace situations requiring precise analysis, diplomatic argument, and accountable decisions.","ru":"Освойте продвинутый деловой английский уровня C1 по теме «Слияния и поглощения, комплексная проверка и интеграция» через реалистичные рабочие ситуации, требующие точного анализа, дипломатичной аргументации и ответственных решений."}'::jsonb, 'en', 'C1', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7aabe24e-61ed-5659-a2bd-6a17a589a7ef', NULL, 'Реальная деловая ситуация и ключевые понятия', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Testing the Strategic Deal Rationale","ru":"Реальная деловая ситуация и ключевые понятия"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4177819f-ad89-5373-b27f-ae6a351a4e92', '7aabe24e-61ed-5659-a2bd-6a17a589a7ef', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L1_D01","left":"acquisition rationale","right":"обоснование приобретения"},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L1_D02","left":"valuation multiple","right":"оценочный мультипликатор"},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L1_D03","left":"deal breaker","right":"критическое препятствие для сделки"},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L1_D04","left":"integration synergy","right":"синергия интеграции"},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L1_D05","left":"cultural compatibility","right":"культурная совместимость"},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L1_D06","left":"legacy liability","right":"унаследованное обязательство"},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L1_D07","left":"integration roadmap","right":"план интеграции"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bab89086-eb2c-552d-bde9-0d5eb987d521', '7aabe24e-61ed-5659-a2bd-6a17a589a7ef', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L1_D08","is_correct":true,"text":"The acquisition rationale is credible only if the projected integration synergies remain achievable after realistic implementation costs are included."},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L1_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L1_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4188aef1-71e1-5eea-9e0d-345dd79eb30d', '7aabe24e-61ed-5659-a2bd-6a17a589a7ef', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The acquisition rationale is credible only if the projected integration synergies remain achievable after realistic implementation costs are included.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Обоснование приобретения убедительно лишь в том случае, если прогнозируемая синергия интеграции остаётся достижимой после учёта реалистичных затрат на внедрение.","target_language":"en","word_bank":["The","acquisition","rationale","is","credible","only","if","the","projected","integration","synergies","remain","achievable","after","realistic","implementation","costs","are","included","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7f9418f-1e3e-5e55-a111-008fd35692b9', '7aabe24e-61ed-5659-a2bd-6a17a589a7ef', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"acquisition rationale","instruction":"Выберите подходящее слово.","options":["acquisition rationale","integration synergy","legacy liability"],"sentence_template":"The ___ is credible only if the projected integration synergies remain achievable after realistic implementation costs are included."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d71f017f-7d61-58f0-827f-82b6210c0e3f', '7aabe24e-61ed-5659-a2bd-6a17a589a7ef', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","acquisition","rationale","is","credible","only","if","the","projected","integration","synergies","remain","achievable","after","realistic","implementation","costs","are","included","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","included","are","costs","implementation","realistic","after","achievable","remain","synergies","integration","projected","the","if","only","credible","is","rationale","acquisition","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('54735847-0bf1-5226-bee7-392ecb24ccd5', '7aabe24e-61ed-5659-a2bd-6a17a589a7ef', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The acquisition rationale is credible only if the projected integration synergies remain achievable after realistic implementation costs are included. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a386229-3e81-5287-a536-d6d70e02743a', '7aabe24e-61ed-5659-a2bd-6a17a589a7ef', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The acquisition rationale is credible only if the projected integration synergies remain achievable after realistic implementation costs are included. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Обоснование приобретения убедительно лишь в том случае, если прогнозируемая синергия интеграции остаётся достижимой после учёта реалистичных затрат на внедрение. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1de8dcc1-2bb9-5d0c-8695-cc4b3311beaa', '7aabe24e-61ed-5659-a2bd-6a17a589a7ef', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"The acquisition rationale is credible only if the projected integration synergies remain achievable after realistic implementation costs are included.","translation":"Обоснование приобретения убедительно лишь в том случае, если прогнозируемая синергия интеграции остаётся достижимой после учёта реалистичных затрат на внедрение.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Testing the Strategic Deal Rationale"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('79f011cc-cdf9-50d4-b3b7-144ffab382e9', '7aabe24e-61ed-5659-a2bd-6a17a589a7ef', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“acquisition rationale” means the strategic and financial reasoning for buying a business.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L1_D11","is_correct":true,"text":"the strategic and financial reasoning for buying a business"},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L1_D12","is_correct":false,"text":"a ratio used to estimate a company’s value"},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L1_D13","is_correct":false,"text":"an issue serious enough to prevent a transaction"}],"word":"acquisition rationale"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a4bdca2-d216-5eb1-a8a8-323f19cbbf1a', '7aabe24e-61ed-5659-a2bd-6a17a589a7ef', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The acquisition rationale is credible only if the projected integration synergies remain achievable after realistic implementation costs are included.","explanation":"The missing C1 business expression is “acquisition rationale”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"acquisition rationale","id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L1_D14","is_correct":true},{"audio_text":"deal breaker","id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L1_D15","is_correct":false},{"audio_text":"cultural compatibility","id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L1_D16","is_correct":false}],"sentence_template":"The ___ is credible only if the projected integration synergies remain achievable after realistic implementation costs are included."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd6e7112-78c5-5055-b0d0-2202d6a37e91', '7aabe24e-61ed-5659-a2bd-6a17a589a7ef', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"acquisition rationale","explanation":"The complete business statement uses “acquisition rationale” accurately in context.","hint_prefix":"acqu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ is credible only if the projected integration synergies remain achievable after realistic implementation costs are included."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f439c01a-83e9-5b53-b213-972118a086ed', '7aabe24e-61ed-5659-a2bd-6a17a589a7ef', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"acquisition rationale","id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L1_D17","text":"acquisition rationale"},{"audio_text":"valuation multiple","id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L1_D18","text":"valuation multiple"},{"audio_text":"deal breaker","id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L1_D19","text":"deal breaker"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18cd329f-68a3-5e77-ac70-632e2f4e8637', '7aabe24e-61ed-5659-a2bd-6a17a589a7ef', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Testing the Strategic Deal Rationale”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L1_D20","is_correct":true,"text":"The acquisition rationale is credible only if the projected integration synergies remain achievable after realistic implementation costs are included."},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L1_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L1_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8eb87c6a-9b1e-5627-8cd8-691edb9945f2', '7aabe24e-61ed-5659-a2bd-6a17a589a7ef', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f2568487-576d-51ca-a45e-f80f15674469', NULL, 'Анализ, аргументация и взаимодействие', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Reporting Due-Diligence Findings","ru":"Анализ, аргументация и взаимодействие"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('088535a4-057e-53a5-9347-58a0d61c49e3', 'f2568487-576d-51ca-a45e-f80f15674469', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L2_D01","left":"acquisition rationale","right":"обоснование приобретения"},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L2_D02","left":"valuation multiple","right":"оценочный мультипликатор"},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L2_D03","left":"deal breaker","right":"критическое препятствие для сделки"},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L2_D04","left":"integration synergy","right":"синергия интеграции"},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L2_D05","left":"cultural compatibility","right":"культурная совместимость"},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L2_D06","left":"legacy liability","right":"унаследованное обязательство"},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L2_D07","left":"integration roadmap","right":"план интеграции"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('69da9e56-b349-50b2-a9e0-8e4f2321074c', 'f2568487-576d-51ca-a45e-f80f15674469', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L2_D08","is_correct":true,"text":"Due diligence identified a legacy liability that is not necessarily a deal breaker but should affect valuation, warranties, and risk allocation."},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L2_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L2_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b6c40a1b-1c1b-58a5-9791-1b9f35243023', 'f2568487-576d-51ca-a45e-f80f15674469', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Due diligence identified a legacy liability that is not necessarily a deal breaker but should affect valuation, warranties, and risk allocation.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Комплексная проверка выявила унаследованное обязательство, которое не обязательно препятствует сделке, но должно повлиять на оценку, гарантии и распределение рисков.","target_language":"en","word_bank":["Due","diligence","identified","a","legacy","liability","that","is","not","necessarily","a","deal","breaker","but","should","affect","valuation",",","warranties",",","and","risk","allocation","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2374cb85-4e20-5245-9ef7-fcccdbc375ca', 'f2568487-576d-51ca-a45e-f80f15674469', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"valuation multiple","instruction":"Выберите подходящее слово.","options":["valuation multiple","cultural compatibility","integration roadmap"],"sentence_template":"Due diligence identified a legacy liability that is not necessarily a deal breaker but should affect valuation, warranties, and risk allocation."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ab4ccfd2-2810-5bde-afd4-11ee178c00c0', 'f2568487-576d-51ca-a45e-f80f15674469', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Due","diligence","identified","a","legacy","liability","that","is","not","necessarily","a","deal","breaker","but","should","affect","valuation",",","warranties",",","and","risk","allocation","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","allocation","risk","and",",","warranties",",","valuation","affect","should","but","breaker","deal","a","necessarily","not","is","that","liability","legacy","a","identified","diligence","Due"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7df58c3b-0c3f-5e71-8149-24d03ff5d55c', 'f2568487-576d-51ca-a45e-f80f15674469', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Due diligence identified a legacy liability that is not necessarily a deal breaker but should affect valuation, warranties, and risk allocation. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a4c69cdd-048d-58bd-9e0a-2e3e30b2f047', 'f2568487-576d-51ca-a45e-f80f15674469', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Due diligence identified a legacy liability that is not necessarily a deal breaker but should affect valuation, warranties, and risk allocation. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Комплексная проверка выявила унаследованное обязательство, которое не обязательно препятствует сделке, но должно повлиять на оценку, гарантии и распределение рисков. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18c6ae41-0e22-5712-a61c-71375d2d5cd6', 'f2568487-576d-51ca-a45e-f80f15674469', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"Due diligence identified a legacy liability that is not necessarily a deal breaker but should affect valuation, warranties, and risk allocation.","translation":"Комплексная проверка выявила унаследованное обязательство, которое не обязательно препятствует сделке, но должно повлиять на оценку, гарантии и распределение рисков.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Reporting Due-Diligence Findings"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a72fa998-bd81-5233-85b3-a884f7d831d2', 'f2568487-576d-51ca-a45e-f80f15674469', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“valuation multiple” means a ratio used to estimate a company’s value.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L2_D11","is_correct":true,"text":"a ratio used to estimate a company’s value"},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L2_D12","is_correct":false,"text":"an issue serious enough to prevent a transaction"},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L2_D13","is_correct":false,"text":"additional value expected from combining organisations"}],"word":"valuation multiple"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8c8b38e9-6191-5e10-8239-7d41b55c8996', 'f2568487-576d-51ca-a45e-f80f15674469', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Due diligence identified a legacy liability that is not necessarily a deal breaker but should affect valuation, warranties, and risk allocation.","explanation":"The missing C1 business expression is “valuation multiple”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"valuation multiple","id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L2_D14","is_correct":true},{"audio_text":"integration synergy","id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L2_D15","is_correct":false},{"audio_text":"legacy liability","id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L2_D16","is_correct":false}],"sentence_template":"Due diligence identified a legacy liability that is not necessarily a deal breaker but should affect valuation, warranties, and risk allocation."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8572c952-4757-5f54-a146-47b05f29ec1d', 'f2568487-576d-51ca-a45e-f80f15674469', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"valuation multiple","explanation":"The complete business statement uses “valuation multiple” accurately in context.","hint_prefix":"valu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Due diligence identified a legacy liability that is not necessarily a deal breaker but should affect valuation, warranties, and risk allocation."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f23cd4f2-f261-5222-a9bb-7bc27dbaab35', 'f2568487-576d-51ca-a45e-f80f15674469', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"acquisition rationale","id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L2_D17","text":"acquisition rationale"},{"audio_text":"valuation multiple","id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L2_D18","text":"valuation multiple"},{"audio_text":"deal breaker","id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L2_D19","text":"deal breaker"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0c8c60f-ed93-5062-8661-42edd1b1759e', 'f2568487-576d-51ca-a45e-f80f15674469', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Reporting Due-Diligence Findings”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L2_D20","is_correct":true,"text":"Due diligence identified a legacy liability that is not necessarily a deal breaker but should affect valuation, warranties, and risk allocation."},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L2_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L2_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8eb87c6a-9b1e-5627-8cd8-691edb9945f2', 'f2568487-576d-51ca-a45e-f80f15674469', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ef28acb9-c90f-5869-ba1b-cdc3bc8e0ee1', NULL, 'Решение, ответственность и последующие действия', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Planning Post-Merger Integration","ru":"Решение, ответственность и последующие действия"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('88002f0d-f50a-5fbe-880f-19b47b565875', 'ef28acb9-c90f-5869-ba1b-cdc3bc8e0ee1', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L3_D01","left":"acquisition rationale","right":"обоснование приобретения"},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L3_D02","left":"valuation multiple","right":"оценочный мультипликатор"},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L3_D03","left":"deal breaker","right":"критическое препятствие для сделки"},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L3_D04","left":"integration synergy","right":"синергия интеграции"},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L3_D05","left":"cultural compatibility","right":"культурная совместимость"},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L3_D06","left":"legacy liability","right":"унаследованное обязательство"},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L3_D07","left":"integration roadmap","right":"план интеграции"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2d14cfa5-6665-5c09-bb66-c041aae4216b', 'ef28acb9-c90f-5869-ba1b-cdc3bc8e0ee1', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L3_D08","is_correct":true,"text":"The integration roadmap should protect business continuity while resolving duplicated roles, incompatible systems, and cultural friction."},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L3_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L3_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('00f4a073-1d45-57c0-be44-3bd6de352aa8', 'ef28acb9-c90f-5869-ba1b-cdc3bc8e0ee1', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The integration roadmap should protect business continuity while resolving duplicated roles, incompatible systems, and cultural friction.","instruction":"Соберите перевод.","source_language":"ru","source_text":"План интеграции должен обеспечивать непрерывность бизнеса при устранении дублирующихся ролей, несовместимых систем и культурных разногласий.","target_language":"en","word_bank":["The","integration","roadmap","should","protect","business","continuity","while","resolving","duplicated","roles",",","incompatible","systems",",","and","cultural","friction","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aca3ae50-12cf-5113-8fbf-33c262a5f0a6', 'ef28acb9-c90f-5869-ba1b-cdc3bc8e0ee1', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"deal breaker","instruction":"Выберите подходящее слово.","options":["deal breaker","legacy liability","acquisition rationale"],"sentence_template":"The integration roadmap should protect business continuity while resolving duplicated roles, incompatible systems, and cultural friction."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('23cf887e-daaa-52d7-a3e9-6f440ca99f6b', 'ef28acb9-c90f-5869-ba1b-cdc3bc8e0ee1', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","integration","roadmap","should","protect","business","continuity","while","resolving","duplicated","roles",",","incompatible","systems",",","and","cultural","friction","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","friction","cultural","and",",","systems","incompatible",",","roles","duplicated","resolving","while","continuity","business","protect","should","roadmap","integration","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('198f12af-6254-5eb2-9518-6837eb78e74f', 'ef28acb9-c90f-5869-ba1b-cdc3bc8e0ee1', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The integration roadmap should protect business continuity while resolving duplicated roles, incompatible systems, and cultural friction. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('539cfa27-4a0a-5fad-968b-1db7865e834c', 'ef28acb9-c90f-5869-ba1b-cdc3bc8e0ee1', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The integration roadmap should protect business continuity while resolving duplicated roles, incompatible systems, and cultural friction. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"План интеграции должен обеспечивать непрерывность бизнеса при устранении дублирующихся ролей, несовместимых систем и культурных разногласий. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9c3ea8e9-d18b-51cb-9305-2b0ca2b1bf80', 'ef28acb9-c90f-5869-ba1b-cdc3bc8e0ee1', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"The integration roadmap should protect business continuity while resolving duplicated roles, incompatible systems, and cultural friction.","translation":"План интеграции должен обеспечивать непрерывность бизнеса при устранении дублирующихся ролей, несовместимых систем и культурных разногласий.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Planning Post-Merger Integration"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5cbcdf33-61e8-5b77-b496-65b67b170c69', 'ef28acb9-c90f-5869-ba1b-cdc3bc8e0ee1', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“deal breaker” means an issue serious enough to prevent a transaction.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L3_D11","is_correct":true,"text":"an issue serious enough to prevent a transaction"},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L3_D12","is_correct":false,"text":"additional value expected from combining organisations"},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L3_D13","is_correct":false,"text":"the ability of organisational cultures to work together"}],"word":"deal breaker"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e30920e-b3e5-5349-9939-609c9130a0f2', 'ef28acb9-c90f-5869-ba1b-cdc3bc8e0ee1', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The integration roadmap should protect business continuity while resolving duplicated roles, incompatible systems, and cultural friction.","explanation":"The missing C1 business expression is “deal breaker”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"deal breaker","id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L3_D14","is_correct":true},{"audio_text":"cultural compatibility","id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L3_D15","is_correct":false},{"audio_text":"integration roadmap","id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L3_D16","is_correct":false}],"sentence_template":"The integration roadmap should protect business continuity while resolving duplicated roles, incompatible systems, and cultural friction."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e2a2607-7f5d-5c2f-9f84-6339b88f9ae5', 'ef28acb9-c90f-5869-ba1b-cdc3bc8e0ee1', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"deal breaker","explanation":"The complete business statement uses “deal breaker” accurately in context.","hint_prefix":"deal","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The integration roadmap should protect business continuity while resolving duplicated roles, incompatible systems, and cultural friction."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('24775cee-58c6-530a-bcb8-5a08b8d9e0a9', 'ef28acb9-c90f-5869-ba1b-cdc3bc8e0ee1', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"acquisition rationale","id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L3_D17","text":"acquisition rationale"},{"audio_text":"valuation multiple","id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L3_D18","text":"valuation multiple"},{"audio_text":"deal breaker","id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L3_D19","text":"deal breaker"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1707792-3bff-5fde-bb17-8c909b4e9f25', 'ef28acb9-c90f-5869-ba1b-cdc3bc8e0ee1', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Planning Post-Merger Integration”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L3_D20","is_correct":true,"text":"The integration roadmap should protect business continuity while resolving duplicated roles, incompatible systems, and cultural friction."},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L3_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_MERGERS_ACQUISITIONS_DUE_DILIGENCE_AND_INTEGRATION_L3_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8eb87c6a-9b1e-5627-8cd8-691edb9945f2', 'ef28acb9-c90f-5869-ba1b-cdc3bc8e0ee1', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('93a546bd-3ac2-5f38-a0c9-d57bc94fb5c2', 'en', 'acquisition rationale', 'обоснование приобретения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('05cd99ca-fcb9-515e-8a0a-7c11de4adc8a', 'en', 'valuation multiple', 'оценочный мультипликатор', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ba3ba483-b193-5569-98ac-2fbd3822d474', 'en', 'deal breaker', 'критическое препятствие для сделки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c036ff6d-89ee-5fee-aa15-41f61ef984d2', 'en', 'integration synergy', 'синергия интеграции', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1d35e9cb-a050-541a-be7c-f9baef9233a6', 'en', 'cultural compatibility', 'культурная совместимость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e9c1d9ab-3a3b-5098-863c-5a26d184ac73', 'en', 'legacy liability', 'унаследованное обязательство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fbcb7ee3-d8fc-5842-b398-e740845c7db8', 'en', 'integration roadmap', 'план интеграции', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('93a546bd-3ac2-5f38-a0c9-d57bc94fb5c2', 'en', 'acquisition rationale', 'обоснование приобретения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('05cd99ca-fcb9-515e-8a0a-7c11de4adc8a', 'en', 'valuation multiple', 'оценочный мультипликатор', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ba3ba483-b193-5569-98ac-2fbd3822d474', 'en', 'deal breaker', 'критическое препятствие для сделки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c036ff6d-89ee-5fee-aa15-41f61ef984d2', 'en', 'integration synergy', 'синергия интеграции', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1d35e9cb-a050-541a-be7c-f9baef9233a6', 'en', 'cultural compatibility', 'культурная совместимость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e9c1d9ab-3a3b-5098-863c-5a26d184ac73', 'en', 'legacy liability', 'унаследованное обязательство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fbcb7ee3-d8fc-5842-b398-e740845c7db8', 'en', 'integration roadmap', 'план интеграции', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('93a546bd-3ac2-5f38-a0c9-d57bc94fb5c2', 'en', 'acquisition rationale', 'обоснование приобретения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('05cd99ca-fcb9-515e-8a0a-7c11de4adc8a', 'en', 'valuation multiple', 'оценочный мультипликатор', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ba3ba483-b193-5569-98ac-2fbd3822d474', 'en', 'deal breaker', 'критическое препятствие для сделки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c036ff6d-89ee-5fee-aa15-41f61ef984d2', 'en', 'integration synergy', 'синергия интеграции', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1d35e9cb-a050-541a-be7c-f9baef9233a6', 'en', 'cultural compatibility', 'культурная совместимость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e9c1d9ab-3a3b-5098-863c-5a26d184ac73', 'en', 'legacy liability', 'унаследованное обязательство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fbcb7ee3-d8fc-5842-b398-e740845c7db8', 'en', 'integration roadmap', 'план интеграции', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8eb87c6a-9b1e-5627-8cd8-691edb9945f2', id, '7aabe24e-61ed-5659-a2bd-6a17a589a7ef', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'acquisition rationale' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8eb87c6a-9b1e-5627-8cd8-691edb9945f2', id, '7aabe24e-61ed-5659-a2bd-6a17a589a7ef', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'valuation multiple' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8eb87c6a-9b1e-5627-8cd8-691edb9945f2', id, '7aabe24e-61ed-5659-a2bd-6a17a589a7ef', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'deal breaker' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8eb87c6a-9b1e-5627-8cd8-691edb9945f2', id, '7aabe24e-61ed-5659-a2bd-6a17a589a7ef', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'integration synergy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8eb87c6a-9b1e-5627-8cd8-691edb9945f2', id, '7aabe24e-61ed-5659-a2bd-6a17a589a7ef', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'cultural compatibility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8eb87c6a-9b1e-5627-8cd8-691edb9945f2', id, '7aabe24e-61ed-5659-a2bd-6a17a589a7ef', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'legacy liability' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8eb87c6a-9b1e-5627-8cd8-691edb9945f2', id, '7aabe24e-61ed-5659-a2bd-6a17a589a7ef', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'integration roadmap' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8eb87c6a-9b1e-5627-8cd8-691edb9945f2', id, 'f2568487-576d-51ca-a45e-f80f15674469', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'acquisition rationale' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8eb87c6a-9b1e-5627-8cd8-691edb9945f2', id, 'f2568487-576d-51ca-a45e-f80f15674469', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'valuation multiple' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8eb87c6a-9b1e-5627-8cd8-691edb9945f2', id, 'f2568487-576d-51ca-a45e-f80f15674469', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'deal breaker' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8eb87c6a-9b1e-5627-8cd8-691edb9945f2', id, 'f2568487-576d-51ca-a45e-f80f15674469', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'integration synergy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8eb87c6a-9b1e-5627-8cd8-691edb9945f2', id, 'f2568487-576d-51ca-a45e-f80f15674469', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'cultural compatibility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8eb87c6a-9b1e-5627-8cd8-691edb9945f2', id, 'f2568487-576d-51ca-a45e-f80f15674469', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'legacy liability' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8eb87c6a-9b1e-5627-8cd8-691edb9945f2', id, 'f2568487-576d-51ca-a45e-f80f15674469', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'integration roadmap' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8eb87c6a-9b1e-5627-8cd8-691edb9945f2', id, 'ef28acb9-c90f-5869-ba1b-cdc3bc8e0ee1', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'acquisition rationale' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8eb87c6a-9b1e-5627-8cd8-691edb9945f2', id, 'ef28acb9-c90f-5869-ba1b-cdc3bc8e0ee1', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'valuation multiple' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8eb87c6a-9b1e-5627-8cd8-691edb9945f2', id, 'ef28acb9-c90f-5869-ba1b-cdc3bc8e0ee1', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'deal breaker' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8eb87c6a-9b1e-5627-8cd8-691edb9945f2', id, 'ef28acb9-c90f-5869-ba1b-cdc3bc8e0ee1', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'integration synergy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8eb87c6a-9b1e-5627-8cd8-691edb9945f2', id, 'ef28acb9-c90f-5869-ba1b-cdc3bc8e0ee1', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'cultural compatibility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8eb87c6a-9b1e-5627-8cd8-691edb9945f2', id, 'ef28acb9-c90f-5869-ba1b-cdc3bc8e0ee1', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'legacy liability' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8eb87c6a-9b1e-5627-8cd8-691edb9945f2', id, 'ef28acb9-c90f-5869-ba1b-cdc3bc8e0ee1', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'integration roadmap' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
