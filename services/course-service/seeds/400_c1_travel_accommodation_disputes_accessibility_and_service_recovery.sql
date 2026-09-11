-- Track: C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('c02f1323-41ae-5d59-8f74-149a8eb75134', 'C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY', 'Споры о размещении, доступность и восстановление сервиса', 'Освойте практический английский C1 по теме «Споры о размещении, доступность и восстановление сервиса», уверенно решая сложные реальные ситуации в международных поездках.', '{"en":"Accommodation Disputes, Accessibility and Service Recovery","ru":"Споры о размещении, доступность и восстановление сервиса"}'::jsonb, '{"en":"Master practical C1 English for accommodation disputes, accessibility and service recovery by handling complex real-world international travel situations confidently.","ru":"Освойте практический английский C1 по теме «Споры о размещении, доступность и восстановление сервиса», уверенно решая сложные реальные ситуации в международных поездках."}'::jsonb, 'en', 'C1', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ca122d4f-c9c5-5274-8aad-1ebc557d97d9', NULL, 'Практический контекст и ключевые понятия', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Resolving a Material Booking Discrepancy","ru":"Практический контекст и ключевые понятия"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e0939b12-0c07-5ebb-91a9-cee6937c6c45', 'ca122d4f-c9c5-5274-8aad-1ebc557d97d9', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L1_D01","left":"material discrepancy","right":"существенное несоответствие"},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L1_D02","left":"accessibility requirement","right":"требование доступности"},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L1_D03","left":"reasonable adjustment","right":"разумное приспособление"},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L1_D04","left":"service recovery","right":"восстановление сервиса"},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L1_D05","left":"alternative accommodation","right":"альтернативное размещение"},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L1_D06","left":"proportionate remedy","right":"соразмерное возмещение"},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L1_D07","left":"written confirmation","right":"письменное подтверждение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('150a3f47-db5c-5b8d-8570-5cde38c03e56', 'ca122d4f-c9c5-5274-8aad-1ebc557d97d9', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L1_D08","is_correct":true,"text":"The room presents a material discrepancy because the confirmed facilities and location differ substantially from the advertised booking."},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L1_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L1_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('570882eb-8c2a-58a9-a74b-9ef7bc8c9e7d', 'ca122d4f-c9c5-5274-8aad-1ebc557d97d9', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The room presents a material discrepancy because the confirmed facilities and location differ substantially from the advertised booking.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Номер имеет существенное несоответствие, поскольку подтверждённые удобства и расположение значительно отличаются от описания при бронировании.","target_language":"en","word_bank":["The","room","presents","a","material","discrepancy","because","the","confirmed","facilities","and","location","differ","substantially","from","the","advertised","booking","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('edd938ab-a95e-5d9a-9d48-3f89525b2fc1', 'ca122d4f-c9c5-5274-8aad-1ebc557d97d9', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"material discrepancy","instruction":"Выберите подходящее слово.","options":["material discrepancy","service recovery","proportionate remedy"],"sentence_template":"The room presents a ___ because the confirmed facilities and location differ substantially from the advertised booking."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('62dfa5c2-0a5a-5649-a373-d31bb271d5c1', 'ca122d4f-c9c5-5274-8aad-1ebc557d97d9', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","room","presents","a","material","discrepancy","because","the","confirmed","facilities","and","location","differ","substantially","from","the","advertised","booking","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","booking","advertised","the","from","substantially","differ","location","and","facilities","confirmed","the","because","discrepancy","material","a","presents","room","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e436f773-c6ab-53e9-abfc-9f276d2e0c56', 'ca122d4f-c9c5-5274-8aad-1ebc557d97d9', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The room presents a material discrepancy because the confirmed facilities and location differ substantially from the advertised booking. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e67fbc08-c85f-5234-8020-42a1bf6d9bb1', 'ca122d4f-c9c5-5274-8aad-1ebc557d97d9', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The room presents a material discrepancy because the confirmed facilities and location differ substantially from the advertised booking. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Номер имеет существенное несоответствие, поскольку подтверждённые удобства и расположение значительно отличаются от описания при бронировании. Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первое решение недостаточно, спокойно объясните почему и запросите соразмерную альтернативу."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('59387923-ed3b-57f4-a2e6-eb4529d551a1', 'ca122d4f-c9c5-5274-8aad-1ebc557d97d9', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The room presents a material discrepancy because the confirmed facilities and location differ substantially from the advertised booking.","translation":"Номер имеет существенное несоответствие, поскольку подтверждённые удобства и расположение значительно отличаются от описания при бронировании.","type":"dialogue"},{"character":"Representative","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Resolving a Material Booking Discrepancy"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('22ffecbc-7dcd-580a-8b26-df9dca8799f7', 'ca122d4f-c9c5-5274-8aad-1ebc557d97d9', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“material discrepancy” means a significant difference from what was promised.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L1_D11","is_correct":true,"text":"a significant difference from what was promised"},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L1_D12","is_correct":false,"text":"a feature needed by a traveller with a disability"},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L1_D13","is_correct":false,"text":"a practical change removing avoidable disadvantage"}],"word":"material discrepancy"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2584d20a-7ec2-5ad2-b4dd-7cdadf1104f3', 'ca122d4f-c9c5-5274-8aad-1ebc557d97d9', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The room presents a material discrepancy because the confirmed facilities and location differ substantially from the advertised booking.","explanation":"The missing C1 travel expression is “material discrepancy”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"material discrepancy","id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L1_D14","is_correct":true},{"audio_text":"reasonable adjustment","id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L1_D15","is_correct":false},{"audio_text":"alternative accommodation","id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L1_D16","is_correct":false}],"sentence_template":"The room presents a ___ because the confirmed facilities and location differ substantially from the advertised booking."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d9085158-0624-5ce5-834b-fe8a9fa23460', 'ca122d4f-c9c5-5274-8aad-1ebc557d97d9', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"material discrepancy","explanation":"The complete statement uses “material discrepancy” accurately.","hint_prefix":"mate","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The room presents a ___ because the confirmed facilities and location differ substantially from the advertised booking."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('799305ac-0972-5c08-8e6f-ab3ee0716154', 'ca122d4f-c9c5-5274-8aad-1ebc557d97d9', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"material discrepancy","id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L1_D17","text":"material discrepancy"},{"audio_text":"accessibility requirement","id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L1_D18","text":"accessibility requirement"},{"audio_text":"reasonable adjustment","id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L1_D19","text":"reasonable adjustment"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d2e6e4c7-690c-5b10-a350-3ec5f44f85d0', 'ca122d4f-c9c5-5274-8aad-1ebc557d97d9', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Resolving a Material Booking Discrepancy”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L1_D20","is_correct":true,"text":"The room presents a material discrepancy because the confirmed facilities and location differ substantially from the advertised booking."},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L1_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L1_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c02f1323-41ae-5d59-8f74-149a8eb75134', 'ca122d4f-c9c5-5274-8aad-1ebc557d97d9', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e5f1c0f3-34da-56b3-b74c-312f2d94a363', NULL, 'Сложное взаимодействие и решение проблемы', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Securing Accessibility Requirements","ru":"Сложное взаимодействие и решение проблемы"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f45a7e3f-0a9a-50b2-be07-b73b8b714382', 'e5f1c0f3-34da-56b3-b74c-312f2d94a363', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L2_D01","left":"material discrepancy","right":"существенное несоответствие"},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L2_D02","left":"accessibility requirement","right":"требование доступности"},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L2_D03","left":"reasonable adjustment","right":"разумное приспособление"},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L2_D04","left":"service recovery","right":"восстановление сервиса"},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L2_D05","left":"alternative accommodation","right":"альтернативное размещение"},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L2_D06","left":"proportionate remedy","right":"соразмерное возмещение"},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L2_D07","left":"written confirmation","right":"письменное подтверждение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('df91c161-9a56-5ea2-9b9f-73784cae60b6', 'e5f1c0f3-34da-56b3-b74c-312f2d94a363', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L2_D08","is_correct":true,"text":"The accessibility requirement was confirmed in writing, so please arrange a reasonable adjustment or suitable alternative accommodation."},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L2_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L2_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8525a3d9-9ced-5130-a5dd-97d1f00db784', 'e5f1c0f3-34da-56b3-b74c-312f2d94a363', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The accessibility requirement was confirmed in writing, so please arrange a reasonable adjustment or suitable alternative accommodation.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Требование доступности было подтверждено письменно, поэтому организуйте разумное приспособление или подходящее альтернативное размещение.","target_language":"en","word_bank":["The","accessibility","requirement","was","confirmed","in","writing",",","so","please","arrange","a","reasonable","adjustment","or","suitable","alternative","accommodation","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('81c8f48b-700b-5456-bbc6-805032ebeaf0', 'e5f1c0f3-34da-56b3-b74c-312f2d94a363', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"accessibility requirement","instruction":"Выберите подходящее слово.","options":["accessibility requirement","alternative accommodation","written confirmation"],"sentence_template":"The ___ was confirmed in writing, so please arrange a reasonable adjustment or suitable alternative accommodation."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e20d09d-d58b-5649-9605-73c72908fd61', 'e5f1c0f3-34da-56b3-b74c-312f2d94a363', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","accessibility","requirement","was","confirmed","in","writing",",","so","please","arrange","a","reasonable","adjustment","or","suitable","alternative","accommodation","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","accommodation","alternative","suitable","or","adjustment","reasonable","a","arrange","please","so",",","writing","in","confirmed","was","requirement","accessibility","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e074eabd-bd0e-5e41-80a0-f49cc1f033fe', 'e5f1c0f3-34da-56b3-b74c-312f2d94a363', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The accessibility requirement was confirmed in writing, so please arrange a reasonable adjustment or suitable alternative accommodation. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('06504fbe-1ba3-5cc7-8b0b-c9e2950b47f6', 'e5f1c0f3-34da-56b3-b74c-312f2d94a363', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The accessibility requirement was confirmed in writing, so please arrange a reasonable adjustment or suitable alternative accommodation. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Требование доступности было подтверждено письменно, поэтому организуйте разумное приспособление или подходящее альтернативное размещение. Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первое решение недостаточно, спокойно объясните почему и запросите соразмерную альтернативу."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('06505469-436f-52e3-b2dc-c70aa680526e', 'e5f1c0f3-34da-56b3-b74c-312f2d94a363', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The accessibility requirement was confirmed in writing, so please arrange a reasonable adjustment or suitable alternative accommodation.","translation":"Требование доступности было подтверждено письменно, поэтому организуйте разумное приспособление или подходящее альтернативное размещение.","type":"dialogue"},{"character":"Representative","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Securing Accessibility Requirements"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5b5c2441-4c3a-594e-91df-e29eeec2193b', 'e5f1c0f3-34da-56b3-b74c-312f2d94a363', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“accessibility requirement” means a feature needed by a traveller with a disability.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L2_D11","is_correct":true,"text":"a feature needed by a traveller with a disability"},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L2_D12","is_correct":false,"text":"a practical change removing avoidable disadvantage"},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L2_D13","is_correct":false,"text":"action taken to remedy a service failure"}],"word":"accessibility requirement"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('152edc0c-d726-5d69-86ca-c108a18e1cad', 'e5f1c0f3-34da-56b3-b74c-312f2d94a363', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The accessibility requirement was confirmed in writing, so please arrange a reasonable adjustment or suitable alternative accommodation.","explanation":"The missing C1 travel expression is “accessibility requirement”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"accessibility requirement","id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L2_D14","is_correct":true},{"audio_text":"service recovery","id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L2_D15","is_correct":false},{"audio_text":"proportionate remedy","id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L2_D16","is_correct":false}],"sentence_template":"The ___ was confirmed in writing, so please arrange a reasonable adjustment or suitable alternative accommodation."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('24a27c69-8810-5fb4-a8c6-d84105682bcc', 'e5f1c0f3-34da-56b3-b74c-312f2d94a363', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"accessibility requirement","explanation":"The complete statement uses “accessibility requirement” accurately.","hint_prefix":"acce","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ was confirmed in writing, so please arrange a reasonable adjustment or suitable alternative accommodation."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('996406d4-d2a0-57ec-96e5-7af03a92cf5a', 'e5f1c0f3-34da-56b3-b74c-312f2d94a363', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"material discrepancy","id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L2_D17","text":"material discrepancy"},{"audio_text":"accessibility requirement","id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L2_D18","text":"accessibility requirement"},{"audio_text":"reasonable adjustment","id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L2_D19","text":"reasonable adjustment"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b8b60427-3b73-5548-99ee-fbc27637651c', 'e5f1c0f3-34da-56b3-b74c-312f2d94a363', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Securing Accessibility Requirements”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L2_D20","is_correct":true,"text":"The accessibility requirement was confirmed in writing, so please arrange a reasonable adjustment or suitable alternative accommodation."},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L2_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L2_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c02f1323-41ae-5d59-8f74-149a8eb75134', 'e5f1c0f3-34da-56b3-b74c-312f2d94a363', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('106380df-df83-52f6-ad43-1145c6111115', NULL, 'Ответственное действие и последующие шаги', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Negotiating Proportionate Service Recovery","ru":"Ответственное действие и последующие шаги"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1803384-3f61-5d28-8b0f-9fc7269facb1', '106380df-df83-52f6-ad43-1145c6111115', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L3_D01","left":"material discrepancy","right":"существенное несоответствие"},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L3_D02","left":"accessibility requirement","right":"требование доступности"},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L3_D03","left":"reasonable adjustment","right":"разумное приспособление"},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L3_D04","left":"service recovery","right":"восстановление сервиса"},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L3_D05","left":"alternative accommodation","right":"альтернативное размещение"},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L3_D06","left":"proportionate remedy","right":"соразмерное возмещение"},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L3_D07","left":"written confirmation","right":"письменное подтверждение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c08ffb1-4169-5798-9597-3026c2cc5be9', '106380df-df83-52f6-ad43-1145c6111115', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L3_D08","is_correct":true,"text":"A proportionate remedy should reflect the lost night, additional transport costs, and the time required to resolve the failure. The relevant travel expression is reasonable adjustment."},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L3_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L3_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('962548e4-5595-5f0d-ba1f-40cffc1b73fd', '106380df-df83-52f6-ad43-1145c6111115', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A proportionate remedy should reflect the lost night, additional transport costs, and the time required to resolve the failure. The relevant travel expression is reasonable adjustment.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Соразмерное возмещение должно учитывать потерянную ночь, дополнительные транспортные расходы и время на устранение проблемы. Соответствующее выражение для путешествий — «разумное приспособление».","target_language":"en","word_bank":["A","proportionate","remedy","should","reflect","the","lost","night",",","additional","transport","costs",",","and","the","time","required","to","resolve","the","failure",".","The","relevant","travel","expression","is","reasonable","adjustment","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3cf987a0-e55a-5353-8869-30d758ede0d7', '106380df-df83-52f6-ad43-1145c6111115', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"reasonable adjustment","instruction":"Выберите подходящее слово.","options":["reasonable adjustment","proportionate remedy","material discrepancy"],"sentence_template":"A proportionate remedy should reflect the lost night, additional transport costs, and the time required to resolve the failure. The relevant travel expression is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa40be41-8d40-5a39-a23e-26c9a9c7c61d', '106380df-df83-52f6-ad43-1145c6111115', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","proportionate","remedy","should","reflect","the","lost","night",",","additional","transport","costs",",","and","the","time","required","to","resolve","the","failure",".","The","relevant","travel","expression","is","reasonable","adjustment","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","adjustment","reasonable","is","expression","travel","relevant","The",".","failure","the","resolve","to","required","time","the","and",",","costs","transport","additional",",","night","lost","the","reflect","should","remedy","proportionate","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc5ae242-4208-58b1-8bc8-6b4f660bbcb4', '106380df-df83-52f6-ad43-1145c6111115', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A proportionate remedy should reflect the lost night, additional transport costs, and the time required to resolve the failure. The relevant travel expression is reasonable adjustment. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2df24f7f-17ba-5567-9d20-2127c5632176', '106380df-df83-52f6-ad43-1145c6111115', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A proportionate remedy should reflect the lost night, additional transport costs, and the time required to resolve the failure. The relevant travel expression is reasonable adjustment. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Соразмерное возмещение должно учитывать потерянную ночь, дополнительные транспортные расходы и время на устранение проблемы. Соответствующее выражение для путешествий — «разумное приспособление». Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первое решение недостаточно, спокойно объясните почему и запросите соразмерную альтернативу."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4731bb4d-c781-56ea-a4ab-faef4cd980ec', '106380df-df83-52f6-ad43-1145c6111115', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"A proportionate remedy should reflect the lost night, additional transport costs, and the time required to resolve the failure. The relevant travel expression is reasonable adjustment.","translation":"Соразмерное возмещение должно учитывать потерянную ночь, дополнительные транспортные расходы и время на устранение проблемы. Соответствующее выражение для путешествий — «разумное приспособление».","type":"dialogue"},{"character":"Representative","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Negotiating Proportionate Service Recovery"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('32e68e5b-8dae-57ec-974d-673e2a889444', '106380df-df83-52f6-ad43-1145c6111115', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“reasonable adjustment” means a practical change removing avoidable disadvantage.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L3_D11","is_correct":true,"text":"a practical change removing avoidable disadvantage"},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L3_D12","is_correct":false,"text":"action taken to remedy a service failure"},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L3_D13","is_correct":false,"text":"replacement lodging offered when booked lodging fails"}],"word":"reasonable adjustment"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a9b3d951-bb5c-5726-9fcf-6028ec4d2532', '106380df-df83-52f6-ad43-1145c6111115', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A proportionate remedy should reflect the lost night, additional transport costs, and the time required to resolve the failure. The relevant travel expression is reasonable adjustment.","explanation":"The missing C1 travel expression is “reasonable adjustment”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"reasonable adjustment","id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L3_D14","is_correct":true},{"audio_text":"alternative accommodation","id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L3_D15","is_correct":false},{"audio_text":"written confirmation","id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L3_D16","is_correct":false}],"sentence_template":"A proportionate remedy should reflect the lost night, additional transport costs, and the time required to resolve the failure. The relevant travel expression is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8801ced7-e5eb-55b4-86d8-afb16c347e59', '106380df-df83-52f6-ad43-1145c6111115', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"reasonable adjustment","explanation":"The complete statement uses “reasonable adjustment” accurately.","hint_prefix":"reas","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A proportionate remedy should reflect the lost night, additional transport costs, and the time required to resolve the failure. The relevant travel expression is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f9ccf0c2-a73a-51dd-b351-734cddc0c4b7', '106380df-df83-52f6-ad43-1145c6111115', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"material discrepancy","id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L3_D17","text":"material discrepancy"},{"audio_text":"accessibility requirement","id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L3_D18","text":"accessibility requirement"},{"audio_text":"reasonable adjustment","id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L3_D19","text":"reasonable adjustment"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('315028f5-9024-547d-8be9-0a371682914e', '106380df-df83-52f6-ad43-1145c6111115', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Negotiating Proportionate Service Recovery”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L3_D20","is_correct":true,"text":"A proportionate remedy should reflect the lost night, additional transport costs, and the time required to resolve the failure. The relevant travel expression is reasonable adjustment."},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L3_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_ACCOMMODATION_DISPUTES_ACCESSIBILITY_AND_SERVICE_RECOVERY_L3_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c02f1323-41ae-5d59-8f74-149a8eb75134', '106380df-df83-52f6-ad43-1145c6111115', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bf524f89-6ccc-5b1e-aac6-9156bf72fca5', 'en', 'material discrepancy', 'существенное несоответствие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8cb01a66-09a9-5a72-b448-67e2aa166ec4', 'en', 'accessibility requirement', 'требование доступности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('95325a2a-cfd1-53ed-8d9f-19b047780d21', 'en', 'reasonable adjustment', 'разумное приспособление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf766b35-be8d-534a-853c-0f992278e8c9', 'en', 'service recovery', 'восстановление сервиса', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7bc78a82-da82-5038-8909-bac3065376bd', 'en', 'alternative accommodation', 'альтернативное размещение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8e772078-b3b4-5ea9-873c-37ed65aa347b', 'en', 'proportionate remedy', 'соразмерное возмещение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('908e78b7-8a7c-519a-bc6f-cae1ab40de64', 'en', 'written confirmation', 'письменное подтверждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bf524f89-6ccc-5b1e-aac6-9156bf72fca5', 'en', 'material discrepancy', 'существенное несоответствие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8cb01a66-09a9-5a72-b448-67e2aa166ec4', 'en', 'accessibility requirement', 'требование доступности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('95325a2a-cfd1-53ed-8d9f-19b047780d21', 'en', 'reasonable adjustment', 'разумное приспособление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf766b35-be8d-534a-853c-0f992278e8c9', 'en', 'service recovery', 'восстановление сервиса', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7bc78a82-da82-5038-8909-bac3065376bd', 'en', 'alternative accommodation', 'альтернативное размещение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8e772078-b3b4-5ea9-873c-37ed65aa347b', 'en', 'proportionate remedy', 'соразмерное возмещение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('908e78b7-8a7c-519a-bc6f-cae1ab40de64', 'en', 'written confirmation', 'письменное подтверждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bf524f89-6ccc-5b1e-aac6-9156bf72fca5', 'en', 'material discrepancy', 'существенное несоответствие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8cb01a66-09a9-5a72-b448-67e2aa166ec4', 'en', 'accessibility requirement', 'требование доступности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('95325a2a-cfd1-53ed-8d9f-19b047780d21', 'en', 'reasonable adjustment', 'разумное приспособление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf766b35-be8d-534a-853c-0f992278e8c9', 'en', 'service recovery', 'восстановление сервиса', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7bc78a82-da82-5038-8909-bac3065376bd', 'en', 'alternative accommodation', 'альтернативное размещение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8e772078-b3b4-5ea9-873c-37ed65aa347b', 'en', 'proportionate remedy', 'соразмерное возмещение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('908e78b7-8a7c-519a-bc6f-cae1ab40de64', 'en', 'written confirmation', 'письменное подтверждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c02f1323-41ae-5d59-8f74-149a8eb75134', id, 'ca122d4f-c9c5-5274-8aad-1ebc557d97d9', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'material discrepancy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c02f1323-41ae-5d59-8f74-149a8eb75134', id, 'ca122d4f-c9c5-5274-8aad-1ebc557d97d9', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'accessibility requirement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c02f1323-41ae-5d59-8f74-149a8eb75134', id, 'ca122d4f-c9c5-5274-8aad-1ebc557d97d9', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'reasonable adjustment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c02f1323-41ae-5d59-8f74-149a8eb75134', id, 'ca122d4f-c9c5-5274-8aad-1ebc557d97d9', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'service recovery' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c02f1323-41ae-5d59-8f74-149a8eb75134', id, 'ca122d4f-c9c5-5274-8aad-1ebc557d97d9', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'alternative accommodation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c02f1323-41ae-5d59-8f74-149a8eb75134', id, 'ca122d4f-c9c5-5274-8aad-1ebc557d97d9', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'proportionate remedy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c02f1323-41ae-5d59-8f74-149a8eb75134', id, 'ca122d4f-c9c5-5274-8aad-1ebc557d97d9', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'written confirmation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c02f1323-41ae-5d59-8f74-149a8eb75134', id, 'e5f1c0f3-34da-56b3-b74c-312f2d94a363', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'material discrepancy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c02f1323-41ae-5d59-8f74-149a8eb75134', id, 'e5f1c0f3-34da-56b3-b74c-312f2d94a363', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'accessibility requirement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c02f1323-41ae-5d59-8f74-149a8eb75134', id, 'e5f1c0f3-34da-56b3-b74c-312f2d94a363', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'reasonable adjustment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c02f1323-41ae-5d59-8f74-149a8eb75134', id, 'e5f1c0f3-34da-56b3-b74c-312f2d94a363', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'service recovery' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c02f1323-41ae-5d59-8f74-149a8eb75134', id, 'e5f1c0f3-34da-56b3-b74c-312f2d94a363', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'alternative accommodation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c02f1323-41ae-5d59-8f74-149a8eb75134', id, 'e5f1c0f3-34da-56b3-b74c-312f2d94a363', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'proportionate remedy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c02f1323-41ae-5d59-8f74-149a8eb75134', id, 'e5f1c0f3-34da-56b3-b74c-312f2d94a363', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'written confirmation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c02f1323-41ae-5d59-8f74-149a8eb75134', id, '106380df-df83-52f6-ad43-1145c6111115', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'material discrepancy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c02f1323-41ae-5d59-8f74-149a8eb75134', id, '106380df-df83-52f6-ad43-1145c6111115', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'accessibility requirement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c02f1323-41ae-5d59-8f74-149a8eb75134', id, '106380df-df83-52f6-ad43-1145c6111115', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'reasonable adjustment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c02f1323-41ae-5d59-8f74-149a8eb75134', id, '106380df-df83-52f6-ad43-1145c6111115', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'service recovery' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c02f1323-41ae-5d59-8f74-149a8eb75134', id, '106380df-df83-52f6-ad43-1145c6111115', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'alternative accommodation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c02f1323-41ae-5d59-8f74-149a8eb75134', id, '106380df-df83-52f6-ad43-1145c6111115', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'proportionate remedy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c02f1323-41ae-5d59-8f74-149a8eb75134', id, '106380df-df83-52f6-ad43-1145c6111115', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'written confirmation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
