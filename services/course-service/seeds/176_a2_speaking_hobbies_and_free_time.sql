-- Track: A2_SPEAKING_HOBBIES_AND_FREE_TIME. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('d1082374-58c5-5515-99be-527ed2ed381c', 'A2_SPEAKING_HOBBIES_AND_FREE_TIME', 'Хобби и свободное время', 'Развивайте разговорные навыки уровня A2 по теме «Хобби и свободное время».', '{"en":"Hobbies and Free Time","ru":"Хобби и свободное время"}'::jsonb, '{"en":"Develop A2 speaking skills for hobbies and free time.","ru":"Развивайте разговорные навыки уровня A2 по теме «Хобби и свободное время»."}'::jsonb, 'en', 'A2', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('551d2b1e-aed1-5fea-ad7c-2fbdc8d01f7b', NULL, 'Моё хобби сейчас', 'Рассказать о хобби, используя past simple и present perfect.', '{"en":"My Hobby Now","ru":"Моё хобби сейчас"}'::jsonb, '{"en":"Talk about hobbies using past simple and present perfect.","ru":"Рассказать о хобби, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f7e82dda-206d-5667-953b-978c02f319ba', '551d2b1e-aed1-5fea-ad7c-2fbdc8d01f7b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to be into","right":"увлекаться"},{"id":"P2","left":"to join a club","right":"вступить в клуб"},{"id":"P3","left":"pottery","right":"гончарное дело"},{"id":"P4","left":"to improve","right":"улучшиться"},{"id":"P5","left":"collection","right":"коллекция"},{"id":"P6","left":"hobby","right":"хобби"},{"id":"P7","left":"so far","right":"до сих пор"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ed2ec25b-eed0-53ba-9a5b-d8347810369d', '551d2b1e-aed1-5fea-ad7c-2fbdc8d01f7b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I have collected over a hundred stamps so far.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I have collected over a hundred stamps so far."},{"id":"Q_B","is_correct":false,"text":"I have collected them last year."},{"id":"Q_C","is_correct":false,"text":"I collect hundred stamps already so far."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65efc5b5-4a21-507f-bf47-fb709ec84ad2', '551d2b1e-aed1-5fea-ad7c-2fbdc8d01f7b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I got into photography a year ago and have already sold two prints.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я увлёкся фотографией год назад и уже продал две работы.","target_language":"en","word_bank":["prints.","year","tomorrow","got","and","sold","a","already","get","have","into","did","two","photography","ago","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90663adc-6324-5f4f-84ff-2341074bb597', '551d2b1e-aed1-5fea-ad7c-2fbdc8d01f7b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"joined","instruction":"Выберите подходящее слово.","options":["joined","has join","joining"],"sentence_template":"She ___ the chess club at university.","translation_hint":"Она вступила в шахматный клуб в университете."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('771a002f-aad0-5fc8-bd53-df30ed6ce57b', '551d2b1e-aed1-5fea-ad7c-2fbdc8d01f7b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["He","has","improved","a","lot","since","the","autumn."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["He","has","improved","autumn.","was","lot","the","since","did","a"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e17cc24a-4b39-5017-ba8e-5351c4526da4', '551d2b1e-aed1-5fea-ad7c-2fbdc8d01f7b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I started pottery in spring, and I have already made a full dinner set for my mother.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78f852de-c94e-5172-bbf6-86155292f23b', '551d2b1e-aed1-5fea-ad7c-2fbdc8d01f7b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I started pottery in spring, and I have already made a full dinner set for my mother.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Я начал заниматься гончаркой весной и уже сделал полный обеденный сервиз для мамы."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4fa17c64-9ecc-5b23-824e-d13a2f75722f', '551d2b1e-aed1-5fea-ad7c-2fbdc8d01f7b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"I hear you have taken up pottery. How is it going?","translation":"Слышала, ты занялся гончаркой. Как дела?","type":"dialogue"},{"character":"Tom","text":"Great! My first cups looked like stones, but I have improved a lot.","translation":"Отлично! Мои первые чашки были как камни, но я сильно продвинулся.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Have you sold anything at the local market yet?"},{"is_correct":false,"text":"Did you has sold anything tomorrow?"},{"is_correct":false,"text":"Are the cups improving you at the market?"}],"text":"What does Anna ask?","type":"choice"}],"title":"The New Hobby"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a0a830a-3ba4-5770-a54e-fa010bcf0c79', '551d2b1e-aed1-5fea-ad7c-2fbdc8d01f7b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“pottery” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Making pots and cups from clay"},{"id":"D_B","is_correct":false,"text":"Taking photos of old buildings"},{"id":"D_C","is_correct":false,"text":"Collecting tickets from concerts"}],"word":"pottery"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('982129ac-c1e4-53b6-afa3-fbb9b895988f', '551d2b1e-aed1-5fea-ad7c-2fbdc8d01f7b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have joined a photography club.","explanation":"The missing word is “joined”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"joined","id":"LW_A","is_correct":true},{"audio_text":"join","id":"LW_B","is_correct":false},{"audio_text":"joining","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ a photography club."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c3bab044-cdd5-5e4f-9906-bc2e19d4dc4c', '551d2b1e-aed1-5fea-ad7c-2fbdc8d01f7b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"so","explanation":"The complete sentence is “She has painted ten portraits so far.”.","hint_prefix":"so","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"She has painted ten portraits ___ far."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('86ef832a-281b-53c7-ab62-7240e27a4ff5', '551d2b1e-aed1-5fea-ad7c-2fbdc8d01f7b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to be into","id":"V1","text":"to be into"},{"audio_text":"to join a club","id":"V2","text":"to join a club"},{"audio_text":"pottery","id":"V3","text":"pottery"},{"audio_text":"to improve","id":"V4","text":"to improve"},{"audio_text":"collection","id":"V5","text":"collection"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2189ce5f-1d3d-5fc5-8e2d-a43d57f290db', '551d2b1e-aed1-5fea-ad7c-2fbdc8d01f7b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"What do you do at the weekends?"}],"explanation":"“I am into birdwatching — I have spotted forty species this year already.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"I am into birdwatching — I have spotted forty species this year already."},{"id":"C_B","is_correct":false,"text":"I watched birds yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The weekends are doing me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d1082374-58c5-5515-99be-527ed2ed381c', '551d2b1e-aed1-5fea-ad7c-2fbdc8d01f7b', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('1049c4ac-9c17-5566-aba0-1b05016ba4dd', NULL, 'Что попробую в этом году', 'Рассказать о новых увлечениях и сравнить занятия.', '{"en":"What I Will Try This Year","ru":"Что попробую в этом году"}'::jsonb, '{"en":"Talk about new activities and compare them.","ru":"Рассказать о новых увлечениях и сравнить занятия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ecf3bb82-96ab-5976-b224-bf504667c7fa', '1049c4ac-9c17-5566-aba0-1b05016ba4dd', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to sign up for","right":"записаться на"},{"id":"P2","left":"more creative","right":"творческий (более)"},{"id":"P3","left":"less expensive","right":"дешевле"},{"id":"P4","left":"to try out","right":"испытать, попробовать"},{"id":"P5","left":"beginner course","right":"курс для начинающих"},{"id":"P6","left":"equipment","right":"снаряжение"},{"id":"P7","left":"to enjoy","right":"наслаждаться"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7de393a7-48a7-587c-99f7-cd1a4690b9d5', '1049c4ac-9c17-5566-aba0-1b05016ba4dd', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Climbing is less expensive than sailing in the long run.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Climbing is less expensive than sailing in the long run."},{"id":"Q_B","is_correct":false,"text":"Climbing is expensiver than sailing."},{"id":"Q_C","is_correct":false,"text":"Climbing is most expensive than sailing."}],"question":"Which sentence compares two hobbies correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc9fba99-18aa-5183-9b4f-47b39bfb8702', '1049c4ac-9c17-5566-aba0-1b05016ba4dd', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"This year I am going to sign up for a beginner pottery course.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"В этом году я собираюсь записаться на курс керамики для начинающих.","target_language":"en","word_bank":["yesterday","beginner","signed","pottery","going","sign","This","course.","did","year","am","I","for","up","a","to"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1174ef3f-f58c-58ac-a053-1c3444fa28ef', '1049c4ac-9c17-5566-aba0-1b05016ba4dd', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"more","instruction":"Выберите подходящее слово.","options":["more","most","much"],"sentence_template":"Painting is ___ relaxing than gaming for me.","translation_hint":"Живопись для меня расслабляет сильнее, чем игры."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('761f9911-3ed7-5344-9df2-f39720c03fb0', '1049c4ac-9c17-5566-aba0-1b05016ba4dd', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["They","are","going","to","try","out","kayaking","in","July."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["going","to","out","try","in","They","July.","are","was","kayaking","did"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('467fa019-e520-5edd-861a-dbe7bc894c7b', '1049c4ac-9c17-5566-aba0-1b05016ba4dd', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you choose a hobby with cheap equipment, you will not be sad if you give it up.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e79b0a9-3129-5daa-92ec-57f61ffcbd53', '1049c4ac-9c17-5566-aba0-1b05016ba4dd', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you choose a hobby with cheap equipment, you will not be sad if you give it up.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если выбрать хобби с дешёвым снаряжением, будет не жалко его бросить."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d2bb756a-3853-5427-b8fb-237595f1574a', '1049c4ac-9c17-5566-aba0-1b05016ba4dd', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"There are two evening courses: painting and climbing. Which one?","translation":"Есть два вечерних курса: живопись и скалолазание. Куда пойти?","type":"dialogue"},{"character":"Tom","text":"Painting is more creative, but climbing is better for fitness.","translation":"Живопись творческая, но скалолазание полезнее для формы.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I am going to try climbing first and painting in winter."},{"is_correct":false,"text":"I tried them yesterday tomorrow already."},{"is_correct":false,"text":"The courses are choosing me."}],"text":"What does Anna decide?","type":"choice"}],"title":"Choosing a Course"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('63679b57-47f6-5d9d-9bac-052666165cf9', '1049c4ac-9c17-5566-aba0-1b05016ba4dd', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“equipment” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"The special things you need for a sport or hobby"},{"id":"D_B","is_correct":false,"text":"The clothes you wear to a birthday party"},{"id":"D_C","is_correct":false,"text":"The books you read at university"}],"word":"equipment"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('378b5758-7c01-5622-8eac-937a7c301bdf', '1049c4ac-9c17-5566-aba0-1b05016ba4dd', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to sign up for a dance class.","explanation":"The missing word is “sign up”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"sign up","id":"LW_A","is_correct":true},{"audio_text":"signed up","id":"LW_B","is_correct":false},{"audio_text":"signing up","id":"LW_C","is_correct":false}],"sentence_template":"I am going to ___ for a dance class."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9baf44fc-57af-55d1-9490-49adfcc4817c', '1049c4ac-9c17-5566-aba0-1b05016ba4dd', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"less","explanation":"The complete sentence is “Cycling is less expensive than skiing.”.","hint_prefix":"le","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Cycling is ___ expensive than skiing."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d3fc5c8-04fc-5b8e-a16b-91e68ffd3be0', '1049c4ac-9c17-5566-aba0-1b05016ba4dd', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to sign up for","id":"V1","text":"to sign up for"},{"audio_text":"more creative","id":"V2","text":"more creative"},{"audio_text":"less expensive","id":"V3","text":"less expensive"},{"audio_text":"to try out","id":"V4","text":"to try out"},{"audio_text":"beginner course","id":"V5","text":"beginner course"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ba90ea3e-0efa-59a4-8d18-56eac5f8fabc', '1049c4ac-9c17-5566-aba0-1b05016ba4dd', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Is the guitar course worth it?"}],"explanation":"“Yes — if you practise ten minutes daily, you will play simple songs in a month.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes — if you practise ten minutes daily, you will play simple songs in a month."},{"id":"C_B","is_correct":false,"text":"I practised it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The guitar is courting me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d1082374-58c5-5515-99be-527ed2ed381c', '1049c4ac-9c17-5566-aba0-1b05016ba4dd', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('58e1d103-5d1c-589b-8650-ce0d1a7c4212', NULL, 'Если хочется бросить', 'Обсудить мотивацию в хобби, используя should и первое условное.', '{"en":"When You Feel Like Quitting","ru":"Если хочется бросить"}'::jsonb, '{"en":"Discuss hobby motivation using should and the first conditional.","ru":"Обсудить мотивацию в хобби, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6fca4dfc-188c-526d-8e2d-5bfc4393c7ca', '58e1d103-5d1c-589b-8650-ce0d1a7c4212', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to quit","right":"бросить (занятие)"},{"id":"P2","left":"progress","right":"прогресс"},{"id":"P3","left":"to practise regularly","right":"заниматься регулярно"},{"id":"P4","left":"teacher","right":"преподаватель"},{"id":"P5","left":"to take a break","right":"сделать перерыв"},{"id":"P6","left":"motivation","right":"мотивация"},{"id":"P7","left":"to compare","right":"сравнивать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a05cc1e1-f367-500b-969e-b5b1e386a199', '58e1d103-5d1c-589b-8650-ce0d1a7c4212', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should take a break instead of quitting completely.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should take a break instead of quitting completely."},{"id":"Q_B","is_correct":false,"text":"You should to take a break yesterday."},{"id":"Q_C","is_correct":false,"text":"You must taking breaks last month."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('224b798b-2455-5648-a5dc-92848fae615e', '58e1d103-5d1c-589b-8650-ce0d1a7c4212', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you compare yourself with professionals, you will lose motivation quickly.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если ты будешь сравнивать себя с профессионалами, быстро потеряешь мотивацию.","target_language":"en","word_bank":["motivation","compared","will","with","lose","compare","professionals,","did","yesterday","If","you","quickly.","you","yourself"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f8d79bba-29da-5662-813e-144181e10ca1', '58e1d103-5d1c-589b-8650-ce0d1a7c4212', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"will make","instruction":"Выберите подходящее слово.","options":["will make","make","made"],"sentence_template":"If you practise a little every day, you ___ steady progress.","translation_hint":"Если заниматься понемногу каждый день, прогресс будет стабильным."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae8e64b7-4a97-5edb-8c6b-ecb1e75080d0', '58e1d103-5d1c-589b-8650-ce0d1a7c4212', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","celebrate","small","wins","in","your","hobby."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["went","wins","in","small","celebrate","hobby.","your","mustn''t","You","should"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a11c758-6793-5727-90a4-318ef0db194b', '58e1d103-5d1c-589b-8650-ce0d1a7c4212', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you play music with friends, practising will feel like fun, not homework.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5fd3dd03-52ea-558f-9522-45dca5e23ab4', '58e1d103-5d1c-589b-8650-ce0d1a7c4212', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you play music with friends, practising will feel like fun, not homework.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если играть музыку с друзьями, практика будет ощущаться как развлечение, а не домашка."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d3392b7-7ea1-57e3-92b0-967d2a3d27c6', '58e1d103-5d1c-589b-8650-ce0d1a7c4212', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"I have played the piano for a year, but I am not getting better.","translation":"Я год играю на пианино, но не становлюсь лучше.","type":"dialogue"},{"character":"Tom","text":"Everyone hits a plateau. What should you do about it?","translation":"У всех бывает плато. Что с этим делать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"You should change the pieces you play and add something fun."},{"is_correct":false,"text":"You must changed the pieces yesterday."},{"is_correct":false,"text":"The piano is plateauing you every year."}],"text":"What is the good advice?","type":"choice"}],"title":"The Plateau"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('306a2936-4217-53b3-bc13-88630bed652f', '58e1d103-5d1c-589b-8650-ce0d1a7c4212', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“plateau” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A period when progress stops for a while"},{"id":"D_B","is_correct":false,"text":"A quick jump to a very high level"},{"id":"D_C","is_correct":false,"text":"The first lesson of a beginner course"}],"word":"plateau"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2f616f0a-1a06-5517-8c7e-5905b25ff548', '58e1d103-5d1c-589b-8650-ce0d1a7c4212', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you practise regularly, progress will come.","explanation":"The missing word is “practise”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"practise","id":"LW_A","is_correct":true},{"audio_text":"will practise","id":"LW_B","is_correct":false},{"audio_text":"practised","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ regularly, progress will come."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a42c650-13ac-5447-88a0-b5d9ef16ef3b', '58e1d103-5d1c-589b-8650-ce0d1a7c4212', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"break","explanation":"The complete sentence is “You should take a break from competitions.”.","hint_prefix":"br","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should take a ___ from competitions."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5bbb949d-ce3b-59cf-a837-41eec3716288', '58e1d103-5d1c-589b-8650-ce0d1a7c4212', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to quit","id":"V1","text":"to quit"},{"audio_text":"progress","id":"V2","text":"progress"},{"audio_text":"to practise regularly","id":"V3","text":"to practise regularly"},{"audio_text":"teacher","id":"V4","text":"teacher"},{"audio_text":"to take a break","id":"V5","text":"to take a break"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2adaa673-e2c8-512b-b172-4454f07d20ea', '58e1d103-5d1c-589b-8650-ce0d1a7c4212', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"I am thinking of quitting Spanish."}],"explanation":"“Take a two-week break first — if you miss it, you will return with new energy.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Take a two-week break first — if you miss it, you will return with new energy."},{"id":"C_B","is_correct":false,"text":"I quit it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"Spanish is thinking of me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d1082374-58c5-5515-99be-527ed2ed381c', '58e1d103-5d1c-589b-8650-ce0d1a7c4212', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ce69b27-aa40-5913-888b-f55703df31ee', 'en', 'to be into', 'увлекаться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5bb310af-304c-53af-beee-e7e6079ad491', 'en', 'to join a club', 'вступить в клуб', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c1e18573-1c88-5b4c-856e-2dbf7ecadb09', 'en', 'pottery', 'гончарное дело', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('31b9e1a1-e703-5fbc-b7bf-9e4edd1eaa3c', 'en', 'to improve', 'улучшиться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5920317-6620-5722-8c50-ca8926d5fbfd', 'en', 'collection', 'коллекция', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e2ba03fe-34c8-5867-a2dc-98d7c63dcc65', 'en', 'hobby', 'хобби', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('478640e0-c4e8-5234-9e00-ca9b74dde93b', 'en', 'so far', 'до сих пор', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('08a3dd52-f9f8-5bde-87db-0079650fea96', 'en', 'to sign up for', 'записаться на', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('61570c3f-0e18-57a9-8516-22a3e7aeef56', 'en', 'more creative', 'творческий (более)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d8caa175-2b59-5661-af99-84365741f687', 'en', 'less expensive', 'дешевле', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d80ef7e0-26ab-5238-a31d-e1c38724e37d', 'en', 'to try out', 'испытать, попробовать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('863bf138-7a38-56af-b1d8-d6bbbd62b90f', 'en', 'beginner course', 'курс для начинающих', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('20dc3da7-484b-508a-9752-9267fed723ee', 'en', 'equipment', 'снаряжение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ed421281-ed65-50b3-afca-8a10e469f58a', 'en', 'to enjoy', 'наслаждаться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1251e18c-a65a-589b-9c15-927d2fee76b1', 'en', 'to quit', 'бросить (занятие)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('de0468fb-bde9-59e9-87e8-4d859a466aae', 'en', 'progress', 'прогресс', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aa865bee-0703-576f-aa49-9a50b11491be', 'en', 'to practise regularly', 'заниматься регулярно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('79c6a98f-afb3-5537-8c66-6a09281be17f', 'en', 'teacher', 'преподаватель', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dc0c6b7d-08f6-52f4-a2b4-c449959e20ee', 'en', 'to take a break', 'сделать перерыв', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ea12f93b-5c43-530d-9c63-a9eddf79138b', 'en', 'motivation', 'мотивация', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2bee5df1-c191-5c04-ba3d-5cfe11c966e5', 'en', 'to compare', 'сравнивать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd1082374-58c5-5515-99be-527ed2ed381c', id, '551d2b1e-aed1-5fea-ad7c-2fbdc8d01f7b', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'to be into' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd1082374-58c5-5515-99be-527ed2ed381c', id, '551d2b1e-aed1-5fea-ad7c-2fbdc8d01f7b', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to join a club' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd1082374-58c5-5515-99be-527ed2ed381c', id, '551d2b1e-aed1-5fea-ad7c-2fbdc8d01f7b', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'pottery' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd1082374-58c5-5515-99be-527ed2ed381c', id, '551d2b1e-aed1-5fea-ad7c-2fbdc8d01f7b', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'to improve' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd1082374-58c5-5515-99be-527ed2ed381c', id, '551d2b1e-aed1-5fea-ad7c-2fbdc8d01f7b', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'collection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd1082374-58c5-5515-99be-527ed2ed381c', id, '551d2b1e-aed1-5fea-ad7c-2fbdc8d01f7b', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'hobby' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd1082374-58c5-5515-99be-527ed2ed381c', id, '551d2b1e-aed1-5fea-ad7c-2fbdc8d01f7b', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'so far' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd1082374-58c5-5515-99be-527ed2ed381c', id, '1049c4ac-9c17-5566-aba0-1b05016ba4dd', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to sign up for' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd1082374-58c5-5515-99be-527ed2ed381c', id, '1049c4ac-9c17-5566-aba0-1b05016ba4dd', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'more creative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd1082374-58c5-5515-99be-527ed2ed381c', id, '1049c4ac-9c17-5566-aba0-1b05016ba4dd', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'less expensive' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd1082374-58c5-5515-99be-527ed2ed381c', id, '1049c4ac-9c17-5566-aba0-1b05016ba4dd', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to try out' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd1082374-58c5-5515-99be-527ed2ed381c', id, '1049c4ac-9c17-5566-aba0-1b05016ba4dd', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'beginner course' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd1082374-58c5-5515-99be-527ed2ed381c', id, '1049c4ac-9c17-5566-aba0-1b05016ba4dd', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'equipment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd1082374-58c5-5515-99be-527ed2ed381c', id, '1049c4ac-9c17-5566-aba0-1b05016ba4dd', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to enjoy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd1082374-58c5-5515-99be-527ed2ed381c', id, '58e1d103-5d1c-589b-8650-ce0d1a7c4212', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to quit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd1082374-58c5-5515-99be-527ed2ed381c', id, '58e1d103-5d1c-589b-8650-ce0d1a7c4212', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'progress' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd1082374-58c5-5515-99be-527ed2ed381c', id, '58e1d103-5d1c-589b-8650-ce0d1a7c4212', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to practise regularly' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd1082374-58c5-5515-99be-527ed2ed381c', id, '58e1d103-5d1c-589b-8650-ce0d1a7c4212', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'teacher' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd1082374-58c5-5515-99be-527ed2ed381c', id, '58e1d103-5d1c-589b-8650-ce0d1a7c4212', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to take a break' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd1082374-58c5-5515-99be-527ed2ed381c', id, '58e1d103-5d1c-589b-8650-ce0d1a7c4212', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'motivation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd1082374-58c5-5515-99be-527ed2ed381c', id, '58e1d103-5d1c-589b-8650-ce0d1a7c4212', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to compare' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
