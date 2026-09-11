-- Track: A2_WORK_EQUIPMENT_AND_SUPPLIES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('3da5ef8a-49ed-594e-b5bd-efd65106c31d', 'A2_WORK_EQUIPMENT_AND_SUPPLIES', 'Оборудование и материалы', 'Развивайте практический английский уровня A2 для работы по теме «Оборудование и материалы».', '{"en":"Equipment and Supplies","ru":"Оборудование и материалы"}'::jsonb, '{"en":"Develop practical A2 workplace English for equipment and supplies.","ru":"Развивайте практический английский уровня A2 для работы по теме «Оборудование и материалы»."}'::jsonb, 'en', 'A2', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('07c63671-5ee1-5645-827f-514adfc6f943', NULL, 'Что случилось с принтером', 'Сообщить о поломке и заказе техники, используя past simple и present perfect.', '{"en":"What Happened to the Printer","ru":"Что случилось с принтером"}'::jsonb, '{"en":"Report a breakdown and an order using past simple and present perfect.","ru":"Сообщить о поломке и заказе техники, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3454ac42-fcdf-507e-92df-0df5ad17a35f', '07c63671-5ee1-5645-827f-514adfc6f943', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to break down","right":"сломаться"},{"id":"P2","left":"printer","right":"принтер"},{"id":"P3","left":"to report","right":"сообщить"},{"id":"P4","left":"to replace","right":"заменить"},{"id":"P5","left":"supply","right":"канцтовары / расходники"},{"id":"P6","left":"to order","right":"заказать"},{"id":"P7","left":"out of order","right":"не работает"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('20822d73-370d-51a0-b84d-d37d77c58621', '07c63671-5ee1-5645-827f-514adfc6f943', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The printer has broken down twice this week.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The printer has broken down twice this week."},{"id":"Q_B","is_correct":false,"text":"The printer has broken down yesterday."},{"id":"Q_C","is_correct":false,"text":"The printer break down twice this week."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d359917a-9a0e-5b05-b7a7-6c266735cd17', '07c63671-5ee1-5645-827f-514adfc6f943', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The printer broke down on Monday, and we have already ordered a new one.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Принтер сломался в понедельник, и мы уже заказали новый.","target_language":"en","word_bank":["down","did","have","The","yesterday","broke","on","already","ordered","and","printer","a","new","Monday,","one.","will","we"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf9df736-3e05-5c56-9994-700f7a05f189', '07c63671-5ee1-5645-827f-514adfc6f943', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"reported","instruction":"Выберите подходящее слово.","options":["reported","have report","will reported"],"sentence_template":"I ___ the problem to the office manager an hour ago.","translation_hint":"Я сообщил о проблеме офис-менеджеру час назад."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c9c81eb5-d3d9-5cac-8d86-af78c4b76dc6', '07c63671-5ee1-5645-827f-514adfc6f943', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","have","run","out","of","paper","and","ink","for","the","printer."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["the","and","printer.","of","paper","for","out","was","ink","have","did","We","run"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6e53100f-45b5-59a4-b5a3-76efc3bb7732', '07c63671-5ee1-5645-827f-514adfc6f943', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The scanner has stopped working, so I reported it to the IT department.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ebea2492-d370-53ab-944e-9d7418a07ea0', '07c63671-5ee1-5645-827f-514adfc6f943', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The scanner has stopped working, so I reported it to the IT department.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Сканер перестал работать, поэтому я сообщил об этом в IT-отдел."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3f820907-917a-511d-b0f5-9448459ff2ff', '07c63671-5ee1-5645-827f-514adfc6f943', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Tom","text":"Why is the printer out of order?","translation":"Почему принтер не работает?","type":"dialogue"},{"character":"Anna","text":"It broke down this morning. I have already called the service company.","translation":"Он сломался сегодня утром. Я уже позвонила в сервисную компанию.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Have they said when they will come?"},{"is_correct":false,"text":"Did they will come tomorrow?"},{"is_correct":false,"text":"Is the printer feeling better?"}],"text":"What does Tom ask next?","type":"choice"}],"title":"The Broken Printer"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('69bffda8-281a-54b9-af8e-33c344a5f9ec', '07c63671-5ee1-5645-827f-514adfc6f943', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to replace” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To put something new in place of something old"},{"id":"D_B","is_correct":false,"text":"To turn a machine on and off"},{"id":"D_C","is_correct":false,"text":"To borrow something for a short time"}],"word":"to replace"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6a5f8ccd-15b9-5800-aa64-81c0ce2151ed', '07c63671-5ee1-5645-827f-514adfc6f943', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We have run out of sticky notes.","explanation":"The missing word is “run”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"run","id":"LW_A","is_correct":true},{"audio_text":"ran","id":"LW_B","is_correct":false},{"audio_text":"running","id":"LW_C","is_correct":false}],"sentence_template":"We have ___ out of sticky notes."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e283b04b-3d17-5e09-bcfa-0299fed1111c', '07c63671-5ee1-5645-827f-514adfc6f943', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"out","explanation":"The complete sentence is “The lift has been out of order since Monday.”.","hint_prefix":"ou","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The lift has been ___ of order since Monday."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6a904667-9cea-5a92-b8e5-34c9d25eab7f', '07c63671-5ee1-5645-827f-514adfc6f943', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to break down","id":"V1","text":"to break down"},{"audio_text":"printer","id":"V2","text":"printer"},{"audio_text":"to report","id":"V3","text":"to report"},{"audio_text":"to replace","id":"V4","text":"to replace"},{"audio_text":"supply","id":"V5","text":"supply"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18b72f0b-bcad-5662-a86c-d1b4582fb149', '07c63671-5ee1-5645-827f-514adfc6f943', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"The coffee machine is not working again."}],"explanation":"“I know. I have already reported it to the facilities team.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"I know. I have already reported it to the facilities team."},{"id":"C_B","is_correct":false,"text":"Yes, I will reported it yesterday."},{"id":"C_C","is_correct":false,"text":"The coffee is drinking the machine."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3da5ef8a-49ed-594e-b5bd-efd65106c31d', '07c63671-5ee1-5645-827f-514adfc6f943', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7b61d17b-f89d-5340-b916-130856363282', NULL, 'Что закажем в этом месяце', 'Сравнить товары и поставщиков и рассказать о будущих заказах.', '{"en":"What We Will Order This Month","ru":"Что закажем в этом месяце"}'::jsonb, '{"en":"Compare products and suppliers and talk about future orders.","ru":"Сравнить товары и поставщиков и рассказать о будущих заказах."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd485cb0-68a2-5493-a742-9f845f4c62c4', '7b61d17b-f89d-5340-b916-130856363282', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"cheaper","right":"дешевле"},{"id":"P2","left":"more reliable","right":"надёжнее"},{"id":"P3","left":"supplier","right":"поставщик"},{"id":"P4","left":"to order in advance","right":"заказывать заранее"},{"id":"P5","left":"delivery","right":"доставка"},{"id":"P6","left":"budget","right":"бюджет"},{"id":"P7","left":"laptop","right":"ноутбук"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae7396f1-7e49-56f2-8925-f0b6f13e43fc', '7b61d17b-f89d-5340-b916-130856363282', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “This supplier is cheaper than the old one.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"This supplier is cheaper than the old one."},{"id":"Q_B","is_correct":false,"text":"This supplier is more cheap than the old one."},{"id":"Q_C","is_correct":false,"text":"This supplier is cheapest than the old one."}],"question":"Which sentence compares two things correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4825a850-9a28-5cae-9468-6b5343a5fcd5', '7b61d17b-f89d-5340-b916-130856363282', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The new laptop is more expensive, but it will last longer than the old one.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Новый ноутбук дороже, но он прослужит дольше, чем старый.","target_language":"en","word_bank":["laptop","old","last","longer","expensive,","the","new","The","it","was","is","but","more","one.","most","did","than","will"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12b1d428-dd77-5a62-b4b9-66bc46b7981f', '7b61d17b-f89d-5340-b916-130856363282', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"more","instruction":"Выберите подходящее слово.","options":["more","most","much"],"sentence_template":"These chairs are ___ comfortable than the old ones.","translation_hint":"Эти кресла удобнее старых."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5033a49b-6fa7-5e7e-9d5b-26807c40768e', '7b61d17b-f89d-5340-b916-130856363282', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","going","to","order","the","supplies","from","a","cheaper","supplier."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["did","cheaper","supplier.","going","order","was","a","are","supplies","the","from","to","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6512e1f4-151b-59a4-a1f9-55fd03b715f5', '7b61d17b-f89d-5340-b916-130856363282', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If we order in advance, the delivery will be faster and the price will be lower.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4e10c6d-f2ae-58f8-8024-c7f40a48bc37', '7b61d17b-f89d-5340-b916-130856363282', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If we order in advance, the delivery will be faster and the price will be lower.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если мы закажем заранее, доставка будет быстрее, а цена ниже."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ec0980d-75ec-578f-8e25-ae17ada95735', '7b61d17b-f89d-5340-b916-130856363282', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"Which supplier are we going to choose?","translation":"Какого поставщика мы выберем?","type":"dialogue"},{"character":"Tom","text":"Company A is cheaper, but Company B is more reliable.","translation":"Компания A дешевле, но компания B надёжнее.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Then we should choose Company B for important orders."},{"is_correct":false,"text":"Then we must to choose the expensive one yesterday."},{"is_correct":false,"text":"The supplier is choosing us next week."}],"text":"What does Anna say?","type":"choice"}],"title":"Choosing a Supplier"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ba18dd1-60e5-54b9-b600-32f3efdbfd77', '7b61d17b-f89d-5340-b916-130856363282', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“supplier” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A company that sells goods or services to other companies"},{"id":"D_B","is_correct":false,"text":"A person who buys goods in a shop"},{"id":"D_C","is_correct":false,"text":"A machine that makes paper"}],"word":"supplier"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e10ff9c7-097b-52dc-b69a-0620afb772cc', '7b61d17b-f89d-5340-b916-130856363282', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"This model is less expensive than that one.","explanation":"The missing word is “less”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"less","id":"LW_A","is_correct":true},{"audio_text":"least","id":"LW_B","is_correct":false},{"audio_text":"little","id":"LW_C","is_correct":false}],"sentence_template":"This model is ___ expensive than that one."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('68524d6a-f2a1-57d2-8af5-f126c14b4109', '7b61d17b-f89d-5340-b916-130856363282', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"earlier","explanation":"The complete sentence is “The delivery will arrive earlier Tuesday than planned.”.","hint_prefix":"ea","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The delivery will arrive ___ Tuesday than planned."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8fea54aa-1106-584e-a1ea-ec6c777f5d54', '7b61d17b-f89d-5340-b916-130856363282', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"cheaper","id":"V1","text":"cheaper"},{"audio_text":"more reliable","id":"V2","text":"more reliable"},{"audio_text":"supplier","id":"V3","text":"supplier"},{"audio_text":"to order in advance","id":"V4","text":"to order in advance"},{"audio_text":"delivery","id":"V5","text":"delivery"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2aab5fb-ac21-5ef5-9473-968a035198f8', '7b61d17b-f89d-5340-b916-130856363282', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Should we order the new monitors now?"}],"explanation":"“Yes, if we order today, they will arrive before the deadline.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes, if we order today, they will arrive before the deadline."},{"id":"C_B","is_correct":false,"text":"No, we will ordered them yesterday."},{"id":"C_C","is_correct":false,"text":"The monitors are ordering themselves."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3da5ef8a-49ed-594e-b5bd-efd65106c31d', '7b61d17b-f89d-5340-b916-130856363282', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ecb960a5-5b55-58cd-bfc6-fa1cc46aa63a', NULL, 'Правила безопасности с техникой', 'Объяснить обязательные правила и последствия, используя must и первое условное.', '{"en":"Equipment Safety Rules","ru":"Правила безопасности с техникой"}'::jsonb, '{"en":"Explain obligatory rules and consequences using must and the first conditional.","ru":"Объяснить обязательные правила и последствия, используя must и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f64f945b-61b9-5a34-80e5-d1d35947037f', 'ecb960a5-5b55-58cd-bfc6-fa1cc46aa63a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to unplug","right":"отключить от сети"},{"id":"P2","left":"cable","right":"кабель"},{"id":"P3","left":"dangerous","right":"опасный"},{"id":"P4","left":"to follow the rules","right":"соблюдать правила"},{"id":"P5","left":"instruction","right":"инструкция"},{"id":"P6","left":"to damage","right":"повредить"},{"id":"P7","left":"carefully","right":"осторожно"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb4c9eac-db7e-5a2e-a617-268b1441a04e', 'ecb960a5-5b55-58cd-bfc6-fa1cc46aa63a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You must unplug the machine before cleaning it.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You must unplug the machine before cleaning it."},{"id":"Q_B","is_correct":false,"text":"You should unplugging the machine yesterday."},{"id":"Q_C","is_correct":false,"text":"You can unplugged the machine last week."}],"question":"Which sentence expresses an obligation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4c5f2f53-b660-5efc-ac20-a0172c355abf', 'ecb960a5-5b55-58cd-bfc6-fa1cc46aa63a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you do not follow the instructions, you may damage the equipment.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если ты не будешь следовать инструкции, ты можешь повредить оборудование.","target_language":"en","word_bank":["followed","you","If","yesterday","instructions,","damage","equipment.","not","the","you","the","follow","did","do","may"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5c8817a2-c3d2-5bb6-b9b3-2e590955df04', 'ecb960a5-5b55-58cd-bfc6-fa1cc46aa63a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"must","instruction":"Выберите подходящее слово.","options":["must","should to","don''t have"],"sentence_template":"You ___ not use damaged cables — it is dangerous.","translation_hint":"Нельзя пользоваться повреждёнными кабелями — это опасно."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b49e08f2-b31f-5101-801d-a9a70129e711', 'ecb960a5-5b55-58cd-bfc6-fa1cc46aa63a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","must","read","the","instruction","manual","before","using","the","new","machine."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["the","instruction","machine.","You","the","may","using","read","new","must","manual","went","before"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b8ac5e4b-a1c1-557a-b81b-84ce440a2cf4', 'ecb960a5-5b55-58cd-bfc6-fa1cc46aa63a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If the cable feels hot, you must unplug it immediately and call the technician.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fdea25d5-fdac-5c1e-ae13-d23d5b93cb7a', 'ecb960a5-5b55-58cd-bfc6-fa1cc46aa63a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If the cable feels hot, you must unplug it immediately and call the technician.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если кабель горячий на ощупь, нужно сразу отключить его и вызвать техника."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d86e6bc4-e20f-52a6-8aca-1b8775d6ce6b', 'ecb960a5-5b55-58cd-bfc6-fa1cc46aa63a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Tom","text":"Look, this cable is damaged. Can we still use it?","translation":"Смотри, этот кабель повреждён. Можно им всё ещё пользоваться?","type":"dialogue"},{"character":"Anna","text":"No, we can''t. We must replace it today.","translation":"Нет. Мы должны заменить его сегодня.","type":"dialogue"},{"options":[{"is_correct":true,"text":"If we use it, the computer may break."},{"is_correct":false,"text":"If we will use it, the computer breaks yesterday."},{"is_correct":false,"text":"The cable must to fix itself."}],"text":"What does Tom say?","type":"choice"}],"title":"A Damaged Cable"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('19aa196a-cd85-5c9d-b1ee-5a7186a7ceec', 'ecb960a5-5b55-58cd-bfc6-fa1cc46aa63a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to damage” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To break something or make it worse"},{"id":"D_B","is_correct":false,"text":"To make something look newer"},{"id":"D_C","is_correct":false,"text":"To buy something for the office"}],"word":"to damage"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c44c47b7-8218-5cc2-ba1d-c5e385f2d4bb', 'ecb960a5-5b55-58cd-bfc6-fa1cc46aa63a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you overload the printer, it will not work.","explanation":"The missing word is “overload”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"overload","id":"LW_A","is_correct":true},{"audio_text":"will overload","id":"LW_B","is_correct":false},{"audio_text":"overloaded","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ the printer, it will not work."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('177abfc9-1ae4-5669-9d9a-20c226bff18d', 'ecb960a5-5b55-58cd-bfc6-fa1cc46aa63a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"off","explanation":"The complete sentence is “You must turn off the machine before leaving.”.","hint_prefix":"of","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You must turn ___ the machine before leaving."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a6a2fb0c-0448-5bbf-8ae8-f5699130e510', 'ecb960a5-5b55-58cd-bfc6-fa1cc46aa63a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to unplug","id":"V1","text":"to unplug"},{"audio_text":"cable","id":"V2","text":"cable"},{"audio_text":"dangerous","id":"V3","text":"dangerous"},{"audio_text":"to follow the rules","id":"V4","text":"to follow the rules"},{"audio_text":"instruction","id":"V5","text":"instruction"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a5c13ded-54b7-521b-84f7-850a11ad1181', 'ecb960a5-5b55-58cd-bfc6-fa1cc46aa63a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Can I keep my heater under the desk?"}],"explanation":"“No, you mustn''t — if it overheats, it can start a fire.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"No, you mustn''t — if it overheats, it can start a fire."},{"id":"C_B","is_correct":false,"text":"Yes, heaters are working yesterday."},{"id":"C_C","is_correct":false,"text":"The heater must to sleep under the desk."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3da5ef8a-49ed-594e-b5bd-efd65106c31d', 'ecb960a5-5b55-58cd-bfc6-fa1cc46aa63a', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0453d6d1-3f2f-571f-9cbe-3edc6a906936', 'en', 'to break down', 'сломаться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5080c35a-750b-5643-8e4f-7587c7d44a00', 'en', 'printer', 'принтер', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('657c3c78-8509-5f96-8fb6-cd51a6efe99b', 'en', 'to report', 'сообщить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a98aafdf-cd03-58a9-88e8-3189a45f9bad', 'en', 'to replace', 'заменить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d759422e-b3c3-5be1-9e7f-ce8d09777ff3', 'en', 'supply', 'канцтовары / расходники', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('14d904c6-b321-5be8-bd49-f652e01921dd', 'en', 'to order', 'заказать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('30505187-90b2-5e0c-9902-d4e8a29be08a', 'en', 'out of order', 'не работает', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('78da3fe7-3d59-578d-b0b1-d93d182f0655', 'en', 'cheaper', 'дешевле', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f5db0213-6000-5cd9-9ba5-4fd2e275d3c9', 'en', 'more reliable', 'надёжнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5e91574f-f870-58c1-916d-e20495c197ea', 'en', 'supplier', 'поставщик', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('360ac7ac-f69f-5dae-ac28-95040affe2f6', 'en', 'to order in advance', 'заказывать заранее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('873995c0-95eb-58db-b994-d7ce7100c306', 'en', 'delivery', 'доставка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('87ec6bbe-ce2e-5dc2-a95e-a18830af09ab', 'en', 'budget', 'бюджет', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9903f316-020f-53a0-af21-e314d836fcfb', 'en', 'laptop', 'ноутбук', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('498497b0-d714-5137-aba6-9c41f1ea6dae', 'en', 'to unplug', 'отключить от сети', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8cfd9c5c-d25c-59c3-88be-28498266ef6f', 'en', 'cable', 'кабель', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1d0b9e83-8d39-5c5d-b8bc-ec28bfd63740', 'en', 'dangerous', 'опасный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9a8c9324-1b66-58a7-8544-1cae0eb298b7', 'en', 'to follow the rules', 'соблюдать правила', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7544a7a7-69dc-54ce-a704-895a0829c6a7', 'en', 'instruction', 'инструкция', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('70a0220a-3c22-53fd-bb38-bdae1b3b2db0', 'en', 'to damage', 'повредить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('99f682c0-9bab-5599-a9d4-04f2062d533c', 'en', 'carefully', 'осторожно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3da5ef8a-49ed-594e-b5bd-efd65106c31d', id, '07c63671-5ee1-5645-827f-514adfc6f943', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'to break down' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3da5ef8a-49ed-594e-b5bd-efd65106c31d', id, '07c63671-5ee1-5645-827f-514adfc6f943', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'printer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3da5ef8a-49ed-594e-b5bd-efd65106c31d', id, '07c63671-5ee1-5645-827f-514adfc6f943', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to report' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3da5ef8a-49ed-594e-b5bd-efd65106c31d', id, '07c63671-5ee1-5645-827f-514adfc6f943', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'to replace' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3da5ef8a-49ed-594e-b5bd-efd65106c31d', id, '07c63671-5ee1-5645-827f-514adfc6f943', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'supply' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3da5ef8a-49ed-594e-b5bd-efd65106c31d', id, '07c63671-5ee1-5645-827f-514adfc6f943', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'to order' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3da5ef8a-49ed-594e-b5bd-efd65106c31d', id, '07c63671-5ee1-5645-827f-514adfc6f943', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'out of order' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3da5ef8a-49ed-594e-b5bd-efd65106c31d', id, '7b61d17b-f89d-5340-b916-130856363282', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'cheaper' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3da5ef8a-49ed-594e-b5bd-efd65106c31d', id, '7b61d17b-f89d-5340-b916-130856363282', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'more reliable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3da5ef8a-49ed-594e-b5bd-efd65106c31d', id, '7b61d17b-f89d-5340-b916-130856363282', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'supplier' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3da5ef8a-49ed-594e-b5bd-efd65106c31d', id, '7b61d17b-f89d-5340-b916-130856363282', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to order in advance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3da5ef8a-49ed-594e-b5bd-efd65106c31d', id, '7b61d17b-f89d-5340-b916-130856363282', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'delivery' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3da5ef8a-49ed-594e-b5bd-efd65106c31d', id, '7b61d17b-f89d-5340-b916-130856363282', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'budget' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3da5ef8a-49ed-594e-b5bd-efd65106c31d', id, '7b61d17b-f89d-5340-b916-130856363282', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'laptop' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3da5ef8a-49ed-594e-b5bd-efd65106c31d', id, 'ecb960a5-5b55-58cd-bfc6-fa1cc46aa63a', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to unplug' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3da5ef8a-49ed-594e-b5bd-efd65106c31d', id, 'ecb960a5-5b55-58cd-bfc6-fa1cc46aa63a', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'cable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3da5ef8a-49ed-594e-b5bd-efd65106c31d', id, 'ecb960a5-5b55-58cd-bfc6-fa1cc46aa63a', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'dangerous' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3da5ef8a-49ed-594e-b5bd-efd65106c31d', id, 'ecb960a5-5b55-58cd-bfc6-fa1cc46aa63a', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to follow the rules' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3da5ef8a-49ed-594e-b5bd-efd65106c31d', id, 'ecb960a5-5b55-58cd-bfc6-fa1cc46aa63a', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'instruction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3da5ef8a-49ed-594e-b5bd-efd65106c31d', id, 'ecb960a5-5b55-58cd-bfc6-fa1cc46aa63a', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to damage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3da5ef8a-49ed-594e-b5bd-efd65106c31d', id, 'ecb960a5-5b55-58cd-bfc6-fa1cc46aa63a', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'carefully' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
