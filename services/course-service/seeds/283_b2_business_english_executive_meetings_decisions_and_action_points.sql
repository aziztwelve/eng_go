-- Track: B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('8fd8915d-bf69-53ba-b551-6a3b44b5bd99', 'B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS', 'Руководящие совещания, решения и задачи', 'Развивайте точный деловой английский уровня B2 по теме «Руководящие совещания, решения и задачи», анализируя коммерческие последствия и согласовывая обоснованные решения.', '{"en":"Executive Meetings, Decisions and Action Points","ru":"Руководящие совещания, решения и задачи"}'::jsonb, '{"en":"Develop precise B2 business English for executive meetings, decisions and action points by analysing commercial implications and negotiating well-supported decisions.","ru":"Развивайте точный деловой английский уровня B2 по теме «Руководящие совещания, решения и задачи», анализируя коммерческие последствия и согласовывая обоснованные решения."}'::jsonb, 'en', 'B2', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c59c81d9-aea3-5aab-b2dc-bfbf32ac2200', NULL, 'Деловой контекст и ключевые понятия', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Framing the Business Issue","ru":"Деловой контекст и ключевые понятия"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('458145e7-fcea-5fa4-8875-36dca6b7d15d', 'c59c81d9-aea3-5aab-b2dc-bfbf32ac2200', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L1_D01","left":"strategic priority","right":"стратегический приоритет"},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L1_D02","left":"decision criterion","right":"критерий решения"},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L1_D03","left":"commercial implication","right":"коммерческое последствие"},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L1_D04","left":"raise a reservation","right":"высказать сомнение"},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L1_D05","left":"reach consensus","right":"достичь консенсуса"},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L1_D06","left":"action owner","right":"ответственный за задачу"},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L1_D07","left":"formal sign-off","right":"официальное утверждение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('832659cc-6344-5b50-beea-fda2a5de6154', 'c59c81d9-aea3-5aab-b2dc-bfbf32ac2200', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L1_D08","is_correct":true,"text":"The strategic priority is growth, but each proposal must also satisfy the agreed decision criteria for risk and return."},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L1_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L1_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9703b03b-5ebb-5e74-8f90-98986c195659', 'c59c81d9-aea3-5aab-b2dc-bfbf32ac2200', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The strategic priority is growth, but each proposal must also satisfy the agreed decision criteria for risk and return.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Стратегическим приоритетом является рост, но каждое предложение также должно соответствовать согласованным критериям риска и доходности.","target_language":"en","word_bank":["The","strategic","priority","is","growth",",","but","each","proposal","must","also","satisfy","the","agreed","decision","criteria","for","risk","and","return","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0274ed96-f861-5303-9250-d92117de0daa', 'c59c81d9-aea3-5aab-b2dc-bfbf32ac2200', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"strategic priority","instruction":"Выберите подходящее слово.","options":["strategic priority","raise a reservation","action owner"],"sentence_template":"The ___ is growth, but each proposal must also satisfy the agreed decision criteria for risk and return."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb2844ac-2c17-5c0b-810f-6f310b8d6187', 'c59c81d9-aea3-5aab-b2dc-bfbf32ac2200', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","strategic","priority","is","growth",",","but","each","proposal","must","also","satisfy","the","agreed","decision","criteria","for","risk","and","return","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","return","and","risk","for","criteria","decision","agreed","the","satisfy","also","must","proposal","each","but",",","growth","is","priority","strategic","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f7fc8df3-bfa2-5749-b86a-d0f88c5aab5e', 'c59c81d9-aea3-5aab-b2dc-bfbf32ac2200', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The strategic priority is growth, but each proposal must also satisfy the agreed decision criteria for risk and return. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e261b28b-da2d-582c-ae1d-d9a00a4c7fa7', 'c59c81d9-aea3-5aab-b2dc-bfbf32ac2200', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The strategic priority is growth, but each proposal must also satisfy the agreed decision criteria for risk and return. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Стратегическим приоритетом является рост, но каждое предложение также должно соответствовать согласованным критериям риска и доходности. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4eadf536-acb5-5db6-bf9d-d2ecb80da780', 'c59c81d9-aea3-5aab-b2dc-bfbf32ac2200', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"The strategic priority is growth, but each proposal must also satisfy the agreed decision criteria for risk and return.","translation":"Стратегическим приоритетом является рост, но каждое предложение также должно соответствовать согласованным критериям риска и доходности.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Framing the Business Issue"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3837830b-6a4d-5f2d-8c53-ea8713e6d06f', 'c59c81d9-aea3-5aab-b2dc-bfbf32ac2200', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“strategic priority” means an objective important to long-term direction.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L1_D11","is_correct":true,"text":"an objective important to long-term direction"},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L1_D12","is_correct":false,"text":"a standard used to compare options"},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L1_D13","is_correct":false,"text":"an effect on business performance or value"}],"word":"strategic priority"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('067c48ac-df61-5f1b-86f6-f45abcd8b5e2', 'c59c81d9-aea3-5aab-b2dc-bfbf32ac2200', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The strategic priority is growth, but each proposal must also satisfy the agreed decision criteria for risk and return.","explanation":"The missing business expression is “strategic priority”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"strategic priority","id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L1_D14","is_correct":true},{"audio_text":"commercial implication","id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L1_D15","is_correct":false},{"audio_text":"reach consensus","id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L1_D16","is_correct":false}],"sentence_template":"The ___ is growth, but each proposal must also satisfy the agreed decision criteria for risk and return."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('15986c0c-b1ff-5f84-ad36-12a0f0b690e2', 'c59c81d9-aea3-5aab-b2dc-bfbf32ac2200', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"strategic priority","explanation":"The complete business statement uses “strategic priority” precisely.","hint_prefix":"stra","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ is growth, but each proposal must also satisfy the agreed decision criteria for risk and return."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b03d41d6-a276-5494-a69a-7456a9ced372', 'c59c81d9-aea3-5aab-b2dc-bfbf32ac2200', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"strategic priority","id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L1_D17","text":"strategic priority"},{"audio_text":"decision criterion","id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L1_D18","text":"decision criterion"},{"audio_text":"commercial implication","id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L1_D19","text":"commercial implication"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a6a5f5b-a944-5f97-aefa-db1143ec4e9c', 'c59c81d9-aea3-5aab-b2dc-bfbf32ac2200', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Framing the Business Issue”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L1_D20","is_correct":true,"text":"The strategic priority is growth, but each proposal must also satisfy the agreed decision criteria for risk and return."},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L1_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L1_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8fd8915d-bf69-53ba-b551-6a3b44b5bd99', 'c59c81d9-aea3-5aab-b2dc-bfbf32ac2200', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2af69ed5-9a36-57af-bc3b-2268e4d6b0aa', NULL, 'Анализ и профессиональное взаимодействие', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Evaluating Competing Options","ru":"Анализ и профессиональное взаимодействие"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3989596a-266d-56f6-a8c2-3bf62ceb434b', '2af69ed5-9a36-57af-bc3b-2268e4d6b0aa', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L2_D01","left":"strategic priority","right":"стратегический приоритет"},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L2_D02","left":"decision criterion","right":"критерий решения"},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L2_D03","left":"commercial implication","right":"коммерческое последствие"},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L2_D04","left":"raise a reservation","right":"высказать сомнение"},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L2_D05","left":"reach consensus","right":"достичь консенсуса"},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L2_D06","left":"action owner","right":"ответственный за задачу"},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L2_D07","left":"formal sign-off","right":"официальное утверждение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2e1c83e-4995-5a32-b9aa-c2556f12a19d', '2af69ed5-9a36-57af-bc3b-2268e4d6b0aa', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L2_D08","is_correct":true,"text":"Before reaching consensus, the board raised a reservation about the proposal’s commercial implications in smaller markets."},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L2_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L2_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a71d268-5f6a-593b-b102-740c11a96c68', '2af69ed5-9a36-57af-bc3b-2268e4d6b0aa', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Before reaching consensus, the board raised a reservation about the proposal’s commercial implications in smaller markets.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Прежде чем достичь консенсуса, совет высказал сомнение относительно коммерческих последствий предложения на небольших рынках.","target_language":"en","word_bank":["Before","reaching","consensus",",","the","board","raised","a","reservation","about","the","proposal’s","commercial","implications","in","smaller","markets","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3f812a12-2ce1-5180-8057-b1967cf9bc0f', '2af69ed5-9a36-57af-bc3b-2268e4d6b0aa', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"decision criterion","instruction":"Выберите подходящее слово.","options":["decision criterion","reach consensus","formal sign-off"],"sentence_template":"Before reaching consensus, the board raised a reservation about the proposal’s commercial implications in smaller markets."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b147cc4-bb20-59c3-b317-134a6421a59c', '2af69ed5-9a36-57af-bc3b-2268e4d6b0aa', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Before","reaching","consensus",",","the","board","raised","a","reservation","about","the","proposal’s","commercial","implications","in","smaller","markets","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","markets","smaller","in","implications","commercial","proposal’s","the","about","reservation","a","raised","board","the",",","consensus","reaching","Before"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5de5f71c-7313-5205-9958-9d481ab35cfc', '2af69ed5-9a36-57af-bc3b-2268e4d6b0aa', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Before reaching consensus, the board raised a reservation about the proposal’s commercial implications in smaller markets. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a3c39479-1402-582c-bcca-ed9975d227a4', '2af69ed5-9a36-57af-bc3b-2268e4d6b0aa', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Before reaching consensus, the board raised a reservation about the proposal’s commercial implications in smaller markets. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Прежде чем достичь консенсуса, совет высказал сомнение относительно коммерческих последствий предложения на небольших рынках. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7c08c0bb-0a72-5da6-8a78-3321ee2c26a6', '2af69ed5-9a36-57af-bc3b-2268e4d6b0aa', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"Before reaching consensus, the board raised a reservation about the proposal’s commercial implications in smaller markets.","translation":"Прежде чем достичь консенсуса, совет высказал сомнение относительно коммерческих последствий предложения на небольших рынках.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Evaluating Competing Options"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('206bcc15-cec0-5831-a7f6-7de9661456c8', '2af69ed5-9a36-57af-bc3b-2268e4d6b0aa', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“decision criterion” means a standard used to compare options.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L2_D11","is_correct":true,"text":"a standard used to compare options"},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L2_D12","is_correct":false,"text":"an effect on business performance or value"},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L2_D13","is_correct":false,"text":"express a concern without rejecting an idea"}],"word":"decision criterion"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b9ad8cb2-9528-5d65-87c1-26d7ad748d21', '2af69ed5-9a36-57af-bc3b-2268e4d6b0aa', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Before reaching consensus, the board raised a reservation about the proposal’s commercial implications in smaller markets.","explanation":"The missing business expression is “decision criterion”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"decision criterion","id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L2_D14","is_correct":true},{"audio_text":"raise a reservation","id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L2_D15","is_correct":false},{"audio_text":"action owner","id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L2_D16","is_correct":false}],"sentence_template":"Before reaching consensus, the board raised a reservation about the proposal’s commercial implications in smaller markets."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c49dbcff-deec-59f8-a7f7-0fd0324727e7', '2af69ed5-9a36-57af-bc3b-2268e4d6b0aa', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"decision criterion","explanation":"The complete business statement uses “decision criterion” precisely.","hint_prefix":"deci","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Before reaching consensus, the board raised a reservation about the proposal’s commercial implications in smaller markets."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('52b4f66a-ba4a-588c-a008-3bb51a3f4aa4', '2af69ed5-9a36-57af-bc3b-2268e4d6b0aa', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"strategic priority","id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L2_D17","text":"strategic priority"},{"audio_text":"decision criterion","id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L2_D18","text":"decision criterion"},{"audio_text":"commercial implication","id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L2_D19","text":"commercial implication"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12206310-f753-5911-ba53-1e558c4b7a35', '2af69ed5-9a36-57af-bc3b-2268e4d6b0aa', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Evaluating Competing Options”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L2_D20","is_correct":true,"text":"Before reaching consensus, the board raised a reservation about the proposal’s commercial implications in smaller markets."},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L2_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L2_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8fd8915d-bf69-53ba-b551-6a3b44b5bd99', '2af69ed5-9a36-57af-bc3b-2268e4d6b0aa', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a16fc6ac-1180-51e6-8648-335525198585', NULL, 'Решение и последующие действия', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Confirming Decisions and Ownership","ru":"Решение и последующие действия"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('733d1267-8003-515b-ac6d-466f12a05ec9', 'a16fc6ac-1180-51e6-8648-335525198585', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L3_D01","left":"strategic priority","right":"стратегический приоритет"},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L3_D02","left":"decision criterion","right":"критерий решения"},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L3_D03","left":"commercial implication","right":"коммерческое последствие"},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L3_D04","left":"raise a reservation","right":"высказать сомнение"},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L3_D05","left":"reach consensus","right":"достичь консенсуса"},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L3_D06","left":"action owner","right":"ответственный за задачу"},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L3_D07","left":"formal sign-off","right":"официальное утверждение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2276ef8a-565b-5074-a28b-5af600e0cc56', 'a16fc6ac-1180-51e6-8648-335525198585', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L3_D08","is_correct":true,"text":"Every action owner has accepted responsibility, although implementation remains conditional on formal sign-off from finance."},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L3_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L3_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4f0b9e72-b104-56b3-8ad8-79f771fd4c37', 'a16fc6ac-1180-51e6-8648-335525198585', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Every action owner has accepted responsibility, although implementation remains conditional on formal sign-off from finance.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Каждый ответственный принял обязанность, хотя реализация остаётся зависимой от официального утверждения финансовым отделом.","target_language":"en","word_bank":["Every","action","owner","has","accepted","responsibility",",","although","implementation","remains","conditional","on","formal","sign-off","from","finance","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9c8b5dc6-613c-5654-8fd7-8c6dd547121b', 'a16fc6ac-1180-51e6-8648-335525198585', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"commercial implication","instruction":"Выберите подходящее слово.","options":["commercial implication","action owner","strategic priority"],"sentence_template":"Every action owner has accepted responsibility, although implementation remains conditional on formal sign-off from finance."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ea500ec6-c8d1-5671-8238-8776ca728597', 'a16fc6ac-1180-51e6-8648-335525198585', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Every","action","owner","has","accepted","responsibility",",","although","implementation","remains","conditional","on","formal","sign-off","from","finance","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","finance","from","sign-off","formal","on","conditional","remains","implementation","although",",","responsibility","accepted","has","owner","action","Every"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a202fa30-1bc4-5b88-a889-a808d5a914fc', 'a16fc6ac-1180-51e6-8648-335525198585', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Every action owner has accepted responsibility, although implementation remains conditional on formal sign-off from finance. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('503916c0-e83f-5b20-aafd-177e6d9eaf07', 'a16fc6ac-1180-51e6-8648-335525198585', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Every action owner has accepted responsibility, although implementation remains conditional on formal sign-off from finance. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Каждый ответственный принял обязанность, хотя реализация остаётся зависимой от официального утверждения финансовым отделом. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e370895-cd00-5955-bbbc-cd0cf101fe99', 'a16fc6ac-1180-51e6-8648-335525198585', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"Every action owner has accepted responsibility, although implementation remains conditional on formal sign-off from finance.","translation":"Каждый ответственный принял обязанность, хотя реализация остаётся зависимой от официального утверждения финансовым отделом.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Confirming Decisions and Ownership"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e3538b44-e297-5616-87cb-2148eed773e2', 'a16fc6ac-1180-51e6-8648-335525198585', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“commercial implication” means an effect on business performance or value.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L3_D11","is_correct":true,"text":"an effect on business performance or value"},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L3_D12","is_correct":false,"text":"express a concern without rejecting an idea"},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L3_D13","is_correct":false,"text":"arrive at broad agreement"}],"word":"commercial implication"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9bdf1c7e-08b4-5644-87a9-5c0a2518f948', 'a16fc6ac-1180-51e6-8648-335525198585', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Every action owner has accepted responsibility, although implementation remains conditional on formal sign-off from finance.","explanation":"The missing business expression is “commercial implication”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"commercial implication","id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L3_D14","is_correct":true},{"audio_text":"reach consensus","id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L3_D15","is_correct":false},{"audio_text":"formal sign-off","id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L3_D16","is_correct":false}],"sentence_template":"Every action owner has accepted responsibility, although implementation remains conditional on formal sign-off from finance."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da522605-97b4-5534-88b6-07d19d7c97c6', 'a16fc6ac-1180-51e6-8648-335525198585', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"commercial implication","explanation":"The complete business statement uses “commercial implication” precisely.","hint_prefix":"comm","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Every action owner has accepted responsibility, although implementation remains conditional on formal sign-off from finance."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b73896d3-906f-5c25-b73a-9eca1a76d2e7', 'a16fc6ac-1180-51e6-8648-335525198585', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"strategic priority","id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L3_D17","text":"strategic priority"},{"audio_text":"decision criterion","id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L3_D18","text":"decision criterion"},{"audio_text":"commercial implication","id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L3_D19","text":"commercial implication"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4ea1434e-6fc6-503a-b1f5-aeefeecd222e', 'a16fc6ac-1180-51e6-8648-335525198585', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Confirming Decisions and Ownership”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L3_D20","is_correct":true,"text":"Every action owner has accepted responsibility, although implementation remains conditional on formal sign-off from finance."},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L3_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_EXECUTIVE_MEETINGS_DECISIONS_AND_ACTION_POINTS_L3_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8fd8915d-bf69-53ba-b551-6a3b44b5bd99', 'a16fc6ac-1180-51e6-8648-335525198585', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5900121c-04ff-5573-8162-208ad6e3a93d', 'en', 'strategic priority', 'стратегический приоритет', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7a4a9dec-cfd5-50f7-9687-ab202f5c43e3', 'en', 'decision criterion', 'критерий решения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5643036-6408-5e23-8dab-d87077f43013', 'en', 'commercial implication', 'коммерческое последствие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a05c1d97-ae31-52a4-8e1f-a2063936242f', 'en', 'raise a reservation', 'высказать сомнение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e8c6004c-597c-5f3c-ae90-6b4101e9357d', 'en', 'reach consensus', 'достичь консенсуса', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e4b30fda-5715-5074-835b-96071aa40428', 'en', 'action owner', 'ответственный за задачу', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b61eb298-cd77-51d7-92e8-b75d4ae0266e', 'en', 'formal sign-off', 'официальное утверждение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5900121c-04ff-5573-8162-208ad6e3a93d', 'en', 'strategic priority', 'стратегический приоритет', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7a4a9dec-cfd5-50f7-9687-ab202f5c43e3', 'en', 'decision criterion', 'критерий решения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5643036-6408-5e23-8dab-d87077f43013', 'en', 'commercial implication', 'коммерческое последствие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a05c1d97-ae31-52a4-8e1f-a2063936242f', 'en', 'raise a reservation', 'высказать сомнение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e8c6004c-597c-5f3c-ae90-6b4101e9357d', 'en', 'reach consensus', 'достичь консенсуса', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e4b30fda-5715-5074-835b-96071aa40428', 'en', 'action owner', 'ответственный за задачу', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b61eb298-cd77-51d7-92e8-b75d4ae0266e', 'en', 'formal sign-off', 'официальное утверждение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5900121c-04ff-5573-8162-208ad6e3a93d', 'en', 'strategic priority', 'стратегический приоритет', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7a4a9dec-cfd5-50f7-9687-ab202f5c43e3', 'en', 'decision criterion', 'критерий решения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5643036-6408-5e23-8dab-d87077f43013', 'en', 'commercial implication', 'коммерческое последствие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a05c1d97-ae31-52a4-8e1f-a2063936242f', 'en', 'raise a reservation', 'высказать сомнение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e8c6004c-597c-5f3c-ae90-6b4101e9357d', 'en', 'reach consensus', 'достичь консенсуса', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e4b30fda-5715-5074-835b-96071aa40428', 'en', 'action owner', 'ответственный за задачу', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b61eb298-cd77-51d7-92e8-b75d4ae0266e', 'en', 'formal sign-off', 'официальное утверждение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fd8915d-bf69-53ba-b551-6a3b44b5bd99', id, 'c59c81d9-aea3-5aab-b2dc-bfbf32ac2200', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'strategic priority' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fd8915d-bf69-53ba-b551-6a3b44b5bd99', id, 'c59c81d9-aea3-5aab-b2dc-bfbf32ac2200', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'decision criterion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fd8915d-bf69-53ba-b551-6a3b44b5bd99', id, 'c59c81d9-aea3-5aab-b2dc-bfbf32ac2200', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'commercial implication' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fd8915d-bf69-53ba-b551-6a3b44b5bd99', id, 'c59c81d9-aea3-5aab-b2dc-bfbf32ac2200', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'raise a reservation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fd8915d-bf69-53ba-b551-6a3b44b5bd99', id, 'c59c81d9-aea3-5aab-b2dc-bfbf32ac2200', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'reach consensus' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fd8915d-bf69-53ba-b551-6a3b44b5bd99', id, 'c59c81d9-aea3-5aab-b2dc-bfbf32ac2200', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'action owner' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fd8915d-bf69-53ba-b551-6a3b44b5bd99', id, 'c59c81d9-aea3-5aab-b2dc-bfbf32ac2200', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'formal sign-off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fd8915d-bf69-53ba-b551-6a3b44b5bd99', id, '2af69ed5-9a36-57af-bc3b-2268e4d6b0aa', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'strategic priority' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fd8915d-bf69-53ba-b551-6a3b44b5bd99', id, '2af69ed5-9a36-57af-bc3b-2268e4d6b0aa', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'decision criterion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fd8915d-bf69-53ba-b551-6a3b44b5bd99', id, '2af69ed5-9a36-57af-bc3b-2268e4d6b0aa', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'commercial implication' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fd8915d-bf69-53ba-b551-6a3b44b5bd99', id, '2af69ed5-9a36-57af-bc3b-2268e4d6b0aa', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'raise a reservation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fd8915d-bf69-53ba-b551-6a3b44b5bd99', id, '2af69ed5-9a36-57af-bc3b-2268e4d6b0aa', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'reach consensus' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fd8915d-bf69-53ba-b551-6a3b44b5bd99', id, '2af69ed5-9a36-57af-bc3b-2268e4d6b0aa', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'action owner' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fd8915d-bf69-53ba-b551-6a3b44b5bd99', id, '2af69ed5-9a36-57af-bc3b-2268e4d6b0aa', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'formal sign-off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fd8915d-bf69-53ba-b551-6a3b44b5bd99', id, 'a16fc6ac-1180-51e6-8648-335525198585', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'strategic priority' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fd8915d-bf69-53ba-b551-6a3b44b5bd99', id, 'a16fc6ac-1180-51e6-8648-335525198585', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'decision criterion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fd8915d-bf69-53ba-b551-6a3b44b5bd99', id, 'a16fc6ac-1180-51e6-8648-335525198585', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'commercial implication' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fd8915d-bf69-53ba-b551-6a3b44b5bd99', id, 'a16fc6ac-1180-51e6-8648-335525198585', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'raise a reservation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fd8915d-bf69-53ba-b551-6a3b44b5bd99', id, 'a16fc6ac-1180-51e6-8648-335525198585', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'reach consensus' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fd8915d-bf69-53ba-b551-6a3b44b5bd99', id, 'a16fc6ac-1180-51e6-8648-335525198585', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'action owner' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8fd8915d-bf69-53ba-b551-6a3b44b5bd99', id, 'a16fc6ac-1180-51e6-8648-335525198585', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'formal sign-off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
