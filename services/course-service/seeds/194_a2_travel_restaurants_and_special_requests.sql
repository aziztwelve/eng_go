-- Track: A2_TRAVEL_RESTAURANTS_AND_SPECIAL_REQUESTS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('4b232d53-f0f1-556c-b84e-2c57db59f6ec', 'A2_TRAVEL_RESTAURANTS_AND_SPECIAL_REQUESTS', 'Рестораны и особые просьбы', 'Развивайте английский для путешествий уровня A2 по теме «Рестораны и особые просьбы».', '{"en":"Restaurants and Special Requests","ru":"Рестораны и особые просьбы"}'::jsonb, '{"en":"Develop A2 travel English for restaurants and special requests.","ru":"Развивайте английский для путешествий уровня A2 по теме «Рестораны и особые просьбы»."}'::jsonb, 'en', 'A2', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a862ce2c-99a8-53af-9986-812101cb8599', NULL, 'Ужин, который запомнился', 'Рассказать о посещении ресторана, используя past simple и present perfect.', '{"en":"A Dinner to Remember","ru":"Ужин, который запомнился"}'::jsonb, '{"en":"Talk about a restaurant visit using past simple and present perfect.","ru":"Рассказать о посещении ресторана, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e498105-c829-5782-b450-45cca687db09', 'a862ce2c-99a8-53af-9986-812101cb8599', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"starter","right":"закуска"},{"id":"P2","left":"main course","right":"основное блюдо"},{"id":"P3","left":"bill","right":"счёт"},{"id":"P4","left":"to tip","right":"оставить чаевые"},{"id":"P5","left":"vegetarian","right":"вегетарианский"},{"id":"P6","left":"dessert","right":"десерт"},{"id":"P7","left":"reservation","right":"бронь"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b8b888d-3d24-54e0-89f2-c968de4da12a', 'a862ce2c-99a8-53af-9986-812101cb8599', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “We have already ordered the starters.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"We have already ordered the starters."},{"id":"Q_B","is_correct":false,"text":"We have ordered them yesterday."},{"id":"Q_C","is_correct":false,"text":"We order the starters already now."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('03a8e405-72d5-5e81-ae11-8e21a274b6a4', 'a862ce2c-99a8-53af-9986-812101cb8599', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We ordered the starters and the main courses, but we have left the dessert for later.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мы заказали закуски и основные блюда, но десерт оставили на потом.","target_language":"en","word_bank":["left","later.","tomorrow","and","for","dessert","we","the","courses,","the","order","main","but","ordered","have","the","did","starters","We"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d523bd5-b973-5fe7-b996-241a37408897', 'a862ce2c-99a8-53af-9986-812101cb8599', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"lost","instruction":"Выберите подходящее слово.","options":["lost","has lose","losing"],"sentence_template":"Last night the restaurant ___ our reservation by mistake.","translation_hint":"Вчера вечером ресторан по ошибке потерял нашу бронь."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9db639c5-fb62-53be-b782-17374f5ddd24', 'a862ce2c-99a8-53af-9986-812101cb8599', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["She","has","just","asked","for","the","bill."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["did","just","for","has","asked","was","bill.","the","She"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb6bb830-703f-562e-aba1-fd0f4c99d791', 'a862ce2c-99a8-53af-9986-812101cb8599', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We asked for a table by the window, and the waiter has brought the menu with vegetarian dishes already marked.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('68380afa-c467-559c-b3aa-fa3e0d08b1fd', 'a862ce2c-99a8-53af-9986-812101cb8599', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We asked for a table by the window, and the waiter has brought the menu with vegetarian dishes already marked.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Мы попросили столик у окна, и официант принёс меню, где вегетарианские блюда уже отмечены."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b07e462d-5744-588c-b2b1-17dae036f20d', 'a862ce2c-99a8-53af-9986-812101cb8599', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Waiter","text":"Good evening. Do you have a reservation?","translation":"Добрый вечер. У вас есть бронь?","type":"dialogue"},{"character":"Guest","text":"Yes, under the name Petrov for eight o''clock.","translation":"Да, на фамилию Петров, на восемь.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Ah yes, a table for two by the window. Has anyone taken your coat?"},{"is_correct":false,"text":"Yes, your table has arrived yesterday."},{"is_correct":false,"text":"The reservation is eating the dinner."}],"text":"What does the waiter say?","type":"choice"}],"title":"The Busy Friday"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2f6afffd-2dae-55d7-82bf-3ce6d54a4279', 'a862ce2c-99a8-53af-9986-812101cb8599', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“starter” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"The first small dish of a meal"},{"id":"D_B","is_correct":false,"text":"The biggest dish of the evening"},{"id":"D_C","is_correct":false,"text":"The drink you order at the bar"}],"word":"starter"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('93aedec0-a0ae-525e-b22b-e1f829f5bc36', 'a862ce2c-99a8-53af-9986-812101cb8599', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We have booked a table for tonight.","explanation":"The missing word is “booked”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"booked","id":"LW_A","is_correct":true},{"audio_text":"book","id":"LW_B","is_correct":false},{"audio_text":"booking","id":"LW_C","is_correct":false}],"sentence_template":"We have ___ a table for tonight."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('059e5711-78be-5627-a15b-f84539aa424f', 'a862ce2c-99a8-53af-9986-812101cb8599', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"bill","explanation":"The complete sentence is “Could we have the bill , please?”.","hint_prefix":"bi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Could we have the ___ , please?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1b0f5865-9a03-5181-8311-b3290d52d2d1', 'a862ce2c-99a8-53af-9986-812101cb8599', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"starter","id":"V1","text":"starter"},{"audio_text":"main course","id":"V2","text":"main course"},{"audio_text":"bill","id":"V3","text":"bill"},{"audio_text":"to tip","id":"V4","text":"to tip"},{"audio_text":"vegetarian","id":"V5","text":"vegetarian"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c0c81be6-194a-5ea7-92c3-421b1afd8587', 'a862ce2c-99a8-53af-9986-812101cb8599', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Waiter","text":"Are you ready to order?"}],"explanation":"“Almost — could we get a few more minutes? We have not chosen the main courses yet.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Almost — could we get a few more minutes? We have not chosen the main courses yet."},{"id":"C_B","is_correct":false,"text":"Yes, we order yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The menu is ordering us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('4b232d53-f0f1-556c-b84e-2c57db59f6ec', 'a862ce2c-99a8-53af-9986-812101cb8599', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e5055c19-cba0-5393-bbe4-feecbb4c04ce', NULL, 'Выбираем ресторан', 'Сравнить рестораны и заказать еду с особыми пожеланиями.', '{"en":"Choosing a Restaurant","ru":"Выбираем ресторан"}'::jsonb, '{"en":"Compare restaurants and order food with special requests.","ru":"Сравнить рестораны и заказать еду с особыми пожеланиями."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d32c6d66-2477-5533-8694-6bd9af97c01e', 'e5055c19-cba0-5393-bbe4-feecbb4c04ce', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"special request","right":"особая просьба (к блюду)"},{"id":"P2","left":"allergy","right":"аллергия"},{"id":"P3","left":"spicy","right":"острый"},{"id":"P4","left":"more popular","right":"популярнее"},{"id":"P5","left":"to recommend","right":"порекомендовать"},{"id":"P6","left":"portion","right":"порция"},{"id":"P7","left":"to try","right":"попробовать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0d45fd32-6f71-536f-93c0-78a83163e2b7', 'e5055c19-cba0-5393-bbe4-feecbb4c04ce', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The bistro by the market is more popular than the one on the square.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The bistro by the market is more popular than the one on the square."},{"id":"Q_B","is_correct":false,"text":"The bistro is popularer than the other one."},{"id":"Q_C","is_correct":false,"text":"The bistro is most popular than the square one."}],"question":"Which sentence compares two restaurants correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8137b4e0-df73-5af9-90df-4d0753ca42de', 'e5055c19-cba0-5393-bbe4-feecbb4c04ce', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Could you prepare this without nuts? My son has an allergy.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Не могли бы вы приготовить это без орехов? У моего сына аллергия.","target_language":"en","word_bank":["has","did","can","Could","nuts?","son","an","you","yesterday","prepare","allergy.","My","this","without"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c9758ca4-530c-56e7-a4dd-49ae8cf64022', 'e5055c19-cba0-5393-bbe4-feecbb4c04ce', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"cheaper","instruction":"Выберите подходящее слово.","options":["cheaper","cheapest","more cheap"],"sentence_template":"This local dish is ___ than the tourist menu.","translation_hint":"Это местное блюдо дешевле туристического меню."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd846a8f-d46e-53ad-ab79-ffe77e6f906e', 'e5055c19-cba0-5393-bbe4-feecbb4c04ce', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","going","to","try","the","seafood","restaurant","tonight."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["try","did","seafood","going","are","tonight.","the","was","We","restaurant","to"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('42a59e32-cca0-5349-998a-9e34c86a3b32', 'e5055c19-cba0-5393-bbe4-feecbb4c04ce', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you tell the waiter about your allergy, the kitchen will adapt almost any dish.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78884016-d6e7-5743-a924-5a9858a229b2', 'e5055c19-cba0-5393-bbe4-feecbb4c04ce', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you tell the waiter about your allergy, the kitchen will adapt almost any dish.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если сказать официанту об аллергии, кухня адаптирует почти любое блюдо."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4c88beac-eae7-5cb2-832a-1c767e885399', 'e5055c19-cba0-5393-bbe4-feecbb4c04ce', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Guest","text":"I would love the grilled fish, but is it very spicy?","translation":"Я бы взял рыбу на гриле, но она очень острая?","type":"dialogue"},{"character":"Waiter","text":"The sauce is spicy, but the kitchen can serve it separately.","translation":"Соус острый, но кухня может подать его отдельно.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Perfect — I will take it with the sauce on the side."},{"is_correct":false,"text":"Perfect, I took it yesterday tomorrow."},{"is_correct":false,"text":"The fish is deciding about the sauce."}],"text":"What does the guest decide?","type":"choice"}],"title":"The Special Request"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4606e171-0807-58a6-88fa-e2ccdfbab6bb', 'e5055c19-cba0-5393-bbe4-feecbb4c04ce', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“allergy” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A condition when some food makes you ill"},{"id":"D_B","is_correct":false,"text":"A strong liking for one particular dish"},{"id":"D_C","is_correct":false,"text":"A skill of cooking without a recipe"}],"word":"allergy"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('611587b2-a61b-5174-918e-6d379914ba84', 'e5055c19-cba0-5393-bbe4-feecbb4c04ce', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We are going to try the local stew.","explanation":"The missing word is “try”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"try","id":"LW_A","is_correct":true},{"audio_text":"tried","id":"LW_B","is_correct":false},{"audio_text":"trying","id":"LW_C","is_correct":false}],"sentence_template":"We are going to ___ the local stew."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8bea263d-a5b1-5641-b5e8-ef968aaf5f42', 'e5055c19-cba0-5393-bbe4-feecbb4c04ce', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"bigger","explanation":"The complete sentence is “The portions here are bigger than at the hotel.”.","hint_prefix":"bi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The portions here are ___ than at the hotel."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a8b667eb-b29f-59a5-9fdf-c89cdc38c627', 'e5055c19-cba0-5393-bbe4-feecbb4c04ce', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"special request","id":"V1","text":"special request"},{"audio_text":"allergy","id":"V2","text":"allergy"},{"audio_text":"spicy","id":"V3","text":"spicy"},{"audio_text":"more popular","id":"V4","text":"more popular"},{"audio_text":"to recommend","id":"V5","text":"to recommend"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ee7898e6-ce18-5d9a-b27e-0b047503723a', 'e5055c19-cba0-5393-bbe4-feecbb4c04ce', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Waiter","text":"Would you like anything to drink first?"}],"explanation":"“A bottle of still water, please — if the house wine is dry, we will try that too.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"A bottle of still water, please — if the house wine is dry, we will try that too."},{"id":"C_B","is_correct":false,"text":"I drank it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The water is drinking me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('4b232d53-f0f1-556c-b84e-2c57db59f6ec', 'e5055c19-cba0-5393-bbe4-feecbb4c04ce', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f4ede36a-833c-5330-b17f-1f063dc05079', NULL, 'Если блюдо не то', 'Решить проблему с заказом, используя should и первое условное.', '{"en":"If the Dish Is Wrong","ru":"Если блюдо не то"}'::jsonb, '{"en":"Solve an order problem using should and the first conditional.","ru":"Решить проблему с заказом, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('730055b9-8873-50e7-9f6d-e2096d94ffef', 'f4ede36a-833c-5330-b17f-1f063dc05079', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to send back","right":"вернуть (блюдо)"},{"id":"P2","left":"rare","right":"недожаренный (о мясе)"},{"id":"P3","left":"to apologise","right":"извиниться"},{"id":"P4","left":"mix-up","right":"путаница"},{"id":"P5","left":"on the house","right":"за счёт заведения"},{"id":"P6","left":"patient","right":"терпеливый"},{"id":"P7","left":"instead","right":"вместо этого"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b49700de-59f6-59a0-a9c9-cc80b8d82a95', 'f4ede36a-833c-5330-b17f-1f063dc05079', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should send the dish back politely if it is not what you ordered.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should send the dish back politely if it is not what you ordered."},{"id":"Q_B","is_correct":false,"text":"You should to send it back yesterday."},{"id":"Q_C","is_correct":false,"text":"You must sending it back last week."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6053aa80-17c9-527c-8f3e-d1e4cad16307', 'f4ede36a-833c-5330-b17f-1f063dc05079', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you send the dish back politely, the chef will cook a new one without questions.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если вы вернёте блюдо вежливо, повар приготовит новое без вопросов.","target_language":"en","word_bank":["you","send","back","the","did","dish","a","without","will","politely,","one","questions.","new","chef","yesterday","sent","If","the","cook"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18d9df15-af47-529f-b459-417a2f7255cc', 'f4ede36a-833c-5330-b17f-1f063dc05079', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"mixes up","instruction":"Выберите подходящее слово.","options":["mixes up","will mix up","mixed up"],"sentence_template":"If the waiter ___ the order, they usually offer a free dessert.","translation_hint":"Если официант перепутает заказ, обычно предлагают бесплатный десерт."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a084f7c2-0bd2-56f4-a0f2-82b0c3daca52', 'f4ede36a-833c-5330-b17f-1f063dc05079', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","check","the","dish","before","you","start","eating."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["should","check","dish","went","the","you","eating.","start","mustn''t","before","You"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a396eb5e-b699-540a-af54-466a359c90d5', 'f4ede36a-833c-5330-b17f-1f063dc05079', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If the kitchen made a mistake, the dessert will probably be on the house.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e4350af-f454-5fbc-9b9d-c4deea8dcfa1', 'f4ede36a-833c-5330-b17f-1f063dc05079', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If the kitchen made a mistake, the dessert will probably be on the house.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если кухня ошиблась, десерт, скорее всего, будет за счёт заведения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9624a339-1a20-5bdd-84e7-913ceed3fdee', 'f4ede36a-833c-5330-b17f-1f063dc05079', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Guest","text":"Excuse me, I ordered the vegetarian risotto, and this has chicken in it.","translation":"Извините, я заказывал вегетарианское ризотто, а тут курица.","type":"dialogue"},{"character":"Waiter","text":"I''m so sorry — there has been a mix-up with the table numbers.","translation":"Очень извиняюсь — произошла путаница с номерами столиков.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will bring the risotto in ten minutes, and your drinks will be on the house."},{"is_correct":false,"text":"I brought it yesterday tomorrow already."},{"is_correct":false,"text":"The chicken is ordering the risotto back."}],"text":"What does the waiter offer?","type":"choice"}],"title":"The Wrong Dish"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc80444a-1577-56eb-8e05-3d30c9963f0c', 'f4ede36a-833c-5330-b17f-1f063dc05079', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“on the house” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Free, paid for by the restaurant"},{"id":"D_B","is_correct":false,"text":"Cooked at home and brought with you"},{"id":"D_C","is_correct":false,"text":"The most expensive dish on the menu"}],"word":"on the house"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e551599f-3863-5c7c-a1c3-686533caf941', 'f4ede36a-833c-5330-b17f-1f063dc05079', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If the meat is too rare, send it back.","explanation":"The missing word is “rare”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"rare","id":"LW_A","is_correct":true},{"audio_text":"rarely","id":"LW_B","is_correct":false},{"audio_text":"rarest","id":"LW_C","is_correct":false}],"sentence_template":"If the meat is too ___ , send it back."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2f6a0391-f2f7-5987-a144-b1474fa02ea4', 'f4ede36a-833c-5330-b17f-1f063dc05079', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"instead","explanation":"The complete sentence is “You should say it politely instead of angrily.”.","hint_prefix":"in","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should say it politely ___ of angrily."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('203e5f02-c1a5-5351-8f49-fc2cefd2fb24', 'f4ede36a-833c-5330-b17f-1f063dc05079', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to send back","id":"V1","text":"to send back"},{"audio_text":"rare","id":"V2","text":"rare"},{"audio_text":"to apologise","id":"V3","text":"to apologise"},{"audio_text":"mix-up","id":"V4","text":"mix-up"},{"audio_text":"on the house","id":"V5","text":"on the house"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5146911-6d8d-5254-8a5b-0509ec561eba', 'f4ede36a-833c-5330-b17f-1f063dc05079', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"They brought me the wrong soup."}],"explanation":"“Call the waiter — if you explain calmly, they will change it quickly.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Call the waiter — if you explain calmly, they will change it quickly."},{"id":"C_B","is_correct":false,"text":"He changed it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The soup is calling the waiter."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('4b232d53-f0f1-556c-b84e-2c57db59f6ec', 'f4ede36a-833c-5330-b17f-1f063dc05079', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a910a572-904a-5ca9-9264-71c2e124482f', 'en', 'starter', 'закуска', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6577734e-618f-5e6e-bed1-4eb3ea826487', 'en', 'main course', 'основное блюдо', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6fe155ac-164e-5dc9-a684-a3577f404d4b', 'en', 'bill', 'счёт', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c187785e-66ab-5f9b-bc93-04267570a803', 'en', 'to tip', 'оставить чаевые', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e667bae5-c41c-5428-b87e-5c80ae0ddcfc', 'en', 'vegetarian', 'вегетарианский', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3e8a1b3c-371d-5379-af17-7b51de123d3f', 'en', 'dessert', 'десерт', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6e5ab868-107f-5b13-921a-c0bf0cddb1c7', 'en', 'reservation', 'бронь', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('86b141dd-607a-5d30-a81a-a0c5186be24c', 'en', 'special request', 'особая просьба (к блюду)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('95f20dc4-e6a3-507a-a771-b68d08649865', 'en', 'allergy', 'аллергия', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('380823c7-e831-584e-bd40-ff57e0b6a111', 'en', 'spicy', 'острый', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8401a072-b1f3-5cc5-8212-bbd94b79ef41', 'en', 'more popular', 'популярнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6312a9c7-ccb0-5bbe-bc59-8df91202fb08', 'en', 'to recommend', 'порекомендовать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('42c4721f-4963-5856-a409-b17ca7b5fa45', 'en', 'portion', 'порция', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('46c221e4-af4e-5842-bfe7-6e176277f946', 'en', 'to try', 'попробовать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2d1ce87f-1187-5aae-9835-bd3ba686ccfc', 'en', 'to send back', 'вернуть (блюдо)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('66898453-deb5-55f1-9257-925112328bac', 'en', 'rare', 'недожаренный (о мясе)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf7f596f-bcb7-5cb6-9711-bacf705f7044', 'en', 'to apologise', 'извиниться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6786be45-42c4-5d53-a89f-c4345ece795c', 'en', 'mix-up', 'путаница', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7182c5ff-f4f2-505b-a881-836b137eb197', 'en', 'on the house', 'за счёт заведения', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5e052ce-ed23-591c-b848-192c95a6f67b', 'en', 'patient', 'терпеливый', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8cf98276-de25-579b-82cf-1940736d09a8', 'en', 'instead', 'вместо этого', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4b232d53-f0f1-556c-b84e-2c57db59f6ec', id, 'a862ce2c-99a8-53af-9986-812101cb8599', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'starter' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4b232d53-f0f1-556c-b84e-2c57db59f6ec', id, 'a862ce2c-99a8-53af-9986-812101cb8599', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'main course' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4b232d53-f0f1-556c-b84e-2c57db59f6ec', id, 'a862ce2c-99a8-53af-9986-812101cb8599', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'bill' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4b232d53-f0f1-556c-b84e-2c57db59f6ec', id, 'a862ce2c-99a8-53af-9986-812101cb8599', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'to tip' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4b232d53-f0f1-556c-b84e-2c57db59f6ec', id, 'a862ce2c-99a8-53af-9986-812101cb8599', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'vegetarian' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4b232d53-f0f1-556c-b84e-2c57db59f6ec', id, 'a862ce2c-99a8-53af-9986-812101cb8599', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'dessert' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4b232d53-f0f1-556c-b84e-2c57db59f6ec', id, 'a862ce2c-99a8-53af-9986-812101cb8599', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'reservation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4b232d53-f0f1-556c-b84e-2c57db59f6ec', id, 'e5055c19-cba0-5393-bbe4-feecbb4c04ce', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'special request' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4b232d53-f0f1-556c-b84e-2c57db59f6ec', id, 'e5055c19-cba0-5393-bbe4-feecbb4c04ce', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'allergy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4b232d53-f0f1-556c-b84e-2c57db59f6ec', id, 'e5055c19-cba0-5393-bbe4-feecbb4c04ce', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'spicy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4b232d53-f0f1-556c-b84e-2c57db59f6ec', id, 'e5055c19-cba0-5393-bbe4-feecbb4c04ce', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'more popular' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4b232d53-f0f1-556c-b84e-2c57db59f6ec', id, 'e5055c19-cba0-5393-bbe4-feecbb4c04ce', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to recommend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4b232d53-f0f1-556c-b84e-2c57db59f6ec', id, 'e5055c19-cba0-5393-bbe4-feecbb4c04ce', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'portion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4b232d53-f0f1-556c-b84e-2c57db59f6ec', id, 'e5055c19-cba0-5393-bbe4-feecbb4c04ce', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to try' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4b232d53-f0f1-556c-b84e-2c57db59f6ec', id, 'f4ede36a-833c-5330-b17f-1f063dc05079', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to send back' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4b232d53-f0f1-556c-b84e-2c57db59f6ec', id, 'f4ede36a-833c-5330-b17f-1f063dc05079', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'rare' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4b232d53-f0f1-556c-b84e-2c57db59f6ec', id, 'f4ede36a-833c-5330-b17f-1f063dc05079', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to apologise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4b232d53-f0f1-556c-b84e-2c57db59f6ec', id, 'f4ede36a-833c-5330-b17f-1f063dc05079', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'mix-up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4b232d53-f0f1-556c-b84e-2c57db59f6ec', id, 'f4ede36a-833c-5330-b17f-1f063dc05079', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'on the house' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4b232d53-f0f1-556c-b84e-2c57db59f6ec', id, 'f4ede36a-833c-5330-b17f-1f063dc05079', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'patient' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4b232d53-f0f1-556c-b84e-2c57db59f6ec', id, 'f4ede36a-833c-5330-b17f-1f063dc05079', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'instead' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
