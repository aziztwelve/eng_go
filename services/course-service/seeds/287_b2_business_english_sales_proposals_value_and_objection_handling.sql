-- Track: B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('9021a194-31e9-5559-bf43-81a20113a7c7', 'B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING', 'Коммерческие предложения, ценность и работа с возражениями', 'Развивайте точный деловой английский уровня B2 по теме «Коммерческие предложения, ценность и работа с возражениями», анализируя коммерческие последствия и согласовывая обоснованные решения.', '{"en":"Sales Proposals, Value and Objection Handling","ru":"Коммерческие предложения, ценность и работа с возражениями"}'::jsonb, '{"en":"Develop precise B2 business English for sales proposals, value and objection handling by analysing commercial implications and negotiating well-supported decisions.","ru":"Развивайте точный деловой английский уровня B2 по теме «Коммерческие предложения, ценность и работа с возражениями», анализируя коммерческие последствия и согласовывая обоснованные решения."}'::jsonb, 'en', 'B2', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('bd24f6da-8a20-5821-ac8b-804362c25d67', NULL, 'Деловой контекст и ключевые понятия', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Diagnosing Client Needs","ru":"Деловой контекст и ключевые понятия"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7693c38a-c424-5b8e-818f-852d04c1c98d', 'bd24f6da-8a20-5821-ac8b-804362c25d67', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L1_D01","left":"discovery question","right":"диагностический вопрос"},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L1_D02","left":"pain point","right":"проблемная потребность"},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L1_D03","left":"value proposition","right":"ценностное предложение"},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L1_D04","left":"decision-maker","right":"лицо, принимающее решение"},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L1_D05","left":"return on investment","right":"окупаемость инвестиций"},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L1_D06","left":"address an objection","right":"ответить на возражение"},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L1_D07","left":"proof of concept","right":"подтверждение концепции"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8cc3663e-0a74-59da-8e19-77ae0c1e8770', 'bd24f6da-8a20-5821-ac8b-804362c25d67', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L1_D08","is_correct":true,"text":"A discovery question should reveal the client’s operational pain point and the business consequence of leaving it unresolved."},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L1_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L1_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1a619506-e9bb-58e6-819d-4df0065edc70', 'bd24f6da-8a20-5821-ac8b-804362c25d67', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A discovery question should reveal the client’s operational pain point and the business consequence of leaving it unresolved.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Диагностический вопрос должен выявить операционную проблему клиента и деловое последствие её нерешённости.","target_language":"en","word_bank":["A","discovery","question","should","reveal","the","client’s","operational","pain","point","and","the","business","consequence","of","leaving","it","unresolved","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('100c0a99-0be6-5b2b-85dd-fe9f7b8cc974', 'bd24f6da-8a20-5821-ac8b-804362c25d67', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"discovery question","instruction":"Выберите подходящее слово.","options":["discovery question","decision-maker","address an objection"],"sentence_template":"A ___ should reveal the client’s operational pain point and the business consequence of leaving it unresolved."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('73e08959-c023-5fad-9fa9-392256ee8ae8', 'bd24f6da-8a20-5821-ac8b-804362c25d67', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","discovery","question","should","reveal","the","client’s","operational","pain","point","and","the","business","consequence","of","leaving","it","unresolved","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","unresolved","it","leaving","of","consequence","business","the","and","point","pain","operational","client’s","the","reveal","should","question","discovery","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5c471381-6115-5db3-a557-2b8372f88b38', 'bd24f6da-8a20-5821-ac8b-804362c25d67', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A discovery question should reveal the client’s operational pain point and the business consequence of leaving it unresolved. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('592b04a9-da52-594e-a36c-be2ac15d9957', 'bd24f6da-8a20-5821-ac8b-804362c25d67', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A discovery question should reveal the client’s operational pain point and the business consequence of leaving it unresolved. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Диагностический вопрос должен выявить операционную проблему клиента и деловое последствие её нерешённости. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a54b0263-ac48-5db9-9d8d-d1f6e0a27ed9', 'bd24f6da-8a20-5821-ac8b-804362c25d67', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"A discovery question should reveal the client’s operational pain point and the business consequence of leaving it unresolved.","translation":"Диагностический вопрос должен выявить операционную проблему клиента и деловое последствие её нерешённости.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Diagnosing Client Needs"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e7a05c2-6c7b-5766-a675-620dc0c0a3b1', 'bd24f6da-8a20-5821-ac8b-804362c25d67', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“discovery question” means a question used to uncover a client’s needs.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L1_D11","is_correct":true,"text":"a question used to uncover a client’s needs"},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L1_D12","is_correct":false,"text":"a specific difficulty experienced by a customer"},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L1_D13","is_correct":false,"text":"a clear statement of distinctive benefit"}],"word":"discovery question"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aaa372e0-bda4-539c-a5b7-d57e531f605a', 'bd24f6da-8a20-5821-ac8b-804362c25d67', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A discovery question should reveal the client’s operational pain point and the business consequence of leaving it unresolved.","explanation":"The missing business expression is “discovery question”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"discovery question","id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L1_D14","is_correct":true},{"audio_text":"value proposition","id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L1_D15","is_correct":false},{"audio_text":"return on investment","id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L1_D16","is_correct":false}],"sentence_template":"A ___ should reveal the client’s operational pain point and the business consequence of leaving it unresolved."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e35986ca-d0f6-5ff2-bed7-96fb4f2a4204', 'bd24f6da-8a20-5821-ac8b-804362c25d67', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"discovery question","explanation":"The complete business statement uses “discovery question” precisely.","hint_prefix":"disc","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ should reveal the client’s operational pain point and the business consequence of leaving it unresolved."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('01ec4a39-94e0-55fa-8043-6479e9c676da', 'bd24f6da-8a20-5821-ac8b-804362c25d67', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"discovery question","id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L1_D17","text":"discovery question"},{"audio_text":"pain point","id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L1_D18","text":"pain point"},{"audio_text":"value proposition","id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L1_D19","text":"value proposition"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ddbd2abb-0f27-5efe-9767-f71d58eb8a9b', 'bd24f6da-8a20-5821-ac8b-804362c25d67', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Diagnosing Client Needs”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L1_D20","is_correct":true,"text":"A discovery question should reveal the client’s operational pain point and the business consequence of leaving it unresolved."},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L1_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L1_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('9021a194-31e9-5559-bf43-81a20113a7c7', 'bd24f6da-8a20-5821-ac8b-804362c25d67', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2ad0f9fc-68d6-5205-bf33-49b383b025d4', NULL, 'Анализ и профессиональное взаимодействие', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Presenting a Value Proposition","ru":"Анализ и профессиональное взаимодействие"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b1925a8b-01af-58c0-9df3-bcad3b1bc65f', '2ad0f9fc-68d6-5205-bf33-49b383b025d4', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L2_D01","left":"discovery question","right":"диагностический вопрос"},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L2_D02","left":"pain point","right":"проблемная потребность"},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L2_D03","left":"value proposition","right":"ценностное предложение"},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L2_D04","left":"decision-maker","right":"лицо, принимающее решение"},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L2_D05","left":"return on investment","right":"окупаемость инвестиций"},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L2_D06","left":"address an objection","right":"ответить на возражение"},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L2_D07","left":"proof of concept","right":"подтверждение концепции"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e7cb875-ae35-522f-86a7-a81846f739c2', '2ad0f9fc-68d6-5205-bf33-49b383b025d4', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L2_D08","is_correct":true,"text":"The value proposition should be adapted to the decision-maker’s priorities and supported by a credible estimate of return on investment."},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L2_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L2_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('46da9f30-513f-5ae4-8eb8-6c4c65834f55', '2ad0f9fc-68d6-5205-bf33-49b383b025d4', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The value proposition should be adapted to the decision-maker’s priorities and supported by a credible estimate of return on investment.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Ценностное предложение следует адаптировать к приоритетам лица, принимающего решение, и подкрепить убедительной оценкой окупаемости инвестиций.","target_language":"en","word_bank":["The","value","proposition","should","be","adapted","to","the","decision-maker","’","s","priorities","and","supported","by","a","credible","estimate","of","return","on","investment","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('14d7f6f7-1c53-5d17-b6f3-0b1cc6aa5e00', '2ad0f9fc-68d6-5205-bf33-49b383b025d4', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"pain point","instruction":"Выберите подходящее слово.","options":["pain point","return on investment","proof of concept"],"sentence_template":"The value proposition should be adapted to the decision-maker’s priorities and supported by a credible estimate of return on investment."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1f35d518-d7e3-5a10-8a89-942232ab348f', '2ad0f9fc-68d6-5205-bf33-49b383b025d4', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","value","proposition","should","be","adapted","to","the","decision-maker","’","s","priorities","and","supported","by","a","credible","estimate","of","return","on","investment","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","investment","on","return","of","estimate","credible","a","by","supported","and","priorities","s","’","decision-maker","the","to","adapted","be","should","proposition","value","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('34817300-7142-56d4-88d5-4e4d572ca9aa', '2ad0f9fc-68d6-5205-bf33-49b383b025d4', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The value proposition should be adapted to the decision-maker’s priorities and supported by a credible estimate of return on investment. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f473d3f9-8395-59c1-ada7-27a127f17358', '2ad0f9fc-68d6-5205-bf33-49b383b025d4', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The value proposition should be adapted to the decision-maker’s priorities and supported by a credible estimate of return on investment. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Ценностное предложение следует адаптировать к приоритетам лица, принимающего решение, и подкрепить убедительной оценкой окупаемости инвестиций. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3fc6fa32-6e5e-58e0-825f-6c3445187a56', '2ad0f9fc-68d6-5205-bf33-49b383b025d4', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"The value proposition should be adapted to the decision-maker’s priorities and supported by a credible estimate of return on investment.","translation":"Ценностное предложение следует адаптировать к приоритетам лица, принимающего решение, и подкрепить убедительной оценкой окупаемости инвестиций.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Presenting a Value Proposition"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d1bd6601-aba4-5943-a1c1-51dbd3b9e37a', '2ad0f9fc-68d6-5205-bf33-49b383b025d4', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“pain point” means a specific difficulty experienced by a customer.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L2_D11","is_correct":true,"text":"a specific difficulty experienced by a customer"},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L2_D12","is_correct":false,"text":"a clear statement of distinctive benefit"},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L2_D13","is_correct":false,"text":"the person authorised to approve a purchase"}],"word":"pain point"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('283ffbe1-37d1-527b-905c-f37a4fc6982f', '2ad0f9fc-68d6-5205-bf33-49b383b025d4', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The value proposition should be adapted to the decision-maker’s priorities and supported by a credible estimate of return on investment.","explanation":"The missing business expression is “pain point”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"pain point","id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L2_D14","is_correct":true},{"audio_text":"decision-maker","id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L2_D15","is_correct":false},{"audio_text":"address an objection","id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L2_D16","is_correct":false}],"sentence_template":"The value proposition should be adapted to the decision-maker’s priorities and supported by a credible estimate of return on investment."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('45cffc3b-4bed-5d8b-88e6-519919657285', '2ad0f9fc-68d6-5205-bf33-49b383b025d4', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"pain point","explanation":"The complete business statement uses “pain point” precisely.","hint_prefix":"pain","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The value proposition should be adapted to the decision-maker’s priorities and supported by a credible estimate of return on investment."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3162e24-4022-5a00-b514-26403decf9df', '2ad0f9fc-68d6-5205-bf33-49b383b025d4', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"discovery question","id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L2_D17","text":"discovery question"},{"audio_text":"pain point","id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L2_D18","text":"pain point"},{"audio_text":"value proposition","id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L2_D19","text":"value proposition"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c0018f5f-41f8-55c3-8ddb-e9afa5a06f54', '2ad0f9fc-68d6-5205-bf33-49b383b025d4', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Presenting a Value Proposition”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L2_D20","is_correct":true,"text":"The value proposition should be adapted to the decision-maker’s priorities and supported by a credible estimate of return on investment."},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L2_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L2_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('9021a194-31e9-5559-bf43-81a20113a7c7', '2ad0f9fc-68d6-5205-bf33-49b383b025d4', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c5d4f20f-7da3-5a87-8af0-397fd99e84ac', NULL, 'Решение и последующие действия', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Responding to Objections","ru":"Решение и последующие действия"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3df016ff-59fc-5bd6-a350-f3e2291deda2', 'c5d4f20f-7da3-5a87-8af0-397fd99e84ac', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L3_D01","left":"discovery question","right":"диагностический вопрос"},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L3_D02","left":"pain point","right":"проблемная потребность"},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L3_D03","left":"value proposition","right":"ценностное предложение"},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L3_D04","left":"decision-maker","right":"лицо, принимающее решение"},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L3_D05","left":"return on investment","right":"окупаемость инвестиций"},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L3_D06","left":"address an objection","right":"ответить на возражение"},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L3_D07","left":"proof of concept","right":"подтверждение концепции"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('49671489-df1a-5c4a-aa4b-7cf78e054259', 'c5d4f20f-7da3-5a87-8af0-397fd99e84ac', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L3_D08","is_correct":true,"text":"To address an objection about risk, propose a limited proof of concept with agreed success measures and a clear review point."},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L3_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L3_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90a6d606-59a7-58e3-a13f-497ff879347d', 'c5d4f20f-7da3-5a87-8af0-397fd99e84ac', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"To address an objection about risk, propose a limited proof of concept with agreed success measures and a clear review point.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Чтобы ответить на возражение о риске, предложите ограниченное подтверждение концепции с согласованными показателями успеха и чёткой точкой пересмотра.","target_language":"en","word_bank":["To","address","an","objection","about","risk",",","propose","a","limited","proof","of","concept","with","agreed","success","measures","and","a","clear","review","point","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0f256f69-245a-5a47-9be0-de5963084dd9', 'c5d4f20f-7da3-5a87-8af0-397fd99e84ac', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"value proposition","instruction":"Выберите подходящее слово.","options":["value proposition","address an objection","discovery question"],"sentence_template":"To address an objection about risk, propose a limited proof of concept with agreed success measures and a clear review point."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7c7a942c-5ae6-59b5-8bb2-ad0152fa98c9', 'c5d4f20f-7da3-5a87-8af0-397fd99e84ac', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["To","address","an","objection","about","risk",",","propose","a","limited","proof","of","concept","with","agreed","success","measures","and","a","clear","review","point","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","point","review","clear","a","and","measures","success","agreed","with","concept","of","proof","limited","a","propose",",","risk","about","objection","an","address","To"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b4c1c9d-5ca6-5fb3-a737-752365c6ac34', 'c5d4f20f-7da3-5a87-8af0-397fd99e84ac', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"To address an objection about risk, propose a limited proof of concept with agreed success measures and a clear review point. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2dc8572b-10d7-594d-a202-6ece37a8936f', 'c5d4f20f-7da3-5a87-8af0-397fd99e84ac', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"To address an objection about risk, propose a limited proof of concept with agreed success measures and a clear review point. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Чтобы ответить на возражение о риске, предложите ограниченное подтверждение концепции с согласованными показателями успеха и чёткой точкой пересмотра. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1b143187-b764-5ba0-b7d4-07a7b97ffdef', 'c5d4f20f-7da3-5a87-8af0-397fd99e84ac', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"To address an objection about risk, propose a limited proof of concept with agreed success measures and a clear review point.","translation":"Чтобы ответить на возражение о риске, предложите ограниченное подтверждение концепции с согласованными показателями успеха и чёткой точкой пересмотра.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Responding to Objections"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aed100bf-3728-5d13-aee1-c780cae87252', 'c5d4f20f-7da3-5a87-8af0-397fd99e84ac', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“value proposition” means a clear statement of distinctive benefit.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L3_D11","is_correct":true,"text":"a clear statement of distinctive benefit"},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L3_D12","is_correct":false,"text":"the person authorised to approve a purchase"},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L3_D13","is_correct":false,"text":"benefit produced relative to cost"}],"word":"value proposition"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fb17f0e2-74a1-5094-a8de-a13b4bb179c7', 'c5d4f20f-7da3-5a87-8af0-397fd99e84ac', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"To address an objection about risk, propose a limited proof of concept with agreed success measures and a clear review point.","explanation":"The missing business expression is “value proposition”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"value proposition","id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L3_D14","is_correct":true},{"audio_text":"return on investment","id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L3_D15","is_correct":false},{"audio_text":"proof of concept","id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L3_D16","is_correct":false}],"sentence_template":"To address an objection about risk, propose a limited proof of concept with agreed success measures and a clear review point."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d5aab95-f38d-56a2-aea6-6356fe2538de', 'c5d4f20f-7da3-5a87-8af0-397fd99e84ac', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"value proposition","explanation":"The complete business statement uses “value proposition” precisely.","hint_prefix":"valu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"To address an objection about risk, propose a limited proof of concept with agreed success measures and a clear review point."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('894362c7-3837-5218-a7ca-056f4ea73f7a', 'c5d4f20f-7da3-5a87-8af0-397fd99e84ac', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"discovery question","id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L3_D17","text":"discovery question"},{"audio_text":"pain point","id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L3_D18","text":"pain point"},{"audio_text":"value proposition","id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L3_D19","text":"value proposition"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('569d6673-c979-5906-9e52-aa60720fef72', 'c5d4f20f-7da3-5a87-8af0-397fd99e84ac', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Responding to Objections”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L3_D20","is_correct":true,"text":"To address an objection about risk, propose a limited proof of concept with agreed success measures and a clear review point."},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L3_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_SALES_PROPOSALS_VALUE_AND_OBJECTION_HANDLING_L3_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('9021a194-31e9-5559-bf43-81a20113a7c7', 'c5d4f20f-7da3-5a87-8af0-397fd99e84ac', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9f38ff8b-5df8-5631-b538-4b67e8c6f307', 'en', 'discovery question', 'диагностический вопрос', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('82109dd5-4999-54dd-92be-5eae1704d4ea', 'en', 'pain point', 'проблемная потребность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('741c1bc3-7654-5a63-9829-5426a852e4b7', 'en', 'value proposition', 'ценностное предложение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e0711424-ea60-542c-80a9-5319561052a7', 'en', 'decision-maker', 'лицо, принимающее решение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('241b17ff-4fc9-58c7-bf78-d4163561129f', 'en', 'return on investment', 'окупаемость инвестиций', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b4b56a69-05df-54c2-8086-8882bff4829e', 'en', 'address an objection', 'ответить на возражение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f1fccf4c-0933-5819-98e5-c774fa629e75', 'en', 'proof of concept', 'подтверждение концепции', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9f38ff8b-5df8-5631-b538-4b67e8c6f307', 'en', 'discovery question', 'диагностический вопрос', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('82109dd5-4999-54dd-92be-5eae1704d4ea', 'en', 'pain point', 'проблемная потребность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('741c1bc3-7654-5a63-9829-5426a852e4b7', 'en', 'value proposition', 'ценностное предложение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e0711424-ea60-542c-80a9-5319561052a7', 'en', 'decision-maker', 'лицо, принимающее решение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('241b17ff-4fc9-58c7-bf78-d4163561129f', 'en', 'return on investment', 'окупаемость инвестиций', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b4b56a69-05df-54c2-8086-8882bff4829e', 'en', 'address an objection', 'ответить на возражение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f1fccf4c-0933-5819-98e5-c774fa629e75', 'en', 'proof of concept', 'подтверждение концепции', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9f38ff8b-5df8-5631-b538-4b67e8c6f307', 'en', 'discovery question', 'диагностический вопрос', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('82109dd5-4999-54dd-92be-5eae1704d4ea', 'en', 'pain point', 'проблемная потребность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('741c1bc3-7654-5a63-9829-5426a852e4b7', 'en', 'value proposition', 'ценностное предложение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e0711424-ea60-542c-80a9-5319561052a7', 'en', 'decision-maker', 'лицо, принимающее решение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('241b17ff-4fc9-58c7-bf78-d4163561129f', 'en', 'return on investment', 'окупаемость инвестиций', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b4b56a69-05df-54c2-8086-8882bff4829e', 'en', 'address an objection', 'ответить на возражение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f1fccf4c-0933-5819-98e5-c774fa629e75', 'en', 'proof of concept', 'подтверждение концепции', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9021a194-31e9-5559-bf43-81a20113a7c7', id, 'bd24f6da-8a20-5821-ac8b-804362c25d67', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'discovery question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9021a194-31e9-5559-bf43-81a20113a7c7', id, 'bd24f6da-8a20-5821-ac8b-804362c25d67', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'pain point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9021a194-31e9-5559-bf43-81a20113a7c7', id, 'bd24f6da-8a20-5821-ac8b-804362c25d67', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'value proposition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9021a194-31e9-5559-bf43-81a20113a7c7', id, 'bd24f6da-8a20-5821-ac8b-804362c25d67', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'decision-maker' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9021a194-31e9-5559-bf43-81a20113a7c7', id, 'bd24f6da-8a20-5821-ac8b-804362c25d67', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'return on investment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9021a194-31e9-5559-bf43-81a20113a7c7', id, 'bd24f6da-8a20-5821-ac8b-804362c25d67', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'address an objection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9021a194-31e9-5559-bf43-81a20113a7c7', id, 'bd24f6da-8a20-5821-ac8b-804362c25d67', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'proof of concept' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9021a194-31e9-5559-bf43-81a20113a7c7', id, '2ad0f9fc-68d6-5205-bf33-49b383b025d4', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'discovery question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9021a194-31e9-5559-bf43-81a20113a7c7', id, '2ad0f9fc-68d6-5205-bf33-49b383b025d4', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'pain point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9021a194-31e9-5559-bf43-81a20113a7c7', id, '2ad0f9fc-68d6-5205-bf33-49b383b025d4', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'value proposition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9021a194-31e9-5559-bf43-81a20113a7c7', id, '2ad0f9fc-68d6-5205-bf33-49b383b025d4', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'decision-maker' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9021a194-31e9-5559-bf43-81a20113a7c7', id, '2ad0f9fc-68d6-5205-bf33-49b383b025d4', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'return on investment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9021a194-31e9-5559-bf43-81a20113a7c7', id, '2ad0f9fc-68d6-5205-bf33-49b383b025d4', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'address an objection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9021a194-31e9-5559-bf43-81a20113a7c7', id, '2ad0f9fc-68d6-5205-bf33-49b383b025d4', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'proof of concept' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9021a194-31e9-5559-bf43-81a20113a7c7', id, 'c5d4f20f-7da3-5a87-8af0-397fd99e84ac', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'discovery question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9021a194-31e9-5559-bf43-81a20113a7c7', id, 'c5d4f20f-7da3-5a87-8af0-397fd99e84ac', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'pain point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9021a194-31e9-5559-bf43-81a20113a7c7', id, 'c5d4f20f-7da3-5a87-8af0-397fd99e84ac', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'value proposition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9021a194-31e9-5559-bf43-81a20113a7c7', id, 'c5d4f20f-7da3-5a87-8af0-397fd99e84ac', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'decision-maker' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9021a194-31e9-5559-bf43-81a20113a7c7', id, 'c5d4f20f-7da3-5a87-8af0-397fd99e84ac', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'return on investment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9021a194-31e9-5559-bf43-81a20113a7c7', id, 'c5d4f20f-7da3-5a87-8af0-397fd99e84ac', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'address an objection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9021a194-31e9-5559-bf43-81a20113a7c7', id, 'c5d4f20f-7da3-5a87-8af0-397fd99e84ac', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'proof of concept' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
