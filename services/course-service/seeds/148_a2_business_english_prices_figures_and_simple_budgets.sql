-- Track: A2_BUSINESS_ENGLISH_PRICES_FIGURES_AND_SIMPLE_BUDGETS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('3d544a1b-40e2-58ca-9284-3f897c66ae4f', 'A2_BUSINESS_ENGLISH_PRICES_FIGURES_AND_SIMPLE_BUDGETS', 'Цены, показатели и простые бюджеты', 'Развивайте деловой английский уровня A2 по теме «Цены, показатели и простые бюджеты».', '{"en":"Prices, Figures and Simple Budgets","ru":"Цены, показатели и простые бюджеты"}'::jsonb, '{"en":"Develop A2 business English for prices, figures and simple budgets.","ru":"Развивайте деловой английский уровня A2 по теме «Цены, показатели и простые бюджеты»."}'::jsonb, 'en', 'A2', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('4378e693-5eee-52d4-94d7-3b25c2dcd2a9', NULL, 'Цифры за квартал', 'Сообщить финансовые результаты, используя past simple и present perfect.', '{"en":"The Quarterly Figures","ru":"Цифры за квартал"}'::jsonb, '{"en":"Report financial results using past simple and present perfect.","ru":"Сообщить финансовые результаты, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fe4efdf7-f936-5e72-b528-3f2450277cdd', '4378e693-5eee-52d4-94d7-3b25c2dcd2a9', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"revenue","right":"выручка"},{"id":"P2","left":"costs","right":"расходы"},{"id":"P3","left":"to increase by","right":"вырасти на"},{"id":"P4","left":"to decrease","right":"снизиться"},{"id":"P5","left":"profit","right":"прибыль"},{"id":"P6","left":"per cent","right":"процент"},{"id":"P7","left":"compared to","right":"по сравнению с"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f8577611-c91a-5b74-a4f6-8a1af0e38dbe', '4378e693-5eee-52d4-94d7-3b25c2dcd2a9', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Revenue has increased by eight per cent this year.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Revenue has increased by eight per cent this year."},{"id":"Q_B","is_correct":false,"text":"Revenue has increased by eight per cent last year."},{"id":"Q_C","is_correct":false,"text":"Revenue increase eight per cent already."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2577f2af-bbb4-5be7-9928-9d6d46e08e24', '4378e693-5eee-52d4-94d7-3b25c2dcd2a9', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Costs have increased by five per cent compared to the last quarter.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Расходы выросли на пять процентов по сравнению с прошлым кварталом.","target_language":"en","word_bank":["yesterday","quarter.","increased","increase","per","by","cent","Costs","the","last","five","compared","to","have","did"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('06390a13-911d-5389-a8ab-7a4d2ea69021', '4378e693-5eee-52d4-94d7-3b25c2dcd2a9', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"fell","instruction":"Выберите подходящее слово.","options":["fell","has fall","falling"],"sentence_template":"Profit ___ by two thousand euros last month.","translation_hint":"Прибыль упала на две тысячи евро в прошлом месяце."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('26ceba7d-1f69-5fff-83f9-140c6fd8e71b', '4378e693-5eee-52d4-94d7-3b25c2dcd2a9', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","finance","team","has","just","published","the","annual","report."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["report.","team","annual","has","the","was","finance","just","published","did","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('af471eb1-86f7-5b9b-a556-3b6c08662ddf', '4378e693-5eee-52d4-94d7-3b25c2dcd2a9', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Costs have decreased slightly, but revenue has grown faster, so the profit is higher than last year.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('769df4ec-6c31-5966-8fdc-5e4a854edb3d', '4378e693-5eee-52d4-94d7-3b25c2dcd2a9', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Costs have decreased slightly, but revenue has grown faster, so the profit is higher than last year.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Расходы немного снизились, но выручка выросла быстрее, поэтому прибыль выше, чем в прошлом году."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a71a000-df4d-5a44-a3d4-93edd5613859', '4378e693-5eee-52d4-94d7-3b25c2dcd2a9', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Director","text":"How are the numbers compared to last year?","translation":"Каковы цифры по сравнению с прошлым годом?","type":"dialogue"},{"character":"Anna","text":"Revenue has grown by twelve per cent, and costs have fallen by three.","translation":"Выручка выросла на двенадцать процентов, а расходы упали на три.","type":"dialogue"},{"options":[{"is_correct":true,"text":"And what has happened to the marketing budget?"},{"is_correct":false,"text":"And what did happened to it tomorrow?"},{"is_correct":false,"text":"Is the budget growing the numbers itself?"}],"text":"What does the director ask?","type":"choice"}],"title":"The Budget Review"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e5a22801-5159-54b6-a846-84094de3319a', '4378e693-5eee-52d4-94d7-3b25c2dcd2a9', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“revenue” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"The money a company receives from its business"},{"id":"D_B","is_correct":false,"text":"The money a company pays to employees"},{"id":"D_C","is_correct":false,"text":"The number of clients per year"}],"word":"revenue"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7497098-af99-5344-80e8-61ce191f9d5a', '4378e693-5eee-52d4-94d7-3b25c2dcd2a9', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Costs have decreased by three per cent.","explanation":"The missing word is “decreased”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"decreased","id":"LW_A","is_correct":true},{"audio_text":"decrease","id":"LW_B","is_correct":false},{"audio_text":"decreasing","id":"LW_C","is_correct":false}],"sentence_template":"Costs have ___ by three per cent."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('507d82c5-fb39-5493-8173-ef0d1b4e31cb', '4378e693-5eee-52d4-94d7-3b25c2dcd2a9', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"by","explanation":"The complete sentence is “Revenue has grown by ten per cent.”.","hint_prefix":"by","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Revenue has grown ___ ten per cent."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('80d5bea4-4673-535c-a9f2-6a786b56d017', '4378e693-5eee-52d4-94d7-3b25c2dcd2a9', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"revenue","id":"V1","text":"revenue"},{"audio_text":"costs","id":"V2","text":"costs"},{"audio_text":"to increase by","id":"V3","text":"to increase by"},{"audio_text":"to decrease","id":"V4","text":"to decrease"},{"audio_text":"profit","id":"V5","text":"profit"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('649eb3d5-d1e3-503a-ba86-3cfc12ffd1f7', '4378e693-5eee-52d4-94d7-3b25c2dcd2a9', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Did you see the half-year figures?"}],"explanation":"“Yes — profit has increased, and the team has already updated the forecast.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes — profit has increased, and the team has already updated the forecast."},{"id":"C_B","is_correct":false,"text":"Yes, I see them tomorrow."},{"id":"C_C","is_correct":false,"text":"The figures are seeing us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3d544a1b-40e2-58ca-9284-3f897c66ae4f', '4378e693-5eee-52d4-94d7-3b25c2dcd2a9', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('6c16205c-311d-53dc-aa74-500518dc3628', NULL, 'Бюджет на следующий год', 'Спланировать бюджет и сравнить статьи расходов.', '{"en":"The Budget for Next Year","ru":"Бюджет на следующий год"}'::jsonb, '{"en":"Plan a budget and compare spending items.","ru":"Спланировать бюджет и сравнить статьи расходов."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('829edad0-95a5-579e-9c23-ba3cfe0678a5', '6c16205c-311d-53dc-aa74-500518dc3628', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"budget","right":"бюджет"},{"id":"P2","left":"to allocate","right":"распределить (средства)"},{"id":"P3","left":"to save","right":"сэкономить"},{"id":"P4","left":"more important","right":"важнее"},{"id":"P5","left":"to cut","right":"сократить (расходы)"},{"id":"P6","left":"estimate","right":"оценка"},{"id":"P7","left":"to spend","right":"тратить"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('94435acb-4a31-57c6-b33d-468125faf9fd', '6c16205c-311d-53dc-aa74-500518dc3628', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Training is more important than new furniture this year.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Training is more important than new furniture this year."},{"id":"Q_B","is_correct":false,"text":"Training is importanter than furniture."},{"id":"Q_C","is_correct":false,"text":"Training is most important than furniture."}],"question":"Which sentence compares budget items correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a826703c-cb3c-52a0-baae-6d732ed6dff3', '6c16205c-311d-53dc-aa74-500518dc3628', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We are going to allocate more money to training and cut the travel budget.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мы собираемся выделить больше средств на обучение и сократить расходы на поездки.","target_language":"en","word_bank":["more","money","We","cut","and","yesterday","are","did","travel","allocate","going","to","allocated","to","the","training","budget."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('512f5acd-fd73-5632-996f-63a84c5a1b84', '6c16205c-311d-53dc-aa74-500518dc3628', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"will save","instruction":"Выберите подходящее слово.","options":["will save","saves","saving"],"sentence_template":"If we buy in bulk, we ___ up to twenty per cent.","translation_hint":"Если покупать оптом, сэкономим до двадцати процентов."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bcf5d548-be48-5d0f-b325-bf5608a2fefb', '6c16205c-311d-53dc-aa74-500518dc3628', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","marketing","budget","is","going","to","grow","next","year."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["grow","going","budget","marketing","was","is","year.","The","to","next","did"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d64c4458-882a-56e1-917d-74da9e6195cc', '6c16205c-311d-53dc-aa74-500518dc3628', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If we cut the software budget, the team will work more slowly, so we should cut travel instead.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b0fa7308-5373-5400-88c8-c274e879420b', '6c16205c-311d-53dc-aa74-500518dc3628', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If we cut the software budget, the team will work more slowly, so we should cut travel instead.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если сократить бюджет на софт, команда будет работать медленнее, поэтому лучше сократить поездки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a44cbbc-bff6-578b-b928-83ab6da77f08', '6c16205c-311d-53dc-aa74-500518dc3628', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Director","text":"We can increase only one budget line. Which one?","translation":"Мы можем увеличить только одну статью бюджета. Какую?","type":"dialogue"},{"character":"Tom","text":"Salaries are fixed, so it is between marketing and equipment.","translation":"Зарплаты фиксированы, значит выбор между маркетингом и техникой.","type":"dialogue"},{"options":[{"is_correct":true,"text":"We are going to spend more on marketing — it brings new clients."},{"is_correct":false,"text":"We spent more on it yesterday tomorrow."},{"is_correct":false,"text":"The budget is deciding between itself."}],"text":"What does the director decide?","type":"choice"}],"title":"The Budget Discussion"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2df65c14-1f7d-59b2-8551-432520a8274d', '6c16205c-311d-53dc-aa74-500518dc3628', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to allocate” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To officially give money for a particular purpose"},{"id":"D_B","is_correct":false,"text":"To borrow money from a bank"},{"id":"D_C","is_correct":false,"text":"To return unused money to the client"}],"word":"to allocate"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('28a43830-2484-5c54-b1f3-5e617ce2d25e', '6c16205c-311d-53dc-aa74-500518dc3628', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We are going to allocate more to training.","explanation":"The missing word is “allocate”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"allocate","id":"LW_A","is_correct":true},{"audio_text":"allocated","id":"LW_B","is_correct":false},{"audio_text":"allocating","id":"LW_C","is_correct":false}],"sentence_template":"We are going to ___ more to training."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('40e3a519-d16d-53b5-9db0-e7b9471ce35c', '6c16205c-311d-53dc-aa74-500518dc3628', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"less","explanation":"The complete sentence is “Travel costs are less important this year.”.","hint_prefix":"le","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Travel costs are ___ important this year."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('faac6253-1f5e-52e2-a47c-1d5b2e1ea67c', '6c16205c-311d-53dc-aa74-500518dc3628', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"budget","id":"V1","text":"budget"},{"audio_text":"to allocate","id":"V2","text":"to allocate"},{"audio_text":"to save","id":"V3","text":"to save"},{"audio_text":"more important","id":"V4","text":"more important"},{"audio_text":"to cut","id":"V5","text":"to cut"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3122fa46-52d4-59d8-a5b0-e552ccaf2751', '6c16205c-311d-53dc-aa74-500518dc3628', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How much can we spend on the event?"}],"explanation":"“About two thousand — if we spend more, the training budget will be too small.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"About two thousand — if we spend more, the training budget will be too small."},{"id":"C_B","is_correct":false,"text":"We spent it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The event is spending us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3d544a1b-40e2-58ca-9284-3f897c66ae4f', '6c16205c-311d-53dc-aa74-500518dc3628', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2a9412c1-b87a-519e-9458-e381860fceb7', NULL, 'Если превысим бюджет', 'Обсудить перерасход бюджета, используя should и первое условное.', '{"en":"If We Go Over Budget","ru":"Если превысим бюджет"}'::jsonb, '{"en":"Discuss going over budget using should and the first conditional.","ru":"Обсудить перерасход бюджета, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b0935a0b-3e13-5986-8ad0-320b959a93ce', '2a9412c1-b87a-519e-9458-e381860fceb7', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"overspend","right":"перерасход"},{"id":"P2","left":"to approve","right":"одобрить"},{"id":"P3","left":"in advance","right":"заранее"},{"id":"P4","left":"necessary","right":"необходимый"},{"id":"P5","left":"to track","right":"отслеживать"},{"id":"P6","left":"warning","right":"предупреждение"},{"id":"P7","left":"monthly","right":"ежемесячно"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc3270c1-fa94-59e2-92b6-e57382b736d9', '2a9412c1-b87a-519e-9458-e381860fceb7', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should get approval before any extra spending.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should get approval before any extra spending."},{"id":"Q_B","is_correct":false,"text":"You should to get approval yesterday."},{"id":"Q_C","is_correct":false,"text":"You must getting approval last week."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6a8b6a10-5951-5c0b-b105-df4d7948a2cb', '2a9412c1-b87a-519e-9458-e381860fceb7', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If we track the costs monthly, overspending will not be a surprise.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если мы будем отслеживать расходы ежемесячно, перерасход не станет сюрпризом.","target_language":"en","word_bank":["surprise.","not","be","a","monthly,","we","will","track","overspending","yesterday","costs","If","the","tracked","did"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6e33d6e3-575e-572d-b71e-40516bca0d34', '2a9412c1-b87a-519e-9458-e381860fceb7', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"goes","instruction":"Выберите подходящее слово.","options":["goes","will go","went"],"sentence_template":"If the project ___ over budget, the director will hear about it immediately.","translation_hint":"Если проект выйдет за бюджет, директор узнает об этом немедленно."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae076dac-a768-5bdf-905a-330efdf7ec84', '2a9412c1-b87a-519e-9458-e381860fceb7', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","warn","the","manager","about","extra","costs","in","advance."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["about","manager","costs","the","advance.","mustn''t","in","extra","should","went","warn","You"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d9f63a86-4876-5036-95a2-5b16a8821b04', '2a9412c1-b87a-519e-9458-e381860fceb7', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If we get a warning at seventy per cent of the budget, we will still have time to react.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f26e3b88-ec18-5985-9a24-7a6d54629115', '2a9412c1-b87a-519e-9458-e381860fceb7', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If we get a warning at seventy per cent of the budget, we will still have time to react.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если предупреждение срабатывает на семидесяти процентах бюджета, у нас ещё будет время отреагировать."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('276bfd00-7a3a-5ed9-b355-c76df9343daf', '2a9412c1-b87a-519e-9458-e381860fceb7', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"The event costs are already above the plan, and it is only October.","translation":"Расходы на мероприятие уже выше плана, а ведь только октябрь.","type":"dialogue"},{"character":"Tom","text":"Why did nobody warn us earlier?","translation":"Почему никто не предупредил раньше?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should track the costs monthly and give early warnings."},{"is_correct":false,"text":"We must tracking them yesterday already."},{"is_correct":false,"text":"The costs are warning the plan."}],"text":"What is the lesson?","type":"choice"}],"title":"The Surprise Overspend"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4fb670a5-01e3-54c9-a9f5-318298bae168', '2a9412c1-b87a-519e-9458-e381860fceb7', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“overspend” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To spend more money than was planned"},{"id":"D_B","is_correct":false,"text":"To save part of the budget for later"},{"id":"D_C","is_correct":false,"text":"To ask for a bigger budget politely"}],"word":"overspend"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('51905ad1-c8a7-5a95-9002-1cfd3ad972c3', '2a9412c1-b87a-519e-9458-e381860fceb7', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you report extra costs early, we can react.","explanation":"The missing word is “report”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"report","id":"LW_A","is_correct":true},{"audio_text":"will report","id":"LW_B","is_correct":false},{"audio_text":"reported","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ extra costs early, we can react."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('864a700d-a8a3-57ef-9eac-7ae1b68746de', '2a9412c1-b87a-519e-9458-e381860fceb7', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"approval","explanation":"The complete sentence is “All spending above five hundred euros needs approval.”.","hint_prefix":"ap","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"All spending above five hundred euros needs ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5b1879f9-5784-5693-8e41-ad13e9acca94', '2a9412c1-b87a-519e-9458-e381860fceb7', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"overspend","id":"V1","text":"overspend"},{"audio_text":"to approve","id":"V2","text":"to approve"},{"audio_text":"in advance","id":"V3","text":"in advance"},{"audio_text":"necessary","id":"V4","text":"necessary"},{"audio_text":"to track","id":"V5","text":"to track"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('496c214e-14ea-5b99-9466-cf345fbc6e76', '2a9412c1-b87a-519e-9458-e381860fceb7', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"The travel costs look high this month."}],"explanation":"“We should check them today — if we wait for the report, it will be too late to fix.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"We should check them today — if we wait for the report, it will be too late to fix."},{"id":"C_B","is_correct":false,"text":"We checked it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The costs are travelling to us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3d544a1b-40e2-58ca-9284-3f897c66ae4f', '2a9412c1-b87a-519e-9458-e381860fceb7', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fd321f93-1774-59a4-b875-c80199a84df7', 'en', 'revenue', 'выручка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('df86d494-9dba-57ca-a0c7-e660d0c1d6c0', 'en', 'costs', 'расходы', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ae84879c-5868-526c-81f3-c9ca9ea4cdb0', 'en', 'to increase by', 'вырасти на', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('86663b05-7856-569f-b9f1-b76ba4c853a9', 'en', 'to decrease', 'снизиться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('60539451-83b9-5107-b67f-fe5197a47bf2', 'en', 'profit', 'прибыль', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bf81456b-ab32-54fc-8727-c5c2b6fd8945', 'en', 'per cent', 'процент', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('22bdb330-298d-50b7-b6f9-203650c84c18', 'en', 'compared to', 'по сравнению с', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('87ec6bbe-ce2e-5dc2-a95e-a18830af09ab', 'en', 'budget', 'бюджет', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('721b337c-0b8f-5f11-b9ae-4978063bccb8', 'en', 'to allocate', 'распределить (средства)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3792615a-0807-549f-9930-04e67cea09c2', 'en', 'to save', 'сэкономить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('371d8c6c-7065-5167-b6c0-39ef72dd1758', 'en', 'more important', 'важнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bc8b5f2d-71a3-573a-ada1-ebc0159ebeaf', 'en', 'to cut', 'сократить (расходы)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2fec883d-5ac5-5974-8704-59db4df775d7', 'en', 'estimate', 'оценка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('945706f9-b718-560f-8909-d82b5ce398f4', 'en', 'to spend', 'тратить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d46110ac-1111-5175-9419-3161d42c6f5e', 'en', 'overspend', 'перерасход', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a2664e8c-a644-514c-a487-e2ee1de27f01', 'en', 'to approve', 'одобрить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48465a51-bb8d-5af5-beb9-23e75da4553e', 'en', 'in advance', 'заранее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c8a3bce8-d985-548d-bb5a-0ea55635f0f3', 'en', 'necessary', 'необходимый', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4f189ddd-fbed-5c73-abee-4fadc7067cc4', 'en', 'to track', 'отслеживать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ea0953ec-6d2a-5a15-abf2-571e496e6bd1', 'en', 'warning', 'предупреждение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('96f83336-8173-563e-9deb-8413b0f388cb', 'en', 'monthly', 'ежемесячно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d544a1b-40e2-58ca-9284-3f897c66ae4f', id, '4378e693-5eee-52d4-94d7-3b25c2dcd2a9', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'revenue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d544a1b-40e2-58ca-9284-3f897c66ae4f', id, '4378e693-5eee-52d4-94d7-3b25c2dcd2a9', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'costs' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d544a1b-40e2-58ca-9284-3f897c66ae4f', id, '4378e693-5eee-52d4-94d7-3b25c2dcd2a9', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to increase by' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d544a1b-40e2-58ca-9284-3f897c66ae4f', id, '4378e693-5eee-52d4-94d7-3b25c2dcd2a9', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'to decrease' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d544a1b-40e2-58ca-9284-3f897c66ae4f', id, '4378e693-5eee-52d4-94d7-3b25c2dcd2a9', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'profit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d544a1b-40e2-58ca-9284-3f897c66ae4f', id, '4378e693-5eee-52d4-94d7-3b25c2dcd2a9', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'per cent' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d544a1b-40e2-58ca-9284-3f897c66ae4f', id, '4378e693-5eee-52d4-94d7-3b25c2dcd2a9', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'compared to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d544a1b-40e2-58ca-9284-3f897c66ae4f', id, '6c16205c-311d-53dc-aa74-500518dc3628', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'budget' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d544a1b-40e2-58ca-9284-3f897c66ae4f', id, '6c16205c-311d-53dc-aa74-500518dc3628', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to allocate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d544a1b-40e2-58ca-9284-3f897c66ae4f', id, '6c16205c-311d-53dc-aa74-500518dc3628', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to save' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d544a1b-40e2-58ca-9284-3f897c66ae4f', id, '6c16205c-311d-53dc-aa74-500518dc3628', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'more important' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d544a1b-40e2-58ca-9284-3f897c66ae4f', id, '6c16205c-311d-53dc-aa74-500518dc3628', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to cut' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d544a1b-40e2-58ca-9284-3f897c66ae4f', id, '6c16205c-311d-53dc-aa74-500518dc3628', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'estimate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d544a1b-40e2-58ca-9284-3f897c66ae4f', id, '6c16205c-311d-53dc-aa74-500518dc3628', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to spend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d544a1b-40e2-58ca-9284-3f897c66ae4f', id, '2a9412c1-b87a-519e-9458-e381860fceb7', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'overspend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d544a1b-40e2-58ca-9284-3f897c66ae4f', id, '2a9412c1-b87a-519e-9458-e381860fceb7', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to approve' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d544a1b-40e2-58ca-9284-3f897c66ae4f', id, '2a9412c1-b87a-519e-9458-e381860fceb7', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'in advance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d544a1b-40e2-58ca-9284-3f897c66ae4f', id, '2a9412c1-b87a-519e-9458-e381860fceb7', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'necessary' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d544a1b-40e2-58ca-9284-3f897c66ae4f', id, '2a9412c1-b87a-519e-9458-e381860fceb7', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to track' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d544a1b-40e2-58ca-9284-3f897c66ae4f', id, '2a9412c1-b87a-519e-9458-e381860fceb7', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'warning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d544a1b-40e2-58ca-9284-3f897c66ae4f', id, '2a9412c1-b87a-519e-9458-e381860fceb7', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'monthly' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
