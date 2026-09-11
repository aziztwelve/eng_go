-- Track: C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('3b4cbb09-121c-5b41-8707-54377fda4e10', 'C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD', 'Медицинские чрезвычайные ситуации, страхование и лечение за рубежом', 'Освойте практический английский C1 по теме «Медицинские чрезвычайные ситуации, страхование и лечение за рубежом», уверенно решая сложные реальные ситуации в международных поездках.', '{"en":"Medical Emergencies, Insurance and Treatment Abroad","ru":"Медицинские чрезвычайные ситуации, страхование и лечение за рубежом"}'::jsonb, '{"en":"Master practical C1 English for medical emergencies, insurance and treatment abroad by handling complex real-world international travel situations confidently.","ru":"Освойте практический английский C1 по теме «Медицинские чрезвычайные ситуации, страхование и лечение за рубежом», уверенно решая сложные реальные ситуации в международных поездках."}'::jsonb, 'en', 'C1', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('8eb2e63d-f413-5d22-ad53-432ae4d99e48', NULL, 'Практический контекст и ключевые понятия', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Describing Symptoms and Medical History","ru":"Практический контекст и ключевые понятия"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b0adc3f8-5a8d-5cb6-a359-ced92da0e366', '8eb2e63d-f413-5d22-ad53-432ae4d99e48', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L1_D01","left":"acute symptom","right":"острый симптом"},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L1_D02","left":"underlying condition","right":"основное заболевание"},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L1_D03","left":"contraindication","right":"противопоказание"},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L1_D04","left":"informed consent","right":"информированное согласие"},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L1_D05","left":"medical evacuation","right":"медицинская эвакуация"},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L1_D06","left":"pre-authorisation","right":"предварительное разрешение страховщика"},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L1_D07","left":"continuity of care","right":"непрерывность медицинской помощи"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('35b4afa5-0787-5e39-b110-697e7bf98202', '8eb2e63d-f413-5d22-ad53-432ae4d99e48', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L1_D08","is_correct":true,"text":"The acute symptom began suddenly, but the underlying condition and current medication may also be clinically relevant."},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L1_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L1_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d767bca-315c-5bd7-9d9b-d8032f06bfdd', '8eb2e63d-f413-5d22-ad53-432ae4d99e48', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The acute symptom began suddenly, but the underlying condition and current medication may also be clinically relevant.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Острый симптом начался внезапно, однако основное заболевание и принимаемые лекарства также могут иметь клиническое значение.","target_language":"en","word_bank":["The","acute","symptom","began","suddenly",",","but","the","underlying","condition","and","current","medication","may","also","be","clinically","relevant","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e46ebb3-925f-5027-93de-27bf0427e04d', '8eb2e63d-f413-5d22-ad53-432ae4d99e48', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"acute symptom","instruction":"Выберите подходящее слово.","options":["acute symptom","informed consent","pre-authorisation"],"sentence_template":"The ___ began suddenly, but the underlying condition and current medication may also be clinically relevant."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e20ea923-ba6e-540f-836b-5e3ed3e17389', '8eb2e63d-f413-5d22-ad53-432ae4d99e48', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","acute","symptom","began","suddenly",",","but","the","underlying","condition","and","current","medication","may","also","be","clinically","relevant","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","relevant","clinically","be","also","may","medication","current","and","condition","underlying","the","but",",","suddenly","began","symptom","acute","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7d76cea-46be-5a4f-81c4-0882adeb874d', '8eb2e63d-f413-5d22-ad53-432ae4d99e48', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The acute symptom began suddenly, but the underlying condition and current medication may also be clinically relevant. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('af7a5afd-0701-5833-9a85-3badf0293e5c', '8eb2e63d-f413-5d22-ad53-432ae4d99e48', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The acute symptom began suddenly, but the underlying condition and current medication may also be clinically relevant. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Острый симптом начался внезапно, однако основное заболевание и принимаемые лекарства также могут иметь клиническое значение. Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первое решение недостаточно, спокойно объясните почему и запросите соразмерную альтернативу."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3adac272-44f6-5f9e-81e1-673b8b190856', '8eb2e63d-f413-5d22-ad53-432ae4d99e48', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The acute symptom began suddenly, but the underlying condition and current medication may also be clinically relevant.","translation":"Острый симптом начался внезапно, однако основное заболевание и принимаемые лекарства также могут иметь клиническое значение.","type":"dialogue"},{"character":"Representative","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Describing Symptoms and Medical History"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d45414e6-b96e-5473-b475-49f4307766cc', '8eb2e63d-f413-5d22-ad53-432ae4d99e48', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“acute symptom” means a severe symptom with sudden onset.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L1_D11","is_correct":true,"text":"a severe symptom with sudden onset"},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L1_D12","is_correct":false,"text":"a pre-existing health problem affecting treatment"},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L1_D13","is_correct":false,"text":"a reason a treatment may be unsafe"}],"word":"acute symptom"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('abd261c6-20ea-5b52-ad39-3a621fe90000', '8eb2e63d-f413-5d22-ad53-432ae4d99e48', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The acute symptom began suddenly, but the underlying condition and current medication may also be clinically relevant.","explanation":"The missing C1 travel expression is “acute symptom”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"acute symptom","id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L1_D14","is_correct":true},{"audio_text":"contraindication","id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L1_D15","is_correct":false},{"audio_text":"medical evacuation","id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L1_D16","is_correct":false}],"sentence_template":"The ___ began suddenly, but the underlying condition and current medication may also be clinically relevant."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1e67e2d-a169-542b-85bb-8de073ee67e7', '8eb2e63d-f413-5d22-ad53-432ae4d99e48', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"acute symptom","explanation":"The complete statement uses “acute symptom” accurately.","hint_prefix":"acut","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ began suddenly, but the underlying condition and current medication may also be clinically relevant."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('46e230f8-ef18-570a-b30b-8f9a92752fe9', '8eb2e63d-f413-5d22-ad53-432ae4d99e48', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"acute symptom","id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L1_D17","text":"acute symptom"},{"audio_text":"underlying condition","id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L1_D18","text":"underlying condition"},{"audio_text":"contraindication","id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L1_D19","text":"contraindication"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a9fd625-d699-5789-9f26-5e1e3c1c577c', '8eb2e63d-f413-5d22-ad53-432ae4d99e48', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Describing Symptoms and Medical History”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L1_D20","is_correct":true,"text":"The acute symptom began suddenly, but the underlying condition and current medication may also be clinically relevant."},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L1_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L1_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3b4cbb09-121c-5b41-8707-54377fda4e10', '8eb2e63d-f413-5d22-ad53-432ae4d99e48', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('4294ae61-329a-5cb3-88af-668a5f85571c', NULL, 'Сложное взаимодействие и решение проблемы', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Authorising Urgent Treatment","ru":"Сложное взаимодействие и решение проблемы"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fe3d6869-a660-5038-b363-480e1d99bbe2', '4294ae61-329a-5cb3-88af-668a5f85571c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L2_D01","left":"acute symptom","right":"острый симптом"},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L2_D02","left":"underlying condition","right":"основное заболевание"},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L2_D03","left":"contraindication","right":"противопоказание"},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L2_D04","left":"informed consent","right":"информированное согласие"},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L2_D05","left":"medical evacuation","right":"медицинская эвакуация"},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L2_D06","left":"pre-authorisation","right":"предварительное разрешение страховщика"},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L2_D07","left":"continuity of care","right":"непрерывность медицинской помощи"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('edc5d26c-d133-55d3-8e14-01dd6a35de71', '4294ae61-329a-5cb3-88af-668a5f85571c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L2_D08","is_correct":true,"text":"Before I provide informed consent, please explain the proposed procedure, material risks, alternatives, and any contraindication. The relevant travel expression is underlying condition."},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L2_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L2_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('edc050e9-5146-5cb9-a5ce-eb054983c0a6', '4294ae61-329a-5cb3-88af-668a5f85571c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Before I provide informed consent, please explain the proposed procedure, material risks, alternatives, and any contraindication. The relevant travel expression is underlying condition.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Прежде чем дать информированное согласие, объясните предлагаемую процедуру, существенные риски, альтернативы и возможные противопоказания. Соответствующее выражение для путешествий — «основное заболевание».","target_language":"en","word_bank":["Before","I","provide","informed","consent",",","please","explain","the","proposed","procedure",",","material","risks",",","alternatives",",","and","any","contraindication",".","The","relevant","travel","expression","is","underlying","condition","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('70f7380a-0d06-5cd9-a763-22af17a0a26f', '4294ae61-329a-5cb3-88af-668a5f85571c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"underlying condition","instruction":"Выберите подходящее слово.","options":["underlying condition","medical evacuation","continuity of care"],"sentence_template":"Before I provide informed consent, please explain the proposed procedure, material risks, alternatives, and any contraindication. The relevant travel expression is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('29b67205-0072-5168-b417-585134b0c49d', '4294ae61-329a-5cb3-88af-668a5f85571c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Before","I","provide","informed","consent",",","please","explain","the","proposed","procedure",",","material","risks",",","alternatives",",","and","any","contraindication",".","The","relevant","travel","expression","is","underlying","condition","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","condition","underlying","is","expression","travel","relevant","The",".","contraindication","any","and",",","alternatives",",","risks","material",",","procedure","proposed","the","explain","please",",","consent","informed","provide","I","Before"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a55e208f-bdfa-5627-9f79-2e7a711b7270', '4294ae61-329a-5cb3-88af-668a5f85571c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Before I provide informed consent, please explain the proposed procedure, material risks, alternatives, and any contraindication. The relevant travel expression is underlying condition. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2047181b-d60f-5d1f-b870-449b6d8c2492', '4294ae61-329a-5cb3-88af-668a5f85571c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Before I provide informed consent, please explain the proposed procedure, material risks, alternatives, and any contraindication. The relevant travel expression is underlying condition. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Прежде чем дать информированное согласие, объясните предлагаемую процедуру, существенные риски, альтернативы и возможные противопоказания. Соответствующее выражение для путешествий — «основное заболевание». Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первое решение недостаточно, спокойно объясните почему и запросите соразмерную альтернативу."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4cb294b4-bc06-5a6d-8d2a-40c87c38c3a5', '4294ae61-329a-5cb3-88af-668a5f85571c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"Before I provide informed consent, please explain the proposed procedure, material risks, alternatives, and any contraindication. The relevant travel expression is underlying condition.","translation":"Прежде чем дать информированное согласие, объясните предлагаемую процедуру, существенные риски, альтернативы и возможные противопоказания. Соответствующее выражение для путешествий — «основное заболевание».","type":"dialogue"},{"character":"Representative","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Authorising Urgent Treatment"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b993f988-dedf-5bfd-91fa-2396d7128e01', '4294ae61-329a-5cb3-88af-668a5f85571c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“underlying condition” means a pre-existing health problem affecting treatment.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L2_D11","is_correct":true,"text":"a pre-existing health problem affecting treatment"},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L2_D12","is_correct":false,"text":"a reason a treatment may be unsafe"},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L2_D13","is_correct":false,"text":"agreement given after understanding risks and options"}],"word":"underlying condition"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e36dbb79-70fa-5143-8f35-6587c4a2781d', '4294ae61-329a-5cb3-88af-668a5f85571c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Before I provide informed consent, please explain the proposed procedure, material risks, alternatives, and any contraindication. The relevant travel expression is underlying condition.","explanation":"The missing C1 travel expression is “underlying condition”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"underlying condition","id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L2_D14","is_correct":true},{"audio_text":"informed consent","id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L2_D15","is_correct":false},{"audio_text":"pre-authorisation","id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L2_D16","is_correct":false}],"sentence_template":"Before I provide informed consent, please explain the proposed procedure, material risks, alternatives, and any contraindication. The relevant travel expression is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb8618c5-db39-51e8-824b-188e7c748b23', '4294ae61-329a-5cb3-88af-668a5f85571c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"underlying condition","explanation":"The complete statement uses “underlying condition” accurately.","hint_prefix":"unde","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Before I provide informed consent, please explain the proposed procedure, material risks, alternatives, and any contraindication. The relevant travel expression is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aeb30194-342d-5c1a-a57e-ccf49e7332d1', '4294ae61-329a-5cb3-88af-668a5f85571c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"acute symptom","id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L2_D17","text":"acute symptom"},{"audio_text":"underlying condition","id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L2_D18","text":"underlying condition"},{"audio_text":"contraindication","id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L2_D19","text":"contraindication"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5ca6548-9b9e-5e73-afde-b982dd7ad67e', '4294ae61-329a-5cb3-88af-668a5f85571c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Authorising Urgent Treatment”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L2_D20","is_correct":true,"text":"Before I provide informed consent, please explain the proposed procedure, material risks, alternatives, and any contraindication. The relevant travel expression is underlying condition."},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L2_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L2_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3b4cbb09-121c-5b41-8707-54377fda4e10', '4294ae61-329a-5cb3-88af-668a5f85571c', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('417331cb-4153-592e-b3b2-66690b051835', NULL, 'Ответственное действие и последующие шаги', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Coordinating Insurance and Follow-Up Care","ru":"Ответственное действие и последующие шаги"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7943f525-3def-5e31-bd6b-61a52eac2c84', '417331cb-4153-592e-b3b2-66690b051835', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L3_D01","left":"acute symptom","right":"острый симптом"},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L3_D02","left":"underlying condition","right":"основное заболевание"},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L3_D03","left":"contraindication","right":"противопоказание"},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L3_D04","left":"informed consent","right":"информированное согласие"},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L3_D05","left":"medical evacuation","right":"медицинская эвакуация"},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L3_D06","left":"pre-authorisation","right":"предварительное разрешение страховщика"},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L3_D07","left":"continuity of care","right":"непрерывность медицинской помощи"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7ccbaa6a-ac3a-595a-bc30-06e21223f4d9', '417331cb-4153-592e-b3b2-66690b051835', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L3_D08","is_correct":true,"text":"The insurer requires pre-authorisation, but urgent treatment should not be delayed if the clinician considers it medically necessary. The relevant travel expression is contraindication."},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L3_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L3_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b2f1af9-f376-54a2-8602-9833415a73e4', '417331cb-4153-592e-b3b2-66690b051835', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The insurer requires pre-authorisation, but urgent treatment should not be delayed if the clinician considers it medically necessary. The relevant travel expression is contraindication.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Страховщик требует предварительного разрешения, однако срочное лечение не следует откладывать, если врач считает его необходимым. Соответствующее выражение для путешествий — «противопоказание».","target_language":"en","word_bank":["The","insurer","requires","pre-authorisation",",","but","urgent","treatment","should","not","be","delayed","if","the","clinician","considers","it","medically","necessary",".","The","relevant","travel","expression","is","contraindication","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2c42ed25-98d7-520f-8f84-c5487000f748', '417331cb-4153-592e-b3b2-66690b051835', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"contraindication","instruction":"Выберите подходящее слово.","options":["contraindication","pre-authorisation","acute symptom"],"sentence_template":"The insurer requires pre-authorisation, but urgent treatment should not be delayed if the clinician considers it medically necessary. The relevant travel expression is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('10a4bd29-ec74-5f5a-887d-3f98060ad3d8', '417331cb-4153-592e-b3b2-66690b051835', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","insurer","requires","pre-authorisation",",","but","urgent","treatment","should","not","be","delayed","if","the","clinician","considers","it","medically","necessary",".","The","relevant","travel","expression","is","contraindication","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","contraindication","is","expression","travel","relevant","The",".","necessary","medically","it","considers","clinician","the","if","delayed","be","not","should","treatment","urgent","but",",","pre-authorisation","requires","insurer","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ab8620e5-2a27-5091-9623-dfdb729f48b5', '417331cb-4153-592e-b3b2-66690b051835', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The insurer requires pre-authorisation, but urgent treatment should not be delayed if the clinician considers it medically necessary. The relevant travel expression is contraindication. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8dd48094-c7b7-518b-8d00-04ccb7ad2128', '417331cb-4153-592e-b3b2-66690b051835', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The insurer requires pre-authorisation, but urgent treatment should not be delayed if the clinician considers it medically necessary. The relevant travel expression is contraindication. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Страховщик требует предварительного разрешения, однако срочное лечение не следует откладывать, если врач считает его необходимым. Соответствующее выражение для путешествий — «противопоказание». Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первое решение недостаточно, спокойно объясните почему и запросите соразмерную альтернативу."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('738e69a0-3e81-56cd-8358-731ccba73241', '417331cb-4153-592e-b3b2-66690b051835', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The insurer requires pre-authorisation, but urgent treatment should not be delayed if the clinician considers it medically necessary. The relevant travel expression is contraindication.","translation":"Страховщик требует предварительного разрешения, однако срочное лечение не следует откладывать, если врач считает его необходимым. Соответствующее выражение для путешествий — «противопоказание».","type":"dialogue"},{"character":"Representative","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Coordinating Insurance and Follow-Up Care"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8ede23a-54c8-59fd-968b-692fee351f27', '417331cb-4153-592e-b3b2-66690b051835', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“contraindication” means a reason a treatment may be unsafe.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L3_D11","is_correct":true,"text":"a reason a treatment may be unsafe"},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L3_D12","is_correct":false,"text":"agreement given after understanding risks and options"},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L3_D13","is_correct":false,"text":"transport to obtain appropriate medical care"}],"word":"contraindication"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('acbead8b-5b39-5acb-9314-640287062d1d', '417331cb-4153-592e-b3b2-66690b051835', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The insurer requires pre-authorisation, but urgent treatment should not be delayed if the clinician considers it medically necessary. The relevant travel expression is contraindication.","explanation":"The missing C1 travel expression is “contraindication”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"contraindication","id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L3_D14","is_correct":true},{"audio_text":"medical evacuation","id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L3_D15","is_correct":false},{"audio_text":"continuity of care","id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L3_D16","is_correct":false}],"sentence_template":"The insurer requires pre-authorisation, but urgent treatment should not be delayed if the clinician considers it medically necessary. The relevant travel expression is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c973ddff-9e1d-5059-bb9e-ba07edda77a5', '417331cb-4153-592e-b3b2-66690b051835', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"contraindication","explanation":"The complete statement uses “contraindication” accurately.","hint_prefix":"cont","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The insurer requires pre-authorisation, but urgent treatment should not be delayed if the clinician considers it medically necessary. The relevant travel expression is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a31c1729-46b8-50c0-8c9b-0dbf1ea70a57', '417331cb-4153-592e-b3b2-66690b051835', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"acute symptom","id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L3_D17","text":"acute symptom"},{"audio_text":"underlying condition","id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L3_D18","text":"underlying condition"},{"audio_text":"contraindication","id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L3_D19","text":"contraindication"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a956b424-7b83-5da0-85ea-4f331a0205de', '417331cb-4153-592e-b3b2-66690b051835', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Coordinating Insurance and Follow-Up Care”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L3_D20","is_correct":true,"text":"The insurer requires pre-authorisation, but urgent treatment should not be delayed if the clinician considers it medically necessary. The relevant travel expression is contraindication."},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L3_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_MEDICAL_EMERGENCIES_INSURANCE_AND_TREATMENT_ABROAD_L3_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3b4cbb09-121c-5b41-8707-54377fda4e10', '417331cb-4153-592e-b3b2-66690b051835', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('55250819-0e41-5049-b162-d81938d31e76', 'en', 'acute symptom', 'острый симптом', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6d8b31e5-64bb-5ccb-bc5c-115ebbcd9133', 'en', 'underlying condition', 'основное заболевание', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('52b98f45-4e93-5fec-908d-151c85ad5b9f', 'en', 'contraindication', 'противопоказание', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c8391606-f85c-511a-961f-d59d5833530e', 'en', 'informed consent', 'информированное согласие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bdef76fc-3946-5731-9ded-dc21be84e353', 'en', 'medical evacuation', 'медицинская эвакуация', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('644799ce-e5bc-592b-801e-c054b61d56eb', 'en', 'pre-authorisation', 'предварительное разрешение страховщика', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('36f05424-2862-5cf1-b1dd-c059839b8b95', 'en', 'continuity of care', 'непрерывность медицинской помощи', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('55250819-0e41-5049-b162-d81938d31e76', 'en', 'acute symptom', 'острый симптом', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6d8b31e5-64bb-5ccb-bc5c-115ebbcd9133', 'en', 'underlying condition', 'основное заболевание', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('52b98f45-4e93-5fec-908d-151c85ad5b9f', 'en', 'contraindication', 'противопоказание', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c8391606-f85c-511a-961f-d59d5833530e', 'en', 'informed consent', 'информированное согласие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bdef76fc-3946-5731-9ded-dc21be84e353', 'en', 'medical evacuation', 'медицинская эвакуация', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('644799ce-e5bc-592b-801e-c054b61d56eb', 'en', 'pre-authorisation', 'предварительное разрешение страховщика', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('36f05424-2862-5cf1-b1dd-c059839b8b95', 'en', 'continuity of care', 'непрерывность медицинской помощи', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('55250819-0e41-5049-b162-d81938d31e76', 'en', 'acute symptom', 'острый симптом', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6d8b31e5-64bb-5ccb-bc5c-115ebbcd9133', 'en', 'underlying condition', 'основное заболевание', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('52b98f45-4e93-5fec-908d-151c85ad5b9f', 'en', 'contraindication', 'противопоказание', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c8391606-f85c-511a-961f-d59d5833530e', 'en', 'informed consent', 'информированное согласие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bdef76fc-3946-5731-9ded-dc21be84e353', 'en', 'medical evacuation', 'медицинская эвакуация', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('644799ce-e5bc-592b-801e-c054b61d56eb', 'en', 'pre-authorisation', 'предварительное разрешение страховщика', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('36f05424-2862-5cf1-b1dd-c059839b8b95', 'en', 'continuity of care', 'непрерывность медицинской помощи', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3b4cbb09-121c-5b41-8707-54377fda4e10', id, '8eb2e63d-f413-5d22-ad53-432ae4d99e48', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'acute symptom' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3b4cbb09-121c-5b41-8707-54377fda4e10', id, '8eb2e63d-f413-5d22-ad53-432ae4d99e48', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'underlying condition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3b4cbb09-121c-5b41-8707-54377fda4e10', id, '8eb2e63d-f413-5d22-ad53-432ae4d99e48', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'contraindication' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3b4cbb09-121c-5b41-8707-54377fda4e10', id, '8eb2e63d-f413-5d22-ad53-432ae4d99e48', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'informed consent' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3b4cbb09-121c-5b41-8707-54377fda4e10', id, '8eb2e63d-f413-5d22-ad53-432ae4d99e48', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'medical evacuation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3b4cbb09-121c-5b41-8707-54377fda4e10', id, '8eb2e63d-f413-5d22-ad53-432ae4d99e48', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'pre-authorisation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3b4cbb09-121c-5b41-8707-54377fda4e10', id, '8eb2e63d-f413-5d22-ad53-432ae4d99e48', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'continuity of care' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3b4cbb09-121c-5b41-8707-54377fda4e10', id, '4294ae61-329a-5cb3-88af-668a5f85571c', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'acute symptom' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3b4cbb09-121c-5b41-8707-54377fda4e10', id, '4294ae61-329a-5cb3-88af-668a5f85571c', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'underlying condition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3b4cbb09-121c-5b41-8707-54377fda4e10', id, '4294ae61-329a-5cb3-88af-668a5f85571c', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'contraindication' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3b4cbb09-121c-5b41-8707-54377fda4e10', id, '4294ae61-329a-5cb3-88af-668a5f85571c', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'informed consent' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3b4cbb09-121c-5b41-8707-54377fda4e10', id, '4294ae61-329a-5cb3-88af-668a5f85571c', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'medical evacuation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3b4cbb09-121c-5b41-8707-54377fda4e10', id, '4294ae61-329a-5cb3-88af-668a5f85571c', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'pre-authorisation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3b4cbb09-121c-5b41-8707-54377fda4e10', id, '4294ae61-329a-5cb3-88af-668a5f85571c', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'continuity of care' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3b4cbb09-121c-5b41-8707-54377fda4e10', id, '417331cb-4153-592e-b3b2-66690b051835', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'acute symptom' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3b4cbb09-121c-5b41-8707-54377fda4e10', id, '417331cb-4153-592e-b3b2-66690b051835', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'underlying condition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3b4cbb09-121c-5b41-8707-54377fda4e10', id, '417331cb-4153-592e-b3b2-66690b051835', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'contraindication' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3b4cbb09-121c-5b41-8707-54377fda4e10', id, '417331cb-4153-592e-b3b2-66690b051835', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'informed consent' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3b4cbb09-121c-5b41-8707-54377fda4e10', id, '417331cb-4153-592e-b3b2-66690b051835', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'medical evacuation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3b4cbb09-121c-5b41-8707-54377fda4e10', id, '417331cb-4153-592e-b3b2-66690b051835', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'pre-authorisation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3b4cbb09-121c-5b41-8707-54377fda4e10', id, '417331cb-4153-592e-b3b2-66690b051835', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'continuity of care' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
