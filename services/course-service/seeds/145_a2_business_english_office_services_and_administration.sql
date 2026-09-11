-- Track: A2_BUSINESS_ENGLISH_OFFICE_SERVICES_AND_ADMINISTRATION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('dc96fa80-73d4-5efd-ac52-499f0f0bc0ae', 'A2_BUSINESS_ENGLISH_OFFICE_SERVICES_AND_ADMINISTRATION', 'Офисные услуги и администрирование', 'Развивайте деловой английский уровня A2 по теме «Офисные услуги и администрирование».', '{"en":"Office Services and Administration","ru":"Офисные услуги и администрирование"}'::jsonb, '{"en":"Develop A2 business English for office services and administration.","ru":"Развивайте деловой английский уровня A2 по теме «Офисные услуги и администрирование»."}'::jsonb, 'en', 'A2', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('1bcdde86-6650-563d-8e0d-af83c2e0e018', NULL, 'Заявки в администрацию', 'Сообщить о заявках и услугах офиса, используя past simple и present perfect.', '{"en":"Requests to the Administration","ru":"Заявки в администрацию"}'::jsonb, '{"en":"Report office service requests using past simple and present perfect.","ru":"Сообщить о заявках и услугах офиса, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3608f224-3911-5021-bdda-062cfc145e8d', '1bcdde86-6650-563d-8e0d-af83c2e0e018', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"facilities","right":"хозяйственная служба"},{"id":"P2","left":"to submit a request","right":"подать заявку"},{"id":"P3","left":"maintenance","right":"техобслуживание"},{"id":"P4","left":"access card","right":"пропуск"},{"id":"P5","left":"to repair","right":"отремонтировать"},{"id":"P6","left":"work order","right":"наряд на работы"},{"id":"P7","left":"within a week","right":"в течение недели"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f8ba1f36-a7ed-52c4-ad30-053cea1e1ffa', '1bcdde86-6650-563d-8e0d-af83c2e0e018', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The facilities team has fixed the heating already.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The facilities team has fixed the heating already."},{"id":"Q_B","is_correct":false,"text":"The facilities team has fixed it yesterday."},{"id":"Q_C","is_correct":false,"text":"The team fix the heating already now."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9d4a9eb3-2173-5294-bdf8-83a9047d6f60', '1bcdde86-6650-563d-8e0d-af83c2e0e018', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I submitted the repair request on Monday, and they have already completed it.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я подал заявку на ремонт в понедельник, и её уже выполнили.","target_language":"en","word_bank":["the","and","it.","already","submitted","submit","did","I","yesterday","on","completed","Monday,","repair","request","have","they"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8667dd90-718b-5757-ae76-842d33d062c3', '1bcdde86-6650-563d-8e0d-af83c2e0e018', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"stopped","instruction":"Выберите подходящее слово.","options":["stopped","has stop","stopping"],"sentence_template":"My access card ___ working last Tuesday.","translation_hint":"Мой пропуск перестал работать в прошлый вторник."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('77c639e0-7fbf-5051-9227-0352b51f5910', '1bcdde86-6650-563d-8e0d-af83c2e0e018', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["They","have","replaced","all","the","lights","on","our","floor."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["replaced","did","They","on","all","our","floor.","have","lights","the","was"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('61e70df1-eb41-5529-a474-74c6afeb8a7e', '1bcdde86-6650-563d-8e0d-af83c2e0e018', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The air conditioning broke down again, so I have submitted a new work order.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f72de074-507a-5bfe-b997-541c56eb036c', '1bcdde86-6650-563d-8e0d-af83c2e0e018', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The air conditioning broke down again, so I have submitted a new work order.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Кондиционер снова сломался, поэтому я подал новый наряд на работы."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9f63ca54-d85e-5737-b33d-f210ee8f57cc', '1bcdde86-6650-563d-8e0d-af83c2e0e018', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Tom","text":"I can''t get into the meeting room — my card doesn''t work.","translation":"Не могу попасть в переговорку — мой пропуск не работает.","type":"dialogue"},{"character":"Anna","text":"When did it stop working?","translation":"Когда он перестал работать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"This morning. I have already submitted a request to facilities."},{"is_correct":false,"text":"Tomorrow morning. I submitted it yesterday already."},{"is_correct":false,"text":"The card is getting into the room itself."}],"text":"What does Tom say?","type":"choice"}],"title":"The Access Card"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a17a56de-5bc1-5317-be34-c1abf9c4dfc3', '1bcdde86-6650-563d-8e0d-af83c2e0e018', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“maintenance” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Work done to keep equipment or buildings in good condition"},{"id":"D_B","is_correct":false,"text":"A meeting about next year''s budget"},{"id":"D_C","is_correct":false,"text":"A welcome party for new employees"}],"word":"maintenance"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('620fa967-a3a7-5db4-9982-242a81947644', '1bcdde86-6650-563d-8e0d-af83c2e0e018', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have submitted a work order for the door.","explanation":"The missing word is “submitted”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"submitted","id":"LW_A","is_correct":true},{"audio_text":"submit","id":"LW_B","is_correct":false},{"audio_text":"submitting","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ a work order for the door."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6904287b-9af4-5833-8f62-0f9ea6c72166', '1bcdde86-6650-563d-8e0d-af83c2e0e018', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"broken","explanation":"The complete sentence is “The heating has been broken since October.”.","hint_prefix":"br","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The heating has been ___ since October."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('82272240-4c19-56b1-beac-ee4af2b8103d', '1bcdde86-6650-563d-8e0d-af83c2e0e018', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"facilities","id":"V1","text":"facilities"},{"audio_text":"to submit a request","id":"V2","text":"to submit a request"},{"audio_text":"maintenance","id":"V3","text":"maintenance"},{"audio_text":"access card","id":"V4","text":"access card"},{"audio_text":"to repair","id":"V5","text":"to repair"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6dc4e358-bd3e-59de-a018-6fa64706c4ee', '1bcdde86-6650-563d-8e0d-af83c2e0e018', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Did facilities reply to your ticket?"}],"explanation":"“Yes, they replied this morning and have already scheduled the repair.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes, they replied this morning and have already scheduled the repair."},{"id":"C_B","is_correct":false,"text":"Yes, they reply tomorrow."},{"id":"C_C","is_correct":false,"text":"The ticket is replying to them."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('dc96fa80-73d4-5efd-ac52-499f0f0bc0ae', '1bcdde86-6650-563d-8e0d-af83c2e0e018', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('03840bc9-1537-558a-9aa7-b973f3ae486f', NULL, 'Улучшения в офисе', 'Рассказать о будущих улучшениях и сравнить варианты.', '{"en":"Office Improvements","ru":"Улучшения в офисе"}'::jsonb, '{"en":"Talk about future improvements and compare options.","ru":"Рассказать о будущих улучшениях и сравнить варианты."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1570226d-070d-561c-aefc-1ee1e5ea6440', '03840bc9-1537-558a-9aa7-b973f3ae486f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"renovation","right":"ремонт"},{"id":"P2","left":"more comfortable","right":"комфортнее"},{"id":"P3","left":"to install","right":"установить"},{"id":"P4","left":"meeting room booking","right":"бронирование переговорок"},{"id":"P5","left":"quieter","right":"тише"},{"id":"P6","left":"to upgrade","right":"модернизировать"},{"id":"P7","left":"by the end of","right":"к концу"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1363441a-2720-5b56-a0bb-94d109409a3b', '03840bc9-1537-558a-9aa7-b973f3ae486f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “They are going to install new desks by the end of the month.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"They are going to install new desks by the end of the month."},{"id":"Q_B","is_correct":false,"text":"They installed new desks by the end of last month."},{"id":"Q_C","is_correct":false,"text":"They has installed desks tomorrow already."}],"question":"Which sentence talks about the future?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('57998946-28a1-50c1-b0d8-9c46107cdb4e', '03840bc9-1537-558a-9aa7-b973f3ae486f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The administration is going to renovate the kitchen — it will be more spacious.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Администрация собирается отремонтировать кухню — она будет просторнее.","target_language":"en","word_bank":["did","kitchen","to","—","spacious.","will","the","administration","more","it","is","renovate","going","The","renovated","be","yesterday"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89458daa-6975-591a-9040-04a82ff6efff', '03840bc9-1537-558a-9aa7-b973f3ae486f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"quieter","instruction":"Выберите подходящее слово.","options":["quieter","quietest","more quiet"],"sentence_template":"The new meeting rooms are ___ than the old ones.","translation_hint":"Новые переговорки тише старых."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1abe208a-1fdd-58b6-ac97-51d70d5b662d', '03840bc9-1537-558a-9aa7-b973f3ae486f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","going","to","upgrade","the","booking","system","next","quarter."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["did","was","We","system","quarter.","the","next","are","to","going","upgrade","booking"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('68b5cb1c-dda9-5908-b377-620a83a5c4e4', '03840bc9-1537-558a-9aa7-b973f3ae486f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If we install the screens this week, the training room will be ready before the visit.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a5bc7bd7-e7c2-56fc-bece-cce07fe42b8e', '03840bc9-1537-558a-9aa7-b973f3ae486f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If we install the screens this week, the training room will be ready before the visit.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если мы установим экраны на этой неделе, учебная комната будет готова до визита."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3e5f846-5059-5a3e-bfc1-51a188f8754c', '03840bc9-1537-558a-9aa7-b973f3ae486f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Office manager","text":"We can renovate either the kitchen or the lounge this year.","translation":"В этом году мы можем отремонтировать либо кухню, либо зону отдыха.","type":"dialogue"},{"character":"Anna","text":"The kitchen is more useful — everyone eats there every day.","translation":"Кухня полезнее — там каждый день обедают все.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Then we are going to start with the kitchen in May."},{"is_correct":false,"text":"Then we started with it yesterday tomorrow."},{"is_correct":false,"text":"The kitchen is renovating itself."}],"text":"What does the office manager decide?","type":"choice"}],"title":"Two Renovation Plans"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('739a00a0-5cf9-5564-afc0-de1350097f36', '03840bc9-1537-558a-9aa7-b973f3ae486f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to upgrade” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To improve something or replace it with a better version"},{"id":"D_B","is_correct":false,"text":"To move furniture from one room to another"},{"id":"D_C","is_correct":false,"text":"To book a room for a meeting"}],"word":"to upgrade"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41800bab-9e3d-5d41-87fd-f9e3e4270b85', '03840bc9-1537-558a-9aa7-b973f3ae486f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"They are going to install new lamps.","explanation":"The missing word is “install”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"install","id":"LW_A","is_correct":true},{"audio_text":"installed","id":"LW_B","is_correct":false},{"audio_text":"installing","id":"LW_C","is_correct":false}],"sentence_template":"They are going to ___ new lamps."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f6c12855-ed7c-594c-9269-78388b2d6ace', '03840bc9-1537-558a-9aa7-b973f3ae486f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"more","explanation":"The complete sentence is “The lounge will be more comfortable after the renovation.”.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The lounge will be ___ comfortable after the renovation."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('941c7660-aa04-5d93-855e-e5834f96a907', '03840bc9-1537-558a-9aa7-b973f3ae486f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"renovation","id":"V1","text":"renovation"},{"audio_text":"more comfortable","id":"V2","text":"more comfortable"},{"audio_text":"to install","id":"V3","text":"to install"},{"audio_text":"meeting room booking","id":"V4","text":"meeting room booking"},{"audio_text":"quieter","id":"V5","text":"quieter"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1ac6e139-ad14-5db5-8b22-ab2e9f4b3cac', '03840bc9-1537-558a-9aa7-b973f3ae486f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"When will the new booking system be ready?"}],"explanation":"“They are going to launch it by the end of the quarter.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"They are going to launch it by the end of the quarter."},{"id":"C_B","is_correct":false,"text":"It was ready yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The system is launching us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('dc96fa80-73d4-5efd-ac52-499f0f0bc0ae', '03840bc9-1537-558a-9aa7-b973f3ae486f', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0e0cf657-ff1b-5ddd-86c5-937432760344', NULL, 'Правила использования услуг', 'Объяснить правила офисных услуг, используя should и первое условное.', '{"en":"Rules for Using Services","ru":"Правила использования услуг"}'::jsonb, '{"en":"Explain office service rules using should and the first conditional.","ru":"Объяснить правила офисных услуг, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ad25e6b-4770-56b0-bdd7-b9b1ff4b5c43', '0e0cf657-ff1b-5ddd-86c5-937432760344', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to keep clean","right":"содержать в чистоте"},{"id":"P2","left":"shared","right":"общий"},{"id":"P3","left":"to book in advance","right":"бронировать заранее"},{"id":"P4","left":"cleaning schedule","right":"график уборки"},{"id":"P5","left":"to follow","right":"соблюдать"},{"id":"P6","left":"fair","right":"справедливый"},{"id":"P7","left":"label","right":"надпись / маркировать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d31c5823-01d0-5520-b77f-6816056a76d1', '0e0cf657-ff1b-5ddd-86c5-937432760344', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should book the meeting rooms in advance.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should book the meeting rooms in advance."},{"id":"Q_B","is_correct":false,"text":"You should to book them yesterday."},{"id":"Q_C","is_correct":false,"text":"You must booking them last week."}],"question":"Which sentence expresses a rule for shared spaces?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b667fb56-3038-51be-992d-2006dd03019c', '0e0cf657-ff1b-5ddd-86c5-937432760344', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If everyone cleans up after themselves, the kitchen will stay clean.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если каждый будет убирать за собой, кухня останется чистой.","target_language":"en","word_bank":["stay","kitchen","cleans","yesterday","everyone","If","clean.","the","after","will","themselves,","did","up","cleaned"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dcf5417c-97e9-5881-9ddf-5f2b4a1ded6b', '0e0cf657-ff1b-5ddd-86c5-937432760344', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"label","instruction":"Выберите подходящее слово.","options":["label","will label","labelled"],"sentence_template":"If you ___ your food in the fridge, nobody will throw it away.","translation_hint":"Если подписать еду в холодильнике, её никто не выбросит."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('390f7234-e46e-5fef-8a06-c1ba1e123f3b', '0e0cf657-ff1b-5ddd-86c5-937432760344', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","follow","the","cleaning","schedule","in","shared","kitchens."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["went","mustn''t","the","schedule","cleaning","should","kitchens.","in","follow","shared","You"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('23cfb157-0e75-5493-a75f-623fe2ba79b0', '0e0cf657-ff1b-5ddd-86c5-937432760344', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you cancel a booking you do not need, another team will be able to use the room.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7d5a8eb-38cb-529b-95b3-050a48653079', '0e0cf657-ff1b-5ddd-86c5-937432760344', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you cancel a booking you do not need, another team will be able to use the room.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если отменить ненужное бронирование, другая команда сможет воспользоваться комнатой."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3adc5bd6-fe75-5742-8313-cc7fc9d503c2', '0e0cf657-ff1b-5ddd-86c5-937432760344', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"Someone has thrown away my lunch box again!","translation":"Кто-то снова выбросил мой ланчбокс!","type":"dialogue"},{"character":"Tom","text":"Did it have your name on it?","translation":"На нём было твоё имя?","type":"dialogue"},{"options":[{"is_correct":true,"text":"From now on, everyone should label their food clearly."},{"is_correct":false,"text":"From now on, everyone must labelling it yesterday."},{"is_correct":false,"text":"The fridge is eating the lunches itself."}],"text":"What is the fair solution?","type":"choice"}],"title":"The Shared Fridge"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c7752e81-7441-551f-a515-8b9f16f4d731', '0e0cf657-ff1b-5ddd-86c5-937432760344', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“shared” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Used by several people, not only one person"},{"id":"D_B","is_correct":false,"text":"Kept locked in a personal office"},{"id":"D_C","is_correct":false,"text":"Bought by one employee yesterday"}],"word":"shared"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d497026f-73fe-5557-ae62-39a46bd6cc84', '0e0cf657-ff1b-5ddd-86c5-937432760344', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you cancel the room, others can use it.","explanation":"The missing word is “cancel”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"cancel","id":"LW_A","is_correct":true},{"audio_text":"will cancel","id":"LW_B","is_correct":false},{"audio_text":"cancelled","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ the room, others can use it."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('efc74ffa-e7f4-5db1-ad4b-530bf2724391', '0e0cf657-ff1b-5ddd-86c5-937432760344', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"in","explanation":"The complete sentence is “You should book the room in advance.”.","hint_prefix":"in","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should book the room ___ advance."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5b5b268b-a405-560b-8229-06b002b4e197', '0e0cf657-ff1b-5ddd-86c5-937432760344', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to keep clean","id":"V1","text":"to keep clean"},{"audio_text":"shared","id":"V2","text":"shared"},{"audio_text":"to book in advance","id":"V3","text":"to book in advance"},{"audio_text":"cleaning schedule","id":"V4","text":"cleaning schedule"},{"audio_text":"to follow","id":"V5","text":"to follow"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e1c09b92-29dc-59f7-904f-9491783b2723', '0e0cf657-ff1b-5ddd-86c5-937432760344', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"The meeting room is always busy at noon."}],"explanation":"“That''s why you should book it in advance — if you book at nine, you will get it.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"That''s why you should book it in advance — if you book at nine, you will get it."},{"id":"C_B","is_correct":false,"text":"I booked it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"Noon is booking the room."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('dc96fa80-73d4-5efd-ac52-499f0f0bc0ae', '0e0cf657-ff1b-5ddd-86c5-937432760344', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('318fe7b4-0cb6-5818-af0a-c34ff4228a58', 'en', 'facilities', 'хозяйственная служба', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('79c6d466-a70b-5df2-82b2-db7d296c71fc', 'en', 'to submit a request', 'подать заявку', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('defa20dc-ad6d-509b-bb8b-b97ce2fa0e20', 'en', 'maintenance', 'техобслуживание', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('07a7173b-5bc7-55b6-b07c-ad6533e8b8ac', 'en', 'access card', 'пропуск', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b1dbc1d9-909b-5a82-bc4b-207df7b9339d', 'en', 'to repair', 'отремонтировать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('79296cbd-a097-5bde-ac90-851a3c513699', 'en', 'work order', 'наряд на работы', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0591f315-45f1-5540-a408-7648b6b2f92e', 'en', 'within a week', 'в течение недели', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('824b7b92-c67f-50f4-94ec-5d1bfbe9d097', 'en', 'renovation', 'ремонт', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('27ca08c0-fc41-58a5-8ea2-9950fad968fc', 'en', 'more comfortable', 'комфортнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d3c27bf9-eec6-54eb-badc-5403a6e135d0', 'en', 'to install', 'установить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('031b3b44-ff01-5bb2-b2b6-26c1a3adc8de', 'en', 'meeting room booking', 'бронирование переговорок', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c6b48ef6-8e68-55c0-af34-fee291907be6', 'en', 'quieter', 'тише', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3ca2eac5-66bb-502a-a77d-1fb881fe8a8c', 'en', 'to upgrade', 'модернизировать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('07157512-44a1-5318-aab8-3051f21a1091', 'en', 'by the end of', 'к концу', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3c0703fa-9f52-5780-9c5b-1a4f1ce84dab', 'en', 'to keep clean', 'содержать в чистоте', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('870f9180-2b7e-5e90-8554-b3b9ca6ea403', 'en', 'shared', 'общий', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ca0b287e-cd58-5ef4-868a-0a71caaa4760', 'en', 'to book in advance', 'бронировать заранее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9e1abf19-5fcd-5f5d-a774-a0df851a7ae7', 'en', 'cleaning schedule', 'график уборки', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('76ce1f15-757e-5a47-9097-7de38bf035e6', 'en', 'to follow', 'соблюдать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a1986fff-2948-55bf-83c4-4bc716af1669', 'en', 'fair', 'справедливый', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('653a07e8-268c-5454-899d-6d9478e852a9', 'en', 'label', 'надпись / маркировать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc96fa80-73d4-5efd-ac52-499f0f0bc0ae', id, '1bcdde86-6650-563d-8e0d-af83c2e0e018', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'facilities' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc96fa80-73d4-5efd-ac52-499f0f0bc0ae', id, '1bcdde86-6650-563d-8e0d-af83c2e0e018', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to submit a request' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc96fa80-73d4-5efd-ac52-499f0f0bc0ae', id, '1bcdde86-6650-563d-8e0d-af83c2e0e018', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'maintenance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc96fa80-73d4-5efd-ac52-499f0f0bc0ae', id, '1bcdde86-6650-563d-8e0d-af83c2e0e018', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'access card' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc96fa80-73d4-5efd-ac52-499f0f0bc0ae', id, '1bcdde86-6650-563d-8e0d-af83c2e0e018', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to repair' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc96fa80-73d4-5efd-ac52-499f0f0bc0ae', id, '1bcdde86-6650-563d-8e0d-af83c2e0e018', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'work order' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc96fa80-73d4-5efd-ac52-499f0f0bc0ae', id, '1bcdde86-6650-563d-8e0d-af83c2e0e018', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'within a week' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc96fa80-73d4-5efd-ac52-499f0f0bc0ae', id, '03840bc9-1537-558a-9aa7-b973f3ae486f', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'renovation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc96fa80-73d4-5efd-ac52-499f0f0bc0ae', id, '03840bc9-1537-558a-9aa7-b973f3ae486f', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'more comfortable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc96fa80-73d4-5efd-ac52-499f0f0bc0ae', id, '03840bc9-1537-558a-9aa7-b973f3ae486f', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to install' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc96fa80-73d4-5efd-ac52-499f0f0bc0ae', id, '03840bc9-1537-558a-9aa7-b973f3ae486f', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'meeting room booking' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc96fa80-73d4-5efd-ac52-499f0f0bc0ae', id, '03840bc9-1537-558a-9aa7-b973f3ae486f', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'quieter' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc96fa80-73d4-5efd-ac52-499f0f0bc0ae', id, '03840bc9-1537-558a-9aa7-b973f3ae486f', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to upgrade' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc96fa80-73d4-5efd-ac52-499f0f0bc0ae', id, '03840bc9-1537-558a-9aa7-b973f3ae486f', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'by the end of' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc96fa80-73d4-5efd-ac52-499f0f0bc0ae', id, '0e0cf657-ff1b-5ddd-86c5-937432760344', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to keep clean' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc96fa80-73d4-5efd-ac52-499f0f0bc0ae', id, '0e0cf657-ff1b-5ddd-86c5-937432760344', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'shared' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc96fa80-73d4-5efd-ac52-499f0f0bc0ae', id, '0e0cf657-ff1b-5ddd-86c5-937432760344', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to book in advance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc96fa80-73d4-5efd-ac52-499f0f0bc0ae', id, '0e0cf657-ff1b-5ddd-86c5-937432760344', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'cleaning schedule' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc96fa80-73d4-5efd-ac52-499f0f0bc0ae', id, '0e0cf657-ff1b-5ddd-86c5-937432760344', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to follow' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc96fa80-73d4-5efd-ac52-499f0f0bc0ae', id, '0e0cf657-ff1b-5ddd-86c5-937432760344', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'fair' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc96fa80-73d4-5efd-ac52-499f0f0bc0ae', id, '0e0cf657-ff1b-5ddd-86c5-937432760344', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'label' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
