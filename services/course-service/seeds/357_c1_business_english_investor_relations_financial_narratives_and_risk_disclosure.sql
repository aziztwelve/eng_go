-- Track: C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('4e35b555-29e4-5144-a6d8-400ead85d6cd', 'C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE', 'Отношения с инвесторами, финансовая аргументация и раскрытие рисков', 'Освойте продвинутый деловой английский уровня C1 по теме «Отношения с инвесторами, финансовая аргументация и раскрытие рисков» через реалистичные рабочие ситуации, требующие точного анализа, дипломатичной аргументации и ответственных решений.', '{"en":"Investor Relations, Financial Narratives and Risk Disclosure","ru":"Отношения с инвесторами, финансовая аргументация и раскрытие рисков"}'::jsonb, '{"en":"Master advanced C1 business English for investor relations, financial narratives and risk disclosure through realistic workplace situations requiring precise analysis, diplomatic argument, and accountable decisions.","ru":"Освойте продвинутый деловой английский уровня C1 по теме «Отношения с инвесторами, финансовая аргументация и раскрытие рисков» через реалистичные рабочие ситуации, требующие точного анализа, дипломатичной аргументации и ответственных решений."}'::jsonb, 'en', 'C1', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('d583d333-ad60-5add-b6c3-2bd0013b2b14', NULL, 'Реальная деловая ситуация и ключевые понятия', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Explaining Results Beyond the Headline","ru":"Реальная деловая ситуация и ключевые понятия"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f2bdd106-0915-5420-8657-3e42e9da24b0', 'd583d333-ad60-5add-b6c3-2bd0013b2b14', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L1_D01","left":"earnings guidance","right":"прогноз финансовых результатов"},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L1_D02","left":"underlying performance","right":"базовые показатели деятельности"},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L1_D03","left":"forward-looking statement","right":"прогнозное заявление"},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L1_D04","left":"material uncertainty","right":"существенная неопределённость"},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L1_D05","left":"capital allocation","right":"распределение капитала"},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L1_D06","left":"margin compression","right":"снижение маржи"},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L1_D07","left":"market expectation","right":"ожидание рынка"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('140ed356-95d5-527b-8f13-3ab54fc8d1d3', 'd583d333-ad60-5add-b6c3-2bd0013b2b14', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L1_D08","is_correct":true,"text":"Although reported revenue exceeded market expectations, underlying performance was weakened by margin compression and unusually high customer-acquisition costs."},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L1_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L1_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b7ba8a1d-6025-56e0-953a-e0ac9211e373', 'd583d333-ad60-5add-b6c3-2bd0013b2b14', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Although reported revenue exceeded market expectations, underlying performance was weakened by margin compression and unusually high customer-acquisition costs.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Хотя заявленная выручка превысила ожидания рынка, базовые показатели были ослаблены снижением маржи и необычно высокими затратами на привлечение клиентов.","target_language":"en","word_bank":["Although","reported","revenue","exceeded","market","expectations",",","underlying","performance","was","weakened","by","margin","compression","and","unusually","high","customer-acquisition","costs","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e1716106-53db-585b-8dfb-a7e7e356fcbc', 'd583d333-ad60-5add-b6c3-2bd0013b2b14', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"earnings guidance","instruction":"Выберите подходящее слово.","options":["earnings guidance","material uncertainty","margin compression"],"sentence_template":"Although reported revenue exceeded market expectations, underlying performance was weakened by margin compression and unusually high customer-acquisition costs."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7fa9e91a-e2ce-5a4d-9679-220fbbc2ae58', 'd583d333-ad60-5add-b6c3-2bd0013b2b14', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Although","reported","revenue","exceeded","market","expectations",",","underlying","performance","was","weakened","by","margin","compression","and","unusually","high","customer-acquisition","costs","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","costs","customer-acquisition","high","unusually","and","compression","margin","by","weakened","was","performance","underlying",",","expectations","market","exceeded","revenue","reported","Although"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('97980981-833d-5f75-8d5b-d4e689d17d07', 'd583d333-ad60-5add-b6c3-2bd0013b2b14', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Although reported revenue exceeded market expectations, underlying performance was weakened by margin compression and unusually high customer-acquisition costs. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b679c0a8-ab51-5b53-b631-a0ad63f1c643', 'd583d333-ad60-5add-b6c3-2bd0013b2b14', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Although reported revenue exceeded market expectations, underlying performance was weakened by margin compression and unusually high customer-acquisition costs. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Хотя заявленная выручка превысила ожидания рынка, базовые показатели были ослаблены снижением маржи и необычно высокими затратами на привлечение клиентов. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('edea5176-d35d-5eee-84c7-ca5136783c70', 'd583d333-ad60-5add-b6c3-2bd0013b2b14', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"Although reported revenue exceeded market expectations, underlying performance was weakened by margin compression and unusually high customer-acquisition costs.","translation":"Хотя заявленная выручка превысила ожидания рынка, базовые показатели были ослаблены снижением маржи и необычно высокими затратами на привлечение клиентов.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Explaining Results Beyond the Headline"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('428fc6a0-7889-5d38-b200-1472b3b089ed', 'd583d333-ad60-5add-b6c3-2bd0013b2b14', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“earnings guidance” means a company’s public forecast of future financial performance.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L1_D11","is_correct":true,"text":"a company’s public forecast of future financial performance"},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L1_D12","is_correct":false,"text":"results excluding temporary or exceptional effects"},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L1_D13","is_correct":false,"text":"a statement about expected future events or results"}],"word":"earnings guidance"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f9138091-94d9-5713-b63c-ecbc5505eed3', 'd583d333-ad60-5add-b6c3-2bd0013b2b14', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Although reported revenue exceeded market expectations, underlying performance was weakened by margin compression and unusually high customer-acquisition costs.","explanation":"The missing C1 business expression is “earnings guidance”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"earnings guidance","id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L1_D14","is_correct":true},{"audio_text":"forward-looking statement","id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L1_D15","is_correct":false},{"audio_text":"capital allocation","id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L1_D16","is_correct":false}],"sentence_template":"Although reported revenue exceeded market expectations, underlying performance was weakened by margin compression and unusually high customer-acquisition costs."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e3d3b5a1-e379-50ea-9765-501f22d0b217', 'd583d333-ad60-5add-b6c3-2bd0013b2b14', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"earnings guidance","explanation":"The complete business statement uses “earnings guidance” accurately in context.","hint_prefix":"earn","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Although reported revenue exceeded market expectations, underlying performance was weakened by margin compression and unusually high customer-acquisition costs."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('29584fd7-2818-5793-b143-d00c58fc1bec', 'd583d333-ad60-5add-b6c3-2bd0013b2b14', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"earnings guidance","id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L1_D17","text":"earnings guidance"},{"audio_text":"underlying performance","id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L1_D18","text":"underlying performance"},{"audio_text":"forward-looking statement","id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L1_D19","text":"forward-looking statement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a0ba16c8-5887-5d4b-bb6e-aa42b2355c38', 'd583d333-ad60-5add-b6c3-2bd0013b2b14', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Explaining Results Beyond the Headline”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L1_D20","is_correct":true,"text":"Although reported revenue exceeded market expectations, underlying performance was weakened by margin compression and unusually high customer-acquisition costs."},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L1_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L1_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('4e35b555-29e4-5144-a6d8-400ead85d6cd', 'd583d333-ad60-5add-b6c3-2bd0013b2b14', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('47b87284-fea9-516e-9b9f-275a5302d258', NULL, 'Анализ, аргументация и взаимодействие', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Handling Investor Questions Under Pressure","ru":"Анализ, аргументация и взаимодействие"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6626a484-bdf5-52dd-92db-3af9cc26d869', '47b87284-fea9-516e-9b9f-275a5302d258', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L2_D01","left":"earnings guidance","right":"прогноз финансовых результатов"},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L2_D02","left":"underlying performance","right":"базовые показатели деятельности"},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L2_D03","left":"forward-looking statement","right":"прогнозное заявление"},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L2_D04","left":"material uncertainty","right":"существенная неопределённость"},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L2_D05","left":"capital allocation","right":"распределение капитала"},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L2_D06","left":"margin compression","right":"снижение маржи"},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L2_D07","left":"market expectation","right":"ожидание рынка"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f3a72afd-2e7b-551b-9ee8-25bc426515c8', '47b87284-fea9-516e-9b9f-275a5302d258', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L2_D08","is_correct":true,"text":"We are maintaining our earnings guidance, but the range reflects material uncertainty around demand, pricing, and the timing of capital investment."},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L2_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L2_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d876fd91-f498-5c0d-838d-8b3cdcc98b75', '47b87284-fea9-516e-9b9f-275a5302d258', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We are maintaining our earnings guidance, but the range reflects material uncertainty around demand, pricing, and the timing of capital investment.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мы сохраняем прогноз финансовых результатов, однако диапазон отражает существенную неопределённость в отношении спроса, цен и сроков капиталовложений.","target_language":"en","word_bank":["We","are","maintaining","our","earnings","guidance",",","but","the","range","reflects","material","uncertainty","around","demand",",","pricing",",","and","the","timing","of","capital","investment","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d46631b-40f2-5cc2-b27c-24b09b6692eb', '47b87284-fea9-516e-9b9f-275a5302d258', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"underlying performance","instruction":"Выберите подходящее слово.","options":["underlying performance","capital allocation","market expectation"],"sentence_template":"We are maintaining our earnings guidance, but the range reflects material uncertainty around demand, pricing, and the timing of capital investment."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b80481c7-6f87-5df3-83f3-53463714d202', '47b87284-fea9-516e-9b9f-275a5302d258', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","maintaining","our","earnings","guidance",",","but","the","range","reflects","material","uncertainty","around","demand",",","pricing",",","and","the","timing","of","capital","investment","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","investment","capital","of","timing","the","and",",","pricing",",","demand","around","uncertainty","material","reflects","range","the","but",",","guidance","earnings","our","maintaining","are","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7b7d9397-e9fd-504e-bca8-7136da438971', '47b87284-fea9-516e-9b9f-275a5302d258', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We are maintaining our earnings guidance, but the range reflects material uncertainty around demand, pricing, and the timing of capital investment. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f3d7ae74-2f21-5146-9eaa-7611d4ebabcc', '47b87284-fea9-516e-9b9f-275a5302d258', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We are maintaining our earnings guidance, but the range reflects material uncertainty around demand, pricing, and the timing of capital investment. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Мы сохраняем прогноз финансовых результатов, однако диапазон отражает существенную неопределённость в отношении спроса, цен и сроков капиталовложений. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('109678d7-10de-5186-b4ec-42f5efba4fcb', '47b87284-fea9-516e-9b9f-275a5302d258', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"We are maintaining our earnings guidance, but the range reflects material uncertainty around demand, pricing, and the timing of capital investment.","translation":"Мы сохраняем прогноз финансовых результатов, однако диапазон отражает существенную неопределённость в отношении спроса, цен и сроков капиталовложений.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Handling Investor Questions Under Pressure"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('68b495d7-6c66-5ea4-9921-6c9e24654f37', '47b87284-fea9-516e-9b9f-275a5302d258', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“underlying performance” means results excluding temporary or exceptional effects.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L2_D11","is_correct":true,"text":"results excluding temporary or exceptional effects"},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L2_D12","is_correct":false,"text":"a statement about expected future events or results"},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L2_D13","is_correct":false,"text":"uncertainty significant enough to influence investor judgement"}],"word":"underlying performance"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('67abefde-b0c6-5d9a-8024-0e18a9053787', '47b87284-fea9-516e-9b9f-275a5302d258', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We are maintaining our earnings guidance, but the range reflects material uncertainty around demand, pricing, and the timing of capital investment.","explanation":"The missing C1 business expression is “underlying performance”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"underlying performance","id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L2_D14","is_correct":true},{"audio_text":"material uncertainty","id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L2_D15","is_correct":false},{"audio_text":"margin compression","id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L2_D16","is_correct":false}],"sentence_template":"We are maintaining our earnings guidance, but the range reflects material uncertainty around demand, pricing, and the timing of capital investment."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ed5a91b0-81ca-54f9-969b-87ef79b97106', '47b87284-fea9-516e-9b9f-275a5302d258', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"underlying performance","explanation":"The complete business statement uses “underlying performance” accurately in context.","hint_prefix":"unde","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We are maintaining our earnings guidance, but the range reflects material uncertainty around demand, pricing, and the timing of capital investment."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bbadca24-2374-59cd-9e14-6650763d7237', '47b87284-fea9-516e-9b9f-275a5302d258', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"earnings guidance","id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L2_D17","text":"earnings guidance"},{"audio_text":"underlying performance","id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L2_D18","text":"underlying performance"},{"audio_text":"forward-looking statement","id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L2_D19","text":"forward-looking statement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac2a8742-844e-5095-b7f9-cf237252f165', '47b87284-fea9-516e-9b9f-275a5302d258', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Handling Investor Questions Under Pressure”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L2_D20","is_correct":true,"text":"We are maintaining our earnings guidance, but the range reflects material uncertainty around demand, pricing, and the timing of capital investment."},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L2_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L2_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('4e35b555-29e4-5144-a6d8-400ead85d6cd', '47b87284-fea9-516e-9b9f-275a5302d258', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c04b15a1-f591-527a-ac2a-da0cd96b9700', NULL, 'Решение, ответственность и последующие действия', 'Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия.', '{"en":"Disclosing Risk Without Creating Confusion","ru":"Решение, ответственность и последующие действия"}'::jsonb, '{"en":"Handle a complex real-world C1 business task confidently by distinguishing evidence, assumptions, and implications; articulating a precise position; responding diplomatically to challenge; and agreeing measurable action.","ru":"Уверенно решать сложную реальную деловую задачу уровня C1: различать факты, допущения и последствия, точно формулировать позицию, дипломатично отвечать на возражения и согласовывать измеримые действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('735df0db-c160-5644-8846-bd7be15ca485', 'c04b15a1-f591-527a-ac2a-da0cd96b9700', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L3_D01","left":"earnings guidance","right":"прогноз финансовых результатов"},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L3_D02","left":"underlying performance","right":"базовые показатели деятельности"},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L3_D03","left":"forward-looking statement","right":"прогнозное заявление"},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L3_D04","left":"material uncertainty","right":"существенная неопределённость"},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L3_D05","left":"capital allocation","right":"распределение капитала"},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L3_D06","left":"margin compression","right":"снижение маржи"},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L3_D07","left":"market expectation","right":"ожидание рынка"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0223368c-a7cf-515e-b57b-ccea88bca5f7', 'c04b15a1-f591-527a-ac2a-da0cd96b9700', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response qualifies the claim, uses precise business language, and connects the recommendation to evidence, risk, and accountable action.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L3_D08","is_correct":true,"text":"Any forward-looking statement should explain the principal assumptions and avoid presenting a conditional projection as a guaranteed outcome."},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L3_D09","is_correct":false,"text":"The recommendation is obviously correct, so uncertainty and opposing evidence do not need to be discussed."},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L3_D10","is_correct":false,"text":"We can proceed informally without documenting the rationale, the risk, or responsibility for delivery."}],"question":"Which response demonstrates the most credible C1-level business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('adf809b9-456b-567e-9a58-3aeb7d6bad2a', 'c04b15a1-f591-527a-ac2a-da0cd96b9700', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Any forward-looking statement should explain the principal assumptions and avoid presenting a conditional projection as a guaranteed outcome.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Любое прогнозное заявление должно объяснять основные допущения и не представлять условный прогноз как гарантированный результат.","target_language":"en","word_bank":["Any","forward-looking","statement","should","explain","the","principal","assumptions","and","avoid","presenting","a","conditional","projection","as","a","guaranteed","outcome","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5ba30ae-463e-5419-b997-f60264253bae', 'c04b15a1-f591-527a-ac2a-da0cd96b9700', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"forward-looking statement","instruction":"Выберите подходящее слово.","options":["forward-looking statement","margin compression","earnings guidance"],"sentence_template":"Any ___ should explain the principal assumptions and avoid presenting a conditional projection as a guaranteed outcome."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bbdcadbd-eeaf-5b56-a1c9-f242ce0b4376', 'c04b15a1-f591-527a-ac2a-da0cd96b9700', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Any","forward-looking","statement","should","explain","the","principal","assumptions","and","avoid","presenting","a","conditional","projection","as","a","guaranteed","outcome","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","outcome","guaranteed","a","as","projection","conditional","a","presenting","avoid","and","assumptions","principal","the","explain","should","statement","forward-looking","Any"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d6fa922-5967-5461-97fb-b33ff73c36cd', 'c04b15a1-f591-527a-ac2a-da0cd96b9700', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Any forward-looking statement should explain the principal assumptions and avoid presenting a conditional projection as a guaranteed outcome. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0800cb07-489a-52ff-bb86-ea5a9be5208e', 'c04b15a1-f591-527a-ac2a-da0cd96b9700', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Any forward-looking statement should explain the principal assumptions and avoid presenting a conditional projection as a guaranteed outcome. Before implementation, the team should test the critical assumptions, document the decision rationale, and assign an accountable owner. A robust conclusion should acknowledge credible counterarguments and specify what new evidence would justify revising the decision.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Любое прогнозное заявление должно объяснять основные допущения и не представлять условный прогноз как гарантированный результат. До внедрения команда должна проверить критические допущения, документировать обоснование решения и назначить ответственного. Надёжный вывод должен учитывать обоснованные возражения и указывать, какие новые данные потребуют пересмотра решения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9994a0c7-35ee-51bc-acc1-8bbcc87bd3b5', 'c04b15a1-f591-527a-ac2a-da0cd96b9700', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"Any forward-looking statement should explain the principal assumptions and avoid presenting a conditional projection as a guaranteed outcome.","translation":"Любое прогнозное заявление должно объяснять основные допущения и не представлять условный прогноз как гарантированный результат.","type":"dialogue"},{"character":"Colleague","text":"What evidence could weaken that conclusion, and how would you manage the remaining exposure?","translation":"Какие данные могут ослабить этот вывод и как вы будете управлять оставшимся риском?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the limitation explicitly, compare the viable alternatives, and define a measurable review trigger."},{"is_correct":false,"text":"I would dismiss the concern because acknowledging uncertainty might delay approval."}],"text":"Which response advances the decision?","type":"choice"}],"title":"Disclosing Risk Without Creating Confusion"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac96abf5-6fd6-5123-a371-defa70a4e6c3', 'c04b15a1-f591-527a-ac2a-da0cd96b9700', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“forward-looking statement” means a statement about expected future events or results.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L3_D11","is_correct":true,"text":"a statement about expected future events or results"},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L3_D12","is_correct":false,"text":"uncertainty significant enough to influence investor judgement"},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L3_D13","is_correct":false,"text":"the decision about where an organisation invests its financial resources"}],"word":"forward-looking statement"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b6b7bb30-2762-56b6-88d1-5fcd2861c8b3', 'c04b15a1-f591-527a-ac2a-da0cd96b9700', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Any forward-looking statement should explain the principal assumptions and avoid presenting a conditional projection as a guaranteed outcome.","explanation":"The missing C1 business expression is “forward-looking statement”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"forward-looking statement","id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L3_D14","is_correct":true},{"audio_text":"capital allocation","id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L3_D15","is_correct":false},{"audio_text":"market expectation","id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L3_D16","is_correct":false}],"sentence_template":"Any ___ should explain the principal assumptions and avoid presenting a conditional projection as a guaranteed outcome."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a63e0365-4750-5959-a03d-0e1bb7761ab0', 'c04b15a1-f591-527a-ac2a-da0cd96b9700', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"forward-looking statement","explanation":"The complete business statement uses “forward-looking statement” accurately in context.","hint_prefix":"forw","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Any ___ should explain the principal assumptions and avoid presenting a conditional projection as a guaranteed outcome."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a069a98e-4987-505b-a43f-ff1c6d13db12', 'c04b15a1-f591-527a-ac2a-da0cd96b9700', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"earnings guidance","id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L3_D17","text":"earnings guidance"},{"audio_text":"underlying performance","id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L3_D18","text":"underlying performance"},{"audio_text":"forward-looking statement","id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L3_D19","text":"forward-looking statement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5110c5b7-e772-56a2-a678-7c3ca4728e77', 'c04b15a1-f591-527a-ac2a-da0cd96b9700', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What would you recommend in the real business situation “Disclosing Risk Without Creating Confusion”?"}],"explanation":"The correct response delivers a precise, nuanced, and actionable C1 business recommendation grounded in evidence and professional accountability.","instruction":"Ответьте.","options":[{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L3_D20","is_correct":true,"text":"Any forward-looking statement should explain the principal assumptions and avoid presenting a conditional projection as a guaranteed outcome."},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L3_D21","is_correct":false,"text":"I would approve the preferred option without testing its assumptions or considering the downside."},{"id":"C1_BUSINESS_ENGLISH_INVESTOR_RELATIONS_FINANCIAL_NARRATIVES_AND_RISK_DISCLOSURE_L3_D22","is_correct":false,"text":"I would postpone the discussion indefinitely and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('4e35b555-29e4-5144-a6d8-400ead85d6cd', 'c04b15a1-f591-527a-ac2a-da0cd96b9700', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d44f1cd-acc1-533a-8941-dbe129682266', 'en', 'earnings guidance', 'прогноз финансовых результатов', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f87827e1-3093-5023-ad18-cfc713463fee', 'en', 'underlying performance', 'базовые показатели деятельности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b7cfce2d-ef16-58a4-8ca9-928b0d7ef71b', 'en', 'forward-looking statement', 'прогнозное заявление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6ed6f47d-b114-55a8-b608-723e24057438', 'en', 'material uncertainty', 'существенная неопределённость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('580aa023-6b7a-5d3d-822f-a8c1adc82bbe', 'en', 'capital allocation', 'распределение капитала', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('113da7e0-4fa4-5707-8765-2da5f55fa5ce', 'en', 'margin compression', 'снижение маржи', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a7882f1f-ce2d-5fce-92c5-b3d0620af4e9', 'en', 'market expectation', 'ожидание рынка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d44f1cd-acc1-533a-8941-dbe129682266', 'en', 'earnings guidance', 'прогноз финансовых результатов', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f87827e1-3093-5023-ad18-cfc713463fee', 'en', 'underlying performance', 'базовые показатели деятельности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b7cfce2d-ef16-58a4-8ca9-928b0d7ef71b', 'en', 'forward-looking statement', 'прогнозное заявление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6ed6f47d-b114-55a8-b608-723e24057438', 'en', 'material uncertainty', 'существенная неопределённость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('580aa023-6b7a-5d3d-822f-a8c1adc82bbe', 'en', 'capital allocation', 'распределение капитала', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('113da7e0-4fa4-5707-8765-2da5f55fa5ce', 'en', 'margin compression', 'снижение маржи', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a7882f1f-ce2d-5fce-92c5-b3d0620af4e9', 'en', 'market expectation', 'ожидание рынка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d44f1cd-acc1-533a-8941-dbe129682266', 'en', 'earnings guidance', 'прогноз финансовых результатов', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f87827e1-3093-5023-ad18-cfc713463fee', 'en', 'underlying performance', 'базовые показатели деятельности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b7cfce2d-ef16-58a4-8ca9-928b0d7ef71b', 'en', 'forward-looking statement', 'прогнозное заявление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6ed6f47d-b114-55a8-b608-723e24057438', 'en', 'material uncertainty', 'существенная неопределённость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('580aa023-6b7a-5d3d-822f-a8c1adc82bbe', 'en', 'capital allocation', 'распределение капитала', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('113da7e0-4fa4-5707-8765-2da5f55fa5ce', 'en', 'margin compression', 'снижение маржи', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a7882f1f-ce2d-5fce-92c5-b3d0620af4e9', 'en', 'market expectation', 'ожидание рынка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e35b555-29e4-5144-a6d8-400ead85d6cd', id, 'd583d333-ad60-5add-b6c3-2bd0013b2b14', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'earnings guidance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e35b555-29e4-5144-a6d8-400ead85d6cd', id, 'd583d333-ad60-5add-b6c3-2bd0013b2b14', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'underlying performance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e35b555-29e4-5144-a6d8-400ead85d6cd', id, 'd583d333-ad60-5add-b6c3-2bd0013b2b14', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'forward-looking statement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e35b555-29e4-5144-a6d8-400ead85d6cd', id, 'd583d333-ad60-5add-b6c3-2bd0013b2b14', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'material uncertainty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e35b555-29e4-5144-a6d8-400ead85d6cd', id, 'd583d333-ad60-5add-b6c3-2bd0013b2b14', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'capital allocation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e35b555-29e4-5144-a6d8-400ead85d6cd', id, 'd583d333-ad60-5add-b6c3-2bd0013b2b14', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'margin compression' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e35b555-29e4-5144-a6d8-400ead85d6cd', id, 'd583d333-ad60-5add-b6c3-2bd0013b2b14', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'market expectation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e35b555-29e4-5144-a6d8-400ead85d6cd', id, '47b87284-fea9-516e-9b9f-275a5302d258', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'earnings guidance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e35b555-29e4-5144-a6d8-400ead85d6cd', id, '47b87284-fea9-516e-9b9f-275a5302d258', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'underlying performance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e35b555-29e4-5144-a6d8-400ead85d6cd', id, '47b87284-fea9-516e-9b9f-275a5302d258', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'forward-looking statement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e35b555-29e4-5144-a6d8-400ead85d6cd', id, '47b87284-fea9-516e-9b9f-275a5302d258', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'material uncertainty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e35b555-29e4-5144-a6d8-400ead85d6cd', id, '47b87284-fea9-516e-9b9f-275a5302d258', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'capital allocation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e35b555-29e4-5144-a6d8-400ead85d6cd', id, '47b87284-fea9-516e-9b9f-275a5302d258', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'margin compression' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e35b555-29e4-5144-a6d8-400ead85d6cd', id, '47b87284-fea9-516e-9b9f-275a5302d258', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'market expectation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e35b555-29e4-5144-a6d8-400ead85d6cd', id, 'c04b15a1-f591-527a-ac2a-da0cd96b9700', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'earnings guidance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e35b555-29e4-5144-a6d8-400ead85d6cd', id, 'c04b15a1-f591-527a-ac2a-da0cd96b9700', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'underlying performance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e35b555-29e4-5144-a6d8-400ead85d6cd', id, 'c04b15a1-f591-527a-ac2a-da0cd96b9700', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'forward-looking statement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e35b555-29e4-5144-a6d8-400ead85d6cd', id, 'c04b15a1-f591-527a-ac2a-da0cd96b9700', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'material uncertainty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e35b555-29e4-5144-a6d8-400ead85d6cd', id, 'c04b15a1-f591-527a-ac2a-da0cd96b9700', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'capital allocation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e35b555-29e4-5144-a6d8-400ead85d6cd', id, 'c04b15a1-f591-527a-ac2a-da0cd96b9700', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'margin compression' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e35b555-29e4-5144-a6d8-400ead85d6cd', id, 'c04b15a1-f591-527a-ac2a-da0cd96b9700', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'market expectation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
