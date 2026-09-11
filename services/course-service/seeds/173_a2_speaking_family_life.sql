-- Track: A2_SPEAKING_FAMILY_LIFE. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('c12855d3-8b5c-58ac-966d-0c6462e6e602', 'A2_SPEAKING_FAMILY_LIFE', 'Семейная жизнь', 'Развивайте разговорные навыки уровня A2 по теме «Семейная жизнь».', '{"en":"Family Life","ru":"Семейная жизнь"}'::jsonb, '{"en":"Develop A2 speaking skills for family life.","ru":"Развивайте разговорные навыки уровня A2 по теме «Семейная жизнь»."}'::jsonb, 'en', 'A2', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e5a956c7-baff-55d0-8ce6-0fdfa719891c', NULL, 'Новости из семьи', 'Поделиться семейными новостями, используя past simple и present perfect.', '{"en":"Family News","ru":"Новости из семьи"}'::jsonb, '{"en":"Share family news using past simple and present perfect.","ru":"Поделиться семейными новостями, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('13aa3e3b-b111-5cb3-9bf2-9cf3d7c04120', 'e5a956c7-baff-55d0-8ce6-0fdfa719891c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to get married","right":"пожениться"},{"id":"P2","left":"to move out","right":"переехать (от родителей)"},{"id":"P3","left":"grandparents","right":"бабушка и дедушка"},{"id":"P4","left":"to have a baby","right":"родить ребёнка"},{"id":"P5","left":"cousin","right":"двоюродный брат/сестра"},{"id":"P6","left":"to visit","right":"навестить"},{"id":"P7","left":"family gathering","right":"семейный сбор"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6cd05844-9cf2-5457-8749-fdbd522d3367', 'e5a956c7-baff-55d0-8ce6-0fdfa719891c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “My sister has just had a baby.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"My sister has just had a baby."},{"id":"Q_B","is_correct":false,"text":"My sister has a baby last month."},{"id":"Q_C","is_correct":false,"text":"My sister just has had a baby yesterday."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eae449d5-572a-548f-9830-d9d8b9891746', 'e5a956c7-baff-55d0-8ce6-0fdfa719891c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"My brother moved to another city when he got married.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мой брат переехал в другой город, когда женился.","target_language":"en","word_bank":["did","city","he","when","tomorrow","moves","to","got","married.","brother","another","moved","My"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d06e71c3-4174-5671-8d69-d25274f99937', 'e5a956c7-baff-55d0-8ce6-0fdfa719891c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"visited","instruction":"Выберите подходящее слово.","options":["visited","has visit","visiting"],"sentence_template":"We ___ our grandparents every summer when we were children.","translation_hint":"Мы навещали бабушку с дедушкой каждое лето в детстве."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('43605b85-cda5-5893-b95c-3fe8de1d2078', 'e5a956c7-baff-55d0-8ce6-0fdfa719891c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","whole","family","has","gathered","at","our","house","today."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["The","at","gathered","today.","family","our","house","whole","did","was","has"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41fc2733-8d8c-5280-8b98-cca96e78ebe0', 'e5a956c7-baff-55d0-8ce6-0fdfa719891c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"My cousin has bought a house near the lake, and the family gathering this year has moved there.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1df13763-cad4-5214-8534-ef6ca8855112', 'e5a956c7-baff-55d0-8ce6-0fdfa719891c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"My cousin has bought a house near the lake, and the family gathering this year has moved there.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Мой двоюродный брат купил дом у озера, и семейный сбор в этом году переехал туда."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fe13c2a3-15bd-5490-8307-c38a76877a8a', 'e5a956c7-baff-55d0-8ce6-0fdfa719891c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"Any news from your family this week?","translation":"Есть новости от семьи на этой неделе?","type":"dialogue"},{"character":"Tom","text":"Yes! My cousin has got engaged, and my parents have already met the fiancée.","translation":"Да! Мой кузен сделал предложение, а родители уже познакомились с невестой.","type":"dialogue"},{"options":[{"is_correct":true,"text":"When did they meet her — at the weekend?"},{"is_correct":false,"text":"When do they met her tomorrow?"},{"is_correct":false,"text":"Is the news meeting the fiancée?"}],"text":"What does Anna ask?","type":"choice"}],"title":"Sunday Call"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('217ff8d8-fa04-56a9-9ab7-45d699ef8df3', 'e5a956c7-baff-55d0-8ce6-0fdfa719891c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to get married” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To become someone''s husband or wife"},{"id":"D_B","is_correct":false,"text":"To go on a first date with someone"},{"id":"D_C","is_correct":false,"text":"To divorce after many years"}],"word":"to get married"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('db93e2d6-c8ae-576b-93c2-87578b4edebb', 'e5a956c7-baff-55d0-8ce6-0fdfa719891c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"She has moved into a new flat.","explanation":"The missing word is “moved”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"moved","id":"LW_A","is_correct":true},{"audio_text":"move","id":"LW_B","is_correct":false},{"audio_text":"moving","id":"LW_C","is_correct":false}],"sentence_template":"She has ___ into a new flat."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('baa28548-5a85-57b8-8e27-099f2a1da862', 'e5a956c7-baff-55d0-8ce6-0fdfa719891c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"had","explanation":"The complete sentence is “They have had a baby girl.”.","hint_prefix":"ha","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"They have ___ a baby girl."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('87ecc063-1fee-5c40-b0df-0d875631058a', 'e5a956c7-baff-55d0-8ce6-0fdfa719891c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to get married","id":"V1","text":"to get married"},{"audio_text":"to move out","id":"V2","text":"to move out"},{"audio_text":"grandparents","id":"V3","text":"grandparents"},{"audio_text":"to have a baby","id":"V4","text":"to have a baby"},{"audio_text":"cousin","id":"V5","text":"cousin"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('af3283b8-2307-5463-9c70-d77f15ec30fc', 'e5a956c7-baff-55d0-8ce6-0fdfa719891c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"How is your brother doing?"}],"explanation":"“Great — he has changed jobs and has moved closer to our parents.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Great — he has changed jobs and has moved closer to our parents."},{"id":"C_B","is_correct":false,"text":"He is fine yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The brother is doing me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c12855d3-8b5c-58ac-966d-0c6462e6e602', 'e5a956c7-baff-55d0-8ce6-0fdfa719891c', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('d73fc1dc-1093-5a31-9279-29278c224641', NULL, 'Планы на семейный праздник', 'Спланировать семейное событие и сравнить варианты.', '{"en":"Planning a Family Celebration","ru":"Планы на семейный праздник"}'::jsonb, '{"en":"Plan a family event and compare options.","ru":"Спланировать семейное событие и сравнить варианты."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('037b9338-2d7c-5ce4-b184-5dcdb5399729', 'd73fc1dc-1093-5a31-9279-29278c224641', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to host","right":"принять (гостей)"},{"id":"P2","left":"potluck dinner","right":"ужин, куда каждый приносит блюдо"},{"id":"P3","left":"more fun","right":"веселее"},{"id":"P4","left":"to invite","right":"пригласить"},{"id":"P5","left":"anniversary","right":"годовщина"},{"id":"P6","left":"to cook","right":"готовить"},{"id":"P7","left":"to hire a venue","right":"арендовать зал"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('742d1545-0d92-541c-b542-0d0a33828891', 'd73fc1dc-1093-5a31-9279-29278c224641', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “A garden party is more fun than a formal restaurant dinner.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"A garden party is more fun than a formal restaurant dinner."},{"id":"Q_B","is_correct":false,"text":"A garden party is funner than a dinner."},{"id":"Q_C","is_correct":false,"text":"A garden party is most fun than dinner."}],"question":"Which sentence compares two celebration ideas correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e87e8686-ae43-5044-b38d-aec22ff194ca', 'd73fc1dc-1093-5a31-9279-29278c224641', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"This year we are going to host a potluck dinner.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"В этом году мы собираемся устроить ужин, куда каждый принесёт своё блюдо.","target_language":"en","word_bank":["hosted","potluck","we","are","This","going","a","year","did","to","yesterday","dinner.","host"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f050a253-3ccf-57e1-9fd8-6b81cdca904c', 'd73fc1dc-1093-5a31-9279-29278c224641', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"more","instruction":"Выберите подходящее слово.","options":["more","most","much"],"sentence_template":"A homemade cake is ___ personal than a shop one.","translation_hint":"Домашний торт более личный, чем покупной."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5d9011d3-0072-5ceb-88e6-5b6159c1b04d', 'd73fc1dc-1093-5a31-9279-29278c224641', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","going","to","invite","all","the","cousins."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["all","did","to","We","cousins.","invite","was","going","the","are"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b8f75475-26d5-5cd1-8082-a342fbd3939d', 'd73fc1dc-1093-5a31-9279-29278c224641', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If we celebrate in the garden, the children will have more space to play.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('46458db5-45a4-5a7f-adc7-e8a167c4d2d8', 'd73fc1dc-1093-5a31-9279-29278c224641', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If we celebrate in the garden, the children will have more space to play.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если отметить в саду, у детей будет больше места для игр."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('707c1337-2683-5085-a767-398c34329011', 'd73fc1dc-1093-5a31-9279-29278c224641', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"It is our grandparents'' fiftieth anniversary in May.","translation":"В мае пятидесятилетие наших бабушки и дедушки.","type":"dialogue"},{"character":"Tom","text":"Should we book a restaurant or host it at home?","translation":"Забронировать ресторан или устроить дома?","type":"dialogue"},{"options":[{"is_correct":true,"text":"At home — it is more work, but it feels more personal."},{"is_correct":false,"text":"A restaurant was more personal yesterday tomorrow."},{"is_correct":false,"text":"The anniversary is hosting a restaurant."}],"text":"What does Anna prefer?","type":"choice"}],"title":"The Anniversary"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1f5666a6-5d53-5884-841d-dfaac40a2158', 'd73fc1dc-1093-5a31-9279-29278c224641', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“potluck dinner” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A meal where every guest brings one dish"},{"id":"D_B","is_correct":false,"text":"A dinner cooked only by the hosts"},{"id":"D_C","is_correct":false,"text":"A dinner ordered from a restaurant"}],"word":"potluck dinner"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('609e5f04-fd83-5563-abb4-08cf25bf9dc5', 'd73fc1dc-1093-5a31-9279-29278c224641', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We are going to invite twenty guests.","explanation":"The missing word is “invite”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"invite","id":"LW_A","is_correct":true},{"audio_text":"invited","id":"LW_B","is_correct":false},{"audio_text":"inviting","id":"LW_C","is_correct":false}],"sentence_template":"We are going to ___ twenty guests."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd00b9ec-bec9-51c2-b953-ce81dd4fc7ba', 'd73fc1dc-1093-5a31-9279-29278c224641', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"better","explanation":"The complete sentence is “Grandma''s cake is better than the bakery''s.”.","hint_prefix":"be","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Grandma''s cake is ___ than the bakery''s."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b234bf65-cb9a-5927-9711-be27e22ac86d', 'd73fc1dc-1093-5a31-9279-29278c224641', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to host","id":"V1","text":"to host"},{"audio_text":"potluck dinner","id":"V2","text":"potluck dinner"},{"audio_text":"more fun","id":"V3","text":"more fun"},{"audio_text":"to invite","id":"V4","text":"to invite"},{"audio_text":"anniversary","id":"V5","text":"anniversary"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('99af7321-7f34-5f82-aa51-cb6432c2bcf6', 'd73fc1dc-1093-5a31-9279-29278c224641', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Are you hosting New Year this year?"}],"explanation":"“Yes — if everyone brings one dish, the cooking will be much easier.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes — if everyone brings one dish, the cooking will be much easier."},{"id":"C_B","is_correct":false,"text":"I hosted it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"New Year is hosting us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c12855d3-8b5c-58ac-966d-0c6462e6e602', 'd73fc1dc-1093-5a31-9279-29278c224641', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('82714a0a-11f3-5d65-a71d-d354ca222a7a', NULL, 'Семейные правила', 'Обсудить правила в семье, используя should и первое условное.', '{"en":"Family Rules","ru":"Семейные правила"}'::jsonb, '{"en":"Discuss family rules using should and the first conditional.","ru":"Обсудить правила в семье, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2f48fc68-ce57-598b-9f65-4a3bf9a3a5d7', '82714a0a-11f3-5d65-a71d-d354ca222a7a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to share chores","right":"делить домашние дела"},{"id":"P2","left":"screen time","right":"время у экрана"},{"id":"P3","left":"fair","right":"справедливый"},{"id":"P4","left":"to negotiate","right":"договориться"},{"id":"P5","left":"bedtime","right":"время отхода ко сну"},{"id":"P6","left":"pocket money","right":"карманные деньги"},{"id":"P7","left":"to respect","right":"уважать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a58985c0-a27d-57a6-a284-d6a4b6bd6115', '82714a0a-11f3-5d65-a71d-d354ca222a7a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Children should help with the chores at the weekend.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Children should help with the chores at the weekend."},{"id":"Q_B","is_correct":false,"text":"Children should to help yesterday."},{"id":"Q_C","is_correct":false,"text":"Children must helping last weekend."}],"question":"Which sentence expresses a family rule?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('358e0f0b-eb82-5ec1-80bf-36c0eb1af542', '82714a0a-11f3-5d65-a71d-d354ca222a7a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If the children help with the housework, the parents will have more time for the family.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"если дети будут помогать по дому, у родителей будет больше времени на семью.","target_language":"en","word_bank":["the","parents","help","housework,","family.","yesterday","for","with","will","more","time","the","have","If","helped","the","the","did","children"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('13ef5234-a111-5370-ade5-9be957a30d2e', '82714a0a-11f3-5d65-a71d-d354ca222a7a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"shares","instruction":"Выберите подходящее слово.","options":["shares","will share","shared"],"sentence_template":"If everyone ___ the chores, the flat will be clean by evening.","translation_hint":"Если все поделят домашние дела, квартира будет чистой к вечеру."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ddf1f81-16df-5701-a7cc-66142dbf9a09', '82714a0a-11f3-5d65-a71d-d354ca222a7a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","respect","each","other''s","free","time."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["should","went","each","respect","mustn''t","free","time.","You","other''s"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('29c93fd9-d05c-5cab-b312-f0ab6b95d99e', '82714a0a-11f3-5d65-a71d-d354ca222a7a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If we agree on the screen-time rules together, the children will follow them more easily.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('569232d4-a940-5640-bd3f-f424d24404fa', '82714a0a-11f3-5d65-a71d-d354ca222a7a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If we agree on the screen-time rules together, the children will follow them more easily.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если договориться о правилах экранного времени вместе, детям будет проще их соблюдать."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa2e2801-5baa-5917-bcb8-b03a64988798', '82714a0a-11f3-5d65-a71d-d354ca222a7a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"I do all the cleaning alone, and it is not fair.","translation":"Я делаю всю уборку одна, и это несправедливо.","type":"dialogue"},{"character":"Tom","text":"What should we change?","translation":"Что нам изменить?","type":"dialogue"},{"options":[{"is_correct":true,"text":"If we make a chore chart, everyone will have one task."},{"is_correct":false,"text":"If we will make a chart, everyone had a task yesterday."},{"is_correct":false,"text":"The cleaning is charting us weekly."}],"text":"What does Anna propose?","type":"choice"}],"title":"The Chore Chart"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3026b9fd-74f0-5f78-aa80-df4e07f6fa5f', '82714a0a-11f3-5d65-a71d-d354ca222a7a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“pocket money” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Small regular money that parents give children"},{"id":"D_B","is_correct":false,"text":"The money a family spends on food"},{"id":"D_C","is_correct":false,"text":"A bank loan for a new flat"}],"word":"pocket money"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ad8d05b9-3200-5ef6-9c3d-f377ce44548e', '82714a0a-11f3-5d65-a71d-d354ca222a7a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you keep your bedtime, you will feel better.","explanation":"The missing word is “keep”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"keep","id":"LW_A","is_correct":true},{"audio_text":"will keep","id":"LW_B","is_correct":false},{"audio_text":"kept","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ your bedtime, you will feel better."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b561ef3-e3cf-59e9-a91b-8d9533d1c11d', '82714a0a-11f3-5d65-a71d-d354ca222a7a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"chores","explanation":"The complete sentence is “We should share the chores fairly.”.","hint_prefix":"ch","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We should share the ___ fairly."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('88fde03b-2d3a-5968-b11a-ed9c5d13e494', '82714a0a-11f3-5d65-a71d-d354ca222a7a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to share chores","id":"V1","text":"to share chores"},{"audio_text":"screen time","id":"V2","text":"screen time"},{"audio_text":"fair","id":"V3","text":"fair"},{"audio_text":"to negotiate","id":"V4","text":"to negotiate"},{"audio_text":"bedtime","id":"V5","text":"bedtime"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('80b53ef7-bc48-524b-85c3-1d593c4635af', '82714a0a-11f3-5d65-a71d-d354ca222a7a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"My kids watch cartoons all evening."}],"explanation":"“Set a simple rule — if they finish homework first, they will get their screen time without arguments.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Set a simple rule — if they finish homework first, they will get their screen time without arguments."},{"id":"C_B","is_correct":false,"text":"They watched them yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The cartoons are ruling the kids."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c12855d3-8b5c-58ac-966d-0c6462e6e602', '82714a0a-11f3-5d65-a71d-d354ca222a7a', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4e57fecc-aa46-598c-83a5-bd38abc14ba4', 'en', 'to get married', 'пожениться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cbfa10c6-b3a7-5521-99db-9b3a40b2bec8', 'en', 'to move out', 'переехать (от родителей)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6b38b854-4958-575d-b6d6-7bd48f474162', 'en', 'grandparents', 'бабушка и дедушка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9fccac48-6522-50f2-9da0-a71e52b28d6b', 'en', 'to have a baby', 'родить ребёнка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4940cfe9-1301-5eae-9208-177df84d723b', 'en', 'cousin', 'двоюродный брат/сестра', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('11b5751f-9b66-5191-9b41-66e563a03cdd', 'en', 'to visit', 'навестить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('576c94ed-af21-5ee9-a049-ee030df4e72b', 'en', 'family gathering', 'семейный сбор', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6481f854-51da-5c3f-8174-8b7abd4c721d', 'en', 'to host', 'принять (гостей)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f0b4a181-d317-5d9f-a2e1-5e8fc854e6bb', 'en', 'potluck dinner', 'ужин, куда каждый приносит блюдо', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b1e29936-bcb6-5b52-ab3f-3f2b8104e562', 'en', 'more fun', 'веселее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7c61c0ee-1818-52f7-8359-e9ca2e68044d', 'en', 'to invite', 'пригласить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('de92ea54-50cd-51ce-9bf5-c62dbecf69df', 'en', 'anniversary', 'годовщина', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4a8bd15f-ee70-5bb9-ae09-8f64b81ba5d4', 'en', 'to cook', 'готовить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f32c5d4c-c6b7-57b3-be70-0e9d9afd4845', 'en', 'to hire a venue', 'арендовать зал', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('150e2466-d5be-5464-ab68-49e81ee93609', 'en', 'to share chores', 'делить домашние дела', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cb288911-0a14-5f74-af0c-221fafcb027e', 'en', 'screen time', 'время у экрана', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a1986fff-2948-55bf-83c4-4bc716af1669', 'en', 'fair', 'справедливый', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f33af449-777f-5c88-bed0-117a0223d410', 'en', 'to negotiate', 'договориться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('af488b3b-b377-58c8-9a3b-d4cb33775efc', 'en', 'bedtime', 'время отхода ко сну', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('342c8dbc-0a55-54bd-98eb-9c85508553e4', 'en', 'pocket money', 'карманные деньги', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('252f0240-d12e-55a0-906b-90a1ac52041f', 'en', 'to respect', 'уважать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c12855d3-8b5c-58ac-966d-0c6462e6e602', id, 'e5a956c7-baff-55d0-8ce6-0fdfa719891c', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'to get married' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c12855d3-8b5c-58ac-966d-0c6462e6e602', id, 'e5a956c7-baff-55d0-8ce6-0fdfa719891c', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to move out' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c12855d3-8b5c-58ac-966d-0c6462e6e602', id, 'e5a956c7-baff-55d0-8ce6-0fdfa719891c', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'grandparents' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c12855d3-8b5c-58ac-966d-0c6462e6e602', id, 'e5a956c7-baff-55d0-8ce6-0fdfa719891c', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'to have a baby' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c12855d3-8b5c-58ac-966d-0c6462e6e602', id, 'e5a956c7-baff-55d0-8ce6-0fdfa719891c', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'cousin' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c12855d3-8b5c-58ac-966d-0c6462e6e602', id, 'e5a956c7-baff-55d0-8ce6-0fdfa719891c', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'to visit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c12855d3-8b5c-58ac-966d-0c6462e6e602', id, 'e5a956c7-baff-55d0-8ce6-0fdfa719891c', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'family gathering' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c12855d3-8b5c-58ac-966d-0c6462e6e602', id, 'd73fc1dc-1093-5a31-9279-29278c224641', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to host' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c12855d3-8b5c-58ac-966d-0c6462e6e602', id, 'd73fc1dc-1093-5a31-9279-29278c224641', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'potluck dinner' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c12855d3-8b5c-58ac-966d-0c6462e6e602', id, 'd73fc1dc-1093-5a31-9279-29278c224641', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'more fun' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c12855d3-8b5c-58ac-966d-0c6462e6e602', id, 'd73fc1dc-1093-5a31-9279-29278c224641', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to invite' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c12855d3-8b5c-58ac-966d-0c6462e6e602', id, 'd73fc1dc-1093-5a31-9279-29278c224641', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'anniversary' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c12855d3-8b5c-58ac-966d-0c6462e6e602', id, 'd73fc1dc-1093-5a31-9279-29278c224641', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to cook' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c12855d3-8b5c-58ac-966d-0c6462e6e602', id, 'd73fc1dc-1093-5a31-9279-29278c224641', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to hire a venue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c12855d3-8b5c-58ac-966d-0c6462e6e602', id, '82714a0a-11f3-5d65-a71d-d354ca222a7a', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to share chores' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c12855d3-8b5c-58ac-966d-0c6462e6e602', id, '82714a0a-11f3-5d65-a71d-d354ca222a7a', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'screen time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c12855d3-8b5c-58ac-966d-0c6462e6e602', id, '82714a0a-11f3-5d65-a71d-d354ca222a7a', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'fair' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c12855d3-8b5c-58ac-966d-0c6462e6e602', id, '82714a0a-11f3-5d65-a71d-d354ca222a7a', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to negotiate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c12855d3-8b5c-58ac-966d-0c6462e6e602', id, '82714a0a-11f3-5d65-a71d-d354ca222a7a', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'bedtime' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c12855d3-8b5c-58ac-966d-0c6462e6e602', id, '82714a0a-11f3-5d65-a71d-d354ca222a7a', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'pocket money' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c12855d3-8b5c-58ac-966d-0c6462e6e602', id, '82714a0a-11f3-5d65-a71d-d354ca222a7a', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to respect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
