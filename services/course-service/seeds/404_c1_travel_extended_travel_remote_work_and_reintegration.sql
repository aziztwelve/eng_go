-- Track: C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('1c3fd22c-6948-5a2d-bdd6-66ba360c1bbf', 'C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION', 'Длительные поездки, удалённая работа и возвращение домой', 'Освойте практический английский C1 по теме «Длительные поездки, удалённая работа и возвращение домой», уверенно решая сложные реальные ситуации в международных поездках.', '{"en":"Extended Travel, Remote Work and Reintegration","ru":"Длительные поездки, удалённая работа и возвращение домой"}'::jsonb, '{"en":"Master practical C1 English for extended travel, remote work and reintegration by handling complex real-world international travel situations confidently.","ru":"Освойте практический английский C1 по теме «Длительные поездки, удалённая работа и возвращение домой», уверенно решая сложные реальные ситуации в международных поездках."}'::jsonb, 'en', 'C1', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('749b98d6-98f8-5e8d-b110-2f13df4f1ca8', NULL, 'Практический контекст и ключевые понятия', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Planning a Lawful Extended Stay","ru":"Практический контекст и ключевые понятия"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c58010d3-e06e-5842-a15d-e8c4c0c2074b', '749b98d6-98f8-5e8d-b110-2f13df4f1ca8', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L1_D01","left":"residency threshold","right":"порог налогового резидентства"},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L1_D02","left":"remote-work authorisation","right":"разрешение на удалённую работу"},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L1_D03","left":"tax liability","right":"налоговое обязательство"},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L1_D04","left":"time-zone coordination","right":"координация часовых поясов"},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L1_D05","left":"boundary management","right":"управление границами работы и отдыха"},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L1_D06","left":"reverse culture shock","right":"обратный культурный шок"},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L1_D07","left":"reflective travel narrative","right":"осмысленный рассказ о путешествии"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ba6984aa-6cdb-5bc8-a339-83cda0a550e4', '749b98d6-98f8-5e8d-b110-2f13df4f1ca8', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L1_D08","is_correct":true,"text":"Before extending the stay, verify the residency threshold, remote-work authorisation, and possible tax liability."},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L1_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L1_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78808b6a-efa0-5ae7-bba9-224f33eaead5', '749b98d6-98f8-5e8d-b110-2f13df4f1ca8', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Before extending the stay, verify the residency threshold, remote-work authorisation, and possible tax liability.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Перед продлением пребывания проверьте порог резидентства, разрешение на удалённую работу и возможные налоговые обязательства.","target_language":"en","word_bank":["Before","extending","the","stay",",","verify","the","residency","threshold",",","remote-work","authorisation",",","and","possible","tax","liability","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a6cf209e-63f9-5a73-81da-2fd85006d19c', '749b98d6-98f8-5e8d-b110-2f13df4f1ca8', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"residency threshold","instruction":"Выберите подходящее слово.","options":["residency threshold","time-zone coordination","reverse culture shock"],"sentence_template":"Before extending the stay, verify the ___, remote-work authorisation, and possible tax liability."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('120faab2-4b2c-5c4e-bf99-c65cfa425ba8', '749b98d6-98f8-5e8d-b110-2f13df4f1ca8', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Before","extending","the","stay",",","verify","the","residency","threshold",",","remote-work","authorisation",",","and","possible","tax","liability","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","liability","tax","possible","and",",","authorisation","remote-work",",","threshold","residency","the","verify",",","stay","the","extending","Before"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a866bc44-8faf-554f-88e1-88ff66b31dec', '749b98d6-98f8-5e8d-b110-2f13df4f1ca8', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Before extending the stay, verify the residency threshold, remote-work authorisation, and possible tax liability. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9056de1-e30a-52c3-ac2f-a8f9f4584ad8', '749b98d6-98f8-5e8d-b110-2f13df4f1ca8', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Before extending the stay, verify the residency threshold, remote-work authorisation, and possible tax liability. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Перед продлением пребывания проверьте порог резидентства, разрешение на удалённую работу и возможные налоговые обязательства. Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первое решение недостаточно, спокойно объясните почему и запросите соразмерную альтернативу."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ff9fa00-eaf9-56f2-bb20-01b7de5684f9', '749b98d6-98f8-5e8d-b110-2f13df4f1ca8', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"Before extending the stay, verify the residency threshold, remote-work authorisation, and possible tax liability.","translation":"Перед продлением пребывания проверьте порог резидентства, разрешение на удалённую работу и возможные налоговые обязательства.","type":"dialogue"},{"character":"Representative","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Planning a Lawful Extended Stay"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9bbd29c7-881d-5ce3-ba54-137e8035215a', '749b98d6-98f8-5e8d-b110-2f13df4f1ca8', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“residency threshold” means the point at which presence may create resident status.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L1_D11","is_correct":true,"text":"the point at which presence may create resident status"},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L1_D12","is_correct":false,"text":"legal permission to work online from a location"},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L1_D13","is_correct":false,"text":"a legal duty to pay tax"}],"word":"residency threshold"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a23eb1c5-2635-5e73-9170-b21f02e3bb14', '749b98d6-98f8-5e8d-b110-2f13df4f1ca8', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Before extending the stay, verify the residency threshold, remote-work authorisation, and possible tax liability.","explanation":"The missing C1 travel expression is “residency threshold”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"residency threshold","id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L1_D14","is_correct":true},{"audio_text":"tax liability","id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L1_D15","is_correct":false},{"audio_text":"boundary management","id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L1_D16","is_correct":false}],"sentence_template":"Before extending the stay, verify the ___, remote-work authorisation, and possible tax liability."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b767bb47-06aa-5b92-97ac-784caef8271a', '749b98d6-98f8-5e8d-b110-2f13df4f1ca8', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"residency threshold","explanation":"The complete statement uses “residency threshold” accurately.","hint_prefix":"resi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Before extending the stay, verify the ___, remote-work authorisation, and possible tax liability."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fde5b3b4-265d-5c16-82a6-570c946a62cd', '749b98d6-98f8-5e8d-b110-2f13df4f1ca8', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"residency threshold","id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L1_D17","text":"residency threshold"},{"audio_text":"remote-work authorisation","id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L1_D18","text":"remote-work authorisation"},{"audio_text":"tax liability","id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L1_D19","text":"tax liability"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('058984dc-564c-5615-a01a-65512699d47a', '749b98d6-98f8-5e8d-b110-2f13df4f1ca8', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Planning a Lawful Extended Stay”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L1_D20","is_correct":true,"text":"Before extending the stay, verify the residency threshold, remote-work authorisation, and possible tax liability."},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L1_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L1_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1c3fd22c-6948-5a2d-bdd6-66ba360c1bbf', '749b98d6-98f8-5e8d-b110-2f13df4f1ca8', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ca855c5b-81e1-5d12-b92c-15b09cf3ecbb', NULL, 'Сложное взаимодействие и решение проблемы', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Managing Remote Work Across Borders","ru":"Сложное взаимодействие и решение проблемы"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b978d404-04fd-5b6a-bce5-caac454fe636', 'ca855c5b-81e1-5d12-b92c-15b09cf3ecbb', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L2_D01","left":"residency threshold","right":"порог налогового резидентства"},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L2_D02","left":"remote-work authorisation","right":"разрешение на удалённую работу"},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L2_D03","left":"tax liability","right":"налоговое обязательство"},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L2_D04","left":"time-zone coordination","right":"координация часовых поясов"},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L2_D05","left":"boundary management","right":"управление границами работы и отдыха"},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L2_D06","left":"reverse culture shock","right":"обратный культурный шок"},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L2_D07","left":"reflective travel narrative","right":"осмысленный рассказ о путешествии"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e42ec5a0-fb8b-5c42-bbf5-2268cac2141c', 'ca855c5b-81e1-5d12-b92c-15b09cf3ecbb', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L2_D08","is_correct":true,"text":"Sustainable remote work requires time-zone coordination and boundary management rather than permanent availability. The relevant travel expression is remote-work authorisation."},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L2_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L2_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('901ea04e-2905-5d61-afc4-c6406bf92136', 'ca855c5b-81e1-5d12-b92c-15b09cf3ecbb', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Sustainable remote work requires time-zone coordination and boundary management rather than permanent availability. The relevant travel expression is remote-work authorisation.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Устойчивая удалённая работа требует координации часовых поясов и управления границами, а не постоянной доступности. Соответствующее выражение для путешествий — «разрешение на удалённую работу».","target_language":"en","word_bank":["Sustainable","remote","work","requires","time-zone","coordination","and","boundary","management","rather","than","permanent","availability",".","The","relevant","travel","expression","is","remote-work","authorisation","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('566849da-df07-5f7a-b968-66e0f0de16be', 'ca855c5b-81e1-5d12-b92c-15b09cf3ecbb', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"remote-work authorisation","instruction":"Выберите подходящее слово.","options":["remote-work authorisation","boundary management","reflective travel narrative"],"sentence_template":"Sustainable remote work requires time-zone coordination and boundary management rather than permanent availability. The relevant travel expression is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('537d3138-5aed-554b-b547-f649a9662a05', 'ca855c5b-81e1-5d12-b92c-15b09cf3ecbb', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Sustainable","remote","work","requires","time-zone","coordination","and","boundary","management","rather","than","permanent","availability",".","The","relevant","travel","expression","is","remote-work","authorisation","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","authorisation","remote-work","is","expression","travel","relevant","The",".","availability","permanent","than","rather","management","boundary","and","coordination","time-zone","requires","work","remote","Sustainable"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6feceaeb-ed37-5e16-b916-58e2199a22c1', 'ca855c5b-81e1-5d12-b92c-15b09cf3ecbb', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Sustainable remote work requires time-zone coordination and boundary management rather than permanent availability. The relevant travel expression is remote-work authorisation. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7104a9fa-5c34-5435-9bb6-c414131e295f', 'ca855c5b-81e1-5d12-b92c-15b09cf3ecbb', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Sustainable remote work requires time-zone coordination and boundary management rather than permanent availability. The relevant travel expression is remote-work authorisation. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Устойчивая удалённая работа требует координации часовых поясов и управления границами, а не постоянной доступности. Соответствующее выражение для путешествий — «разрешение на удалённую работу». Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первое решение недостаточно, спокойно объясните почему и запросите соразмерную альтернативу."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb5711e4-9803-5b1c-a4d5-0ed6c614d228', 'ca855c5b-81e1-5d12-b92c-15b09cf3ecbb', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"Sustainable remote work requires time-zone coordination and boundary management rather than permanent availability. The relevant travel expression is remote-work authorisation.","translation":"Устойчивая удалённая работа требует координации часовых поясов и управления границами, а не постоянной доступности. Соответствующее выражение для путешествий — «разрешение на удалённую работу».","type":"dialogue"},{"character":"Representative","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Managing Remote Work Across Borders"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0fb229a7-d289-5a17-8661-b034b23de5b6', 'ca855c5b-81e1-5d12-b92c-15b09cf3ecbb', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“remote-work authorisation” means legal permission to work online from a location.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L2_D11","is_correct":true,"text":"legal permission to work online from a location"},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L2_D12","is_correct":false,"text":"a legal duty to pay tax"},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L2_D13","is_correct":false,"text":"planning work across different local times"}],"word":"remote-work authorisation"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf75bbfa-130e-530b-a285-3bf164c5a0b5', 'ca855c5b-81e1-5d12-b92c-15b09cf3ecbb', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Sustainable remote work requires time-zone coordination and boundary management rather than permanent availability. The relevant travel expression is remote-work authorisation.","explanation":"The missing C1 travel expression is “remote-work authorisation”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"remote-work authorisation","id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L2_D14","is_correct":true},{"audio_text":"time-zone coordination","id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L2_D15","is_correct":false},{"audio_text":"reverse culture shock","id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L2_D16","is_correct":false}],"sentence_template":"Sustainable remote work requires time-zone coordination and boundary management rather than permanent availability. The relevant travel expression is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a13d2833-1769-51d8-8797-9486e2646f1e', 'ca855c5b-81e1-5d12-b92c-15b09cf3ecbb', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"remote-work authorisation","explanation":"The complete statement uses “remote-work authorisation” accurately.","hint_prefix":"remo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Sustainable remote work requires time-zone coordination and boundary management rather than permanent availability. The relevant travel expression is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa4ded70-a415-5c79-9b0f-241d10b76a0f', 'ca855c5b-81e1-5d12-b92c-15b09cf3ecbb', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"residency threshold","id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L2_D17","text":"residency threshold"},{"audio_text":"remote-work authorisation","id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L2_D18","text":"remote-work authorisation"},{"audio_text":"tax liability","id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L2_D19","text":"tax liability"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('131bcf16-fdc6-57ae-a673-c4f767d57d94', 'ca855c5b-81e1-5d12-b92c-15b09cf3ecbb', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Managing Remote Work Across Borders”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L2_D20","is_correct":true,"text":"Sustainable remote work requires time-zone coordination and boundary management rather than permanent availability. The relevant travel expression is remote-work authorisation."},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L2_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L2_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1c3fd22c-6948-5a2d-bdd6-66ba360c1bbf', 'ca855c5b-81e1-5d12-b92c-15b09cf3ecbb', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a93f6c44-8f59-555c-bdda-5d14b6d156f0', NULL, 'Ответственное действие и последующие шаги', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Reflecting and Reintegrating After Travel","ru":"Ответственное действие и последующие шаги"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('93537b95-cd73-524a-84d9-c530f02a2196', 'a93f6c44-8f59-555c-bdda-5d14b6d156f0', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L3_D01","left":"residency threshold","right":"порог налогового резидентства"},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L3_D02","left":"remote-work authorisation","right":"разрешение на удалённую работу"},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L3_D03","left":"tax liability","right":"налоговое обязательство"},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L3_D04","left":"time-zone coordination","right":"координация часовых поясов"},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L3_D05","left":"boundary management","right":"управление границами работы и отдыха"},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L3_D06","left":"reverse culture shock","right":"обратный культурный шок"},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L3_D07","left":"reflective travel narrative","right":"осмысленный рассказ о путешествии"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('961ebccf-de3e-5f32-9aae-956e2e54789b', 'a93f6c44-8f59-555c-bdda-5d14b6d156f0', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L3_D08","is_correct":true,"text":"A reflective travel narrative can make sense of reverse culture shock by comparing changed expectations with familiar routines. The relevant travel expression is tax liability."},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L3_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L3_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ad58a877-628f-5968-b593-a03930661469', 'a93f6c44-8f59-555c-bdda-5d14b6d156f0', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A reflective travel narrative can make sense of reverse culture shock by comparing changed expectations with familiar routines. The relevant travel expression is tax liability.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Осмысленный рассказ о путешествии помогает понять обратный культурный шок, сравнивая изменившиеся ожидания с привычными делами. Соответствующее выражение для путешествий — «налоговое обязательство».","target_language":"en","word_bank":["A","reflective","travel","narrative","can","make","sense","of","reverse","culture","shock","by","comparing","changed","expectations","with","familiar","routines",".","The","relevant","travel","expression","is","tax","liability","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('639981b9-34be-5025-86f0-e837a5bdebf6', 'a93f6c44-8f59-555c-bdda-5d14b6d156f0', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"tax liability","instruction":"Выберите подходящее слово.","options":["tax liability","reverse culture shock","residency threshold"],"sentence_template":"A reflective travel narrative can make sense of reverse culture shock by comparing changed expectations with familiar routines. The relevant travel expression is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4e277dd1-4fe2-5195-b88a-7abc1eea49e6', 'a93f6c44-8f59-555c-bdda-5d14b6d156f0', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","reflective","travel","narrative","can","make","sense","of","reverse","culture","shock","by","comparing","changed","expectations","with","familiar","routines",".","The","relevant","travel","expression","is","tax","liability","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","liability","tax","is","expression","travel","relevant","The",".","routines","familiar","with","expectations","changed","comparing","by","shock","culture","reverse","of","sense","make","can","narrative","travel","reflective","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1f4128e6-69f0-5a70-af3d-6a4f53c7953b', 'a93f6c44-8f59-555c-bdda-5d14b6d156f0', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A reflective travel narrative can make sense of reverse culture shock by comparing changed expectations with familiar routines. The relevant travel expression is tax liability. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4191bb70-8216-5893-9bc2-7273f6a50a68', 'a93f6c44-8f59-555c-bdda-5d14b6d156f0', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A reflective travel narrative can make sense of reverse culture shock by comparing changed expectations with familiar routines. The relevant travel expression is tax liability. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Осмысленный рассказ о путешествии помогает понять обратный культурный шок, сравнивая изменившиеся ожидания с привычными делами. Соответствующее выражение для путешествий — «налоговое обязательство». Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первое решение недостаточно, спокойно объясните почему и запросите соразмерную альтернативу."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3d8d9fd9-c3ea-5e26-a25e-2e727a72ecb3', 'a93f6c44-8f59-555c-bdda-5d14b6d156f0', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"A reflective travel narrative can make sense of reverse culture shock by comparing changed expectations with familiar routines. The relevant travel expression is tax liability.","translation":"Осмысленный рассказ о путешествии помогает понять обратный культурный шок, сравнивая изменившиеся ожидания с привычными делами. Соответствующее выражение для путешествий — «налоговое обязательство».","type":"dialogue"},{"character":"Representative","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Reflecting and Reintegrating After Travel"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('de03132b-9096-5ed9-a2e9-272b62e29896', 'a93f6c44-8f59-555c-bdda-5d14b6d156f0', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“tax liability” means a legal duty to pay tax.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L3_D11","is_correct":true,"text":"a legal duty to pay tax"},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L3_D12","is_correct":false,"text":"planning work across different local times"},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L3_D13","is_correct":false,"text":"control of limits between work and personal life"}],"word":"tax liability"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('684abe13-8058-5358-9c21-cfd342276559', 'a93f6c44-8f59-555c-bdda-5d14b6d156f0', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A reflective travel narrative can make sense of reverse culture shock by comparing changed expectations with familiar routines. The relevant travel expression is tax liability.","explanation":"The missing C1 travel expression is “tax liability”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"tax liability","id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L3_D14","is_correct":true},{"audio_text":"boundary management","id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L3_D15","is_correct":false},{"audio_text":"reflective travel narrative","id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L3_D16","is_correct":false}],"sentence_template":"A reflective travel narrative can make sense of reverse culture shock by comparing changed expectations with familiar routines. The relevant travel expression is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('67b9ef79-52aa-5ed6-b302-bde87b0d4b3b', 'a93f6c44-8f59-555c-bdda-5d14b6d156f0', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"tax liability","explanation":"The complete statement uses “tax liability” accurately.","hint_prefix":"tax ","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A reflective travel narrative can make sense of reverse culture shock by comparing changed expectations with familiar routines. The relevant travel expression is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d637bce3-a950-5e21-846a-832b5539f597', 'a93f6c44-8f59-555c-bdda-5d14b6d156f0', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"residency threshold","id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L3_D17","text":"residency threshold"},{"audio_text":"remote-work authorisation","id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L3_D18","text":"remote-work authorisation"},{"audio_text":"tax liability","id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L3_D19","text":"tax liability"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7459fdf-2298-5267-a74f-cd108fbaa75c', 'a93f6c44-8f59-555c-bdda-5d14b6d156f0', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Reflecting and Reintegrating After Travel”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L3_D20","is_correct":true,"text":"A reflective travel narrative can make sense of reverse culture shock by comparing changed expectations with familiar routines. The relevant travel expression is tax liability."},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L3_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_EXTENDED_TRAVEL_REMOTE_WORK_AND_REINTEGRATION_L3_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1c3fd22c-6948-5a2d-bdd6-66ba360c1bbf', 'a93f6c44-8f59-555c-bdda-5d14b6d156f0', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c4999ddd-aa96-5858-ac1c-15886418ced1', 'en', 'residency threshold', 'порог налогового резидентства', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e7bd86a1-46fa-5b8b-a869-71b7dbfee897', 'en', 'remote-work authorisation', 'разрешение на удалённую работу', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('71eca0eb-d497-540c-a068-dab6b97245ed', 'en', 'tax liability', 'налоговое обязательство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3fa4e7ae-b0d4-5b68-af1b-7ee6ffbd0748', 'en', 'time-zone coordination', 'координация часовых поясов', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('355b5674-d9ff-545c-936e-28d2af525c01', 'en', 'boundary management', 'управление границами работы и отдыха', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9c3688fa-8c66-58dd-bab6-4a5393c872ee', 'en', 'reverse culture shock', 'обратный культурный шок', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5d28704f-24d1-5a4a-8ccf-ba933b9e22de', 'en', 'reflective travel narrative', 'осмысленный рассказ о путешествии', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c4999ddd-aa96-5858-ac1c-15886418ced1', 'en', 'residency threshold', 'порог налогового резидентства', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e7bd86a1-46fa-5b8b-a869-71b7dbfee897', 'en', 'remote-work authorisation', 'разрешение на удалённую работу', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('71eca0eb-d497-540c-a068-dab6b97245ed', 'en', 'tax liability', 'налоговое обязательство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3fa4e7ae-b0d4-5b68-af1b-7ee6ffbd0748', 'en', 'time-zone coordination', 'координация часовых поясов', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('355b5674-d9ff-545c-936e-28d2af525c01', 'en', 'boundary management', 'управление границами работы и отдыха', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9c3688fa-8c66-58dd-bab6-4a5393c872ee', 'en', 'reverse culture shock', 'обратный культурный шок', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5d28704f-24d1-5a4a-8ccf-ba933b9e22de', 'en', 'reflective travel narrative', 'осмысленный рассказ о путешествии', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c4999ddd-aa96-5858-ac1c-15886418ced1', 'en', 'residency threshold', 'порог налогового резидентства', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e7bd86a1-46fa-5b8b-a869-71b7dbfee897', 'en', 'remote-work authorisation', 'разрешение на удалённую работу', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('71eca0eb-d497-540c-a068-dab6b97245ed', 'en', 'tax liability', 'налоговое обязательство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3fa4e7ae-b0d4-5b68-af1b-7ee6ffbd0748', 'en', 'time-zone coordination', 'координация часовых поясов', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('355b5674-d9ff-545c-936e-28d2af525c01', 'en', 'boundary management', 'управление границами работы и отдыха', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9c3688fa-8c66-58dd-bab6-4a5393c872ee', 'en', 'reverse culture shock', 'обратный культурный шок', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5d28704f-24d1-5a4a-8ccf-ba933b9e22de', 'en', 'reflective travel narrative', 'осмысленный рассказ о путешествии', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c3fd22c-6948-5a2d-bdd6-66ba360c1bbf', id, '749b98d6-98f8-5e8d-b110-2f13df4f1ca8', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'residency threshold' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c3fd22c-6948-5a2d-bdd6-66ba360c1bbf', id, '749b98d6-98f8-5e8d-b110-2f13df4f1ca8', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'remote-work authorisation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c3fd22c-6948-5a2d-bdd6-66ba360c1bbf', id, '749b98d6-98f8-5e8d-b110-2f13df4f1ca8', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'tax liability' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c3fd22c-6948-5a2d-bdd6-66ba360c1bbf', id, '749b98d6-98f8-5e8d-b110-2f13df4f1ca8', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'time-zone coordination' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c3fd22c-6948-5a2d-bdd6-66ba360c1bbf', id, '749b98d6-98f8-5e8d-b110-2f13df4f1ca8', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'boundary management' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c3fd22c-6948-5a2d-bdd6-66ba360c1bbf', id, '749b98d6-98f8-5e8d-b110-2f13df4f1ca8', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'reverse culture shock' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c3fd22c-6948-5a2d-bdd6-66ba360c1bbf', id, '749b98d6-98f8-5e8d-b110-2f13df4f1ca8', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'reflective travel narrative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c3fd22c-6948-5a2d-bdd6-66ba360c1bbf', id, 'ca855c5b-81e1-5d12-b92c-15b09cf3ecbb', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'residency threshold' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c3fd22c-6948-5a2d-bdd6-66ba360c1bbf', id, 'ca855c5b-81e1-5d12-b92c-15b09cf3ecbb', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'remote-work authorisation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c3fd22c-6948-5a2d-bdd6-66ba360c1bbf', id, 'ca855c5b-81e1-5d12-b92c-15b09cf3ecbb', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'tax liability' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c3fd22c-6948-5a2d-bdd6-66ba360c1bbf', id, 'ca855c5b-81e1-5d12-b92c-15b09cf3ecbb', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'time-zone coordination' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c3fd22c-6948-5a2d-bdd6-66ba360c1bbf', id, 'ca855c5b-81e1-5d12-b92c-15b09cf3ecbb', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'boundary management' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c3fd22c-6948-5a2d-bdd6-66ba360c1bbf', id, 'ca855c5b-81e1-5d12-b92c-15b09cf3ecbb', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'reverse culture shock' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c3fd22c-6948-5a2d-bdd6-66ba360c1bbf', id, 'ca855c5b-81e1-5d12-b92c-15b09cf3ecbb', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'reflective travel narrative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c3fd22c-6948-5a2d-bdd6-66ba360c1bbf', id, 'a93f6c44-8f59-555c-bdda-5d14b6d156f0', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'residency threshold' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c3fd22c-6948-5a2d-bdd6-66ba360c1bbf', id, 'a93f6c44-8f59-555c-bdda-5d14b6d156f0', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'remote-work authorisation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c3fd22c-6948-5a2d-bdd6-66ba360c1bbf', id, 'a93f6c44-8f59-555c-bdda-5d14b6d156f0', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'tax liability' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c3fd22c-6948-5a2d-bdd6-66ba360c1bbf', id, 'a93f6c44-8f59-555c-bdda-5d14b6d156f0', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'time-zone coordination' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c3fd22c-6948-5a2d-bdd6-66ba360c1bbf', id, 'a93f6c44-8f59-555c-bdda-5d14b6d156f0', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'boundary management' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c3fd22c-6948-5a2d-bdd6-66ba360c1bbf', id, 'a93f6c44-8f59-555c-bdda-5d14b6d156f0', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'reverse culture shock' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1c3fd22c-6948-5a2d-bdd6-66ba360c1bbf', id, 'a93f6c44-8f59-555c-bdda-5d14b6d156f0', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'reflective travel narrative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
