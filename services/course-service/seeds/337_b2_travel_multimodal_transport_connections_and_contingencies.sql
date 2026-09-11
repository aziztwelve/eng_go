-- Track: B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('cbf369ee-7ec7-559c-808d-c95f939a63b2', 'B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES', 'Мультимодальный транспорт, пересадки и резервные планы', 'Развивайте уверенное общение уровня B2 в сложных поездках по теме «Мультимодальный транспорт, пересадки и резервные планы», оценивая варианты, права, риски и культурный контекст.', '{"en":"Multimodal Transport, Connections and Contingencies","ru":"Мультимодальный транспорт, пересадки и резервные планы"}'::jsonb, '{"en":"Develop confident B2 communication for multimodal transport, connections and contingencies by evaluating options, rights, risks, and cultural context.","ru":"Развивайте уверенное общение уровня B2 в сложных поездках по теме «Мультимодальный транспорт, пересадки и резервные планы», оценивая варианты, права, риски и культурный контекст."}'::jsonb, 'en', 'B2', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('94de04d8-feff-561a-81c9-b11cf9ee9ba1', NULL, 'Ситуация и ключевые понятия', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Planning Interdependent Connections","ru":"Ситуация и ключевые понятия"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f334d0e7-0615-520b-9e43-16ef99d49d0d', '94de04d8-feff-561a-81c9-b11cf9ee9ba1', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L1_D01","left":"through-ticket","right":"единый билет"},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L1_D02","left":"protected connection","right":"защищённая пересадка"},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L1_D03","left":"interchange","right":"пересадочный узел"},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L1_D04","left":"service suspension","right":"приостановка движения"},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L1_D05","left":"replacement service","right":"замещающий транспорт"},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L1_D06","left":"contingency route","right":"резервный маршрут"},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L1_D07","left":"onward connection","right":"последующая пересадка"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('48a7af01-5479-5567-b1f9-7b49e35f63de', '94de04d8-feff-561a-81c9-b11cf9ee9ba1', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L1_D08","is_correct":true,"text":"A through-ticket is preferable because the onward connection remains protected if the first operator causes a significant delay."},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L1_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L1_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b651d68b-0653-54de-92e7-e95e92048c69', '94de04d8-feff-561a-81c9-b11cf9ee9ba1', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A through-ticket is preferable because the onward connection remains protected if the first operator causes a significant delay.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Единый билет предпочтительнее, поскольку последующая пересадка остаётся защищённой, если первый перевозчик вызовет существенную задержку.","target_language":"en","word_bank":["A","through-ticket","is","preferable","because","the","onward","connection","remains","protected","if","the","first","operator","causes","a","significant","delay","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc9db29b-bc46-5f67-8314-edf8b0beecc1', '94de04d8-feff-561a-81c9-b11cf9ee9ba1', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"through-ticket","instruction":"Выберите подходящее слово.","options":["through-ticket","service suspension","contingency route"],"sentence_template":"A ___ is preferable because the onward connection remains protected if the first operator causes a significant delay."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('414e637e-2e24-5a82-93e4-0441b42415c4', '94de04d8-feff-561a-81c9-b11cf9ee9ba1', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","through-ticket","is","preferable","because","the","onward","connection","remains","protected","if","the","first","operator","causes","a","significant","delay","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","delay","significant","a","causes","operator","first","the","if","protected","remains","connection","onward","the","because","preferable","is","through-ticket","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bae4b7fd-dc37-5942-bd44-8d3e5d4e0df7', '94de04d8-feff-561a-81c9-b11cf9ee9ba1', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A through-ticket is preferable because the onward connection remains protected if the first operator causes a significant delay. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e2897bdf-559e-500a-8d3d-9150d80bbb6f', '94de04d8-feff-561a-81c9-b11cf9ee9ba1', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A through-ticket is preferable because the onward connection remains protected if the first operator causes a significant delay. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Единый билет предпочтительнее, поскольку последующая пересадка остаётся защищённой, если первый перевозчик вызовет существенную задержку. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b28fc58-ef04-539b-95a2-6ccd7196a3e2', '94de04d8-feff-561a-81c9-b11cf9ee9ba1', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"A through-ticket is preferable because the onward connection remains protected if the first operator causes a significant delay.","translation":"Единый билет предпочтительнее, поскольку последующая пересадка остаётся защищённой, если первый перевозчик вызовет существенную задержку.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Planning Interdependent Connections"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f681d0a8-3bfd-524b-8773-a2a5dcf42a48', '94de04d8-feff-561a-81c9-b11cf9ee9ba1', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“through-ticket” means one ticket covering multiple journey segments.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L1_D11","is_correct":true,"text":"one ticket covering multiple journey segments"},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L1_D12","is_correct":false,"text":"a connection for which the operator accepts disruption responsibility"},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L1_D13","is_correct":false,"text":"a place where passengers change services"}],"word":"through-ticket"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c9d0e70c-c274-51f8-843c-36c809c92eb4', '94de04d8-feff-561a-81c9-b11cf9ee9ba1', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A through-ticket is preferable because the onward connection remains protected if the first operator causes a significant delay.","explanation":"The missing travel expression is “through-ticket”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"through-ticket","id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L1_D14","is_correct":true},{"audio_text":"interchange","id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L1_D15","is_correct":false},{"audio_text":"replacement service","id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L1_D16","is_correct":false}],"sentence_template":"A ___ is preferable because the onward connection remains protected if the first operator causes a significant delay."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('feb8bbba-fb8f-5a59-9aa4-e7fd809bd668', '94de04d8-feff-561a-81c9-b11cf9ee9ba1', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"through-ticket","explanation":"The complete travel statement uses “through-ticket” precisely.","hint_prefix":"thro","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ is preferable because the onward connection remains protected if the first operator causes a significant delay."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('13a904a3-6ee9-55e1-9baf-f3c9651c4095', '94de04d8-feff-561a-81c9-b11cf9ee9ba1', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"through-ticket","id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L1_D17","text":"through-ticket"},{"audio_text":"protected connection","id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L1_D18","text":"protected connection"},{"audio_text":"interchange","id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L1_D19","text":"interchange"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('068b8cc1-be29-5a8d-a34f-e426ccc7a545', '94de04d8-feff-561a-81c9-b11cf9ee9ba1', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Planning Interdependent Connections”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L1_D20","is_correct":true,"text":"A through-ticket is preferable because the onward connection remains protected if the first operator causes a significant delay."},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L1_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L1_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('cbf369ee-7ec7-559c-808d-c95f939a63b2', '94de04d8-feff-561a-81c9-b11cf9ee9ba1', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('16271e78-bda1-5daa-9cfc-e776777501a4', NULL, 'Переговоры и решение проблемы', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Responding to Missed Transfers","ru":"Переговоры и решение проблемы"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('59f6ed1d-560b-5b09-b035-14a3ad67799a', '16271e78-bda1-5daa-9cfc-e776777501a4', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L2_D01","left":"through-ticket","right":"единый билет"},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L2_D02","left":"protected connection","right":"защищённая пересадка"},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L2_D03","left":"interchange","right":"пересадочный узел"},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L2_D04","left":"service suspension","right":"приостановка движения"},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L2_D05","left":"replacement service","right":"замещающий транспорт"},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L2_D06","left":"contingency route","right":"резервный маршрут"},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L2_D07","left":"onward connection","right":"последующая пересадка"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('993e30a2-e9f0-588e-ba57-785bc1c7a66e', '16271e78-bda1-5daa-9cfc-e776777501a4', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L2_D08","is_correct":true,"text":"The service suspension affects the main interchange, and the replacement service does not guarantee existing reservations."},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L2_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L2_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc030ab9-8296-5f4f-8159-452bcf05a4f1', '16271e78-bda1-5daa-9cfc-e776777501a4', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The service suspension affects the main interchange, and the replacement service does not guarantee existing reservations.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Приостановка движения затрагивает основной пересадочный узел, а замещающий транспорт не гарантирует сохранение бронирований.","target_language":"en","word_bank":["The","service","suspension","affects","the","main","interchange",",","and","the","replacement","service","does","not","guarantee","existing","reservations","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a8d06f71-39be-5600-a139-fcd2dff4aff9', '16271e78-bda1-5daa-9cfc-e776777501a4', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"protected connection","instruction":"Выберите подходящее слово.","options":["protected connection","replacement service","onward connection"],"sentence_template":"The service suspension affects the main interchange, and the replacement service does not guarantee existing reservations."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('97792cb9-ddfe-5689-988b-00a385041a0e', '16271e78-bda1-5daa-9cfc-e776777501a4', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","service","suspension","affects","the","main","interchange",",","and","the","replacement","service","does","not","guarantee","existing","reservations","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","reservations","existing","guarantee","not","does","service","replacement","the","and",",","interchange","main","the","affects","suspension","service","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('df394698-eca1-5828-8f9e-e08c7b0e5527', '16271e78-bda1-5daa-9cfc-e776777501a4', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The service suspension affects the main interchange, and the replacement service does not guarantee existing reservations. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('578026cc-152f-5b67-b1b5-d355e595886f', '16271e78-bda1-5daa-9cfc-e776777501a4', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The service suspension affects the main interchange, and the replacement service does not guarantee existing reservations. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Приостановка движения затрагивает основной пересадочный узел, а замещающий транспорт не гарантирует сохранение бронирований. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f24c35ef-0822-5cda-9e93-2fc529f3fd86', '16271e78-bda1-5daa-9cfc-e776777501a4', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The service suspension affects the main interchange, and the replacement service does not guarantee existing reservations.","translation":"Приостановка движения затрагивает основной пересадочный узел, а замещающий транспорт не гарантирует сохранение бронирований.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Responding to Missed Transfers"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('abe80ba9-cd62-512d-bf31-a2c2c6689c41', '16271e78-bda1-5daa-9cfc-e776777501a4', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“protected connection” means a connection for which the operator accepts disruption responsibility.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L2_D11","is_correct":true,"text":"a connection for which the operator accepts disruption responsibility"},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L2_D12","is_correct":false,"text":"a place where passengers change services"},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L2_D13","is_correct":false,"text":"a temporary halt in transport operations"}],"word":"protected connection"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a2fdc0ea-2114-5c9b-893e-bc82a3ffe267', '16271e78-bda1-5daa-9cfc-e776777501a4', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The service suspension affects the main interchange, and the replacement service does not guarantee existing reservations.","explanation":"The missing travel expression is “protected connection”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"protected connection","id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L2_D14","is_correct":true},{"audio_text":"service suspension","id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L2_D15","is_correct":false},{"audio_text":"contingency route","id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L2_D16","is_correct":false}],"sentence_template":"The service suspension affects the main interchange, and the replacement service does not guarantee existing reservations."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0154c2b0-3a7d-573c-95b2-b677c8e49ad8', '16271e78-bda1-5daa-9cfc-e776777501a4', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"protected connection","explanation":"The complete travel statement uses “protected connection” precisely.","hint_prefix":"prot","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The service suspension affects the main interchange, and the replacement service does not guarantee existing reservations."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('86e2479f-239d-566a-97c0-1b101553c662', '16271e78-bda1-5daa-9cfc-e776777501a4', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"through-ticket","id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L2_D17","text":"through-ticket"},{"audio_text":"protected connection","id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L2_D18","text":"protected connection"},{"audio_text":"interchange","id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L2_D19","text":"interchange"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('298959e0-26c6-551e-a09c-1ea5690b2ea8', '16271e78-bda1-5daa-9cfc-e776777501a4', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Responding to Missed Transfers”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L2_D20","is_correct":true,"text":"The service suspension affects the main interchange, and the replacement service does not guarantee existing reservations."},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L2_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L2_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('cbf369ee-7ec7-559c-808d-c95f939a63b2', '16271e78-bda1-5daa-9cfc-e776777501a4', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('229afc20-becb-5fe9-b72d-f9c92b43509b', NULL, 'Взвешенное действие и вывод', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Choosing a Contingency Route","ru":"Взвешенное действие и вывод"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b9f37cc-d5fe-58cb-a6b6-050735faa68e', '229afc20-becb-5fe9-b72d-f9c92b43509b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L3_D01","left":"through-ticket","right":"единый билет"},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L3_D02","left":"protected connection","right":"защищённая пересадка"},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L3_D03","left":"interchange","right":"пересадочный узел"},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L3_D04","left":"service suspension","right":"приостановка движения"},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L3_D05","left":"replacement service","right":"замещающий транспорт"},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L3_D06","left":"contingency route","right":"резервный маршрут"},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L3_D07","left":"onward connection","right":"последующая пересадка"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1a4d3613-fc4d-515d-b816-79ae5bc8f846', '229afc20-becb-5fe9-b72d-f9c92b43509b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L3_D08","is_correct":true,"text":"The contingency route takes longer but avoids the unreliable transfer and provides two later alternatives if another connection is missed."},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L3_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L3_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1c392fb6-1b99-53b7-ab18-bf8bb19442ee', '229afc20-becb-5fe9-b72d-f9c92b43509b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The contingency route takes longer but avoids the unreliable transfer and provides two later alternatives if another connection is missed.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Резервный маршрут занимает больше времени, но исключает ненадёжную пересадку и предлагает две более поздние альтернативы в случае ещё одного опоздания.","target_language":"en","word_bank":["The","contingency","route","takes","longer","but","avoids","the","unreliable","transfer","and","provides","two","later","alternatives","if","another","connection","is","missed","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b94a12b6-1d0f-5134-97e6-a4b3e00ad122', '229afc20-becb-5fe9-b72d-f9c92b43509b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"interchange","instruction":"Выберите подходящее слово.","options":["interchange","contingency route","through-ticket"],"sentence_template":"The contingency route takes longer but avoids the unreliable transfer and provides two later alternatives if another connection is missed."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('49cac542-725d-5071-8f2f-e32ad364b1d9', '229afc20-becb-5fe9-b72d-f9c92b43509b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","contingency","route","takes","longer","but","avoids","the","unreliable","transfer","and","provides","two","later","alternatives","if","another","connection","is","missed","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","missed","is","connection","another","if","alternatives","later","two","provides","and","transfer","unreliable","the","avoids","but","longer","takes","route","contingency","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a9ce3df6-18b9-5c59-9276-7eabbccc113c', '229afc20-becb-5fe9-b72d-f9c92b43509b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The contingency route takes longer but avoids the unreliable transfer and provides two later alternatives if another connection is missed. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e0fc189-4a52-5d14-9467-f633b1f49855', '229afc20-becb-5fe9-b72d-f9c92b43509b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The contingency route takes longer but avoids the unreliable transfer and provides two later alternatives if another connection is missed. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Резервный маршрут занимает больше времени, но исключает ненадёжную пересадку и предлагает две более поздние альтернативы в случае ещё одного опоздания. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0abc8406-5a48-5806-b86c-3b74ddad38bf', '229afc20-becb-5fe9-b72d-f9c92b43509b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The contingency route takes longer but avoids the unreliable transfer and provides two later alternatives if another connection is missed.","translation":"Резервный маршрут занимает больше времени, но исключает ненадёжную пересадку и предлагает две более поздние альтернативы в случае ещё одного опоздания.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Choosing a Contingency Route"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1b54ecac-3a46-5ec2-b697-4b668b0f166b', '229afc20-becb-5fe9-b72d-f9c92b43509b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“interchange” means a place where passengers change services.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L3_D11","is_correct":true,"text":"a place where passengers change services"},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L3_D12","is_correct":false,"text":"a temporary halt in transport operations"},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L3_D13","is_correct":false,"text":"an alternative provided during disruption"}],"word":"interchange"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('72f6950d-6d94-5279-b2be-6044b2f5c3f6', '229afc20-becb-5fe9-b72d-f9c92b43509b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The contingency route takes longer but avoids the unreliable transfer and provides two later alternatives if another connection is missed.","explanation":"The missing travel expression is “interchange”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"interchange","id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L3_D14","is_correct":true},{"audio_text":"replacement service","id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L3_D15","is_correct":false},{"audio_text":"onward connection","id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L3_D16","is_correct":false}],"sentence_template":"The contingency route takes longer but avoids the unreliable transfer and provides two later alternatives if another connection is missed."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4f9968c-a2c3-5674-b85e-926317fb4be8', '229afc20-becb-5fe9-b72d-f9c92b43509b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"interchange","explanation":"The complete travel statement uses “interchange” precisely.","hint_prefix":"inte","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The contingency route takes longer but avoids the unreliable transfer and provides two later alternatives if another connection is missed."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('920029fc-29b1-52bf-ba23-6e608c5297a3', '229afc20-becb-5fe9-b72d-f9c92b43509b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"through-ticket","id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L3_D17","text":"through-ticket"},{"audio_text":"protected connection","id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L3_D18","text":"protected connection"},{"audio_text":"interchange","id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L3_D19","text":"interchange"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('580e0949-8143-5d75-8c35-ca4350a88d88', '229afc20-becb-5fe9-b72d-f9c92b43509b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Choosing a Contingency Route”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L3_D20","is_correct":true,"text":"The contingency route takes longer but avoids the unreliable transfer and provides two later alternatives if another connection is missed."},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L3_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_MULTIMODAL_TRANSPORT_CONNECTIONS_AND_CONTINGENCIES_L3_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('cbf369ee-7ec7-559c-808d-c95f939a63b2', '229afc20-becb-5fe9-b72d-f9c92b43509b', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0b0ec181-e780-53f7-a653-599019d320ff', 'en', 'through-ticket', 'единый билет', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('853f062a-0248-55e1-a4cf-aa4cec4b1d56', 'en', 'protected connection', 'защищённая пересадка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3e4a1369-17f7-513c-bfbe-ea64a880c7f1', 'en', 'interchange', 'пересадочный узел', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('72790b73-41fe-5d6f-9920-87f653d8c486', 'en', 'service suspension', 'приостановка движения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('35d1da7c-b801-5ab4-b777-5520dc47d60e', 'en', 'replacement service', 'замещающий транспорт', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6451d40a-2f4c-5290-bf25-963b383dd648', 'en', 'contingency route', 'резервный маршрут', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5ad67bcd-98d7-5cc3-ad68-2cb52cf00bb1', 'en', 'onward connection', 'последующая пересадка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0b0ec181-e780-53f7-a653-599019d320ff', 'en', 'through-ticket', 'единый билет', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('853f062a-0248-55e1-a4cf-aa4cec4b1d56', 'en', 'protected connection', 'защищённая пересадка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3e4a1369-17f7-513c-bfbe-ea64a880c7f1', 'en', 'interchange', 'пересадочный узел', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('72790b73-41fe-5d6f-9920-87f653d8c486', 'en', 'service suspension', 'приостановка движения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('35d1da7c-b801-5ab4-b777-5520dc47d60e', 'en', 'replacement service', 'замещающий транспорт', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6451d40a-2f4c-5290-bf25-963b383dd648', 'en', 'contingency route', 'резервный маршрут', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5ad67bcd-98d7-5cc3-ad68-2cb52cf00bb1', 'en', 'onward connection', 'последующая пересадка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0b0ec181-e780-53f7-a653-599019d320ff', 'en', 'through-ticket', 'единый билет', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('853f062a-0248-55e1-a4cf-aa4cec4b1d56', 'en', 'protected connection', 'защищённая пересадка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3e4a1369-17f7-513c-bfbe-ea64a880c7f1', 'en', 'interchange', 'пересадочный узел', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('72790b73-41fe-5d6f-9920-87f653d8c486', 'en', 'service suspension', 'приостановка движения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('35d1da7c-b801-5ab4-b777-5520dc47d60e', 'en', 'replacement service', 'замещающий транспорт', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6451d40a-2f4c-5290-bf25-963b383dd648', 'en', 'contingency route', 'резервный маршрут', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5ad67bcd-98d7-5cc3-ad68-2cb52cf00bb1', 'en', 'onward connection', 'последующая пересадка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cbf369ee-7ec7-559c-808d-c95f939a63b2', id, '94de04d8-feff-561a-81c9-b11cf9ee9ba1', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'through-ticket' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cbf369ee-7ec7-559c-808d-c95f939a63b2', id, '94de04d8-feff-561a-81c9-b11cf9ee9ba1', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'protected connection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cbf369ee-7ec7-559c-808d-c95f939a63b2', id, '94de04d8-feff-561a-81c9-b11cf9ee9ba1', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'interchange' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cbf369ee-7ec7-559c-808d-c95f939a63b2', id, '94de04d8-feff-561a-81c9-b11cf9ee9ba1', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'service suspension' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cbf369ee-7ec7-559c-808d-c95f939a63b2', id, '94de04d8-feff-561a-81c9-b11cf9ee9ba1', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'replacement service' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cbf369ee-7ec7-559c-808d-c95f939a63b2', id, '94de04d8-feff-561a-81c9-b11cf9ee9ba1', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'contingency route' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cbf369ee-7ec7-559c-808d-c95f939a63b2', id, '94de04d8-feff-561a-81c9-b11cf9ee9ba1', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'onward connection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cbf369ee-7ec7-559c-808d-c95f939a63b2', id, '16271e78-bda1-5daa-9cfc-e776777501a4', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'through-ticket' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cbf369ee-7ec7-559c-808d-c95f939a63b2', id, '16271e78-bda1-5daa-9cfc-e776777501a4', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'protected connection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cbf369ee-7ec7-559c-808d-c95f939a63b2', id, '16271e78-bda1-5daa-9cfc-e776777501a4', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'interchange' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cbf369ee-7ec7-559c-808d-c95f939a63b2', id, '16271e78-bda1-5daa-9cfc-e776777501a4', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'service suspension' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cbf369ee-7ec7-559c-808d-c95f939a63b2', id, '16271e78-bda1-5daa-9cfc-e776777501a4', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'replacement service' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cbf369ee-7ec7-559c-808d-c95f939a63b2', id, '16271e78-bda1-5daa-9cfc-e776777501a4', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'contingency route' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cbf369ee-7ec7-559c-808d-c95f939a63b2', id, '16271e78-bda1-5daa-9cfc-e776777501a4', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'onward connection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cbf369ee-7ec7-559c-808d-c95f939a63b2', id, '229afc20-becb-5fe9-b72d-f9c92b43509b', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'through-ticket' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cbf369ee-7ec7-559c-808d-c95f939a63b2', id, '229afc20-becb-5fe9-b72d-f9c92b43509b', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'protected connection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cbf369ee-7ec7-559c-808d-c95f939a63b2', id, '229afc20-becb-5fe9-b72d-f9c92b43509b', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'interchange' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cbf369ee-7ec7-559c-808d-c95f939a63b2', id, '229afc20-becb-5fe9-b72d-f9c92b43509b', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'service suspension' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cbf369ee-7ec7-559c-808d-c95f939a63b2', id, '229afc20-becb-5fe9-b72d-f9c92b43509b', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'replacement service' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cbf369ee-7ec7-559c-808d-c95f939a63b2', id, '229afc20-becb-5fe9-b72d-f9c92b43509b', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'contingency route' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cbf369ee-7ec7-559c-808d-c95f939a63b2', id, '229afc20-becb-5fe9-b72d-f9c92b43509b', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'onward connection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
