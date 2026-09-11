-- Track: B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('d3ddd1af-b9fd-5d58-8cbb-7352064e7e08', 'B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS', 'Сложные маршруты, гибкие тарифы и условия бронирования', 'Развивайте уверенное общение уровня B2 в сложных поездках по теме «Сложные маршруты, гибкие тарифы и условия бронирования», оценивая варианты, права, риски и культурный контекст.', '{"en":"Complex Itineraries, Flexible Fares and Booking Terms","ru":"Сложные маршруты, гибкие тарифы и условия бронирования"}'::jsonb, '{"en":"Develop confident B2 communication for complex itineraries, flexible fares and booking terms by evaluating options, rights, risks, and cultural context.","ru":"Развивайте уверенное общение уровня B2 в сложных поездках по теме «Сложные маршруты, гибкие тарифы и условия бронирования», оценивая варианты, права, риски и культурный контекст."}'::jsonb, 'en', 'B2', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('70340ec1-1f27-568e-9f20-8a96c0575c44', NULL, 'Ситуация и ключевые понятия', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Comparing Complex Itineraries","ru":"Ситуация и ключевые понятия"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('63f0c60a-056f-5b79-999a-e38f027f8bca', '70340ec1-1f27-568e-9f20-8a96c0575c44', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L1_D01","left":"flexible fare","right":"гибкий тариф"},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L1_D02","left":"fare restriction","right":"ограничение тарифа"},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L1_D03","left":"open-jaw itinerary","right":"маршрут с разными пунктами прилёта и вылета"},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L1_D04","left":"minimum connection time","right":"минимальное время пересадки"},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L1_D05","left":"change penalty","right":"штраф за изменение"},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L1_D06","left":"travel window","right":"период поездки"},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L1_D07","left":"contingency option","right":"резервный вариант"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d424d51e-e074-5649-8ef0-f527c1278bf9', '70340ec1-1f27-568e-9f20-8a96c0575c44', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L1_D08","is_correct":true,"text":"A flexible fare costs more initially, but it may offer better value when the travel window is uncertain and changes are likely."},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L1_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L1_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18a9b060-b623-565e-ace4-6ea530bb5c76', '70340ec1-1f27-568e-9f20-8a96c0575c44', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A flexible fare costs more initially, but it may offer better value when the travel window is uncertain and changes are likely.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Гибкий тариф изначально стоит дороже, но может быть выгоднее, если период поездки неопределён и изменения вероятны.","target_language":"en","word_bank":["A","flexible","fare","costs","more","initially",",","but","it","may","offer","better","value","when","the","travel","window","is","uncertain","and","changes","are","likely","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bbff8bb5-cef6-51e3-93d9-caec6042627e', '70340ec1-1f27-568e-9f20-8a96c0575c44', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"flexible fare","instruction":"Выберите подходящее слово.","options":["flexible fare","minimum connection time","travel window"],"sentence_template":"A ___ costs more initially, but it may offer better value when the travel window is uncertain and changes are likely."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78776f42-0ed2-565e-bff4-878020c40249', '70340ec1-1f27-568e-9f20-8a96c0575c44', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","flexible","fare","costs","more","initially",",","but","it","may","offer","better","value","when","the","travel","window","is","uncertain","and","changes","are","likely","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","likely","are","changes","and","uncertain","is","window","travel","the","when","value","better","offer","may","it","but",",","initially","more","costs","fare","flexible","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('121820ff-198b-50d9-acbf-e168e5b5a3ce', '70340ec1-1f27-568e-9f20-8a96c0575c44', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A flexible fare costs more initially, but it may offer better value when the travel window is uncertain and changes are likely. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41edd8a2-bd26-5c38-acd1-9a50a1464ffc', '70340ec1-1f27-568e-9f20-8a96c0575c44', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A flexible fare costs more initially, but it may offer better value when the travel window is uncertain and changes are likely. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Гибкий тариф изначально стоит дороже, но может быть выгоднее, если период поездки неопределён и изменения вероятны. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('337c32fe-d428-5ef2-87be-8e251ba5b848', '70340ec1-1f27-568e-9f20-8a96c0575c44', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"A flexible fare costs more initially, but it may offer better value when the travel window is uncertain and changes are likely.","translation":"Гибкий тариф изначально стоит дороже, но может быть выгоднее, если период поездки неопределён и изменения вероятны.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Comparing Complex Itineraries"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e42d39f2-dac3-5ae7-8a12-0c2c8ef52734', '70340ec1-1f27-568e-9f20-8a96c0575c44', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“flexible fare” means a ticket allowing changes under stated conditions.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L1_D11","is_correct":true,"text":"a ticket allowing changes under stated conditions"},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L1_D12","is_correct":false,"text":"a rule limiting refund or change rights"},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L1_D13","is_correct":false,"text":"a trip arriving in one city and departing from another"}],"word":"flexible fare"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('711408b8-c12a-5d0d-ae9b-68c3430e6f45', '70340ec1-1f27-568e-9f20-8a96c0575c44', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A flexible fare costs more initially, but it may offer better value when the travel window is uncertain and changes are likely.","explanation":"The missing travel expression is “flexible fare”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"flexible fare","id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L1_D14","is_correct":true},{"audio_text":"open-jaw itinerary","id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L1_D15","is_correct":false},{"audio_text":"change penalty","id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L1_D16","is_correct":false}],"sentence_template":"A ___ costs more initially, but it may offer better value when the travel window is uncertain and changes are likely."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1f2f6632-6a69-5e6f-92af-d7febe1fcd4b', '70340ec1-1f27-568e-9f20-8a96c0575c44', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"flexible fare","explanation":"The complete travel statement uses “flexible fare” precisely.","hint_prefix":"flex","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ costs more initially, but it may offer better value when the travel window is uncertain and changes are likely."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a0a4141-2a12-58b5-a8cd-733463a123f3', '70340ec1-1f27-568e-9f20-8a96c0575c44', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"flexible fare","id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L1_D17","text":"flexible fare"},{"audio_text":"fare restriction","id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L1_D18","text":"fare restriction"},{"audio_text":"open-jaw itinerary","id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L1_D19","text":"open-jaw itinerary"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b8f90951-2489-5029-afcb-c2a94ff685fa', '70340ec1-1f27-568e-9f20-8a96c0575c44', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Comparing Complex Itineraries”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L1_D20","is_correct":true,"text":"A flexible fare costs more initially, but it may offer better value when the travel window is uncertain and changes are likely."},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L1_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L1_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d3ddd1af-b9fd-5d58-8cbb-7352064e7e08', '70340ec1-1f27-568e-9f20-8a96c0575c44', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('92fe1a27-b5ec-5b55-9eac-e2570b1a8b5e', NULL, 'Переговоры и решение проблемы', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Evaluating Fare Conditions","ru":"Переговоры и решение проблемы"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b1303c6f-7ed9-5be0-9de3-c045d129d710', '92fe1a27-b5ec-5b55-9eac-e2570b1a8b5e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L2_D01","left":"flexible fare","right":"гибкий тариф"},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L2_D02","left":"fare restriction","right":"ограничение тарифа"},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L2_D03","left":"open-jaw itinerary","right":"маршрут с разными пунктами прилёта и вылета"},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L2_D04","left":"minimum connection time","right":"минимальное время пересадки"},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L2_D05","left":"change penalty","right":"штраф за изменение"},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L2_D06","left":"travel window","right":"период поездки"},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L2_D07","left":"contingency option","right":"резервный вариант"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d046aaea-9698-53db-8380-d011e12e03e3', '92fe1a27-b5ec-5b55-9eac-e2570b1a8b5e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L2_D08","is_correct":true,"text":"The open-jaw itinerary reduces unnecessary backtracking, although its fare restrictions and minimum connection times require careful comparison."},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L2_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L2_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('225c8ce4-9e8a-5417-9f11-f5c7f4691a31', '92fe1a27-b5ec-5b55-9eac-e2570b1a8b5e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The open-jaw itinerary reduces unnecessary backtracking, although its fare restrictions and minimum connection times require careful comparison.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Маршрут с разными пунктами прилёта и вылета сокращает ненужные возвращения, хотя его тарифные ограничения и минимальное время пересадки требуют внимательного сравнения.","target_language":"en","word_bank":["The","open-jaw","itinerary","reduces","unnecessary","backtracking",",","although","its","fare","restrictions","and","minimum","connection","times","require","careful","comparison","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('013e8d1d-997f-570b-86a9-e61af895c5ba', '92fe1a27-b5ec-5b55-9eac-e2570b1a8b5e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"fare restriction","instruction":"Выберите подходящее слово.","options":["fare restriction","change penalty","contingency option"],"sentence_template":"The open-jaw itinerary reduces unnecessary backtracking, although its ___s and minimum connection times require careful comparison."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0796fa12-7378-5e1d-b4bb-83c31ef991a0', '92fe1a27-b5ec-5b55-9eac-e2570b1a8b5e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","open-jaw","itinerary","reduces","unnecessary","backtracking",",","although","its","fare","restrictions","and","minimum","connection","times","require","careful","comparison","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","comparison","careful","require","times","connection","minimum","and","restrictions","fare","its","although",",","backtracking","unnecessary","reduces","itinerary","open-jaw","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6951f47d-a04b-5c4f-9295-f9ad46e2651d', '92fe1a27-b5ec-5b55-9eac-e2570b1a8b5e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The open-jaw itinerary reduces unnecessary backtracking, although its fare restrictions and minimum connection times require careful comparison. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1bb55d55-82c4-5e98-8892-93f560537b9c', '92fe1a27-b5ec-5b55-9eac-e2570b1a8b5e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The open-jaw itinerary reduces unnecessary backtracking, although its fare restrictions and minimum connection times require careful comparison. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Маршрут с разными пунктами прилёта и вылета сокращает ненужные возвращения, хотя его тарифные ограничения и минимальное время пересадки требуют внимательного сравнения. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb673c47-f9e3-5e4e-96ac-88b518aeca3f', '92fe1a27-b5ec-5b55-9eac-e2570b1a8b5e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The open-jaw itinerary reduces unnecessary backtracking, although its fare restrictions and minimum connection times require careful comparison.","translation":"Маршрут с разными пунктами прилёта и вылета сокращает ненужные возвращения, хотя его тарифные ограничения и минимальное время пересадки требуют внимательного сравнения.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Evaluating Fare Conditions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2ed2850a-cee2-5865-84f4-f7b1fd896af3', '92fe1a27-b5ec-5b55-9eac-e2570b1a8b5e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“fare restriction” means a rule limiting refund or change rights.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L2_D11","is_correct":true,"text":"a rule limiting refund or change rights"},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L2_D12","is_correct":false,"text":"a trip arriving in one city and departing from another"},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L2_D13","is_correct":false,"text":"the shortest officially permitted transfer period"}],"word":"fare restriction"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('416622d1-ee0a-513a-9a0d-e9e568ac6c95', '92fe1a27-b5ec-5b55-9eac-e2570b1a8b5e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The open-jaw itinerary reduces unnecessary backtracking, although its fare restrictions and minimum connection times require careful comparison.","explanation":"The missing travel expression is “fare restriction”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"fare restriction","id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L2_D14","is_correct":true},{"audio_text":"minimum connection time","id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L2_D15","is_correct":false},{"audio_text":"travel window","id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L2_D16","is_correct":false}],"sentence_template":"The open-jaw itinerary reduces unnecessary backtracking, although its ___s and minimum connection times require careful comparison."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c525c6e9-945c-552a-9715-7de40ffa1ae8', '92fe1a27-b5ec-5b55-9eac-e2570b1a8b5e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"fare restriction","explanation":"The complete travel statement uses “fare restriction” precisely.","hint_prefix":"fare","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The open-jaw itinerary reduces unnecessary backtracking, although its ___s and minimum connection times require careful comparison."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('54f2b288-207f-5594-9ce7-9cbc90cd0896', '92fe1a27-b5ec-5b55-9eac-e2570b1a8b5e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"flexible fare","id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L2_D17","text":"flexible fare"},{"audio_text":"fare restriction","id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L2_D18","text":"fare restriction"},{"audio_text":"open-jaw itinerary","id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L2_D19","text":"open-jaw itinerary"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7fcd88ed-b8ba-5935-9563-a2591cc4189f', '92fe1a27-b5ec-5b55-9eac-e2570b1a8b5e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Evaluating Fare Conditions”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L2_D20","is_correct":true,"text":"The open-jaw itinerary reduces unnecessary backtracking, although its fare restrictions and minimum connection times require careful comparison."},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L2_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L2_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d3ddd1af-b9fd-5d58-8cbb-7352064e7e08', '92fe1a27-b5ec-5b55-9eac-e2570b1a8b5e', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('d4111537-e319-5105-9759-0f66e2156ecf', NULL, 'Взвешенное действие и вывод', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Confirming a Flexible Booking","ru":"Взвешенное действие и вывод"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('facf8f26-a8e2-5f92-935f-70f25f1351b6', 'd4111537-e319-5105-9759-0f66e2156ecf', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L3_D01","left":"flexible fare","right":"гибкий тариф"},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L3_D02","left":"fare restriction","right":"ограничение тарифа"},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L3_D03","left":"open-jaw itinerary","right":"маршрут с разными пунктами прилёта и вылета"},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L3_D04","left":"minimum connection time","right":"минимальное время пересадки"},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L3_D05","left":"change penalty","right":"штраф за изменение"},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L3_D06","left":"travel window","right":"период поездки"},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L3_D07","left":"contingency option","right":"резервный вариант"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12b818ca-fc93-5269-8123-79deff7fdbe3', 'd4111537-e319-5105-9759-0f66e2156ecf', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L3_D08","is_correct":true,"text":"Before confirming the booking, verify every change penalty and identify a contingency option for the least reliable connection."},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L3_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L3_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b33bdd90-47e7-57de-a3dc-5affffac1592', 'd4111537-e319-5105-9759-0f66e2156ecf', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Before confirming the booking, verify every change penalty and identify a contingency option for the least reliable connection.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Перед подтверждением бронирования проверьте каждый штраф за изменение и определите резервный вариант для наименее надёжной пересадки.","target_language":"en","word_bank":["Before","confirming","the","booking",",","verify","every","change","penalty","and","identify","a","contingency","option","for","the","least","reliable","connection","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0bc0823a-17d2-57cd-81e5-f2e14603f614', 'd4111537-e319-5105-9759-0f66e2156ecf', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"open-jaw itinerary","instruction":"Выберите подходящее слово.","options":["open-jaw itinerary","travel window","flexible fare"],"sentence_template":"Before confirming the booking, verify every change penalty and identify a contingency option for the least reliable connection."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c2307192-00f5-5d45-ab58-852c8b479e5d', 'd4111537-e319-5105-9759-0f66e2156ecf', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Before","confirming","the","booking",",","verify","every","change","penalty","and","identify","a","contingency","option","for","the","least","reliable","connection","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","connection","reliable","least","the","for","option","contingency","a","identify","and","penalty","change","every","verify",",","booking","the","confirming","Before"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc03c8a8-2c2d-5cc4-adf7-c8ec967f678a', 'd4111537-e319-5105-9759-0f66e2156ecf', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Before confirming the booking, verify every change penalty and identify a contingency option for the least reliable connection. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('62d8ee54-1715-509d-8cde-1e7fe52a043b', 'd4111537-e319-5105-9759-0f66e2156ecf', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Before confirming the booking, verify every change penalty and identify a contingency option for the least reliable connection. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Перед подтверждением бронирования проверьте каждый штраф за изменение и определите резервный вариант для наименее надёжной пересадки. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0c2091fe-9cf2-5724-be84-0ada9f07af9c', 'd4111537-e319-5105-9759-0f66e2156ecf', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"Before confirming the booking, verify every change penalty and identify a contingency option for the least reliable connection.","translation":"Перед подтверждением бронирования проверьте каждый штраф за изменение и определите резервный вариант для наименее надёжной пересадки.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Confirming a Flexible Booking"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5c4649d4-12a3-53f6-9fc9-0d41b152c0f5', 'd4111537-e319-5105-9759-0f66e2156ecf', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“open-jaw itinerary” means a trip arriving in one city and departing from another.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L3_D11","is_correct":true,"text":"a trip arriving in one city and departing from another"},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L3_D12","is_correct":false,"text":"the shortest officially permitted transfer period"},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L3_D13","is_correct":false,"text":"a fee charged for altering a booking"}],"word":"open-jaw itinerary"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a09b4ab1-f754-5698-8933-37377c7b0283', 'd4111537-e319-5105-9759-0f66e2156ecf', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Before confirming the booking, verify every change penalty and identify a contingency option for the least reliable connection.","explanation":"The missing travel expression is “open-jaw itinerary”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"open-jaw itinerary","id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L3_D14","is_correct":true},{"audio_text":"change penalty","id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L3_D15","is_correct":false},{"audio_text":"contingency option","id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L3_D16","is_correct":false}],"sentence_template":"Before confirming the booking, verify every change penalty and identify a contingency option for the least reliable connection."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a1a2243-a828-5a30-8853-bccd451cc0ad', 'd4111537-e319-5105-9759-0f66e2156ecf', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"open-jaw itinerary","explanation":"The complete travel statement uses “open-jaw itinerary” precisely.","hint_prefix":"open","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Before confirming the booking, verify every change penalty and identify a contingency option for the least reliable connection."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2189761a-0c1b-5d8e-a014-4bfdacd81c1a', 'd4111537-e319-5105-9759-0f66e2156ecf', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"flexible fare","id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L3_D17","text":"flexible fare"},{"audio_text":"fare restriction","id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L3_D18","text":"fare restriction"},{"audio_text":"open-jaw itinerary","id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L3_D19","text":"open-jaw itinerary"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc929f2d-2cea-5edc-8c41-7a61c78fadf6', 'd4111537-e319-5105-9759-0f66e2156ecf', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Confirming a Flexible Booking”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L3_D20","is_correct":true,"text":"Before confirming the booking, verify every change penalty and identify a contingency option for the least reliable connection."},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L3_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_COMPLEX_ITINERARIES_FLEXIBLE_FARES_AND_BOOKING_TERMS_L3_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d3ddd1af-b9fd-5d58-8cbb-7352064e7e08', 'd4111537-e319-5105-9759-0f66e2156ecf', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('594f5c31-eaa0-5fd6-afff-36555992014c', 'en', 'flexible fare', 'гибкий тариф', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a0b3c982-140a-5d6b-a5d6-d7d11397ef96', 'en', 'fare restriction', 'ограничение тарифа', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b6e41bbb-7943-53de-bdab-54fdbe721a9a', 'en', 'open-jaw itinerary', 'маршрут с разными пунктами прилёта и вылета', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a0f1fbcf-8699-5136-9a08-dbb0655f34e3', 'en', 'minimum connection time', 'минимальное время пересадки', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7108d784-f432-56a0-b6e9-1c8da676d154', 'en', 'change penalty', 'штраф за изменение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d8f4a290-dc0d-5939-9d74-9c863e420b8f', 'en', 'travel window', 'период поездки', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d26bb542-d138-5134-9f13-7e0bb43c0427', 'en', 'contingency option', 'резервный вариант', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('594f5c31-eaa0-5fd6-afff-36555992014c', 'en', 'flexible fare', 'гибкий тариф', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a0b3c982-140a-5d6b-a5d6-d7d11397ef96', 'en', 'fare restriction', 'ограничение тарифа', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b6e41bbb-7943-53de-bdab-54fdbe721a9a', 'en', 'open-jaw itinerary', 'маршрут с разными пунктами прилёта и вылета', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a0f1fbcf-8699-5136-9a08-dbb0655f34e3', 'en', 'minimum connection time', 'минимальное время пересадки', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7108d784-f432-56a0-b6e9-1c8da676d154', 'en', 'change penalty', 'штраф за изменение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d8f4a290-dc0d-5939-9d74-9c863e420b8f', 'en', 'travel window', 'период поездки', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d26bb542-d138-5134-9f13-7e0bb43c0427', 'en', 'contingency option', 'резервный вариант', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('594f5c31-eaa0-5fd6-afff-36555992014c', 'en', 'flexible fare', 'гибкий тариф', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a0b3c982-140a-5d6b-a5d6-d7d11397ef96', 'en', 'fare restriction', 'ограничение тарифа', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b6e41bbb-7943-53de-bdab-54fdbe721a9a', 'en', 'open-jaw itinerary', 'маршрут с разными пунктами прилёта и вылета', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a0f1fbcf-8699-5136-9a08-dbb0655f34e3', 'en', 'minimum connection time', 'минимальное время пересадки', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7108d784-f432-56a0-b6e9-1c8da676d154', 'en', 'change penalty', 'штраф за изменение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d8f4a290-dc0d-5939-9d74-9c863e420b8f', 'en', 'travel window', 'период поездки', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d26bb542-d138-5134-9f13-7e0bb43c0427', 'en', 'contingency option', 'резервный вариант', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ddd1af-b9fd-5d58-8cbb-7352064e7e08', id, '70340ec1-1f27-568e-9f20-8a96c0575c44', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'flexible fare' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ddd1af-b9fd-5d58-8cbb-7352064e7e08', id, '70340ec1-1f27-568e-9f20-8a96c0575c44', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'fare restriction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ddd1af-b9fd-5d58-8cbb-7352064e7e08', id, '70340ec1-1f27-568e-9f20-8a96c0575c44', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'open-jaw itinerary' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ddd1af-b9fd-5d58-8cbb-7352064e7e08', id, '70340ec1-1f27-568e-9f20-8a96c0575c44', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'minimum connection time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ddd1af-b9fd-5d58-8cbb-7352064e7e08', id, '70340ec1-1f27-568e-9f20-8a96c0575c44', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'change penalty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ddd1af-b9fd-5d58-8cbb-7352064e7e08', id, '70340ec1-1f27-568e-9f20-8a96c0575c44', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'travel window' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ddd1af-b9fd-5d58-8cbb-7352064e7e08', id, '70340ec1-1f27-568e-9f20-8a96c0575c44', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'contingency option' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ddd1af-b9fd-5d58-8cbb-7352064e7e08', id, '92fe1a27-b5ec-5b55-9eac-e2570b1a8b5e', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'flexible fare' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ddd1af-b9fd-5d58-8cbb-7352064e7e08', id, '92fe1a27-b5ec-5b55-9eac-e2570b1a8b5e', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'fare restriction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ddd1af-b9fd-5d58-8cbb-7352064e7e08', id, '92fe1a27-b5ec-5b55-9eac-e2570b1a8b5e', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'open-jaw itinerary' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ddd1af-b9fd-5d58-8cbb-7352064e7e08', id, '92fe1a27-b5ec-5b55-9eac-e2570b1a8b5e', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'minimum connection time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ddd1af-b9fd-5d58-8cbb-7352064e7e08', id, '92fe1a27-b5ec-5b55-9eac-e2570b1a8b5e', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'change penalty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ddd1af-b9fd-5d58-8cbb-7352064e7e08', id, '92fe1a27-b5ec-5b55-9eac-e2570b1a8b5e', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'travel window' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ddd1af-b9fd-5d58-8cbb-7352064e7e08', id, '92fe1a27-b5ec-5b55-9eac-e2570b1a8b5e', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'contingency option' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ddd1af-b9fd-5d58-8cbb-7352064e7e08', id, 'd4111537-e319-5105-9759-0f66e2156ecf', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'flexible fare' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ddd1af-b9fd-5d58-8cbb-7352064e7e08', id, 'd4111537-e319-5105-9759-0f66e2156ecf', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'fare restriction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ddd1af-b9fd-5d58-8cbb-7352064e7e08', id, 'd4111537-e319-5105-9759-0f66e2156ecf', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'open-jaw itinerary' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ddd1af-b9fd-5d58-8cbb-7352064e7e08', id, 'd4111537-e319-5105-9759-0f66e2156ecf', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'minimum connection time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ddd1af-b9fd-5d58-8cbb-7352064e7e08', id, 'd4111537-e319-5105-9759-0f66e2156ecf', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'change penalty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ddd1af-b9fd-5d58-8cbb-7352064e7e08', id, 'd4111537-e319-5105-9759-0f66e2156ecf', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'travel window' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd3ddd1af-b9fd-5d58-8cbb-7352064e7e08', id, 'd4111537-e319-5105-9759-0f66e2156ecf', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'contingency option' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
