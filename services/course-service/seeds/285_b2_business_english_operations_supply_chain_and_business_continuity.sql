-- Track: B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('5a5b1f1a-9508-5722-a79e-aa884c63c0b5', 'B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY', 'Операции, цепочки поставок и непрерывность бизнеса', 'Развивайте точный деловой английский уровня B2 по теме «Операции, цепочки поставок и непрерывность бизнеса», анализируя коммерческие последствия и согласовывая обоснованные решения.', '{"en":"Operations, Supply Chain and Business Continuity","ru":"Операции, цепочки поставок и непрерывность бизнеса"}'::jsonb, '{"en":"Develop precise B2 business English for operations, supply chain and business continuity by analysing commercial implications and negotiating well-supported decisions.","ru":"Развивайте точный деловой английский уровня B2 по теме «Операции, цепочки поставок и непрерывность бизнеса», анализируя коммерческие последствия и согласовывая обоснованные решения."}'::jsonb, 'en', 'B2', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b8cb365d-ecde-5248-b77e-c2bfaa5e21cb', NULL, 'Деловой контекст и ключевые понятия', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Assessing Supply-Chain Exposure","ru":"Деловой контекст и ключевые понятия"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f762a131-5413-55e2-8a57-942677ea2de1', 'b8cb365d-ecde-5248-b77e-c2bfaa5e21cb', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L1_D01","left":"supply-chain exposure","right":"уязвимость цепочки поставок"},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L1_D02","left":"single point of failure","right":"единая точка отказа"},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L1_D03","left":"lead time","right":"срок поставки"},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L1_D04","left":"contingency supplier","right":"резервный поставщик"},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L1_D05","left":"inventory buffer","right":"резерв запасов"},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L1_D06","left":"business continuity","right":"непрерывность бизнеса"},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L1_D07","left":"disruption scenario","right":"сценарий сбоя"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8153e5b2-36f1-5448-986a-347887419dab', 'b8cb365d-ecde-5248-b77e-c2bfaa5e21cb', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L1_D08","is_correct":true,"text":"Supply-chain exposure increases when a critical component depends on one region or a single point of failure."},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L1_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L1_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18d5072c-061e-5d04-b47c-ce06d12ae722', 'b8cb365d-ecde-5248-b77e-c2bfaa5e21cb', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Supply-chain exposure increases when a critical component depends on one region or a single point of failure.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Уязвимость цепочки поставок возрастает, когда критически важный компонент зависит от одного региона или единой точки отказа.","target_language":"en","word_bank":["Supply-chain","exposure","increases","when","a","critical","component","depends","on","one","region","or","a","single","point","of","failure","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('05746421-6e5d-5169-8cb6-ba7feba7e970', 'b8cb365d-ecde-5248-b77e-c2bfaa5e21cb', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"supply-chain exposure","instruction":"Выберите подходящее слово.","options":["supply-chain exposure","contingency supplier","business continuity"],"sentence_template":"___ increases when a critical component depends on one region or a single point of failure."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e87a8f4b-0be6-5dcd-affa-c77fc44dd94b', 'b8cb365d-ecde-5248-b77e-c2bfaa5e21cb', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Supply-chain","exposure","increases","when","a","critical","component","depends","on","one","region","or","a","single","point","of","failure","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","failure","of","point","single","a","or","region","one","on","depends","component","critical","a","when","increases","exposure","Supply-chain"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('238d9e41-09f6-5179-a6cc-4f2675c5ba7e', 'b8cb365d-ecde-5248-b77e-c2bfaa5e21cb', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Supply-chain exposure increases when a critical component depends on one region or a single point of failure. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89a702ef-2671-54b0-807c-f53095eb90d0', 'b8cb365d-ecde-5248-b77e-c2bfaa5e21cb', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Supply-chain exposure increases when a critical component depends on one region or a single point of failure. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Уязвимость цепочки поставок возрастает, когда критически важный компонент зависит от одного региона или единой точки отказа. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ed557b3c-e019-59a0-b5ef-7f764c3c1d6d', 'b8cb365d-ecde-5248-b77e-c2bfaa5e21cb', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"Supply-chain exposure increases when a critical component depends on one region or a single point of failure.","translation":"Уязвимость цепочки поставок возрастает, когда критически важный компонент зависит от одного региона или единой точки отказа.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Assessing Supply-Chain Exposure"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('80d0f7a9-3002-57b1-8827-6c4d8454f66e', 'b8cb365d-ecde-5248-b77e-c2bfaa5e21cb', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“supply-chain exposure” means dependency that creates potential operational risk.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L1_D11","is_correct":true,"text":"dependency that creates potential operational risk"},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L1_D12","is_correct":false,"text":"one component whose failure stops a whole system"},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L1_D13","is_correct":false,"text":"the time between ordering and receiving goods"}],"word":"supply-chain exposure"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4174e897-8564-5255-b25f-fd53b3fd4e8b', 'b8cb365d-ecde-5248-b77e-c2bfaa5e21cb', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Supply-chain exposure increases when a critical component depends on one region or a single point of failure.","explanation":"The missing business expression is “supply-chain exposure”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"supply-chain exposure","id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L1_D14","is_correct":true},{"audio_text":"lead time","id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L1_D15","is_correct":false},{"audio_text":"inventory buffer","id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L1_D16","is_correct":false}],"sentence_template":"___ increases when a critical component depends on one region or a single point of failure."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b00879f3-72e8-5d4b-801c-698f0a92991b', 'b8cb365d-ecde-5248-b77e-c2bfaa5e21cb', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"supply-chain exposure","explanation":"The complete business statement uses “supply-chain exposure” precisely.","hint_prefix":"supp","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ increases when a critical component depends on one region or a single point of failure."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7b2a9713-5609-5565-9822-71a2ed830cb8', 'b8cb365d-ecde-5248-b77e-c2bfaa5e21cb', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"supply-chain exposure","id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L1_D17","text":"supply-chain exposure"},{"audio_text":"single point of failure","id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L1_D18","text":"single point of failure"},{"audio_text":"lead time","id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L1_D19","text":"lead time"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1a88b08b-66c4-5b24-90ea-8301e426e685', 'b8cb365d-ecde-5248-b77e-c2bfaa5e21cb', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Assessing Supply-Chain Exposure”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L1_D20","is_correct":true,"text":"Supply-chain exposure increases when a critical component depends on one region or a single point of failure."},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L1_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L1_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('5a5b1f1a-9508-5722-a79e-aa884c63c0b5', 'b8cb365d-ecde-5248-b77e-c2bfaa5e21cb', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e2297abb-53c8-5e82-bba7-cd7103d1f802', NULL, 'Анализ и профессиональное взаимодействие', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Managing Operational Disruption","ru":"Анализ и профессиональное взаимодействие"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('09ea2d3f-b57b-5a79-9cf6-7deaaa0200f2', 'e2297abb-53c8-5e82-bba7-cd7103d1f802', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L2_D01","left":"supply-chain exposure","right":"уязвимость цепочки поставок"},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L2_D02","left":"single point of failure","right":"единая точка отказа"},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L2_D03","left":"lead time","right":"срок поставки"},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L2_D04","left":"contingency supplier","right":"резервный поставщик"},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L2_D05","left":"inventory buffer","right":"резерв запасов"},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L2_D06","left":"business continuity","right":"непрерывность бизнеса"},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L2_D07","left":"disruption scenario","right":"сценарий сбоя"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4c8cdbad-6ed0-5eea-aec7-de27d00fb620', 'e2297abb-53c8-5e82-bba7-cd7103d1f802', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L2_D08","is_correct":true,"text":"Longer lead times may justify an inventory buffer, although the working-capital cost should be compared with a contingency supplier."},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L2_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L2_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c2dd2eab-6d5b-5067-99b5-ce4bb0853c6b', 'e2297abb-53c8-5e82-bba7-cd7103d1f802', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Longer lead times may justify an inventory buffer, although the working-capital cost should be compared with a contingency supplier.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Более длительные сроки поставки могут оправдывать резерв запасов, хотя стоимость оборотного капитала следует сравнить с использованием резервного поставщика.","target_language":"en","word_bank":["Longer","lead","times","may","justify","an","inventory","buffer",",","although","the","working-capital","cost","should","be","compared","with","a","contingency","supplier","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9cbe138f-eef0-56c6-94f0-fac818f04ee1', 'e2297abb-53c8-5e82-bba7-cd7103d1f802', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"single point of failure","instruction":"Выберите подходящее слово.","options":["single point of failure","inventory buffer","disruption scenario"],"sentence_template":"Longer lead times may justify an inventory buffer, although the working-capital cost should be compared with a contingency supplier."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a9ae86cd-a420-503f-a2e0-0808cb8f74bd', 'e2297abb-53c8-5e82-bba7-cd7103d1f802', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Longer","lead","times","may","justify","an","inventory","buffer",",","although","the","working-capital","cost","should","be","compared","with","a","contingency","supplier","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","supplier","contingency","a","with","compared","be","should","cost","working-capital","the","although",",","buffer","inventory","an","justify","may","times","lead","Longer"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4c1b463e-aa3f-58de-b101-760958c4bc6d', 'e2297abb-53c8-5e82-bba7-cd7103d1f802', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Longer lead times may justify an inventory buffer, although the working-capital cost should be compared with a contingency supplier. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5ef514fe-d6ff-59d4-886d-3aa4c5f5901a', 'e2297abb-53c8-5e82-bba7-cd7103d1f802', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Longer lead times may justify an inventory buffer, although the working-capital cost should be compared with a contingency supplier. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Более длительные сроки поставки могут оправдывать резерв запасов, хотя стоимость оборотного капитала следует сравнить с использованием резервного поставщика. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2de1724c-dd00-59d1-ab56-b6294674dcd5', 'e2297abb-53c8-5e82-bba7-cd7103d1f802', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"Longer lead times may justify an inventory buffer, although the working-capital cost should be compared with a contingency supplier.","translation":"Более длительные сроки поставки могут оправдывать резерв запасов, хотя стоимость оборотного капитала следует сравнить с использованием резервного поставщика.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Managing Operational Disruption"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d1ce112f-8a14-5007-8d3c-6fe4f5d6253d', 'e2297abb-53c8-5e82-bba7-cd7103d1f802', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“single point of failure” means one component whose failure stops a whole system.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L2_D11","is_correct":true,"text":"one component whose failure stops a whole system"},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L2_D12","is_correct":false,"text":"the time between ordering and receiving goods"},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L2_D13","is_correct":false,"text":"an alternative provider used during disruption"}],"word":"single point of failure"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dfa9befa-115b-5834-a407-7df367ab5a49', 'e2297abb-53c8-5e82-bba7-cd7103d1f802', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Longer lead times may justify an inventory buffer, although the working-capital cost should be compared with a contingency supplier.","explanation":"The missing business expression is “single point of failure”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"single point of failure","id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L2_D14","is_correct":true},{"audio_text":"contingency supplier","id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L2_D15","is_correct":false},{"audio_text":"business continuity","id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L2_D16","is_correct":false}],"sentence_template":"Longer lead times may justify an inventory buffer, although the working-capital cost should be compared with a contingency supplier."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0643b06f-eebf-527b-854e-b020290e180d', 'e2297abb-53c8-5e82-bba7-cd7103d1f802', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"single point of failure","explanation":"The complete business statement uses “single point of failure” precisely.","hint_prefix":"sing","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Longer lead times may justify an inventory buffer, although the working-capital cost should be compared with a contingency supplier."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('165b947c-1fed-5612-b208-f9a16b50561f', 'e2297abb-53c8-5e82-bba7-cd7103d1f802', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"supply-chain exposure","id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L2_D17","text":"supply-chain exposure"},{"audio_text":"single point of failure","id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L2_D18","text":"single point of failure"},{"audio_text":"lead time","id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L2_D19","text":"lead time"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('47978c09-54e1-54f1-9639-ababe3750cbf', 'e2297abb-53c8-5e82-bba7-cd7103d1f802', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Managing Operational Disruption”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L2_D20","is_correct":true,"text":"Longer lead times may justify an inventory buffer, although the working-capital cost should be compared with a contingency supplier."},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L2_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L2_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('5a5b1f1a-9508-5722-a79e-aa884c63c0b5', 'e2297abb-53c8-5e82-bba7-cd7103d1f802', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b8a7534f-f1c6-552f-bb2a-c0c669291da2', NULL, 'Решение и последующие действия', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Strengthening Business Continuity","ru":"Решение и последующие действия"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('720184f4-4226-5209-a968-ccfcec8f6b24', 'b8a7534f-f1c6-552f-bb2a-c0c669291da2', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L3_D01","left":"supply-chain exposure","right":"уязвимость цепочки поставок"},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L3_D02","left":"single point of failure","right":"единая точка отказа"},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L3_D03","left":"lead time","right":"срок поставки"},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L3_D04","left":"contingency supplier","right":"резервный поставщик"},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L3_D05","left":"inventory buffer","right":"резерв запасов"},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L3_D06","left":"business continuity","right":"непрерывность бизнеса"},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L3_D07","left":"disruption scenario","right":"сценарий сбоя"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('451978b7-f81f-557c-bd72-3f44ce0ca454', 'b8a7534f-f1c6-552f-bb2a-c0c669291da2', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L3_D08","is_correct":true,"text":"Business continuity planning should test realistic disruption scenarios and assign authority before an emergency occurs."},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L3_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L3_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f3a48995-5ebb-5b6f-9c0f-51ebc498b463', 'b8a7534f-f1c6-552f-bb2a-c0c669291da2', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Business continuity planning should test realistic disruption scenarios and assign authority before an emergency occurs.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Планирование непрерывности бизнеса должно проверять реалистичные сценарии сбоев и распределять полномочия до возникновения чрезвычайной ситуации.","target_language":"en","word_bank":["Business","continuity","planning","should","test","realistic","disruption","scenarios","and","assign","authority","before","an","emergency","occurs","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1cc35def-4d20-5bd1-8b2d-d03582ee7b3a', 'b8a7534f-f1c6-552f-bb2a-c0c669291da2', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"lead time","instruction":"Выберите подходящее слово.","options":["lead time","business continuity","supply-chain exposure"],"sentence_template":"Business continuity planning should test realistic disruption scenarios and assign authority before an emergency occurs."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac3ca144-04ae-5ac1-b9d4-91db2c51aeb5', 'b8a7534f-f1c6-552f-bb2a-c0c669291da2', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Business","continuity","planning","should","test","realistic","disruption","scenarios","and","assign","authority","before","an","emergency","occurs","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","occurs","emergency","an","before","authority","assign","and","scenarios","disruption","realistic","test","should","planning","continuity","Business"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c30a28f5-1f29-5460-94f2-aa620e9b2f43', 'b8a7534f-f1c6-552f-bb2a-c0c669291da2', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Business continuity planning should test realistic disruption scenarios and assign authority before an emergency occurs. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd85683c-2cff-5397-b321-f1c736d5f7d4', 'b8a7534f-f1c6-552f-bb2a-c0c669291da2', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Business continuity planning should test realistic disruption scenarios and assign authority before an emergency occurs. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Планирование непрерывности бизнеса должно проверять реалистичные сценарии сбоев и распределять полномочия до возникновения чрезвычайной ситуации. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dae3429d-b050-568f-9055-16d29b78fe9d', 'b8a7534f-f1c6-552f-bb2a-c0c669291da2', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"Business continuity planning should test realistic disruption scenarios and assign authority before an emergency occurs.","translation":"Планирование непрерывности бизнеса должно проверять реалистичные сценарии сбоев и распределять полномочия до возникновения чрезвычайной ситуации.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Strengthening Business Continuity"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89b38ab7-e21e-54af-8647-f1218a16920c', 'b8a7534f-f1c6-552f-bb2a-c0c669291da2', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“lead time” means the time between ordering and receiving goods.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L3_D11","is_correct":true,"text":"the time between ordering and receiving goods"},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L3_D12","is_correct":false,"text":"an alternative provider used during disruption"},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L3_D13","is_correct":false,"text":"extra stock held against uncertainty"}],"word":"lead time"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bed2c3a2-6d1c-5a0c-b1fc-23009675ba6b', 'b8a7534f-f1c6-552f-bb2a-c0c669291da2', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Business continuity planning should test realistic disruption scenarios and assign authority before an emergency occurs.","explanation":"The missing business expression is “lead time”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"lead time","id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L3_D14","is_correct":true},{"audio_text":"inventory buffer","id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L3_D15","is_correct":false},{"audio_text":"disruption scenario","id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L3_D16","is_correct":false}],"sentence_template":"Business continuity planning should test realistic disruption scenarios and assign authority before an emergency occurs."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e008f7f5-b0ac-566d-ba0c-ef770cb9ab59', 'b8a7534f-f1c6-552f-bb2a-c0c669291da2', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"lead time","explanation":"The complete business statement uses “lead time” precisely.","hint_prefix":"lead","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Business continuity planning should test realistic disruption scenarios and assign authority before an emergency occurs."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c42c2ce2-560e-56d1-b01c-dd35632384fc', 'b8a7534f-f1c6-552f-bb2a-c0c669291da2', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"supply-chain exposure","id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L3_D17","text":"supply-chain exposure"},{"audio_text":"single point of failure","id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L3_D18","text":"single point of failure"},{"audio_text":"lead time","id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L3_D19","text":"lead time"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1c8270a5-d2fc-5a72-a0de-bf910a41a36f', 'b8a7534f-f1c6-552f-bb2a-c0c669291da2', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Strengthening Business Continuity”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L3_D20","is_correct":true,"text":"Business continuity planning should test realistic disruption scenarios and assign authority before an emergency occurs."},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L3_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_OPERATIONS_SUPPLY_CHAIN_AND_BUSINESS_CONTINUITY_L3_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('5a5b1f1a-9508-5722-a79e-aa884c63c0b5', 'b8a7534f-f1c6-552f-bb2a-c0c669291da2', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('60f15460-c3fa-5fec-a511-a9db4ff41d04', 'en', 'supply-chain exposure', 'уязвимость цепочки поставок', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b62feea3-0fc4-5cfc-b2a5-40958a3dab49', 'en', 'single point of failure', 'единая точка отказа', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ce64b224-a966-5359-af5d-c3b003d12e32', 'en', 'lead time', 'срок поставки', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9e846220-1ba4-52a7-81ce-a09fc70178be', 'en', 'contingency supplier', 'резервный поставщик', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fae88247-a025-549c-b50e-ef314b42cd33', 'en', 'inventory buffer', 'резерв запасов', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('82ff0083-c0fa-5ed1-af33-f3a0725a1315', 'en', 'business continuity', 'непрерывность бизнеса', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4b7dbe85-d96c-5e85-b60a-432726cb7759', 'en', 'disruption scenario', 'сценарий сбоя', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('60f15460-c3fa-5fec-a511-a9db4ff41d04', 'en', 'supply-chain exposure', 'уязвимость цепочки поставок', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b62feea3-0fc4-5cfc-b2a5-40958a3dab49', 'en', 'single point of failure', 'единая точка отказа', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ce64b224-a966-5359-af5d-c3b003d12e32', 'en', 'lead time', 'срок поставки', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9e846220-1ba4-52a7-81ce-a09fc70178be', 'en', 'contingency supplier', 'резервный поставщик', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fae88247-a025-549c-b50e-ef314b42cd33', 'en', 'inventory buffer', 'резерв запасов', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('82ff0083-c0fa-5ed1-af33-f3a0725a1315', 'en', 'business continuity', 'непрерывность бизнеса', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4b7dbe85-d96c-5e85-b60a-432726cb7759', 'en', 'disruption scenario', 'сценарий сбоя', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('60f15460-c3fa-5fec-a511-a9db4ff41d04', 'en', 'supply-chain exposure', 'уязвимость цепочки поставок', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b62feea3-0fc4-5cfc-b2a5-40958a3dab49', 'en', 'single point of failure', 'единая точка отказа', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ce64b224-a966-5359-af5d-c3b003d12e32', 'en', 'lead time', 'срок поставки', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9e846220-1ba4-52a7-81ce-a09fc70178be', 'en', 'contingency supplier', 'резервный поставщик', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fae88247-a025-549c-b50e-ef314b42cd33', 'en', 'inventory buffer', 'резерв запасов', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('82ff0083-c0fa-5ed1-af33-f3a0725a1315', 'en', 'business continuity', 'непрерывность бизнеса', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4b7dbe85-d96c-5e85-b60a-432726cb7759', 'en', 'disruption scenario', 'сценарий сбоя', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a5b1f1a-9508-5722-a79e-aa884c63c0b5', id, 'b8cb365d-ecde-5248-b77e-c2bfaa5e21cb', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'supply-chain exposure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a5b1f1a-9508-5722-a79e-aa884c63c0b5', id, 'b8cb365d-ecde-5248-b77e-c2bfaa5e21cb', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'single point of failure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a5b1f1a-9508-5722-a79e-aa884c63c0b5', id, 'b8cb365d-ecde-5248-b77e-c2bfaa5e21cb', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'lead time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a5b1f1a-9508-5722-a79e-aa884c63c0b5', id, 'b8cb365d-ecde-5248-b77e-c2bfaa5e21cb', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'contingency supplier' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a5b1f1a-9508-5722-a79e-aa884c63c0b5', id, 'b8cb365d-ecde-5248-b77e-c2bfaa5e21cb', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'inventory buffer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a5b1f1a-9508-5722-a79e-aa884c63c0b5', id, 'b8cb365d-ecde-5248-b77e-c2bfaa5e21cb', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'business continuity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a5b1f1a-9508-5722-a79e-aa884c63c0b5', id, 'b8cb365d-ecde-5248-b77e-c2bfaa5e21cb', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'disruption scenario' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a5b1f1a-9508-5722-a79e-aa884c63c0b5', id, 'e2297abb-53c8-5e82-bba7-cd7103d1f802', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'supply-chain exposure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a5b1f1a-9508-5722-a79e-aa884c63c0b5', id, 'e2297abb-53c8-5e82-bba7-cd7103d1f802', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'single point of failure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a5b1f1a-9508-5722-a79e-aa884c63c0b5', id, 'e2297abb-53c8-5e82-bba7-cd7103d1f802', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'lead time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a5b1f1a-9508-5722-a79e-aa884c63c0b5', id, 'e2297abb-53c8-5e82-bba7-cd7103d1f802', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'contingency supplier' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a5b1f1a-9508-5722-a79e-aa884c63c0b5', id, 'e2297abb-53c8-5e82-bba7-cd7103d1f802', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'inventory buffer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a5b1f1a-9508-5722-a79e-aa884c63c0b5', id, 'e2297abb-53c8-5e82-bba7-cd7103d1f802', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'business continuity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a5b1f1a-9508-5722-a79e-aa884c63c0b5', id, 'e2297abb-53c8-5e82-bba7-cd7103d1f802', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'disruption scenario' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a5b1f1a-9508-5722-a79e-aa884c63c0b5', id, 'b8a7534f-f1c6-552f-bb2a-c0c669291da2', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'supply-chain exposure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a5b1f1a-9508-5722-a79e-aa884c63c0b5', id, 'b8a7534f-f1c6-552f-bb2a-c0c669291da2', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'single point of failure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a5b1f1a-9508-5722-a79e-aa884c63c0b5', id, 'b8a7534f-f1c6-552f-bb2a-c0c669291da2', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'lead time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a5b1f1a-9508-5722-a79e-aa884c63c0b5', id, 'b8a7534f-f1c6-552f-bb2a-c0c669291da2', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'contingency supplier' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a5b1f1a-9508-5722-a79e-aa884c63c0b5', id, 'b8a7534f-f1c6-552f-bb2a-c0c669291da2', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'inventory buffer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a5b1f1a-9508-5722-a79e-aa884c63c0b5', id, 'b8a7534f-f1c6-552f-bb2a-c0c669291da2', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'business continuity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5a5b1f1a-9508-5722-a79e-aa884c63c0b5', id, 'b8a7534f-f1c6-552f-bb2a-c0c669291da2', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'disruption scenario' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
