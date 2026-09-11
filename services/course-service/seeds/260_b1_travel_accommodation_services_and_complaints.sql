-- Track: B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('5d560d8a-0c9d-5fef-bdae-1729b5bf3ffa', 'B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS', 'Размещение, услуги и жалобы', 'Развивайте английский для путешествий уровня B1 по теме «Размещение, услуги и жалобы».', '{"en":"Accommodation, Services and Complaints","ru":"Размещение, услуги и жалобы"}'::jsonb, '{"en":"Develop B1 travel English for accommodation, services and complaints.","ru":"Развивайте английский для путешествий уровня B1 по теме «Размещение, услуги и жалобы»."}'::jsonb, 'en', 'B1', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ef4dbe56-7a31-5d46-89a2-da773f55aaed', NULL, 'Планирование и ключевые детали', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Accommodation Options","ru":"Планирование и ключевые детали"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5d59c62-9f7e-5759-833d-338c28996a26', 'ef4dbe56-7a31-5d46-89a2-da773f55aaed', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L1_T01","left":"check-in","right":"регистрация"},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L1_T02","left":"facility","right":"удобство"},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L1_T03","left":"maintenance","right":"техническое обслуживание"},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L1_T04","left":"complaint","right":"жалоба"},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L1_T05","left":"alternative room","right":"другой номер"},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L1_T06","left":"refund","right":"возврат денег"},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L1_T07","left":"resolve","right":"решить"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ed920fd-a9c6-5598-bc85-cb3730dafec9', 'ef4dbe56-7a31-5d46-89a2-da773f55aaed', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L1_T08","is_correct":true,"text":"At check-in, the receptionist explained which facilities were included and which required an additional fee."},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L1_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L1_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b632e0d-57de-500e-99fd-98ffd677ed70', 'ef4dbe56-7a31-5d46-89a2-da773f55aaed', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"At check-in, the receptionist explained which facilities were included and which required an additional fee.","instruction":"Соберите перевод.","source_language":"ru","source_text":"При регистрации администратор объяснил, какие удобства включены, а за какие требуется дополнительная плата.","target_language":"en","word_bank":["At","check-in,","the","receptionist","explained","which","facilities","were","included","and","which","required","an","additional","fee."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c922e647-23ac-51b3-a6b9-29c581aa0f52', 'ef4dbe56-7a31-5d46-89a2-da773f55aaed', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"check-in","instruction":"Выберите подходящее слово.","options":["check-in","complaint","refund"],"sentence_template":"At ___, the receptionist explained which facilities were included and which required an additional fee."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d3830ec-c67c-5e76-89fa-ed5383b20e02', 'ef4dbe56-7a31-5d46-89a2-da773f55aaed', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["At","check-in,","the","receptionist","explained","which","facilities","were","included","and","which","required","an","additional","fee."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["fee.","additional","an","required","which","and","included","were","facilities","which","explained","receptionist","the","check-in,","At"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a9c432a-0e12-5428-b4da-9286aa621fe0', 'ef4dbe56-7a31-5d46-89a2-da773f55aaed', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"At check-in, the receptionist explained which facilities were included and which required an additional fee. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cdbd9f4e-c6a7-524e-b0f7-3da8cc7ee5ae', 'ef4dbe56-7a31-5d46-89a2-da773f55aaed', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"At check-in, the receptionist explained which facilities were included and which required an additional fee. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"При регистрации администратор объяснил, какие удобства включены, а за какие требуется дополнительная плата. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bcf89849-c127-5d71-ab34-3a1cddb7bd6f', 'ef4dbe56-7a31-5d46-89a2-da773f55aaed', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"At check-in, the receptionist explained which facilities were included and which required an additional fee.","translation":"При регистрации администратор объяснил, какие удобства включены, а за какие требуется дополнительная плата.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Accommodation Options"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1a50592d-2ad6-57b2-8d7b-05da7ff195ad', 'ef4dbe56-7a31-5d46-89a2-da773f55aaed', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“check-in” means the process of arriving at accommodation.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L1_T11","is_correct":true,"text":"the process of arriving at accommodation"},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L1_T12","is_correct":false,"text":"a service or feature provided for guests"},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L1_T13","is_correct":false,"text":"work that keeps equipment functioning"}],"word":"check-in"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b7ce4921-d201-553e-a66a-7177d42ecec1', 'ef4dbe56-7a31-5d46-89a2-da773f55aaed', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"At check-in, the receptionist explained which facilities were included and which required an additional fee.","explanation":"The missing travel expression is “check-in”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"check-in","id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L1_T14","is_correct":true},{"audio_text":"maintenance","id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L1_T15","is_correct":false},{"audio_text":"alternative room","id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L1_T16","is_correct":false}],"sentence_template":"At ___, the receptionist explained which facilities were included and which required an additional fee."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('acb667fe-b9dd-5a1c-9cff-c25d2f20b286', 'ef4dbe56-7a31-5d46-89a2-da773f55aaed', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"check-in","explanation":"The sentence requires “check-in” to express the intended travel meaning.","hint_prefix":"che","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"At ___, the receptionist explained which facilities were included and which required an additional fee."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0297c5d8-6c96-5506-8f57-865570220f82', 'ef4dbe56-7a31-5d46-89a2-da773f55aaed', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"check-in","id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L1_T17","text":"check-in"},{"audio_text":"facility","id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L1_T18","text":"facility"},{"audio_text":"maintenance","id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L1_T19","text":"maintenance"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('949246ee-e84c-51c4-a7fc-73a2179b5023', 'ef4dbe56-7a31-5d46-89a2-da773f55aaed', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Accommodation Options”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L1_T20","is_correct":true,"text":"At check-in, the receptionist explained which facilities were included and which required an additional fee."},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L1_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L1_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('5d560d8a-0c9d-5fef-bdae-1729b5bf3ffa', 'ef4dbe56-7a31-5d46-89a2-da773f55aaed', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('585d667a-f53d-524f-9f59-86ec8a962625', NULL, 'Неожиданная ситуация', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Requesting Services","ru":"Неожиданная ситуация"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c678dfb0-f9b5-5e1c-bb9b-1970d3c80863', '585d667a-f53d-524f-9f59-86ec8a962625', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L2_T01","left":"check-in","right":"регистрация"},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L2_T02","left":"facility","right":"удобство"},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L2_T03","left":"maintenance","right":"техническое обслуживание"},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L2_T04","left":"complaint","right":"жалоба"},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L2_T05","left":"alternative room","right":"другой номер"},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L2_T06","left":"refund","right":"возврат денег"},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L2_T07","left":"resolve","right":"решить"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1453b5c5-c19c-531f-a36c-2536dea27ac6', '585d667a-f53d-524f-9f59-86ec8a962625', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L2_T08","is_correct":true,"text":"I made a complaint because maintenance had not repaired the heating after two requests."},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L2_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L2_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3b37137d-c0dd-5088-b0c4-d7c433ccc8ae', '585d667a-f53d-524f-9f59-86ec8a962625', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I made a complaint because maintenance had not repaired the heating after two requests.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я подал жалобу, потому что техническая служба не починила отопление после двух обращений.","target_language":"en","word_bank":["I","made","a","complaint","because","maintenance","had","not","repaired","the","heating","after","two","requests."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5909958c-aa89-57b7-8393-f5971f09a206', '585d667a-f53d-524f-9f59-86ec8a962625', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"facility","instruction":"Выберите подходящее слово.","options":["facility","alternative room","resolve"],"sentence_template":"I made a complaint because maintenance had not repaired the heating after two requests."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('857c3956-0c60-56f7-b3ae-239dc4bac6dc', '585d667a-f53d-524f-9f59-86ec8a962625', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","made","a","complaint","because","maintenance","had","not","repaired","the","heating","after","two","requests."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["requests.","two","after","heating","the","repaired","not","had","maintenance","because","complaint","a","made","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9698eb93-16b9-5469-8b1c-79b93ddead4e', '585d667a-f53d-524f-9f59-86ec8a962625', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I made a complaint because maintenance had not repaired the heating after two requests. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d2406c1-ac13-5114-b3e1-a9577ad0dd97', '585d667a-f53d-524f-9f59-86ec8a962625', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I made a complaint because maintenance had not repaired the heating after two requests. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Я подал жалобу, потому что техническая служба не починила отопление после двух обращений. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a0ee0f9e-24d1-5a91-a37f-cbedbc757722', '585d667a-f53d-524f-9f59-86ec8a962625', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"I made a complaint because maintenance had not repaired the heating after two requests.","translation":"Я подал жалобу, потому что техническая служба не починила отопление после двух обращений.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Requesting Services"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e2065576-55d1-5f09-bb1b-82e99996eea7', '585d667a-f53d-524f-9f59-86ec8a962625', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“facility” means a service or feature provided for guests.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L2_T11","is_correct":true,"text":"a service or feature provided for guests"},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L2_T12","is_correct":false,"text":"work that keeps equipment functioning"},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L2_T13","is_correct":false,"text":"a statement of dissatisfaction"}],"word":"facility"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('349e43af-2848-5ff6-8790-47ade67f4630', '585d667a-f53d-524f-9f59-86ec8a962625', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I made a complaint because maintenance had not repaired the heating after two requests.","explanation":"The missing travel expression is “facility”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"facility","id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L2_T14","is_correct":true},{"audio_text":"complaint","id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L2_T15","is_correct":false},{"audio_text":"refund","id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L2_T16","is_correct":false}],"sentence_template":"I made a complaint because maintenance had not repaired the heating after two requests."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('81c181a9-cc8f-5a00-b72f-9548fafe81db', '585d667a-f53d-524f-9f59-86ec8a962625', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"facility","explanation":"The sentence requires “facility” to express the intended travel meaning.","hint_prefix":"fac","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I made a complaint because maintenance had not repaired the heating after two requests."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8eb75242-fe95-5e5d-aad0-7a693342ce20', '585d667a-f53d-524f-9f59-86ec8a962625', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"check-in","id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L2_T17","text":"check-in"},{"audio_text":"facility","id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L2_T18","text":"facility"},{"audio_text":"maintenance","id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L2_T19","text":"maintenance"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4972cfd1-e53d-554f-85ab-7b37676a0b78', '585d667a-f53d-524f-9f59-86ec8a962625', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Requesting Services”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L2_T20","is_correct":true,"text":"I made a complaint because maintenance had not repaired the heating after two requests."},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L2_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L2_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('5d560d8a-0c9d-5fef-bdae-1729b5bf3ffa', '585d667a-f53d-524f-9f59-86ec8a962625', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('af146cfd-3b1b-5a05-bc50-d44c1e712b84', NULL, 'Решение и рекомендация', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Resolving a Complaint","ru":"Решение и рекомендация"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8bb631b3-bab2-51c2-9b4e-ac39618677eb', 'af146cfd-3b1b-5a05-bc50-d44c1e712b84', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L3_T01","left":"check-in","right":"регистрация"},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L3_T02","left":"facility","right":"удобство"},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L3_T03","left":"maintenance","right":"техническое обслуживание"},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L3_T04","left":"complaint","right":"жалоба"},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L3_T05","left":"alternative room","right":"другой номер"},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L3_T06","left":"refund","right":"возврат денег"},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L3_T07","left":"resolve","right":"решить"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fd083ece-5ad7-5836-b4ea-55bb73684ae5', 'af146cfd-3b1b-5a05-bc50-d44c1e712b84', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L3_T08","is_correct":true,"text":"The hotel resolved the issue by offering an alternative room and a partial refund."},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L3_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L3_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2965fe7-b01a-5b20-bb05-3d88b5dc9b21', 'af146cfd-3b1b-5a05-bc50-d44c1e712b84', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The hotel resolved the issue by offering an alternative room and a partial refund.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Отель решил проблему, предложив другой номер и частичный возврат денег.","target_language":"en","word_bank":["The","hotel","resolved","the","issue","by","offering","an","alternative","room","and","a","partial","refund."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('50c7daa4-f2ca-5a89-9bc6-9e00129f90ac', 'af146cfd-3b1b-5a05-bc50-d44c1e712b84', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"maintenance","instruction":"Выберите подходящее слово.","options":["maintenance","refund","check-in"],"sentence_template":"The hotel resolved the issue by offering an alternative room and a partial refund."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0aa47fb4-da32-5b4a-94b3-67494e507057', 'af146cfd-3b1b-5a05-bc50-d44c1e712b84', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","hotel","resolved","the","issue","by","offering","an","alternative","room","and","a","partial","refund."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["refund.","partial","a","and","room","alternative","an","offering","by","issue","the","resolved","hotel","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('69d9158a-4a5a-5215-a0fe-91cebdcb94a9', 'af146cfd-3b1b-5a05-bc50-d44c1e712b84', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The hotel resolved the issue by offering an alternative room and a partial refund. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4c37f6b7-2ad5-547a-ada1-a606a842c261', 'af146cfd-3b1b-5a05-bc50-d44c1e712b84', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The hotel resolved the issue by offering an alternative room and a partial refund. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Отель решил проблему, предложив другой номер и частичный возврат денег. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('83e3ce8f-3f96-50c1-ae28-a1b6f059efc0', 'af146cfd-3b1b-5a05-bc50-d44c1e712b84', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The hotel resolved the issue by offering an alternative room and a partial refund.","translation":"Отель решил проблему, предложив другой номер и частичный возврат денег.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Resolving a Complaint"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fe9b3e9e-0641-5798-aa45-e7bb52211c33', 'af146cfd-3b1b-5a05-bc50-d44c1e712b84', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“maintenance” means work that keeps equipment functioning.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L3_T11","is_correct":true,"text":"work that keeps equipment functioning"},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L3_T12","is_correct":false,"text":"a statement of dissatisfaction"},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L3_T13","is_correct":false,"text":"a different room offered to a guest"}],"word":"maintenance"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1bb6684f-4eac-5bec-9660-46c9e258cfca', 'af146cfd-3b1b-5a05-bc50-d44c1e712b84', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The hotel resolved the issue by offering an alternative room and a partial refund.","explanation":"The missing travel expression is “maintenance”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"maintenance","id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L3_T14","is_correct":true},{"audio_text":"alternative room","id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L3_T15","is_correct":false},{"audio_text":"resolve","id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L3_T16","is_correct":false}],"sentence_template":"The hotel resolved the issue by offering an alternative room and a partial refund."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b6b82aef-9f3a-5c0a-bcda-6c2a47f29059', 'af146cfd-3b1b-5a05-bc50-d44c1e712b84', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"maintenance","explanation":"The sentence requires “maintenance” to express the intended travel meaning.","hint_prefix":"mai","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The hotel resolved the issue by offering an alternative room and a partial refund."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b719b8e-562e-5ae9-9cbb-9ea104ec2f10', 'af146cfd-3b1b-5a05-bc50-d44c1e712b84', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"check-in","id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L3_T17","text":"check-in"},{"audio_text":"facility","id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L3_T18","text":"facility"},{"audio_text":"maintenance","id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L3_T19","text":"maintenance"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5d87ae1c-5643-5b6a-8eda-543a7116b0e2', 'af146cfd-3b1b-5a05-bc50-d44c1e712b84', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Resolving a Complaint”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L3_T20","is_correct":true,"text":"The hotel resolved the issue by offering an alternative room and a partial refund."},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L3_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_ACCOMMODATION_SERVICES_AND_COMPLAINTS_L3_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('5d560d8a-0c9d-5fef-bdae-1729b5bf3ffa', 'af146cfd-3b1b-5a05-bc50-d44c1e712b84', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2b2b1875-d8e8-567f-8a24-f833096ee510', 'en', 'check-in', 'регистрация', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1f0199b6-b204-54b9-bade-33c087d7a31f', 'en', 'facility', 'удобство', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('defa20dc-ad6d-509b-bb8b-b97ce2fa0e20', 'en', 'maintenance', 'техническое обслуживание', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eaa6462c-1d21-5a10-8838-63239f0d62b8', 'en', 'complaint', 'жалоба', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9db6e364-80e6-5525-ab90-56193d3b8d50', 'en', 'alternative room', 'другой номер', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('01e002a9-4b87-5c3e-b557-467139962a8e', 'en', 'refund', 'возврат денег', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('82532f1e-51ed-52a1-89fe-22b82ccb80e3', 'en', 'resolve', 'решить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2b2b1875-d8e8-567f-8a24-f833096ee510', 'en', 'check-in', 'регистрация', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1f0199b6-b204-54b9-bade-33c087d7a31f', 'en', 'facility', 'удобство', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('defa20dc-ad6d-509b-bb8b-b97ce2fa0e20', 'en', 'maintenance', 'техническое обслуживание', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eaa6462c-1d21-5a10-8838-63239f0d62b8', 'en', 'complaint', 'жалоба', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9db6e364-80e6-5525-ab90-56193d3b8d50', 'en', 'alternative room', 'другой номер', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('01e002a9-4b87-5c3e-b557-467139962a8e', 'en', 'refund', 'возврат денег', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('82532f1e-51ed-52a1-89fe-22b82ccb80e3', 'en', 'resolve', 'решить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2b2b1875-d8e8-567f-8a24-f833096ee510', 'en', 'check-in', 'регистрация', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1f0199b6-b204-54b9-bade-33c087d7a31f', 'en', 'facility', 'удобство', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('defa20dc-ad6d-509b-bb8b-b97ce2fa0e20', 'en', 'maintenance', 'техническое обслуживание', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eaa6462c-1d21-5a10-8838-63239f0d62b8', 'en', 'complaint', 'жалоба', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9db6e364-80e6-5525-ab90-56193d3b8d50', 'en', 'alternative room', 'другой номер', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('01e002a9-4b87-5c3e-b557-467139962a8e', 'en', 'refund', 'возврат денег', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('82532f1e-51ed-52a1-89fe-22b82ccb80e3', 'en', 'resolve', 'решить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5d560d8a-0c9d-5fef-bdae-1729b5bf3ffa', id, 'ef4dbe56-7a31-5d46-89a2-da773f55aaed', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'check-in' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5d560d8a-0c9d-5fef-bdae-1729b5bf3ffa', id, 'ef4dbe56-7a31-5d46-89a2-da773f55aaed', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'facility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5d560d8a-0c9d-5fef-bdae-1729b5bf3ffa', id, 'ef4dbe56-7a31-5d46-89a2-da773f55aaed', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'maintenance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5d560d8a-0c9d-5fef-bdae-1729b5bf3ffa', id, 'ef4dbe56-7a31-5d46-89a2-da773f55aaed', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'complaint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5d560d8a-0c9d-5fef-bdae-1729b5bf3ffa', id, 'ef4dbe56-7a31-5d46-89a2-da773f55aaed', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'alternative room' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5d560d8a-0c9d-5fef-bdae-1729b5bf3ffa', id, 'ef4dbe56-7a31-5d46-89a2-da773f55aaed', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'refund' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5d560d8a-0c9d-5fef-bdae-1729b5bf3ffa', id, 'ef4dbe56-7a31-5d46-89a2-da773f55aaed', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'resolve' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5d560d8a-0c9d-5fef-bdae-1729b5bf3ffa', id, '585d667a-f53d-524f-9f59-86ec8a962625', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'check-in' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5d560d8a-0c9d-5fef-bdae-1729b5bf3ffa', id, '585d667a-f53d-524f-9f59-86ec8a962625', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'facility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5d560d8a-0c9d-5fef-bdae-1729b5bf3ffa', id, '585d667a-f53d-524f-9f59-86ec8a962625', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'maintenance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5d560d8a-0c9d-5fef-bdae-1729b5bf3ffa', id, '585d667a-f53d-524f-9f59-86ec8a962625', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'complaint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5d560d8a-0c9d-5fef-bdae-1729b5bf3ffa', id, '585d667a-f53d-524f-9f59-86ec8a962625', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'alternative room' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5d560d8a-0c9d-5fef-bdae-1729b5bf3ffa', id, '585d667a-f53d-524f-9f59-86ec8a962625', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'refund' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5d560d8a-0c9d-5fef-bdae-1729b5bf3ffa', id, '585d667a-f53d-524f-9f59-86ec8a962625', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'resolve' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5d560d8a-0c9d-5fef-bdae-1729b5bf3ffa', id, 'af146cfd-3b1b-5a05-bc50-d44c1e712b84', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'check-in' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5d560d8a-0c9d-5fef-bdae-1729b5bf3ffa', id, 'af146cfd-3b1b-5a05-bc50-d44c1e712b84', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'facility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5d560d8a-0c9d-5fef-bdae-1729b5bf3ffa', id, 'af146cfd-3b1b-5a05-bc50-d44c1e712b84', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'maintenance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5d560d8a-0c9d-5fef-bdae-1729b5bf3ffa', id, 'af146cfd-3b1b-5a05-bc50-d44c1e712b84', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'complaint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5d560d8a-0c9d-5fef-bdae-1729b5bf3ffa', id, 'af146cfd-3b1b-5a05-bc50-d44c1e712b84', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'alternative room' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5d560d8a-0c9d-5fef-bdae-1729b5bf3ffa', id, 'af146cfd-3b1b-5a05-bc50-d44c1e712b84', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'refund' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5d560d8a-0c9d-5fef-bdae-1729b5bf3ffa', id, 'af146cfd-3b1b-5a05-bc50-d44c1e712b84', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'resolve' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
