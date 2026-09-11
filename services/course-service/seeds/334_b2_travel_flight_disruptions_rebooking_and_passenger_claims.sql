-- Track: B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('efb2caf8-daa7-5c93-a1fb-301ecf68a00b', 'B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS', 'Сбои рейсов, перебронирование и требования пассажиров', 'Развивайте уверенное общение уровня B2 в сложных поездках по теме «Сбои рейсов, перебронирование и требования пассажиров», оценивая варианты, права, риски и культурный контекст.', '{"en":"Flight Disruptions, Rebooking and Passenger Claims","ru":"Сбои рейсов, перебронирование и требования пассажиров"}'::jsonb, '{"en":"Develop confident B2 communication for flight disruptions, rebooking and passenger claims by evaluating options, rights, risks, and cultural context.","ru":"Развивайте уверенное общение уровня B2 в сложных поездках по теме «Сбои рейсов, перебронирование и требования пассажиров», оценивая варианты, права, риски и культурный контекст."}'::jsonb, 'en', 'B2', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('24d192aa-c6e5-544b-b92f-92ad0b5d779f', NULL, 'Ситуация и ключевые понятия', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Understanding a Major Disruption","ru":"Ситуация и ключевые понятия"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b74ede2-ea2c-581e-ba26-03376b35edb7', '24d192aa-c6e5-544b-b92f-92ad0b5d779f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D01","left":"operational disruption","right":"операционный сбой"},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D02","left":"involuntary rerouting","right":"вынужденное изменение маршрута"},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D03","left":"earliest opportunity","right":"первая возможность"},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D04","left":"duty of care","right":"обязанность по обеспечению помощи"},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D05","left":"reasonable expense","right":"обоснованный расход"},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D06","left":"supporting documentation","right":"подтверждающие документы"},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D07","left":"compensation claim","right":"требование компенсации"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a218d3af-8254-5743-aa9d-87d5876ea4cd', '24d192aa-c6e5-544b-b92f-92ad0b5d779f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D08","is_correct":true,"text":"The operational disruption cancelled the final sector, so I am requesting rerouting at the earliest opportunity rather than a refund."},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('985e486a-649a-5a55-9e89-8cd4de6eae5f', '24d192aa-c6e5-544b-b92f-92ad0b5d779f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The operational disruption cancelled the final sector, so I am requesting rerouting at the earliest opportunity rather than a refund.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Операционный сбой привёл к отмене последнего сегмента, поэтому я прошу изменить маршрут при первой возможности, а не вернуть деньги.","target_language":"en","word_bank":["The","operational","disruption","cancelled","the","final","sector",",","so","I","am","requesting","rerouting","at","the","earliest","opportunity","rather","than","a","refund","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8232d80-e873-5eb5-a22f-6025ffc2ed8d', '24d192aa-c6e5-544b-b92f-92ad0b5d779f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"operational disruption","instruction":"Выберите подходящее слово.","options":["operational disruption","duty of care","supporting documentation"],"sentence_template":"The ___ cancelled the final sector, so I am requesting rerouting at the earliest opportunity rather than a refund."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a942baca-139f-5fbb-8259-9f91f1aeaf47', '24d192aa-c6e5-544b-b92f-92ad0b5d779f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","operational","disruption","cancelled","the","final","sector",",","so","I","am","requesting","rerouting","at","the","earliest","opportunity","rather","than","a","refund","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","refund","a","than","rather","opportunity","earliest","the","at","rerouting","requesting","am","I","so",",","sector","final","the","cancelled","disruption","operational","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('431de982-be92-5e69-ba0c-c760bf945eea', '24d192aa-c6e5-544b-b92f-92ad0b5d779f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The operational disruption cancelled the final sector, so I am requesting rerouting at the earliest opportunity rather than a refund. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('29884353-c74d-5965-903f-a3823aeca941', '24d192aa-c6e5-544b-b92f-92ad0b5d779f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The operational disruption cancelled the final sector, so I am requesting rerouting at the earliest opportunity rather than a refund. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Операционный сбой привёл к отмене последнего сегмента, поэтому я прошу изменить маршрут при первой возможности, а не вернуть деньги. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7a40668-001a-57b5-8257-d75b4d80ff6d', '24d192aa-c6e5-544b-b92f-92ad0b5d779f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The operational disruption cancelled the final sector, so I am requesting rerouting at the earliest opportunity rather than a refund.","translation":"Операционный сбой привёл к отмене последнего сегмента, поэтому я прошу изменить маршрут при первой возможности, а не вернуть деньги.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Understanding a Major Disruption"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2705acf1-2e27-57a2-a104-73d0e933c808', '24d192aa-c6e5-544b-b92f-92ad0b5d779f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“operational disruption” means an interruption caused by airline or airport operations.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D11","is_correct":true,"text":"an interruption caused by airline or airport operations"},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D12","is_correct":false,"text":"a route change imposed after disruption"},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D13","is_correct":false,"text":"the soonest practical alternative"}],"word":"operational disruption"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('53b57111-7430-5b9c-9d58-3363ffb01473', '24d192aa-c6e5-544b-b92f-92ad0b5d779f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The operational disruption cancelled the final sector, so I am requesting rerouting at the earliest opportunity rather than a refund.","explanation":"The missing travel expression is “operational disruption”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"operational disruption","id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D14","is_correct":true},{"audio_text":"earliest opportunity","id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D15","is_correct":false},{"audio_text":"reasonable expense","id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D16","is_correct":false}],"sentence_template":"The ___ cancelled the final sector, so I am requesting rerouting at the earliest opportunity rather than a refund."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd06897c-8ca8-523e-a364-a5275ff0ec30', '24d192aa-c6e5-544b-b92f-92ad0b5d779f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"operational disruption","explanation":"The complete travel statement uses “operational disruption” precisely.","hint_prefix":"oper","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ cancelled the final sector, so I am requesting rerouting at the earliest opportunity rather than a refund."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('92fcda7d-9026-53b5-9987-43b2197d7509', '24d192aa-c6e5-544b-b92f-92ad0b5d779f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"operational disruption","id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D17","text":"operational disruption"},{"audio_text":"involuntary rerouting","id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D18","text":"involuntary rerouting"},{"audio_text":"earliest opportunity","id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D19","text":"earliest opportunity"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9f250aa9-b28e-56c5-bbdf-081dc2820e9d', '24d192aa-c6e5-544b-b92f-92ad0b5d779f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Understanding a Major Disruption”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D20","is_correct":true,"text":"The operational disruption cancelled the final sector, so I am requesting rerouting at the earliest opportunity rather than a refund."},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L1_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('efb2caf8-daa7-5c93-a1fb-301ecf68a00b', '24d192aa-c6e5-544b-b92f-92ad0b5d779f', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f0b3ab3f-ad9f-5f13-8511-d2b90eade236', NULL, 'Переговоры и решение проблемы', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Negotiating Rebooking Options","ru":"Переговоры и решение проблемы"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8763a88d-f235-5489-8149-12e231e72e55', 'f0b3ab3f-ad9f-5f13-8511-d2b90eade236', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D01","left":"operational disruption","right":"операционный сбой"},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D02","left":"involuntary rerouting","right":"вынужденное изменение маршрута"},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D03","left":"earliest opportunity","right":"первая возможность"},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D04","left":"duty of care","right":"обязанность по обеспечению помощи"},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D05","left":"reasonable expense","right":"обоснованный расход"},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D06","left":"supporting documentation","right":"подтверждающие документы"},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D07","left":"compensation claim","right":"требование компенсации"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7eba9686-8d8f-5ea4-85ec-0da96f693a40', 'f0b3ab3f-ad9f-5f13-8511-d2b90eade236', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D08","is_correct":true,"text":"The airline’s duty of care may cover reasonable expenses for meals and accommodation while passengers await involuntary rerouting."},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7670d5dc-9e36-508a-9c4a-62bd172f1412', 'f0b3ab3f-ad9f-5f13-8511-d2b90eade236', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The airline’s duty of care may cover reasonable expenses for meals and accommodation while passengers await involuntary rerouting.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Обязанность авиакомпании по обеспечению помощи может покрывать обоснованные расходы на питание и проживание во время ожидания вынужденного изменения маршрута.","target_language":"en","word_bank":["The","airline’s","duty","of","care","may","cover","reasonable","expenses","for","meals","and","accommodation","while","passengers","await","involuntary","rerouting","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aed202fc-63fd-5507-9f6c-4ea9758aacfc', 'f0b3ab3f-ad9f-5f13-8511-d2b90eade236', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"involuntary rerouting","instruction":"Выберите подходящее слово.","options":["involuntary rerouting","reasonable expense","compensation claim"],"sentence_template":"The airline’s duty of care may cover reasonable expenses for meals and accommodation while passengers await ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9ac839ce-24c8-589a-b27a-10b862674956', 'f0b3ab3f-ad9f-5f13-8511-d2b90eade236', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","airline’s","duty","of","care","may","cover","reasonable","expenses","for","meals","and","accommodation","while","passengers","await","involuntary","rerouting","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","rerouting","involuntary","await","passengers","while","accommodation","and","meals","for","expenses","reasonable","cover","may","care","of","duty","airline’s","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c27395e3-eaf7-59f0-b027-922797dc2da2', 'f0b3ab3f-ad9f-5f13-8511-d2b90eade236', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The airline’s duty of care may cover reasonable expenses for meals and accommodation while passengers await involuntary rerouting. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8d53432-495e-5589-a630-6b77993d6c4b', 'f0b3ab3f-ad9f-5f13-8511-d2b90eade236', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The airline’s duty of care may cover reasonable expenses for meals and accommodation while passengers await involuntary rerouting. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Обязанность авиакомпании по обеспечению помощи может покрывать обоснованные расходы на питание и проживание во время ожидания вынужденного изменения маршрута. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('28ee5942-ca72-5167-a1a4-c90f7f2d15d6', 'f0b3ab3f-ad9f-5f13-8511-d2b90eade236', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The airline’s duty of care may cover reasonable expenses for meals and accommodation while passengers await involuntary rerouting.","translation":"Обязанность авиакомпании по обеспечению помощи может покрывать обоснованные расходы на питание и проживание во время ожидания вынужденного изменения маршрута.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Negotiating Rebooking Options"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9f7e671a-1d3b-5dbc-89e8-f8f0b781afbd', 'f0b3ab3f-ad9f-5f13-8511-d2b90eade236', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“involuntary rerouting” means a route change imposed after disruption.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D11","is_correct":true,"text":"a route change imposed after disruption"},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D12","is_correct":false,"text":"the soonest practical alternative"},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D13","is_correct":false,"text":"a provider’s responsibility to assist affected passengers"}],"word":"involuntary rerouting"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e5249304-799b-5dad-9862-b12c1cb55d48', 'f0b3ab3f-ad9f-5f13-8511-d2b90eade236', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The airline’s duty of care may cover reasonable expenses for meals and accommodation while passengers await involuntary rerouting.","explanation":"The missing travel expression is “involuntary rerouting”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"involuntary rerouting","id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D14","is_correct":true},{"audio_text":"duty of care","id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D15","is_correct":false},{"audio_text":"supporting documentation","id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D16","is_correct":false}],"sentence_template":"The airline’s duty of care may cover reasonable expenses for meals and accommodation while passengers await ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6fa64e80-91cb-5a28-94e3-efb2fb8cfacd', 'f0b3ab3f-ad9f-5f13-8511-d2b90eade236', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"involuntary rerouting","explanation":"The complete travel statement uses “involuntary rerouting” precisely.","hint_prefix":"invo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The airline’s duty of care may cover reasonable expenses for meals and accommodation while passengers await ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('69ff0736-3f53-5041-b46b-be8ad78942b3', 'f0b3ab3f-ad9f-5f13-8511-d2b90eade236', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"operational disruption","id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D17","text":"operational disruption"},{"audio_text":"involuntary rerouting","id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D18","text":"involuntary rerouting"},{"audio_text":"earliest opportunity","id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D19","text":"earliest opportunity"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc673cbe-ca6c-58f4-94e5-4be51ef2f784', 'f0b3ab3f-ad9f-5f13-8511-d2b90eade236', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Negotiating Rebooking Options”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D20","is_correct":true,"text":"The airline’s duty of care may cover reasonable expenses for meals and accommodation while passengers await involuntary rerouting."},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L2_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('efb2caf8-daa7-5c93-a1fb-301ecf68a00b', 'f0b3ab3f-ad9f-5f13-8511-d2b90eade236', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0a93cc44-7e61-50b3-b456-9d11646158d0', NULL, 'Взвешенное действие и вывод', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Submitting a Passenger Claim","ru":"Взвешенное действие и вывод"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b9c89407-07c0-5c8e-b67b-0636a8460d84', '0a93cc44-7e61-50b3-b456-9d11646158d0', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D01","left":"operational disruption","right":"операционный сбой"},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D02","left":"involuntary rerouting","right":"вынужденное изменение маршрута"},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D03","left":"earliest opportunity","right":"первая возможность"},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D04","left":"duty of care","right":"обязанность по обеспечению помощи"},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D05","left":"reasonable expense","right":"обоснованный расход"},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D06","left":"supporting documentation","right":"подтверждающие документы"},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D07","left":"compensation claim","right":"требование компенсации"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('10d8c031-c135-53d2-935b-42d98fc11bf5', '0a93cc44-7e61-50b3-b456-9d11646158d0', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D08","is_correct":true,"text":"A compensation claim should distinguish the inconvenience suffered from reimbursable costs and include supporting documentation for each amount."},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4db4c1ec-3058-59ef-97fd-3d8902418eb8', '0a93cc44-7e61-50b3-b456-9d11646158d0', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A compensation claim should distinguish the inconvenience suffered from reimbursable costs and include supporting documentation for each amount.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Требование компенсации должно отделять причинённые неудобства от возмещаемых расходов и включать подтверждающие документы по каждой сумме.","target_language":"en","word_bank":["A","compensation","claim","should","distinguish","the","inconvenience","suffered","from","reimbursable","costs","and","include","supporting","documentation","for","each","amount","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6a5b8177-b1ca-52b8-8371-262fede94c99', '0a93cc44-7e61-50b3-b456-9d11646158d0', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"earliest opportunity","instruction":"Выберите подходящее слово.","options":["earliest opportunity","supporting documentation","operational disruption"],"sentence_template":"A compensation claim should distinguish the inconvenience suffered from reimbursable costs and include supporting documentation for each amount."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71dc32ab-2592-52c0-9d2c-d512e9678305', '0a93cc44-7e61-50b3-b456-9d11646158d0', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","compensation","claim","should","distinguish","the","inconvenience","suffered","from","reimbursable","costs","and","include","supporting","documentation","for","each","amount","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","amount","each","for","documentation","supporting","include","and","costs","reimbursable","from","suffered","inconvenience","the","distinguish","should","claim","compensation","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b9a390e4-f596-5cad-8bc6-9af888f94ec7', '0a93cc44-7e61-50b3-b456-9d11646158d0', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A compensation claim should distinguish the inconvenience suffered from reimbursable costs and include supporting documentation for each amount. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('36696846-bb0e-5c6b-ac25-030d443ba0df', '0a93cc44-7e61-50b3-b456-9d11646158d0', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A compensation claim should distinguish the inconvenience suffered from reimbursable costs and include supporting documentation for each amount. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Требование компенсации должно отделять причинённые неудобства от возмещаемых расходов и включать подтверждающие документы по каждой сумме. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3248e493-db09-5131-89a5-ab9c8b3b2aaf', '0a93cc44-7e61-50b3-b456-9d11646158d0', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"A compensation claim should distinguish the inconvenience suffered from reimbursable costs and include supporting documentation for each amount.","translation":"Требование компенсации должно отделять причинённые неудобства от возмещаемых расходов и включать подтверждающие документы по каждой сумме.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Submitting a Passenger Claim"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fdc9fa59-3dd9-5709-b090-46b0f33599a8', '0a93cc44-7e61-50b3-b456-9d11646158d0', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“earliest opportunity” means the soonest practical alternative.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D11","is_correct":true,"text":"the soonest practical alternative"},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D12","is_correct":false,"text":"a provider’s responsibility to assist affected passengers"},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D13","is_correct":false,"text":"a necessary cost appropriate to the circumstances"}],"word":"earliest opportunity"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5f1edbe7-4154-5974-ba84-c97a794732ff', '0a93cc44-7e61-50b3-b456-9d11646158d0', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A compensation claim should distinguish the inconvenience suffered from reimbursable costs and include supporting documentation for each amount.","explanation":"The missing travel expression is “earliest opportunity”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"earliest opportunity","id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D14","is_correct":true},{"audio_text":"reasonable expense","id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D15","is_correct":false},{"audio_text":"compensation claim","id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D16","is_correct":false}],"sentence_template":"A compensation claim should distinguish the inconvenience suffered from reimbursable costs and include supporting documentation for each amount."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('64f8c93f-1154-5f17-ad0f-110944b519af', '0a93cc44-7e61-50b3-b456-9d11646158d0', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"earliest opportunity","explanation":"The complete travel statement uses “earliest opportunity” precisely.","hint_prefix":"earl","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A compensation claim should distinguish the inconvenience suffered from reimbursable costs and include supporting documentation for each amount."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f208c0f3-986c-53b6-90e6-0dbb079e5c4c', '0a93cc44-7e61-50b3-b456-9d11646158d0', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"operational disruption","id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D17","text":"operational disruption"},{"audio_text":"involuntary rerouting","id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D18","text":"involuntary rerouting"},{"audio_text":"earliest opportunity","id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D19","text":"earliest opportunity"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fac3a245-a8e7-54c2-a204-527389eaf486', '0a93cc44-7e61-50b3-b456-9d11646158d0', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Submitting a Passenger Claim”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D20","is_correct":true,"text":"A compensation claim should distinguish the inconvenience suffered from reimbursable costs and include supporting documentation for each amount."},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_FLIGHT_DISRUPTIONS_REBOOKING_AND_PASSENGER_CLAIMS_L3_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('efb2caf8-daa7-5c93-a1fb-301ecf68a00b', '0a93cc44-7e61-50b3-b456-9d11646158d0', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1e072dab-e461-5e76-90b2-6468a439383e', 'en', 'operational disruption', 'операционный сбой', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b7a77fab-c3e7-5a04-8123-a70b1d1db1cf', 'en', 'involuntary rerouting', 'вынужденное изменение маршрута', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2c3b36fe-b36c-5323-9055-52f99fedaceb', 'en', 'earliest opportunity', 'первая возможность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2cde7306-6856-51f3-be0a-485c135d5b58', 'en', 'duty of care', 'обязанность по обеспечению помощи', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2107ef4b-2eea-52f6-991e-826d7502de22', 'en', 'reasonable expense', 'обоснованный расход', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a9e8aaa7-f2fc-5ca5-b58b-be6c9776bc1b', 'en', 'supporting documentation', 'подтверждающие документы', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3393e540-6ee2-5ea2-9aef-f28ef30755b6', 'en', 'compensation claim', 'требование компенсации', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1e072dab-e461-5e76-90b2-6468a439383e', 'en', 'operational disruption', 'операционный сбой', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b7a77fab-c3e7-5a04-8123-a70b1d1db1cf', 'en', 'involuntary rerouting', 'вынужденное изменение маршрута', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2c3b36fe-b36c-5323-9055-52f99fedaceb', 'en', 'earliest opportunity', 'первая возможность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2cde7306-6856-51f3-be0a-485c135d5b58', 'en', 'duty of care', 'обязанность по обеспечению помощи', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2107ef4b-2eea-52f6-991e-826d7502de22', 'en', 'reasonable expense', 'обоснованный расход', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a9e8aaa7-f2fc-5ca5-b58b-be6c9776bc1b', 'en', 'supporting documentation', 'подтверждающие документы', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3393e540-6ee2-5ea2-9aef-f28ef30755b6', 'en', 'compensation claim', 'требование компенсации', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1e072dab-e461-5e76-90b2-6468a439383e', 'en', 'operational disruption', 'операционный сбой', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b7a77fab-c3e7-5a04-8123-a70b1d1db1cf', 'en', 'involuntary rerouting', 'вынужденное изменение маршрута', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2c3b36fe-b36c-5323-9055-52f99fedaceb', 'en', 'earliest opportunity', 'первая возможность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2cde7306-6856-51f3-be0a-485c135d5b58', 'en', 'duty of care', 'обязанность по обеспечению помощи', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2107ef4b-2eea-52f6-991e-826d7502de22', 'en', 'reasonable expense', 'обоснованный расход', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a9e8aaa7-f2fc-5ca5-b58b-be6c9776bc1b', 'en', 'supporting documentation', 'подтверждающие документы', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3393e540-6ee2-5ea2-9aef-f28ef30755b6', 'en', 'compensation claim', 'требование компенсации', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'efb2caf8-daa7-5c93-a1fb-301ecf68a00b', id, '24d192aa-c6e5-544b-b92f-92ad0b5d779f', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'operational disruption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'efb2caf8-daa7-5c93-a1fb-301ecf68a00b', id, '24d192aa-c6e5-544b-b92f-92ad0b5d779f', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'involuntary rerouting' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'efb2caf8-daa7-5c93-a1fb-301ecf68a00b', id, '24d192aa-c6e5-544b-b92f-92ad0b5d779f', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'earliest opportunity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'efb2caf8-daa7-5c93-a1fb-301ecf68a00b', id, '24d192aa-c6e5-544b-b92f-92ad0b5d779f', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'duty of care' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'efb2caf8-daa7-5c93-a1fb-301ecf68a00b', id, '24d192aa-c6e5-544b-b92f-92ad0b5d779f', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'reasonable expense' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'efb2caf8-daa7-5c93-a1fb-301ecf68a00b', id, '24d192aa-c6e5-544b-b92f-92ad0b5d779f', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'supporting documentation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'efb2caf8-daa7-5c93-a1fb-301ecf68a00b', id, '24d192aa-c6e5-544b-b92f-92ad0b5d779f', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'compensation claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'efb2caf8-daa7-5c93-a1fb-301ecf68a00b', id, 'f0b3ab3f-ad9f-5f13-8511-d2b90eade236', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'operational disruption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'efb2caf8-daa7-5c93-a1fb-301ecf68a00b', id, 'f0b3ab3f-ad9f-5f13-8511-d2b90eade236', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'involuntary rerouting' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'efb2caf8-daa7-5c93-a1fb-301ecf68a00b', id, 'f0b3ab3f-ad9f-5f13-8511-d2b90eade236', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'earliest opportunity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'efb2caf8-daa7-5c93-a1fb-301ecf68a00b', id, 'f0b3ab3f-ad9f-5f13-8511-d2b90eade236', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'duty of care' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'efb2caf8-daa7-5c93-a1fb-301ecf68a00b', id, 'f0b3ab3f-ad9f-5f13-8511-d2b90eade236', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'reasonable expense' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'efb2caf8-daa7-5c93-a1fb-301ecf68a00b', id, 'f0b3ab3f-ad9f-5f13-8511-d2b90eade236', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'supporting documentation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'efb2caf8-daa7-5c93-a1fb-301ecf68a00b', id, 'f0b3ab3f-ad9f-5f13-8511-d2b90eade236', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'compensation claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'efb2caf8-daa7-5c93-a1fb-301ecf68a00b', id, '0a93cc44-7e61-50b3-b456-9d11646158d0', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'operational disruption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'efb2caf8-daa7-5c93-a1fb-301ecf68a00b', id, '0a93cc44-7e61-50b3-b456-9d11646158d0', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'involuntary rerouting' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'efb2caf8-daa7-5c93-a1fb-301ecf68a00b', id, '0a93cc44-7e61-50b3-b456-9d11646158d0', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'earliest opportunity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'efb2caf8-daa7-5c93-a1fb-301ecf68a00b', id, '0a93cc44-7e61-50b3-b456-9d11646158d0', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'duty of care' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'efb2caf8-daa7-5c93-a1fb-301ecf68a00b', id, '0a93cc44-7e61-50b3-b456-9d11646158d0', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'reasonable expense' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'efb2caf8-daa7-5c93-a1fb-301ecf68a00b', id, '0a93cc44-7e61-50b3-b456-9d11646158d0', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'supporting documentation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'efb2caf8-daa7-5c93-a1fb-301ecf68a00b', id, '0a93cc44-7e61-50b3-b456-9d11646158d0', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'compensation claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
