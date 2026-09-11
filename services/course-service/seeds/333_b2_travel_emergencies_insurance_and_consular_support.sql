-- Track: B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('4fbcc139-786d-51a9-8527-cdc921924b2c', 'B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT', 'Чрезвычайные ситуации, страхование и консульская помощь', 'Развивайте уверенное общение уровня B2 в сложных поездках по теме «Чрезвычайные ситуации, страхование и консульская помощь», оценивая варианты, права, риски и культурный контекст.', '{"en":"Emergencies, Insurance and Consular Support","ru":"Чрезвычайные ситуации, страхование и консульская помощь"}'::jsonb, '{"en":"Develop confident B2 communication for emergencies, insurance and consular support by evaluating options, rights, risks, and cultural context.","ru":"Развивайте уверенное общение уровня B2 в сложных поездках по теме «Чрезвычайные ситуации, страхование и консульская помощь», оценивая варианты, права, риски и культурный контекст."}'::jsonb, 'en', 'B2', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('8f1653b8-ecd4-5418-92e3-ab8c02de1f82', NULL, 'Ситуация и ключевые понятия', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Assessing an Urgent Situation","ru":"Ситуация и ключевые понятия"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('008263ba-baf7-5121-8ead-447fa402d5a1', '8f1653b8-ecd4-5418-92e3-ab8c02de1f82', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L1_D01","left":"immediate threat","right":"непосредственная угроза"},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L1_D02","left":"emergency service","right":"экстренная служба"},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L1_D03","left":"policy exclusion","right":"исключение из страхового покрытия"},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L1_D04","left":"supporting evidence","right":"подтверждающие доказательства"},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L1_D05","left":"consular assistance","right":"консульская помощь"},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L1_D06","left":"emergency travel document","right":"временный проездной документ"},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L1_D07","left":"mitigate loss","right":"уменьшить ущерб"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('255652c3-8cb0-53f1-a708-5851f9dbc80a', '8f1653b8-ecd4-5418-92e3-ab8c02de1f82', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L1_D08","is_correct":true,"text":"When there is an immediate threat to life or safety, contact the local emergency service before the insurer or consulate."},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L1_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L1_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('904b0e2b-a0c6-55aa-9078-dbb446b9a381', '8f1653b8-ecd4-5418-92e3-ab8c02de1f82', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"When there is an immediate threat to life or safety, contact the local emergency service before the insurer or consulate.","instruction":"Соберите перевод.","source_language":"ru","source_text":"При непосредственной угрозе жизни или безопасности сначала свяжитесь с местной экстренной службой, а затем со страховщиком или консульством.","target_language":"en","word_bank":["When","there","is","an","immediate","threat","to","life","or","safety",",","contact","the","local","emergency","service","before","the","insurer","or","consulate","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('317974f1-210e-523f-b415-89a94c917dd4', '8f1653b8-ecd4-5418-92e3-ab8c02de1f82', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"immediate threat","instruction":"Выберите подходящее слово.","options":["immediate threat","supporting evidence","emergency travel document"],"sentence_template":"When there is an ___ to life or safety, contact the local emergency service before the insurer or consulate."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('91d94751-469b-5cd3-a2e3-c0133708c3fd', '8f1653b8-ecd4-5418-92e3-ab8c02de1f82', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["When","there","is","an","immediate","threat","to","life","or","safety",",","contact","the","local","emergency","service","before","the","insurer","or","consulate","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","consulate","or","insurer","the","before","service","emergency","local","the","contact",",","safety","or","life","to","threat","immediate","an","is","there","When"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e06f9e1-8c26-5ba8-8143-61c275c9b427', '8f1653b8-ecd4-5418-92e3-ab8c02de1f82', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"When there is an immediate threat to life or safety, contact the local emergency service before the insurer or consulate. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2dc150ba-d377-505b-98e2-9392c3240060', '8f1653b8-ecd4-5418-92e3-ab8c02de1f82', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"When there is an immediate threat to life or safety, contact the local emergency service before the insurer or consulate. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"При непосредственной угрозе жизни или безопасности сначала свяжитесь с местной экстренной службой, а затем со страховщиком или консульством. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('001fb931-5660-5743-8892-8f4e15f09bd3', '8f1653b8-ecd4-5418-92e3-ab8c02de1f82', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"When there is an immediate threat to life or safety, contact the local emergency service before the insurer or consulate.","translation":"При непосредственной угрозе жизни или безопасности сначала свяжитесь с местной экстренной службой, а затем со страховщиком или консульством.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Assessing an Urgent Situation"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7e15cb0-8229-5199-8101-884e2d063c27', '8f1653b8-ecd4-5418-92e3-ab8c02de1f82', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“immediate threat” means a danger requiring urgent action.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L1_D11","is_correct":true,"text":"a danger requiring urgent action"},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L1_D12","is_correct":false,"text":"an organisation responding to urgent danger"},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L1_D13","is_correct":false,"text":"a circumstance an insurance contract does not cover"}],"word":"immediate threat"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f127dd4c-5f2f-5e03-9dbb-1077ddf5bfda', '8f1653b8-ecd4-5418-92e3-ab8c02de1f82', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"When there is an immediate threat to life or safety, contact the local emergency service before the insurer or consulate.","explanation":"The missing travel expression is “immediate threat”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"immediate threat","id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L1_D14","is_correct":true},{"audio_text":"policy exclusion","id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L1_D15","is_correct":false},{"audio_text":"consular assistance","id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L1_D16","is_correct":false}],"sentence_template":"When there is an ___ to life or safety, contact the local emergency service before the insurer or consulate."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7cad4e62-a8fa-5771-b599-921e6b255e31', '8f1653b8-ecd4-5418-92e3-ab8c02de1f82', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"immediate threat","explanation":"The complete travel statement uses “immediate threat” precisely.","hint_prefix":"imme","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"When there is an ___ to life or safety, contact the local emergency service before the insurer or consulate."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71f367a1-4a7f-57ff-9541-f40400d6c687', '8f1653b8-ecd4-5418-92e3-ab8c02de1f82', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"immediate threat","id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L1_D17","text":"immediate threat"},{"audio_text":"emergency service","id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L1_D18","text":"emergency service"},{"audio_text":"policy exclusion","id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L1_D19","text":"policy exclusion"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('09011a0f-1c9d-5622-a349-b464a1c3e48c', '8f1653b8-ecd4-5418-92e3-ab8c02de1f82', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Assessing an Urgent Situation”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L1_D20","is_correct":true,"text":"When there is an immediate threat to life or safety, contact the local emergency service before the insurer or consulate."},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L1_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L1_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('4fbcc139-786d-51a9-8527-cdc921924b2c', '8f1653b8-ecd4-5418-92e3-ab8c02de1f82', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('aa582297-aab2-5369-b81b-59fd222f4df4', NULL, 'Переговоры и решение проблемы', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Managing an Insurance Claim","ru":"Переговоры и решение проблемы"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd233260-c307-5075-aa17-b5ee87afcb03', 'aa582297-aab2-5369-b81b-59fd222f4df4', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L2_D01","left":"immediate threat","right":"непосредственная угроза"},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L2_D02","left":"emergency service","right":"экстренная служба"},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L2_D03","left":"policy exclusion","right":"исключение из страхового покрытия"},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L2_D04","left":"supporting evidence","right":"подтверждающие доказательства"},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L2_D05","left":"consular assistance","right":"консульская помощь"},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L2_D06","left":"emergency travel document","right":"временный проездной документ"},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L2_D07","left":"mitigate loss","right":"уменьшить ущерб"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b178bd16-b438-55b9-bf70-e53f02cec1b3', 'aa582297-aab2-5369-b81b-59fd222f4df4', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L2_D08","is_correct":true,"text":"The insurer requested supporting evidence and proof that reasonable action had been taken to mitigate the loss."},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L2_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L2_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('631bd645-0826-5a37-9a38-02c31a17d115', 'aa582297-aab2-5369-b81b-59fd222f4df4', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The insurer requested supporting evidence and proof that reasonable action had been taken to mitigate the loss.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Страховщик запросил подтверждающие доказательства и сведения о том, что были предприняты разумные меры для уменьшения ущерба.","target_language":"en","word_bank":["The","insurer","requested","supporting","evidence","and","proof","that","reasonable","action","had","been","taken","to","mitigate","the","loss","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78bb590c-0da3-58be-a647-c85d6299bd76', 'aa582297-aab2-5369-b81b-59fd222f4df4', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"emergency service","instruction":"Выберите подходящее слово.","options":["emergency service","consular assistance","mitigate loss"],"sentence_template":"The insurer requested supporting evidence and proof that reasonable action had been taken to mitigate the loss."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3882a2ee-d136-5799-ab9f-d1d70775d814', 'aa582297-aab2-5369-b81b-59fd222f4df4', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","insurer","requested","supporting","evidence","and","proof","that","reasonable","action","had","been","taken","to","mitigate","the","loss","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","loss","the","mitigate","to","taken","been","had","action","reasonable","that","proof","and","evidence","supporting","requested","insurer","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('43b75542-e610-5aab-8971-7d1499ab4e62', 'aa582297-aab2-5369-b81b-59fd222f4df4', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The insurer requested supporting evidence and proof that reasonable action had been taken to mitigate the loss. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('37c888d9-fae8-55b6-af65-9d4697fe41d3', 'aa582297-aab2-5369-b81b-59fd222f4df4', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The insurer requested supporting evidence and proof that reasonable action had been taken to mitigate the loss. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Страховщик запросил подтверждающие доказательства и сведения о том, что были предприняты разумные меры для уменьшения ущерба. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa6a68bd-6696-54c6-8c23-e7c7c9e86856', 'aa582297-aab2-5369-b81b-59fd222f4df4', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The insurer requested supporting evidence and proof that reasonable action had been taken to mitigate the loss.","translation":"Страховщик запросил подтверждающие доказательства и сведения о том, что были предприняты разумные меры для уменьшения ущерба.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Managing an Insurance Claim"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b218866f-b7ea-57eb-b69a-5c1afeca58c6', 'aa582297-aab2-5369-b81b-59fd222f4df4', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“emergency service” means an organisation responding to urgent danger.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L2_D11","is_correct":true,"text":"an organisation responding to urgent danger"},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L2_D12","is_correct":false,"text":"a circumstance an insurance contract does not cover"},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L2_D13","is_correct":false,"text":"documents or records proving a claim"}],"word":"emergency service"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6639699c-7adf-505a-8440-efa9aa1ebcf2', 'aa582297-aab2-5369-b81b-59fd222f4df4', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The insurer requested supporting evidence and proof that reasonable action had been taken to mitigate the loss.","explanation":"The missing travel expression is “emergency service”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"emergency service","id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L2_D14","is_correct":true},{"audio_text":"supporting evidence","id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L2_D15","is_correct":false},{"audio_text":"emergency travel document","id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L2_D16","is_correct":false}],"sentence_template":"The insurer requested supporting evidence and proof that reasonable action had been taken to mitigate the loss."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf1babd2-da2e-5f18-9d80-10d0b1540d51', 'aa582297-aab2-5369-b81b-59fd222f4df4', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"emergency service","explanation":"The complete travel statement uses “emergency service” precisely.","hint_prefix":"emer","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The insurer requested supporting evidence and proof that reasonable action had been taken to mitigate the loss."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e886829-1d05-5165-a326-49241edafef0', 'aa582297-aab2-5369-b81b-59fd222f4df4', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"immediate threat","id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L2_D17","text":"immediate threat"},{"audio_text":"emergency service","id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L2_D18","text":"emergency service"},{"audio_text":"policy exclusion","id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L2_D19","text":"policy exclusion"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('054a6bcf-1495-5dc9-a8f2-415075f1ca4d', 'aa582297-aab2-5369-b81b-59fd222f4df4', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Managing an Insurance Claim”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L2_D20","is_correct":true,"text":"The insurer requested supporting evidence and proof that reasonable action had been taken to mitigate the loss."},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L2_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L2_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('4fbcc139-786d-51a9-8527-cdc921924b2c', 'aa582297-aab2-5369-b81b-59fd222f4df4', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('fbfabaf5-3fb3-5ac6-8e2e-123aeb295fcc', NULL, 'Взвешенное действие и вывод', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Seeking Consular Assistance","ru":"Взвешенное действие и вывод"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2ebc93a6-5ca9-5ddb-857c-3b5674e6df0d', 'fbfabaf5-3fb3-5ac6-8e2e-123aeb295fcc', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L3_D01","left":"immediate threat","right":"непосредственная угроза"},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L3_D02","left":"emergency service","right":"экстренная служба"},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L3_D03","left":"policy exclusion","right":"исключение из страхового покрытия"},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L3_D04","left":"supporting evidence","right":"подтверждающие доказательства"},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L3_D05","left":"consular assistance","right":"консульская помощь"},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L3_D06","left":"emergency travel document","right":"временный проездной документ"},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L3_D07","left":"mitigate loss","right":"уменьшить ущерб"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('99c935bd-f3e1-5272-8273-9ee4dacf4c99', 'fbfabaf5-3fb3-5ac6-8e2e-123aeb295fcc', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L3_D08","is_correct":true,"text":"Consular assistance may help obtain an emergency travel document, but it does not normally override a policy exclusion or pay private debts."},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L3_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L3_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e23367b8-8155-5320-aa18-47d5ed878daa', 'fbfabaf5-3fb3-5ac6-8e2e-123aeb295fcc', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Consular assistance may help obtain an emergency travel document, but it does not normally override a policy exclusion or pay private debts.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Консульская помощь может содействовать получению временного проездного документа, но обычно не отменяет исключения из страхового покрытия и не оплачивает частные долги.","target_language":"en","word_bank":["Consular","assistance","may","help","obtain","an","emergency","travel","document",",","but","it","does","not","normally","override","a","policy","exclusion","or","pay","private","debts","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1f6ad2b9-cec3-5571-96a6-2ea3af39675c', 'fbfabaf5-3fb3-5ac6-8e2e-123aeb295fcc', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"policy exclusion","instruction":"Выберите подходящее слово.","options":["policy exclusion","emergency travel document","immediate threat"],"sentence_template":"Consular assistance may help obtain an emergency travel document, but it does not normally override a ___ or pay private debts."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('edbd8d49-5fc1-58bb-86f7-a6c0f546c445', 'fbfabaf5-3fb3-5ac6-8e2e-123aeb295fcc', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Consular","assistance","may","help","obtain","an","emergency","travel","document",",","but","it","does","not","normally","override","a","policy","exclusion","or","pay","private","debts","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","debts","private","pay","or","exclusion","policy","a","override","normally","not","does","it","but",",","document","travel","emergency","an","obtain","help","may","assistance","Consular"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a800ae2-3ae4-5302-b856-ca2a9cdc6657', 'fbfabaf5-3fb3-5ac6-8e2e-123aeb295fcc', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Consular assistance may help obtain an emergency travel document, but it does not normally override a policy exclusion or pay private debts. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f34e6b61-c7c9-5d4d-90af-69fcbb269d08', 'fbfabaf5-3fb3-5ac6-8e2e-123aeb295fcc', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Consular assistance may help obtain an emergency travel document, but it does not normally override a policy exclusion or pay private debts. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Консульская помощь может содействовать получению временного проездного документа, но обычно не отменяет исключения из страхового покрытия и не оплачивает частные долги. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('acf0c7b9-61d0-5532-99a1-56cf0da83b63', 'fbfabaf5-3fb3-5ac6-8e2e-123aeb295fcc', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"Consular assistance may help obtain an emergency travel document, but it does not normally override a policy exclusion or pay private debts.","translation":"Консульская помощь может содействовать получению временного проездного документа, но обычно не отменяет исключения из страхового покрытия и не оплачивает частные долги.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Seeking Consular Assistance"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('339e30a0-01f7-54bd-88c4-54a20b5fd525', 'fbfabaf5-3fb3-5ac6-8e2e-123aeb295fcc', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“policy exclusion” means a circumstance an insurance contract does not cover.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L3_D11","is_correct":true,"text":"a circumstance an insurance contract does not cover"},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L3_D12","is_correct":false,"text":"documents or records proving a claim"},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L3_D13","is_correct":false,"text":"support provided abroad by a national authority"}],"word":"policy exclusion"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dbdfa6e2-df28-5de0-a8de-21aca434dea0', 'fbfabaf5-3fb3-5ac6-8e2e-123aeb295fcc', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Consular assistance may help obtain an emergency travel document, but it does not normally override a policy exclusion or pay private debts.","explanation":"The missing travel expression is “policy exclusion”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"policy exclusion","id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L3_D14","is_correct":true},{"audio_text":"consular assistance","id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L3_D15","is_correct":false},{"audio_text":"mitigate loss","id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L3_D16","is_correct":false}],"sentence_template":"Consular assistance may help obtain an emergency travel document, but it does not normally override a ___ or pay private debts."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5c53155-1c4c-5fea-ba93-cb0e00de1817', 'fbfabaf5-3fb3-5ac6-8e2e-123aeb295fcc', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"policy exclusion","explanation":"The complete travel statement uses “policy exclusion” precisely.","hint_prefix":"poli","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Consular assistance may help obtain an emergency travel document, but it does not normally override a ___ or pay private debts."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('175cd99d-203e-589d-98a9-af4ae48dbd6f', 'fbfabaf5-3fb3-5ac6-8e2e-123aeb295fcc', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"immediate threat","id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L3_D17","text":"immediate threat"},{"audio_text":"emergency service","id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L3_D18","text":"emergency service"},{"audio_text":"policy exclusion","id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L3_D19","text":"policy exclusion"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3ace41f-0d3b-5c59-aaa8-c9745fd5b403', 'fbfabaf5-3fb3-5ac6-8e2e-123aeb295fcc', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Seeking Consular Assistance”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L3_D20","is_correct":true,"text":"Consular assistance may help obtain an emergency travel document, but it does not normally override a policy exclusion or pay private debts."},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L3_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_EMERGENCIES_INSURANCE_AND_CONSULAR_SUPPORT_L3_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('4fbcc139-786d-51a9-8527-cdc921924b2c', 'fbfabaf5-3fb3-5ac6-8e2e-123aeb295fcc', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e42cf9d9-e868-5609-a78c-757ebe6eb624', 'en', 'immediate threat', 'непосредственная угроза', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ae1ccc67-5127-5ea3-a552-effcde72a40a', 'en', 'emergency service', 'экстренная служба', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('66be80a7-6f62-5809-aae1-68fbe21e0b3f', 'en', 'policy exclusion', 'исключение из страхового покрытия', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5a65097b-5c7b-5868-ac72-2922c0353637', 'en', 'supporting evidence', 'подтверждающие доказательства', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('febef894-74c4-5e17-9d3a-1d4d49fe81eb', 'en', 'consular assistance', 'консульская помощь', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c77f5baf-19ea-59f5-831d-b9dbcca9da7f', 'en', 'emergency travel document', 'временный проездной документ', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0d0777e3-5534-5b1a-b222-b738aa8f3129', 'en', 'mitigate loss', 'уменьшить ущерб', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e42cf9d9-e868-5609-a78c-757ebe6eb624', 'en', 'immediate threat', 'непосредственная угроза', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ae1ccc67-5127-5ea3-a552-effcde72a40a', 'en', 'emergency service', 'экстренная служба', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('66be80a7-6f62-5809-aae1-68fbe21e0b3f', 'en', 'policy exclusion', 'исключение из страхового покрытия', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5a65097b-5c7b-5868-ac72-2922c0353637', 'en', 'supporting evidence', 'подтверждающие доказательства', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('febef894-74c4-5e17-9d3a-1d4d49fe81eb', 'en', 'consular assistance', 'консульская помощь', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c77f5baf-19ea-59f5-831d-b9dbcca9da7f', 'en', 'emergency travel document', 'временный проездной документ', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0d0777e3-5534-5b1a-b222-b738aa8f3129', 'en', 'mitigate loss', 'уменьшить ущерб', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e42cf9d9-e868-5609-a78c-757ebe6eb624', 'en', 'immediate threat', 'непосредственная угроза', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ae1ccc67-5127-5ea3-a552-effcde72a40a', 'en', 'emergency service', 'экстренная служба', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('66be80a7-6f62-5809-aae1-68fbe21e0b3f', 'en', 'policy exclusion', 'исключение из страхового покрытия', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5a65097b-5c7b-5868-ac72-2922c0353637', 'en', 'supporting evidence', 'подтверждающие доказательства', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('febef894-74c4-5e17-9d3a-1d4d49fe81eb', 'en', 'consular assistance', 'консульская помощь', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c77f5baf-19ea-59f5-831d-b9dbcca9da7f', 'en', 'emergency travel document', 'временный проездной документ', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0d0777e3-5534-5b1a-b222-b738aa8f3129', 'en', 'mitigate loss', 'уменьшить ущерб', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4fbcc139-786d-51a9-8527-cdc921924b2c', id, '8f1653b8-ecd4-5418-92e3-ab8c02de1f82', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'immediate threat' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4fbcc139-786d-51a9-8527-cdc921924b2c', id, '8f1653b8-ecd4-5418-92e3-ab8c02de1f82', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'emergency service' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4fbcc139-786d-51a9-8527-cdc921924b2c', id, '8f1653b8-ecd4-5418-92e3-ab8c02de1f82', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'policy exclusion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4fbcc139-786d-51a9-8527-cdc921924b2c', id, '8f1653b8-ecd4-5418-92e3-ab8c02de1f82', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'supporting evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4fbcc139-786d-51a9-8527-cdc921924b2c', id, '8f1653b8-ecd4-5418-92e3-ab8c02de1f82', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'consular assistance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4fbcc139-786d-51a9-8527-cdc921924b2c', id, '8f1653b8-ecd4-5418-92e3-ab8c02de1f82', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'emergency travel document' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4fbcc139-786d-51a9-8527-cdc921924b2c', id, '8f1653b8-ecd4-5418-92e3-ab8c02de1f82', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'mitigate loss' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4fbcc139-786d-51a9-8527-cdc921924b2c', id, 'aa582297-aab2-5369-b81b-59fd222f4df4', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'immediate threat' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4fbcc139-786d-51a9-8527-cdc921924b2c', id, 'aa582297-aab2-5369-b81b-59fd222f4df4', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'emergency service' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4fbcc139-786d-51a9-8527-cdc921924b2c', id, 'aa582297-aab2-5369-b81b-59fd222f4df4', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'policy exclusion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4fbcc139-786d-51a9-8527-cdc921924b2c', id, 'aa582297-aab2-5369-b81b-59fd222f4df4', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'supporting evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4fbcc139-786d-51a9-8527-cdc921924b2c', id, 'aa582297-aab2-5369-b81b-59fd222f4df4', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'consular assistance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4fbcc139-786d-51a9-8527-cdc921924b2c', id, 'aa582297-aab2-5369-b81b-59fd222f4df4', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'emergency travel document' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4fbcc139-786d-51a9-8527-cdc921924b2c', id, 'aa582297-aab2-5369-b81b-59fd222f4df4', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'mitigate loss' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4fbcc139-786d-51a9-8527-cdc921924b2c', id, 'fbfabaf5-3fb3-5ac6-8e2e-123aeb295fcc', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'immediate threat' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4fbcc139-786d-51a9-8527-cdc921924b2c', id, 'fbfabaf5-3fb3-5ac6-8e2e-123aeb295fcc', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'emergency service' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4fbcc139-786d-51a9-8527-cdc921924b2c', id, 'fbfabaf5-3fb3-5ac6-8e2e-123aeb295fcc', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'policy exclusion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4fbcc139-786d-51a9-8527-cdc921924b2c', id, 'fbfabaf5-3fb3-5ac6-8e2e-123aeb295fcc', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'supporting evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4fbcc139-786d-51a9-8527-cdc921924b2c', id, 'fbfabaf5-3fb3-5ac6-8e2e-123aeb295fcc', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'consular assistance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4fbcc139-786d-51a9-8527-cdc921924b2c', id, 'fbfabaf5-3fb3-5ac6-8e2e-123aeb295fcc', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'emergency travel document' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4fbcc139-786d-51a9-8527-cdc921924b2c', id, 'fbfabaf5-3fb3-5ac6-8e2e-123aeb295fcc', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'mitigate loss' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
