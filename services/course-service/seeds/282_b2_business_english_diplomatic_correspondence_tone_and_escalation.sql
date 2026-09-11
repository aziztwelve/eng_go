-- Track: B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('f230a7ff-627f-5688-a9b5-59839e072c6e', 'B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION', 'Дипломатическая переписка, тон и эскалация', 'Развивайте точный деловой английский уровня B2 по теме «Дипломатическая переписка, тон и эскалация», анализируя коммерческие последствия и согласовывая обоснованные решения.', '{"en":"Diplomatic Correspondence, Tone and Escalation","ru":"Дипломатическая переписка, тон и эскалация"}'::jsonb, '{"en":"Develop precise B2 business English for diplomatic correspondence, tone and escalation by analysing commercial implications and negotiating well-supported decisions.","ru":"Развивайте точный деловой английский уровня B2 по теме «Дипломатическая переписка, тон и эскалация», анализируя коммерческие последствия и согласовывая обоснованные решения."}'::jsonb, 'en', 'B2', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c3b47799-5fc1-5c19-9977-7bec2c2c20cb', NULL, 'Деловой контекст и ключевые понятия', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Writing with Appropriate Tone","ru":"Деловой контекст и ключевые понятия"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b6d8c9ad-aced-5662-84c8-5c57ad9620e0', 'c3b47799-5fc1-5c19-9977-7bec2c2c20cb', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L1_D01","left":"diplomatic wording","right":"дипломатичная формулировка"},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L1_D02","left":"firm position","right":"твёрдая позиция"},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L1_D03","left":"sensitive issue","right":"деликатный вопрос"},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L1_D04","left":"formal escalation","right":"официальная эскалация"},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L1_D05","left":"request clarification","right":"запросить уточнение"},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L1_D06","left":"without prejudice","right":"без ущерба для позиции"},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L1_D07","left":"written record","right":"письменная фиксация"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd1c97d3-3e85-5b5e-8a10-205c83fbcfeb', 'c3b47799-5fc1-5c19-9977-7bec2c2c20cb', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L1_D08","is_correct":true,"text":"Diplomatic wording can communicate a firm position while preserving the relationship and leaving room for a practical solution."},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L1_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L1_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('97450e7d-f043-5a7f-bf7f-7d8c6080d475', 'c3b47799-5fc1-5c19-9977-7bec2c2c20cb', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Diplomatic wording can communicate a firm position while preserving the relationship and leaving room for a practical solution.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Дипломатичная формулировка может передать твёрдую позицию, сохраняя отношения и оставляя возможность для практического решения.","target_language":"en","word_bank":["Diplomatic","wording","can","communicate","a","firm","position","while","preserving","the","relationship","and","leaving","room","for","a","practical","solution","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('270483e3-2df4-58c2-a6f1-9b1128c4b8aa', 'c3b47799-5fc1-5c19-9977-7bec2c2c20cb', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"diplomatic wording","instruction":"Выберите подходящее слово.","options":["diplomatic wording","formal escalation","without prejudice"],"sentence_template":"___ can communicate a firm position while preserving the relationship and leaving room for a practical solution."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ad388d15-a165-5133-ab35-f26ad3519fae', 'c3b47799-5fc1-5c19-9977-7bec2c2c20cb', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Diplomatic","wording","can","communicate","a","firm","position","while","preserving","the","relationship","and","leaving","room","for","a","practical","solution","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","solution","practical","a","for","room","leaving","and","relationship","the","preserving","while","position","firm","a","communicate","can","wording","Diplomatic"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5f5b650e-44a8-5f3d-8bf0-e7e2efa48ea8', 'c3b47799-5fc1-5c19-9977-7bec2c2c20cb', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Diplomatic wording can communicate a firm position while preserving the relationship and leaving room for a practical solution. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f3aa8caa-538e-58f8-bbcc-c5a49399d636', 'c3b47799-5fc1-5c19-9977-7bec2c2c20cb', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Diplomatic wording can communicate a firm position while preserving the relationship and leaving room for a practical solution. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Дипломатичная формулировка может передать твёрдую позицию, сохраняя отношения и оставляя возможность для практического решения. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('916967f9-8d19-5c98-9a5e-fba0aba4a5a2', 'c3b47799-5fc1-5c19-9977-7bec2c2c20cb', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"Diplomatic wording can communicate a firm position while preserving the relationship and leaving room for a practical solution.","translation":"Дипломатичная формулировка может передать твёрдую позицию, сохраняя отношения и оставляя возможность для практического решения.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Writing with Appropriate Tone"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('411fba7e-c580-5e54-b531-22e4d8a59cea', 'c3b47799-5fc1-5c19-9977-7bec2c2c20cb', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“diplomatic wording” means careful language that avoids unnecessary offence.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L1_D11","is_correct":true,"text":"careful language that avoids unnecessary offence"},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L1_D12","is_correct":false,"text":"a clear view that will not easily change"},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L1_D13","is_correct":false,"text":"a matter requiring careful communication"}],"word":"diplomatic wording"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('51c64dd6-78da-5d51-bbd7-9f2bef1859d9', 'c3b47799-5fc1-5c19-9977-7bec2c2c20cb', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Diplomatic wording can communicate a firm position while preserving the relationship and leaving room for a practical solution.","explanation":"The missing business expression is “diplomatic wording”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"diplomatic wording","id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L1_D14","is_correct":true},{"audio_text":"sensitive issue","id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L1_D15","is_correct":false},{"audio_text":"request clarification","id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L1_D16","is_correct":false}],"sentence_template":"___ can communicate a firm position while preserving the relationship and leaving room for a practical solution."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('52658e5e-98c6-53ab-abb2-4cc867c41298', 'c3b47799-5fc1-5c19-9977-7bec2c2c20cb', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"diplomatic wording","explanation":"The complete business statement uses “diplomatic wording” precisely.","hint_prefix":"dipl","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ can communicate a firm position while preserving the relationship and leaving room for a practical solution."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('035843f4-34ce-5ed8-8528-a2c33b561e2e', 'c3b47799-5fc1-5c19-9977-7bec2c2c20cb', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"diplomatic wording","id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L1_D17","text":"diplomatic wording"},{"audio_text":"firm position","id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L1_D18","text":"firm position"},{"audio_text":"sensitive issue","id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L1_D19","text":"sensitive issue"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7fa25983-8cdb-5ea2-9782-b24530696081', 'c3b47799-5fc1-5c19-9977-7bec2c2c20cb', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Writing with Appropriate Tone”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L1_D20","is_correct":true,"text":"Diplomatic wording can communicate a firm position while preserving the relationship and leaving room for a practical solution."},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L1_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L1_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f230a7ff-627f-5688-a9b5-59839e072c6e', 'c3b47799-5fc1-5c19-9977-7bec2c2c20cb', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('abeb870e-35de-5c27-b47d-4afd6ae82d2e', NULL, 'Анализ и профессиональное взаимодействие', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Delivering Difficult Messages","ru":"Анализ и профессиональное взаимодействие"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b9f0e2a-5885-5f65-92cd-3916dd4a70c8', 'abeb870e-35de-5c27-b47d-4afd6ae82d2e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L2_D01","left":"diplomatic wording","right":"дипломатичная формулировка"},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L2_D02","left":"firm position","right":"твёрдая позиция"},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L2_D03","left":"sensitive issue","right":"деликатный вопрос"},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L2_D04","left":"formal escalation","right":"официальная эскалация"},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L2_D05","left":"request clarification","right":"запросить уточнение"},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L2_D06","left":"without prejudice","right":"без ущерба для позиции"},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L2_D07","left":"written record","right":"письменная фиксация"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('27b0c10a-f0c8-5071-adec-8c3659324cef', 'abeb870e-35de-5c27-b47d-4afd6ae82d2e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L2_D08","is_correct":true,"text":"When addressing a sensitive issue, request clarification before attributing responsibility or making an accusation."},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L2_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L2_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5c138dc7-a4e6-52f9-a0ac-b4e73e9fda31', 'abeb870e-35de-5c27-b47d-4afd6ae82d2e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"When addressing a sensitive issue, request clarification before attributing responsibility or making an accusation.","instruction":"Соберите перевод.","source_language":"ru","source_text":"При обсуждении деликатного вопроса запросите уточнение, прежде чем возлагать ответственность или выдвигать обвинение.","target_language":"en","word_bank":["When","addressing","a","sensitive","issue",",","request","clarification","before","attributing","responsibility","or","making","an","accusation","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d1da40c6-8e9a-5c7d-975a-e2a1d03abab6', 'abeb870e-35de-5c27-b47d-4afd6ae82d2e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"firm position","instruction":"Выберите подходящее слово.","options":["firm position","request clarification","written record"],"sentence_template":"When addressing a sensitive issue, request clarification before attributing responsibility or making an accusation."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef9c48dd-5ee4-5f0c-9d2c-12c194c13330', 'abeb870e-35de-5c27-b47d-4afd6ae82d2e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["When","addressing","a","sensitive","issue",",","request","clarification","before","attributing","responsibility","or","making","an","accusation","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","accusation","an","making","or","responsibility","attributing","before","clarification","request",",","issue","sensitive","a","addressing","When"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5dc2ad29-1301-5e31-a06a-b103971d0300', 'abeb870e-35de-5c27-b47d-4afd6ae82d2e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"When addressing a sensitive issue, request clarification before attributing responsibility or making an accusation. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5453c843-4ac2-528b-9ac7-10a4c03f12ff', 'abeb870e-35de-5c27-b47d-4afd6ae82d2e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"When addressing a sensitive issue, request clarification before attributing responsibility or making an accusation. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"При обсуждении деликатного вопроса запросите уточнение, прежде чем возлагать ответственность или выдвигать обвинение. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c30b31b6-28e8-5481-b589-f178f5785892', 'abeb870e-35de-5c27-b47d-4afd6ae82d2e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"When addressing a sensitive issue, request clarification before attributing responsibility or making an accusation.","translation":"При обсуждении деликатного вопроса запросите уточнение, прежде чем возлагать ответственность или выдвигать обвинение.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Delivering Difficult Messages"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c8635dba-4cfb-52c2-a5d5-a2c5abac664c', 'abeb870e-35de-5c27-b47d-4afd6ae82d2e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“firm position” means a clear view that will not easily change.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L2_D11","is_correct":true,"text":"a clear view that will not easily change"},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L2_D12","is_correct":false,"text":"a matter requiring careful communication"},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L2_D13","is_correct":false,"text":"raising a problem to a higher authority"}],"word":"firm position"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a3ed473-2452-5576-be7f-7a8b38a009df', 'abeb870e-35de-5c27-b47d-4afd6ae82d2e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"When addressing a sensitive issue, request clarification before attributing responsibility or making an accusation.","explanation":"The missing business expression is “firm position”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"firm position","id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L2_D14","is_correct":true},{"audio_text":"formal escalation","id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L2_D15","is_correct":false},{"audio_text":"without prejudice","id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L2_D16","is_correct":false}],"sentence_template":"When addressing a sensitive issue, request clarification before attributing responsibility or making an accusation."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b37f3be0-53e4-520b-86de-921380cfc5fb', 'abeb870e-35de-5c27-b47d-4afd6ae82d2e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"firm position","explanation":"The complete business statement uses “firm position” precisely.","hint_prefix":"firm","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"When addressing a sensitive issue, request clarification before attributing responsibility or making an accusation."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c02c628a-6722-5707-8c41-d5846e1d23bd', 'abeb870e-35de-5c27-b47d-4afd6ae82d2e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"diplomatic wording","id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L2_D17","text":"diplomatic wording"},{"audio_text":"firm position","id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L2_D18","text":"firm position"},{"audio_text":"sensitive issue","id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L2_D19","text":"sensitive issue"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c0476699-a128-58b1-9485-da8093268b57', 'abeb870e-35de-5c27-b47d-4afd6ae82d2e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Delivering Difficult Messages”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L2_D20","is_correct":true,"text":"When addressing a sensitive issue, request clarification before attributing responsibility or making an accusation."},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L2_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L2_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f230a7ff-627f-5688-a9b5-59839e072c6e', 'abeb870e-35de-5c27-b47d-4afd6ae82d2e', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('6a73689f-7db2-5bde-af05-0d291a7b2c1a', NULL, 'Решение и последующие действия', 'Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия.', '{"en":"Escalating and Following Up","ru":"Решение и последующие действия"}'::jsonb, '{"en":"Handle a complex B2 business task confidently by explaining commercial implications precisely, responding diplomatically to objections, and agreeing practical action.","ru":"Уверенно выполнять сложную деловую задачу уровня B2, точно объясняя коммерческие последствия, дипломатично реагируя на возражения и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4337d852-fd27-5994-b89b-421501714abb', '6a73689f-7db2-5bde-af05-0d291a7b2c1a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L3_D01","left":"diplomatic wording","right":"дипломатичная формулировка"},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L3_D02","left":"firm position","right":"твёрдая позиция"},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L3_D03","left":"sensitive issue","right":"деликатный вопрос"},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L3_D04","left":"formal escalation","right":"официальная эскалация"},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L3_D05","left":"request clarification","right":"запросить уточнение"},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L3_D06","left":"without prejudice","right":"без ущерба для позиции"},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L3_D07","left":"written record","right":"письменная фиксация"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3137b350-22bf-5ab8-b815-1a445f33409c', '6a73689f-7db2-5bde-af05-0d291a7b2c1a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 business language and connects the recommendation to commercial evidence and consequences.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L3_D08","is_correct":true,"text":"A formal escalation should provide a concise written record of the problem, previous action, business impact, and requested resolution."},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L3_D09","is_correct":false,"text":"Commercial consequences are irrelevant once a proposal sounds attractive."},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L3_D10","is_correct":false,"text":"The decision can remain undocumented and no owner needs to be assigned."}],"question":"Which response demonstrates the strongest business judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fb85489a-f256-584b-9b2c-6867d3fb85cb', '6a73689f-7db2-5bde-af05-0d291a7b2c1a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A formal escalation should provide a concise written record of the problem, previous action, business impact, and requested resolution.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Официальная эскалация должна содержать краткую письменную фиксацию проблемы, предыдущих действий, влияния на бизнес и требуемого решения.","target_language":"en","word_bank":["A","formal","escalation","should","provide","a","concise","written","record","of","the","problem",",","previous","action",",","business","impact",",","and","requested","resolution","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a8016682-6855-548c-9b40-80d8f62f6ad0', '6a73689f-7db2-5bde-af05-0d291a7b2c1a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"sensitive issue","instruction":"Выберите подходящее слово.","options":["sensitive issue","without prejudice","diplomatic wording"],"sentence_template":"A formal escalation should provide a concise written record of the problem, previous action, business impact, and requested resolution."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7fe294e0-8ff7-5211-9bb6-9545e415d281', '6a73689f-7db2-5bde-af05-0d291a7b2c1a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","formal","escalation","should","provide","a","concise","written","record","of","the","problem",",","previous","action",",","business","impact",",","and","requested","resolution","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","resolution","requested","and",",","impact","business",",","action","previous",",","problem","the","of","record","written","concise","a","provide","should","escalation","formal","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71415f99-3341-559e-8046-76c50b6d688f', '6a73689f-7db2-5bde-af05-0d291a7b2c1a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A formal escalation should provide a concise written record of the problem, previous action, business impact, and requested resolution. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a52dfdba-b4c1-5fb1-8c39-b4a41cc20aae', '6a73689f-7db2-5bde-af05-0d291a7b2c1a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A formal escalation should provide a concise written record of the problem, previous action, business impact, and requested resolution. The recommendation should be commercially realistic and explicit about assumptions, risks, and ownership. While the alternative has merit, any final agreement should define measurable outcomes and the conditions under which it will be reviewed.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Официальная эскалация должна содержать краткую письменную фиксацию проблемы, предыдущих действий, влияния на бизнес и требуемого решения. Рекомендация должна быть коммерчески реалистичной и ясно указывать допущения, риски и ответственность. Хотя альтернатива имеет достоинства, любое окончательное соглашение должно определять измеримые результаты и условия пересмотра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8aa951ad-3fc2-5f8c-8d7f-45d95707acd4', '6a73689f-7db2-5bde-af05-0d291a7b2c1a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Executive","text":"A formal escalation should provide a concise written record of the problem, previous action, business impact, and requested resolution.","translation":"Официальная эскалация должна содержать краткую письменную фиксацию проблемы, предыдущих действий, влияния на бизнес и требуемого решения.","type":"dialogue"},{"character":"Client","text":"What commercial risk or assumption should be clarified before we proceed?","translation":"Какой коммерческий риск или допущение следует уточнить, прежде чем продолжать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should quantify the impact, acknowledge the uncertainty, and agree who owns the next action."},{"is_correct":false,"text":"We should avoid the risk discussion and proceed without measurable criteria."}],"text":"Which reply advances the business discussion?","type":"choice"}],"title":"Escalating and Following Up"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('587a9e7b-aabc-5017-b72f-2227b2ef2db1', '6a73689f-7db2-5bde-af05-0d291a7b2c1a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“sensitive issue” means a matter requiring careful communication.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L3_D11","is_correct":true,"text":"a matter requiring careful communication"},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L3_D12","is_correct":false,"text":"raising a problem to a higher authority"},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L3_D13","is_correct":false,"text":"ask for more precise information"}],"word":"sensitive issue"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce3c63f2-eb1e-5ffe-8e89-7aca8856440a', '6a73689f-7db2-5bde-af05-0d291a7b2c1a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A formal escalation should provide a concise written record of the problem, previous action, business impact, and requested resolution.","explanation":"The missing business expression is “sensitive issue”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"sensitive issue","id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L3_D14","is_correct":true},{"audio_text":"request clarification","id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L3_D15","is_correct":false},{"audio_text":"written record","id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L3_D16","is_correct":false}],"sentence_template":"A formal escalation should provide a concise written record of the problem, previous action, business impact, and requested resolution."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('32f58708-1c72-59e1-a633-6394d176a1b8', '6a73689f-7db2-5bde-af05-0d291a7b2c1a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"sensitive issue","explanation":"The complete business statement uses “sensitive issue” precisely.","hint_prefix":"sens","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A formal escalation should provide a concise written record of the problem, previous action, business impact, and requested resolution."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8f288988-167d-584f-aa56-1cdcf444bbd0', '6a73689f-7db2-5bde-af05-0d291a7b2c1a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"diplomatic wording","id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L3_D17","text":"diplomatic wording"},{"audio_text":"firm position","id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L3_D18","text":"firm position"},{"audio_text":"sensitive issue","id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L3_D19","text":"sensitive issue"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5687dfc9-389e-5afd-bcdc-af7986f5a5e9', '6a73689f-7db2-5bde-af05-0d291a7b2c1a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What business recommendation would you make for “Escalating and Following Up”?"}],"explanation":"The correct response provides a developed, commercially relevant B2 recommendation using evidence, qualification, and precise business language.","instruction":"Ответьте.","options":[{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L3_D20","is_correct":true,"text":"A formal escalation should provide a concise written record of the problem, previous action, business impact, and requested resolution."},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L3_D21","is_correct":false,"text":"No evidence is required because every commercial option produces the same result."},{"id":"B2_BUSINESS_ENGLISH_DIPLOMATIC_CORRESPONDENCE_TONE_AND_ESCALATION_L3_D22","is_correct":false,"text":"I would avoid clarifying the terms and leave the next action unassigned."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f230a7ff-627f-5688-a9b5-59839e072c6e', '6a73689f-7db2-5bde-af05-0d291a7b2c1a', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('07a67c79-e00c-59b9-a15b-eefee39a9e63', 'en', 'diplomatic wording', 'дипломатичная формулировка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2009c3cd-3cae-5c98-bfc1-4f07cc79a8d9', 'en', 'firm position', 'твёрдая позиция', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ee7e6c69-cfc0-509a-a9e3-91f8ef9a56d9', 'en', 'sensitive issue', 'деликатный вопрос', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a7e9acf6-b88b-5f54-9ba1-b5d5a7589e2a', 'en', 'formal escalation', 'официальная эскалация', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('821db183-ea65-5e97-a371-97b5e9d17e84', 'en', 'request clarification', 'запросить уточнение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('61673394-f806-5dcc-85fd-738fbea25bfa', 'en', 'without prejudice', 'без ущерба для позиции', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('95102047-3765-5da0-8305-e05c80463881', 'en', 'written record', 'письменная фиксация', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('07a67c79-e00c-59b9-a15b-eefee39a9e63', 'en', 'diplomatic wording', 'дипломатичная формулировка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2009c3cd-3cae-5c98-bfc1-4f07cc79a8d9', 'en', 'firm position', 'твёрдая позиция', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ee7e6c69-cfc0-509a-a9e3-91f8ef9a56d9', 'en', 'sensitive issue', 'деликатный вопрос', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a7e9acf6-b88b-5f54-9ba1-b5d5a7589e2a', 'en', 'formal escalation', 'официальная эскалация', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('821db183-ea65-5e97-a371-97b5e9d17e84', 'en', 'request clarification', 'запросить уточнение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('61673394-f806-5dcc-85fd-738fbea25bfa', 'en', 'without prejudice', 'без ущерба для позиции', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('95102047-3765-5da0-8305-e05c80463881', 'en', 'written record', 'письменная фиксация', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('07a67c79-e00c-59b9-a15b-eefee39a9e63', 'en', 'diplomatic wording', 'дипломатичная формулировка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2009c3cd-3cae-5c98-bfc1-4f07cc79a8d9', 'en', 'firm position', 'твёрдая позиция', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ee7e6c69-cfc0-509a-a9e3-91f8ef9a56d9', 'en', 'sensitive issue', 'деликатный вопрос', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a7e9acf6-b88b-5f54-9ba1-b5d5a7589e2a', 'en', 'formal escalation', 'официальная эскалация', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('821db183-ea65-5e97-a371-97b5e9d17e84', 'en', 'request clarification', 'запросить уточнение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('61673394-f806-5dcc-85fd-738fbea25bfa', 'en', 'without prejudice', 'без ущерба для позиции', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('95102047-3765-5da0-8305-e05c80463881', 'en', 'written record', 'письменная фиксация', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f230a7ff-627f-5688-a9b5-59839e072c6e', id, 'c3b47799-5fc1-5c19-9977-7bec2c2c20cb', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'diplomatic wording' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f230a7ff-627f-5688-a9b5-59839e072c6e', id, 'c3b47799-5fc1-5c19-9977-7bec2c2c20cb', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'firm position' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f230a7ff-627f-5688-a9b5-59839e072c6e', id, 'c3b47799-5fc1-5c19-9977-7bec2c2c20cb', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'sensitive issue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f230a7ff-627f-5688-a9b5-59839e072c6e', id, 'c3b47799-5fc1-5c19-9977-7bec2c2c20cb', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'formal escalation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f230a7ff-627f-5688-a9b5-59839e072c6e', id, 'c3b47799-5fc1-5c19-9977-7bec2c2c20cb', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'request clarification' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f230a7ff-627f-5688-a9b5-59839e072c6e', id, 'c3b47799-5fc1-5c19-9977-7bec2c2c20cb', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'without prejudice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f230a7ff-627f-5688-a9b5-59839e072c6e', id, 'c3b47799-5fc1-5c19-9977-7bec2c2c20cb', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'written record' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f230a7ff-627f-5688-a9b5-59839e072c6e', id, 'abeb870e-35de-5c27-b47d-4afd6ae82d2e', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'diplomatic wording' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f230a7ff-627f-5688-a9b5-59839e072c6e', id, 'abeb870e-35de-5c27-b47d-4afd6ae82d2e', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'firm position' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f230a7ff-627f-5688-a9b5-59839e072c6e', id, 'abeb870e-35de-5c27-b47d-4afd6ae82d2e', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'sensitive issue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f230a7ff-627f-5688-a9b5-59839e072c6e', id, 'abeb870e-35de-5c27-b47d-4afd6ae82d2e', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'formal escalation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f230a7ff-627f-5688-a9b5-59839e072c6e', id, 'abeb870e-35de-5c27-b47d-4afd6ae82d2e', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'request clarification' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f230a7ff-627f-5688-a9b5-59839e072c6e', id, 'abeb870e-35de-5c27-b47d-4afd6ae82d2e', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'without prejudice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f230a7ff-627f-5688-a9b5-59839e072c6e', id, 'abeb870e-35de-5c27-b47d-4afd6ae82d2e', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'written record' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f230a7ff-627f-5688-a9b5-59839e072c6e', id, '6a73689f-7db2-5bde-af05-0d291a7b2c1a', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'diplomatic wording' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f230a7ff-627f-5688-a9b5-59839e072c6e', id, '6a73689f-7db2-5bde-af05-0d291a7b2c1a', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'firm position' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f230a7ff-627f-5688-a9b5-59839e072c6e', id, '6a73689f-7db2-5bde-af05-0d291a7b2c1a', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'sensitive issue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f230a7ff-627f-5688-a9b5-59839e072c6e', id, '6a73689f-7db2-5bde-af05-0d291a7b2c1a', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'formal escalation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f230a7ff-627f-5688-a9b5-59839e072c6e', id, '6a73689f-7db2-5bde-af05-0d291a7b2c1a', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'request clarification' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f230a7ff-627f-5688-a9b5-59839e072c6e', id, '6a73689f-7db2-5bde-af05-0d291a7b2c1a', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'without prejudice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f230a7ff-627f-5688-a9b5-59839e072c6e', id, '6a73689f-7db2-5bde-af05-0d291a7b2c1a', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'written record' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
