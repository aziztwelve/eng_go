-- Track: C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('6168843a-e3a4-5c91-88f2-c3ea7a62083c', 'C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS', 'Серьёзные сбои, перебронирование и требования пассажиров', 'Освойте практический английский C1 по теме «Серьёзные сбои, перебронирование и требования пассажиров», уверенно решая сложные реальные ситуации в международных поездках.', '{"en":"Major Disruptions, Rebooking and Passenger Claims","ru":"Серьёзные сбои, перебронирование и требования пассажиров"}'::jsonb, '{"en":"Master practical C1 English for major disruptions, rebooking and passenger claims by handling complex real-world international travel situations confidently.","ru":"Освойте практический английский C1 по теме «Серьёзные сбои, перебронирование и требования пассажиров», уверенно решая сложные реальные ситуации в международных поездках."}'::jsonb, 'en', 'C1', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('baf9ef6e-598c-5763-b68f-1e9ca8e3e4bf', NULL, 'Практический контекст и ключевые понятия', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Responding to a Cancelled Journey","ru":"Практический контекст и ключевые понятия"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('db62725a-2329-55c6-a096-aaa336ba4e29', 'baf9ef6e-598c-5763-b68f-1e9ca8e3e4bf', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D01","left":"operational disruption","right":"операционный сбой"},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D02","left":"involuntary rerouting","right":"вынужденное изменение маршрута"},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D03","left":"duty of care","right":"обязанность обеспечить помощь"},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D04","left":"comparable transport conditions","right":"сопоставимые условия перевозки"},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D05","left":"out-of-pocket expense","right":"личные расходы"},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D06","left":"supporting documentation","right":"подтверждающие документы"},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D07","left":"claim escalation","right":"эскалация требования"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0cf885ac-2279-5201-a268-2373935563e9', 'baf9ef6e-598c-5763-b68f-1e9ca8e3e4bf', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D08","is_correct":true,"text":"Because the cancellation is an operational disruption, please explain the immediate rebooking options and the applicable duty of care."},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a70dc126-935c-5332-8226-fbfe398b48a6', 'baf9ef6e-598c-5763-b68f-1e9ca8e3e4bf', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Because the cancellation is an operational disruption, please explain the immediate rebooking options and the applicable duty of care.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Поскольку отмена является операционным сбоем, объясните ближайшие варианты перебронирования и применимую обязанность обеспечить помощь.","target_language":"en","word_bank":["Because","the","cancellation","is","an","operational","disruption",",","please","explain","the","immediate","rebooking","options","and","the","applicable","duty","of","care","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a3c29e6e-3323-51fa-bcee-862c9f187ed4', 'baf9ef6e-598c-5763-b68f-1e9ca8e3e4bf', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"operational disruption","instruction":"Выберите подходящее слово.","options":["operational disruption","comparable transport conditions","supporting documentation"],"sentence_template":"Because the cancellation is an ___, please explain the immediate rebooking options and the applicable duty of care."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e1941b6-a837-5f62-9e78-8067487b7cad', 'baf9ef6e-598c-5763-b68f-1e9ca8e3e4bf', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Because","the","cancellation","is","an","operational","disruption",",","please","explain","the","immediate","rebooking","options","and","the","applicable","duty","of","care","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","care","of","duty","applicable","the","and","options","rebooking","immediate","the","explain","please",",","disruption","operational","an","is","cancellation","the","Because"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c84ee68e-a611-5210-bc74-f784aad12287', 'baf9ef6e-598c-5763-b68f-1e9ca8e3e4bf', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Because the cancellation is an operational disruption, please explain the immediate rebooking options and the applicable duty of care. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('26dc52b6-91c4-5948-8aec-00d1618b5a6e', 'baf9ef6e-598c-5763-b68f-1e9ca8e3e4bf', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Because the cancellation is an operational disruption, please explain the immediate rebooking options and the applicable duty of care. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Поскольку отмена является операционным сбоем, объясните ближайшие варианты перебронирования и применимую обязанность обеспечить помощь. Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первое решение недостаточно, спокойно объясните почему и запросите соразмерную альтернативу."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('57d9ea2a-b6f0-51c5-ab10-38c4ffa3bd71', 'baf9ef6e-598c-5763-b68f-1e9ca8e3e4bf', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"Because the cancellation is an operational disruption, please explain the immediate rebooking options and the applicable duty of care.","translation":"Поскольку отмена является операционным сбоем, объясните ближайшие варианты перебронирования и применимую обязанность обеспечить помощь.","type":"dialogue"},{"character":"Representative","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Responding to a Cancelled Journey"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('49537c90-161a-5aa2-be11-285fa4405f4b', 'baf9ef6e-598c-5763-b68f-1e9ca8e3e4bf', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“operational disruption” means interruption caused by transport operations.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D11","is_correct":true,"text":"interruption caused by transport operations"},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D12","is_correct":false,"text":"rebooking imposed after a disruption"},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D13","is_correct":false,"text":"a carrier’s responsibility to assist affected passengers"}],"word":"operational disruption"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e39ccafd-504d-56aa-911b-91eb394bc045', 'baf9ef6e-598c-5763-b68f-1e9ca8e3e4bf', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Because the cancellation is an operational disruption, please explain the immediate rebooking options and the applicable duty of care.","explanation":"The missing C1 travel expression is “operational disruption”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"operational disruption","id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D14","is_correct":true},{"audio_text":"duty of care","id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D15","is_correct":false},{"audio_text":"out-of-pocket expense","id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D16","is_correct":false}],"sentence_template":"Because the cancellation is an ___, please explain the immediate rebooking options and the applicable duty of care."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f204610d-5049-5b60-8c54-bf3e5d92268c', 'baf9ef6e-598c-5763-b68f-1e9ca8e3e4bf', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"operational disruption","explanation":"The complete statement uses “operational disruption” accurately.","hint_prefix":"oper","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Because the cancellation is an ___, please explain the immediate rebooking options and the applicable duty of care."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c6f7b40f-ffb3-5a3a-a12d-b4063b40a715', 'baf9ef6e-598c-5763-b68f-1e9ca8e3e4bf', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"operational disruption","id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D17","text":"operational disruption"},{"audio_text":"involuntary rerouting","id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D18","text":"involuntary rerouting"},{"audio_text":"duty of care","id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D19","text":"duty of care"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c965d286-ccb7-587f-8f5e-182f887a236c', 'baf9ef6e-598c-5763-b68f-1e9ca8e3e4bf', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Responding to a Cancelled Journey”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D20","is_correct":true,"text":"Because the cancellation is an operational disruption, please explain the immediate rebooking options and the applicable duty of care."},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6168843a-e3a4-5c91-88f2-c3ea7a62083c', 'baf9ef6e-598c-5763-b68f-1e9ca8e3e4bf', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('37407a79-103c-55a5-97c2-d8cc26e1b584', NULL, 'Сложное взаимодействие и решение проблемы', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Negotiating a Viable Alternative","ru":"Сложное взаимодействие и решение проблемы"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2147cf89-5bfd-5ed8-a246-f4ba39eba01b', '37407a79-103c-55a5-97c2-d8cc26e1b584', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D01","left":"operational disruption","right":"операционный сбой"},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D02","left":"involuntary rerouting","right":"вынужденное изменение маршрута"},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D03","left":"duty of care","right":"обязанность обеспечить помощь"},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D04","left":"comparable transport conditions","right":"сопоставимые условия перевозки"},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D05","left":"out-of-pocket expense","right":"личные расходы"},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D06","left":"supporting documentation","right":"подтверждающие документы"},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D07","left":"claim escalation","right":"эскалация требования"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('272c997b-12ab-5137-9d09-6282f25f0a5b', '37407a79-103c-55a5-97c2-d8cc26e1b584', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D08","is_correct":true,"text":"The proposed rerouting arrives a day late, so I am requesting an alternative under comparable transport conditions. The relevant travel expression is involuntary rerouting."},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('48c55e02-c653-5132-911d-e49559cd3aa8', '37407a79-103c-55a5-97c2-d8cc26e1b584', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The proposed rerouting arrives a day late, so I am requesting an alternative under comparable transport conditions. The relevant travel expression is involuntary rerouting.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Предложенное изменение маршрута приводит к прибытию на день позже, поэтому я прошу альтернативу с сопоставимыми условиями перевозки. Соответствующее выражение для путешествий — «вынужденное изменение маршрута».","target_language":"en","word_bank":["The","proposed","rerouting","arrives","a","day","late",",","so","I","am","requesting","an","alternative","under","comparable","transport","conditions",".","The","relevant","travel","expression","is","involuntary","rerouting","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b3da7f71-3826-5be9-9f94-6307dfffbdaa', '37407a79-103c-55a5-97c2-d8cc26e1b584', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"involuntary rerouting","instruction":"Выберите подходящее слово.","options":["involuntary rerouting","out-of-pocket expense","claim escalation"],"sentence_template":"The proposed rerouting arrives a day late, so I am requesting an alternative under comparable transport conditions. The relevant travel expression is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0cf706fd-5f82-54d3-bc0f-36192144bc58', '37407a79-103c-55a5-97c2-d8cc26e1b584', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","proposed","rerouting","arrives","a","day","late",",","so","I","am","requesting","an","alternative","under","comparable","transport","conditions",".","The","relevant","travel","expression","is","involuntary","rerouting","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","rerouting","involuntary","is","expression","travel","relevant","The",".","conditions","transport","comparable","under","alternative","an","requesting","am","I","so",",","late","day","a","arrives","rerouting","proposed","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e5acbcb-997e-5df4-96bf-e5e39e01fede', '37407a79-103c-55a5-97c2-d8cc26e1b584', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The proposed rerouting arrives a day late, so I am requesting an alternative under comparable transport conditions. The relevant travel expression is involuntary rerouting. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6a5eb797-f564-5986-8925-6323d0de9565', '37407a79-103c-55a5-97c2-d8cc26e1b584', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The proposed rerouting arrives a day late, so I am requesting an alternative under comparable transport conditions. The relevant travel expression is involuntary rerouting. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Предложенное изменение маршрута приводит к прибытию на день позже, поэтому я прошу альтернативу с сопоставимыми условиями перевозки. Соответствующее выражение для путешествий — «вынужденное изменение маршрута». Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первое решение недостаточно, спокойно объясните почему и запросите соразмерную альтернативу."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e118007-5fcd-5f7d-a26b-fde0dfa5262f', '37407a79-103c-55a5-97c2-d8cc26e1b584', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The proposed rerouting arrives a day late, so I am requesting an alternative under comparable transport conditions. The relevant travel expression is involuntary rerouting.","translation":"Предложенное изменение маршрута приводит к прибытию на день позже, поэтому я прошу альтернативу с сопоставимыми условиями перевозки. Соответствующее выражение для путешествий — «вынужденное изменение маршрута».","type":"dialogue"},{"character":"Representative","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Negotiating a Viable Alternative"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a95e120a-7d9f-5bc1-b5f4-f6311ac2916f', '37407a79-103c-55a5-97c2-d8cc26e1b584', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“involuntary rerouting” means rebooking imposed after a disruption.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D11","is_correct":true,"text":"rebooking imposed after a disruption"},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D12","is_correct":false,"text":"a carrier’s responsibility to assist affected passengers"},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D13","is_correct":false,"text":"replacement travel of a reasonably equivalent standard"}],"word":"involuntary rerouting"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d90ed654-49f9-55d6-b007-0047a083cd58', '37407a79-103c-55a5-97c2-d8cc26e1b584', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The proposed rerouting arrives a day late, so I am requesting an alternative under comparable transport conditions. The relevant travel expression is involuntary rerouting.","explanation":"The missing C1 travel expression is “involuntary rerouting”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"involuntary rerouting","id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D14","is_correct":true},{"audio_text":"comparable transport conditions","id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D15","is_correct":false},{"audio_text":"supporting documentation","id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D16","is_correct":false}],"sentence_template":"The proposed rerouting arrives a day late, so I am requesting an alternative under comparable transport conditions. The relevant travel expression is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce585af2-a45e-5de2-8987-08e2883ff5aa', '37407a79-103c-55a5-97c2-d8cc26e1b584', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"involuntary rerouting","explanation":"The complete statement uses “involuntary rerouting” accurately.","hint_prefix":"invo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The proposed rerouting arrives a day late, so I am requesting an alternative under comparable transport conditions. The relevant travel expression is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef3571c4-7350-5c99-be49-69959fd95f87', '37407a79-103c-55a5-97c2-d8cc26e1b584', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"operational disruption","id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D17","text":"operational disruption"},{"audio_text":"involuntary rerouting","id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D18","text":"involuntary rerouting"},{"audio_text":"duty of care","id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D19","text":"duty of care"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('259ae338-9736-5322-a406-6d6e21e94f06', '37407a79-103c-55a5-97c2-d8cc26e1b584', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Negotiating a Viable Alternative”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D20","is_correct":true,"text":"The proposed rerouting arrives a day late, so I am requesting an alternative under comparable transport conditions. The relevant travel expression is involuntary rerouting."},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6168843a-e3a4-5c91-88f2-c3ea7a62083c', '37407a79-103c-55a5-97c2-d8cc26e1b584', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('cea12366-19f8-524c-bf38-9f530925f878', NULL, 'Ответственное действие и последующие шаги', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Documenting Expenses and Making a Claim","ru":"Ответственное действие и последующие шаги"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e812b39b-538c-52b1-ab10-4ab314979194', 'cea12366-19f8-524c-bf38-9f530925f878', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D01","left":"operational disruption","right":"операционный сбой"},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D02","left":"involuntary rerouting","right":"вынужденное изменение маршрута"},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D03","left":"duty of care","right":"обязанность обеспечить помощь"},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D04","left":"comparable transport conditions","right":"сопоставимые условия перевозки"},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D05","left":"out-of-pocket expense","right":"личные расходы"},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D06","left":"supporting documentation","right":"подтверждающие документы"},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D07","left":"claim escalation","right":"эскалация требования"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('675f5467-41a3-518c-bc40-745afe9b25ba', 'cea12366-19f8-524c-bf38-9f530925f878', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D08","is_correct":true,"text":"The claim includes supporting documentation for each reasonable out-of-pocket expense and a clear chronology of the disruption. The relevant travel expression is duty of care."},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90e54ca2-c965-5f7d-bd29-b65b1392ca89', 'cea12366-19f8-524c-bf38-9f530925f878', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The claim includes supporting documentation for each reasonable out-of-pocket expense and a clear chronology of the disruption. The relevant travel expression is duty of care.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Требование включает подтверждающие документы по каждому обоснованному личному расходу и ясную хронологию сбоя. Соответствующее выражение для путешествий — «обязанность обеспечить помощь».","target_language":"en","word_bank":["The","claim","includes","supporting","documentation","for","each","reasonable","out-of","-","pocket","expense","and","a","clear","chronology","of","the","disruption",".","The","relevant","travel","expression","is","duty","of","care","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6fa52b40-f05e-581b-b1c8-6059556aff85', 'cea12366-19f8-524c-bf38-9f530925f878', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"duty of care","instruction":"Выберите подходящее слово.","options":["duty of care","supporting documentation","operational disruption"],"sentence_template":"The claim includes supporting documentation for each reasonable out-of-pocket expense and a clear chronology of the disruption. The relevant travel expression is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d287c7d1-2406-5c12-8e80-b5e996c90a85', 'cea12366-19f8-524c-bf38-9f530925f878', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","claim","includes","supporting","documentation","for","each","reasonable","out-of","-","pocket","expense","and","a","clear","chronology","of","the","disruption",".","The","relevant","travel","expression","is","duty","of","care","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","care","of","duty","is","expression","travel","relevant","The",".","disruption","the","of","chronology","clear","a","and","expense","pocket","-","out-of","reasonable","each","for","documentation","supporting","includes","claim","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5ba55fe-fe35-5db8-81dd-73733d986dde', 'cea12366-19f8-524c-bf38-9f530925f878', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The claim includes supporting documentation for each reasonable out-of-pocket expense and a clear chronology of the disruption. The relevant travel expression is duty of care. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('82373e86-345d-52b0-82cb-16c703d94dea', 'cea12366-19f8-524c-bf38-9f530925f878', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The claim includes supporting documentation for each reasonable out-of-pocket expense and a clear chronology of the disruption. The relevant travel expression is duty of care. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Требование включает подтверждающие документы по каждому обоснованному личному расходу и ясную хронологию сбоя. Соответствующее выражение для путешествий — «обязанность обеспечить помощь». Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первое решение недостаточно, спокойно объясните почему и запросите соразмерную альтернативу."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4680b73b-9711-5f08-9f1e-5d99591d24e7', 'cea12366-19f8-524c-bf38-9f530925f878', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The claim includes supporting documentation for each reasonable out-of-pocket expense and a clear chronology of the disruption. The relevant travel expression is duty of care.","translation":"Требование включает подтверждающие документы по каждому обоснованному личному расходу и ясную хронологию сбоя. Соответствующее выражение для путешествий — «обязанность обеспечить помощь».","type":"dialogue"},{"character":"Representative","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Documenting Expenses and Making a Claim"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('11b3eae4-702b-5943-8115-dd7f91bf3555', 'cea12366-19f8-524c-bf38-9f530925f878', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“duty of care” means a carrier’s responsibility to assist affected passengers.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D11","is_correct":true,"text":"a carrier’s responsibility to assist affected passengers"},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D12","is_correct":false,"text":"replacement travel of a reasonably equivalent standard"},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D13","is_correct":false,"text":"money paid personally because of disruption"}],"word":"duty of care"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fb6da83c-9480-59f1-b616-25dca9eb551a', 'cea12366-19f8-524c-bf38-9f530925f878', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The claim includes supporting documentation for each reasonable out-of-pocket expense and a clear chronology of the disruption. The relevant travel expression is duty of care.","explanation":"The missing C1 travel expression is “duty of care”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"duty of care","id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D14","is_correct":true},{"audio_text":"out-of-pocket expense","id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D15","is_correct":false},{"audio_text":"claim escalation","id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D16","is_correct":false}],"sentence_template":"The claim includes supporting documentation for each reasonable out-of-pocket expense and a clear chronology of the disruption. The relevant travel expression is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('37386347-e07d-57c5-9625-7225c0417513', 'cea12366-19f8-524c-bf38-9f530925f878', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"duty of care","explanation":"The complete statement uses “duty of care” accurately.","hint_prefix":"duty","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The claim includes supporting documentation for each reasonable out-of-pocket expense and a clear chronology of the disruption. The relevant travel expression is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fe979221-4d0d-55b2-aa30-999150ed85b3', 'cea12366-19f8-524c-bf38-9f530925f878', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"operational disruption","id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D17","text":"operational disruption"},{"audio_text":"involuntary rerouting","id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D18","text":"involuntary rerouting"},{"audio_text":"duty of care","id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D19","text":"duty of care"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b9945cc2-8124-53f6-b9e7-fcd66465d233', 'cea12366-19f8-524c-bf38-9f530925f878', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Documenting Expenses and Making a Claim”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D20","is_correct":true,"text":"The claim includes supporting documentation for each reasonable out-of-pocket expense and a clear chronology of the disruption. The relevant travel expression is duty of care."},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_MAJOR_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6168843a-e3a4-5c91-88f2-c3ea7a62083c', 'cea12366-19f8-524c-bf38-9f530925f878', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1e072dab-e461-5e76-90b2-6468a439383e', 'en', 'operational disruption', 'операционный сбой', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b7a77fab-c3e7-5a04-8123-a70b1d1db1cf', 'en', 'involuntary rerouting', 'вынужденное изменение маршрута', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2cde7306-6856-51f3-be0a-485c135d5b58', 'en', 'duty of care', 'обязанность обеспечить помощь', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('86837f09-8112-5c21-8010-1ab96bdb4fb5', 'en', 'comparable transport conditions', 'сопоставимые условия перевозки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3e9ceeef-bd11-5798-a3ab-59bae625b021', 'en', 'out-of-pocket expense', 'личные расходы', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a9e8aaa7-f2fc-5ca5-b58b-be6c9776bc1b', 'en', 'supporting documentation', 'подтверждающие документы', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9f1be58f-f462-5ce5-a5d0-476df3d1674d', 'en', 'claim escalation', 'эскалация требования', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1e072dab-e461-5e76-90b2-6468a439383e', 'en', 'operational disruption', 'операционный сбой', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b7a77fab-c3e7-5a04-8123-a70b1d1db1cf', 'en', 'involuntary rerouting', 'вынужденное изменение маршрута', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2cde7306-6856-51f3-be0a-485c135d5b58', 'en', 'duty of care', 'обязанность обеспечить помощь', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('86837f09-8112-5c21-8010-1ab96bdb4fb5', 'en', 'comparable transport conditions', 'сопоставимые условия перевозки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3e9ceeef-bd11-5798-a3ab-59bae625b021', 'en', 'out-of-pocket expense', 'личные расходы', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a9e8aaa7-f2fc-5ca5-b58b-be6c9776bc1b', 'en', 'supporting documentation', 'подтверждающие документы', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9f1be58f-f462-5ce5-a5d0-476df3d1674d', 'en', 'claim escalation', 'эскалация требования', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1e072dab-e461-5e76-90b2-6468a439383e', 'en', 'operational disruption', 'операционный сбой', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b7a77fab-c3e7-5a04-8123-a70b1d1db1cf', 'en', 'involuntary rerouting', 'вынужденное изменение маршрута', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2cde7306-6856-51f3-be0a-485c135d5b58', 'en', 'duty of care', 'обязанность обеспечить помощь', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('86837f09-8112-5c21-8010-1ab96bdb4fb5', 'en', 'comparable transport conditions', 'сопоставимые условия перевозки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3e9ceeef-bd11-5798-a3ab-59bae625b021', 'en', 'out-of-pocket expense', 'личные расходы', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a9e8aaa7-f2fc-5ca5-b58b-be6c9776bc1b', 'en', 'supporting documentation', 'подтверждающие документы', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9f1be58f-f462-5ce5-a5d0-476df3d1674d', 'en', 'claim escalation', 'эскалация требования', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6168843a-e3a4-5c91-88f2-c3ea7a62083c', id, 'baf9ef6e-598c-5763-b68f-1e9ca8e3e4bf', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'operational disruption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6168843a-e3a4-5c91-88f2-c3ea7a62083c', id, 'baf9ef6e-598c-5763-b68f-1e9ca8e3e4bf', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'involuntary rerouting' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6168843a-e3a4-5c91-88f2-c3ea7a62083c', id, 'baf9ef6e-598c-5763-b68f-1e9ca8e3e4bf', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'duty of care' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6168843a-e3a4-5c91-88f2-c3ea7a62083c', id, 'baf9ef6e-598c-5763-b68f-1e9ca8e3e4bf', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'comparable transport conditions' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6168843a-e3a4-5c91-88f2-c3ea7a62083c', id, 'baf9ef6e-598c-5763-b68f-1e9ca8e3e4bf', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'out-of-pocket expense' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6168843a-e3a4-5c91-88f2-c3ea7a62083c', id, 'baf9ef6e-598c-5763-b68f-1e9ca8e3e4bf', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'supporting documentation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6168843a-e3a4-5c91-88f2-c3ea7a62083c', id, 'baf9ef6e-598c-5763-b68f-1e9ca8e3e4bf', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'claim escalation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6168843a-e3a4-5c91-88f2-c3ea7a62083c', id, '37407a79-103c-55a5-97c2-d8cc26e1b584', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'operational disruption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6168843a-e3a4-5c91-88f2-c3ea7a62083c', id, '37407a79-103c-55a5-97c2-d8cc26e1b584', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'involuntary rerouting' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6168843a-e3a4-5c91-88f2-c3ea7a62083c', id, '37407a79-103c-55a5-97c2-d8cc26e1b584', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'duty of care' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6168843a-e3a4-5c91-88f2-c3ea7a62083c', id, '37407a79-103c-55a5-97c2-d8cc26e1b584', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'comparable transport conditions' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6168843a-e3a4-5c91-88f2-c3ea7a62083c', id, '37407a79-103c-55a5-97c2-d8cc26e1b584', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'out-of-pocket expense' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6168843a-e3a4-5c91-88f2-c3ea7a62083c', id, '37407a79-103c-55a5-97c2-d8cc26e1b584', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'supporting documentation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6168843a-e3a4-5c91-88f2-c3ea7a62083c', id, '37407a79-103c-55a5-97c2-d8cc26e1b584', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'claim escalation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6168843a-e3a4-5c91-88f2-c3ea7a62083c', id, 'cea12366-19f8-524c-bf38-9f530925f878', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'operational disruption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6168843a-e3a4-5c91-88f2-c3ea7a62083c', id, 'cea12366-19f8-524c-bf38-9f530925f878', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'involuntary rerouting' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6168843a-e3a4-5c91-88f2-c3ea7a62083c', id, 'cea12366-19f8-524c-bf38-9f530925f878', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'duty of care' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6168843a-e3a4-5c91-88f2-c3ea7a62083c', id, 'cea12366-19f8-524c-bf38-9f530925f878', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'comparable transport conditions' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6168843a-e3a4-5c91-88f2-c3ea7a62083c', id, 'cea12366-19f8-524c-bf38-9f530925f878', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'out-of-pocket expense' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6168843a-e3a4-5c91-88f2-c3ea7a62083c', id, 'cea12366-19f8-524c-bf38-9f530925f878', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'supporting documentation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6168843a-e3a4-5c91-88f2-c3ea7a62083c', id, 'cea12366-19f8-524c-bf38-9f530925f878', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'claim escalation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
