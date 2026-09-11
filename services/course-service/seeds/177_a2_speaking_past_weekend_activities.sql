-- Track: A2_SPEAKING_PAST_WEEKEND_ACTIVITIES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('7a70673f-c326-51d4-9363-c63ad7e685c7', 'A2_SPEAKING_PAST_WEEKEND_ACTIVITIES', 'Прошедшие выходные', 'Развивайте разговорные навыки уровня A2 по теме «Прошедшие выходные».', '{"en":"Past Weekend Activities","ru":"Прошедшие выходные"}'::jsonb, '{"en":"Develop A2 speaking skills for past weekend activities.","ru":"Развивайте разговорные навыки уровня A2 по теме «Прошедшие выходные»."}'::jsonb, 'en', 'A2', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f2f0de47-2eae-556c-a850-798e7d210dad', NULL, 'Как прошли выходные', 'Рассказать о прошедших выходных, используя past simple и present perfect.', '{"en":"How the Weekend Went","ru":"Как прошли выходные"}'::jsonb, '{"en":"Talk about last weekend using past simple and present perfect.","ru":"Рассказать о прошедших выходных, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c3bc6671-d0ba-57f8-aaab-dba7639fb40b', 'f2f0de47-2eae-556c-a850-798e7d210dad', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to hang out with","right":"проводить время с"},{"id":"P2","left":"to sleep in","right":"спать допоздна"},{"id":"P3","left":"to go hiking","right":"ходить в поход"},{"id":"P4","left":"to bake","right":"печь"},{"id":"P5","left":"all of a sudden","right":"вдруг, неожиданно"},{"id":"P6","left":"to take photos","right":"фотографировать"},{"id":"P7","left":"whole day","right":"целый день"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1da321b2-189e-5fbe-a896-dd1ec447eff8', 'f2f0de47-2eae-556c-a850-798e7d210dad', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I have just uploaded the photos from the trip.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I have just uploaded the photos from the trip."},{"id":"Q_B","is_correct":false,"text":"I have uploaded them last weekend."},{"id":"Q_C","is_correct":false,"text":"I upload the photos already just."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9926057f-27e4-503f-8052-aa3793bf75e1', 'f2f0de47-2eae-556c-a850-798e7d210dad', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We slept in, and then all of a sudden we decided to go hiking.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мы спали допоздна, а потом внезапно решили пойти в поход.","target_language":"en","word_bank":["we","sleep","tomorrow","then","decided","We","a","of","go","to","and","did","slept","in,","hiking.","all","sudden"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('348b9b8e-29af-5608-80ff-f52a0db80112', 'f2f0de47-2eae-556c-a850-798e7d210dad', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"baked","instruction":"Выберите подходящее слово.","options":["baked","has bake","baking"],"sentence_template":"On Sunday morning she ___ bread for the whole family.","translation_hint":"В воскресенье утром она испекла хлеб для всей семьи."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ba3afbf0-52fd-512a-b939-17ebffa6fc64', 'f2f0de47-2eae-556c-a850-798e7d210dad', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["They","have","never","spent","a","whole","day","at","the","lake","before."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["day","at","a","before.","have","never","did","spent","lake","whole","They","was","the"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5739254-842c-5010-8375-0b4448de4f50', 'f2f0de47-2eae-556c-a850-798e7d210dad', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We hung out with friends on Saturday, and on Sunday I have finally cleaned the whole flat.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b111929-8d00-5e85-b746-7b53e7ad4b21', 'f2f0de47-2eae-556c-a850-798e7d210dad', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We hung out with friends on Saturday, and on Sunday I have finally cleaned the whole flat.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"В субботу мы тусовались с друзьями, а в воскресенье я наконец убрал всю квартиру."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('297f1944-7991-55e4-a796-fb63c858dcf6', 'f2f0de47-2eae-556c-a850-798e7d210dad', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"How was your weekend? Did you do anything special?","translation":"Как выходные? Делали что-то особенное?","type":"dialogue"},{"character":"Tom","text":"We went hiking in the hills. Have you seen my photos?","translation":"Мы ходили в поход в холмы. Ты видела мои фото?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Not yet — upload them to the shared album!"},{"is_correct":false,"text":"Yes, I see them tomorrow yesterday."},{"is_correct":false,"text":"The hills are hiking your photos."}],"text":"What does Anna answer?","type":"choice"}],"title":"Monday Chatter"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('327a2e7c-f267-554b-aad2-fbda1be81a4c', 'f2f0de47-2eae-556c-a850-798e7d210dad', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to sleep in” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To stay in bed later than usual in the morning"},{"id":"D_B","is_correct":false,"text":"To go to bed earlier than usual"},{"id":"D_C","is_correct":false,"text":"To work at the weekend instead of resting"}],"word":"to sleep in"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e5d760b9-b0b4-5f4e-84d7-d90e646550ba', 'f2f0de47-2eae-556c-a850-798e7d210dad', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have uploaded the photos to the cloud.","explanation":"The missing word is “uploaded”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"uploaded","id":"LW_A","is_correct":true},{"audio_text":"upload","id":"LW_B","is_correct":false},{"audio_text":"uploading","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ the photos to the cloud."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b0266aa8-f9fc-5fcc-a91c-dc557f611dd0', 'f2f0de47-2eae-556c-a850-798e7d210dad', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"hiking","explanation":"The complete sentence is “We went hiking in the mountains.”.","hint_prefix":"hi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We went ___ in the mountains."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7fe2125e-e79e-5b72-9583-9b3b228b85ca', 'f2f0de47-2eae-556c-a850-798e7d210dad', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to hang out with","id":"V1","text":"to hang out with"},{"audio_text":"to sleep in","id":"V2","text":"to sleep in"},{"audio_text":"to go hiking","id":"V3","text":"to go hiking"},{"audio_text":"to bake","id":"V4","text":"to bake"},{"audio_text":"all of a sudden","id":"V5","text":"all of a sudden"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0de61f6d-f3d0-52aa-a286-0499a428e65f', 'f2f0de47-2eae-556c-a850-798e7d210dad', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"What did you do on Saturday night?"}],"explanation":"“We hung out at Marina''s place — I have never laughed so much this year.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"We hung out at Marina''s place — I have never laughed so much this year."},{"id":"C_B","is_correct":false,"text":"I hanged out yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"Saturday night is doing me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7a70673f-c326-51d4-9363-c63ad7e685c7', 'f2f0de47-2eae-556c-a850-798e7d210dad', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('1f5f80be-a8f0-5e2c-b617-ced2cad7fed0', NULL, 'Следующие выходные', 'Спланировать выходные и сравнить варианты отдыха.', '{"en":"Next Weekend","ru":"Следующие выходные"}'::jsonb, '{"en":"Plan the weekend and compare leisure options.","ru":"Спланировать выходные и сравнить варианты отдыха."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c90b4393-0ee3-5c70-97a5-399ac4adb38e', '1f5f80be-a8f0-5e2c-b617-ced2cad7fed0', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to look forward to","right":"предвкушать"},{"id":"P2","left":"more peaceful","right":"спокойнее (более)"},{"id":"P3","left":"to visit relatives","right":"навестить родственников"},{"id":"P4","left":"picnic","right":"пикник"},{"id":"P5","left":"to stay in","right":"остаться дома"},{"id":"P6","left":"weather forecast","right":"прогноз погоды"},{"id":"P7","left":"to book tickets","right":"купить билеты заранее"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1ad1c94-47d7-53f2-9bfd-a79149aac716', '1f5f80be-a8f0-5e2c-b617-ced2cad7fed0', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “A picnic in the park is more peaceful than a shopping mall.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"A picnic in the park is more peaceful than a shopping mall."},{"id":"Q_B","is_correct":false,"text":"A picnic is peacefuller than a mall."},{"id":"Q_C","is_correct":false,"text":"A picnic is most peaceful than a mall."}],"question":"Which sentence compares two weekend plans correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4702b985-a94c-5f8d-b72d-12541807982c', '1f5f80be-a8f0-5e2c-b617-ced2cad7fed0', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We are going to have a picnic this weekend if the forecast is right.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"В эти выходные мы собираемся устроить пикник, если прогноз не подведёт.","target_language":"en","word_bank":["this","picnic","had","weekend","We","a","if","is","have","are","yesterday","forecast","going","did","right.","the","to"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('94c4e3d2-488c-5f4f-b001-c1fcc3a671ad', '1f5f80be-a8f0-5e2c-b617-ced2cad7fed0', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"nicer","instruction":"Выберите подходящее слово.","options":["nicer","nicest","more nice"],"sentence_template":"Staying in with a book is ___ than a noisy party for me.","translation_hint":"Посидеть дома с книгой для меня приятнее шумной вечеринки."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d22e01ab-9fd8-572e-a7a2-09ed5574dd58', '1f5f80be-a8f0-5e2c-b617-ced2cad7fed0', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","going","to","visit","my","in-laws","on","Sunday."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["in-laws","are","Sunday.","going","my","visit","We","was","did","to","on"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('061695e0-c313-508c-91ec-49d5ae20c80d', '1f5f80be-a8f0-5e2c-b617-ced2cad7fed0', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If the weather holds, we are going to cycle to the lake and stay until sunset.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('24762398-cb49-5f25-a9e2-476693d2b00f', '1f5f80be-a8f0-5e2c-b617-ced2cad7fed0', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If the weather holds, we are going to cycle to the lake and stay until sunset.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если погода сохранится, мы поедем на велосипедах к озеру и останемся до заката."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cf7a7693-0967-5178-9ffc-461333aa359f', '1f5f80be-a8f0-5e2c-b617-ced2cad7fed0', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"So, what are we doing this weekend?","translation":"Итак, что делаем в эти выходные?","type":"dialogue"},{"character":"Tom","text":"We can visit your parents or stay in and finish the series.","translation":"Можно навестить твоих родителей или остаться и досмотреть сериал.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Let''s visit them — we have not seen them since Easter."},{"is_correct":false,"text":"We saw them tomorrow yesterday already."},{"is_correct":false,"text":"The weekend is visiting our parents."}],"text":"What does Anna say?","type":"choice"}],"title":"Weekend Choices"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('adf19a5e-64dd-57f5-ae6a-3257820ae7c1', '1f5f80be-a8f0-5e2c-b617-ced2cad7fed0', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“picnic” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"An outdoor meal with food you bring yourself"},{"id":"D_B","is_correct":false,"text":"A dinner in a fancy restaurant"},{"id":"D_C","is_correct":false,"text":"A quick lunch at the office desk"}],"word":"picnic"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d973e993-04e0-55be-8496-cc12a8a9fe73', '1f5f80be-a8f0-5e2c-b617-ced2cad7fed0', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We are going to have a picnic by the river.","explanation":"The missing word is “have”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"have","id":"LW_A","is_correct":true},{"audio_text":"had","id":"LW_B","is_correct":false},{"audio_text":"having","id":"LW_C","is_correct":false}],"sentence_template":"We are going to ___ a picnic by the river."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('51bfc139-862f-59a8-a8a0-d6dcb627067d', '1f5f80be-a8f0-5e2c-b617-ced2cad7fed0', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"less","explanation":"The complete sentence is “A quiet weekend is less stressful.”.","hint_prefix":"le","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A quiet weekend is ___ stressful."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18be21e6-ee8d-54e3-8aa5-7b621cd90b68', '1f5f80be-a8f0-5e2c-b617-ced2cad7fed0', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to look forward to","id":"V1","text":"to look forward to"},{"audio_text":"more peaceful","id":"V2","text":"more peaceful"},{"audio_text":"to visit relatives","id":"V3","text":"to visit relatives"},{"audio_text":"picnic","id":"V4","text":"picnic"},{"audio_text":"to stay in","id":"V5","text":"to stay in"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b948664-48a5-5928-9273-4b9df81e67a8', '1f5f80be-a8f0-5e2c-b617-ced2cad7fed0', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Any plans for Saturday?"}],"explanation":"“We are going to the open-air cinema — if it rains, we will switch to the indoor one.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"We are going to the open-air cinema — if it rains, we will switch to the indoor one."},{"id":"C_B","is_correct":false,"text":"I went there yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"Saturday is planning us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7a70673f-c326-51d4-9363-c63ad7e685c7', '1f5f80be-a8f0-5e2c-b617-ced2cad7fed0', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('3daca43e-e086-5e67-864b-59317ec3fcce', NULL, 'Если выходные испортились', 'Обсудить планы на выходные, используя should и первое условное.', '{"en":"If the Weekend Is Spoiled","ru":"Если выходные испортились"}'::jsonb, '{"en":"Discuss weekend contingencies using should and the first conditional.","ru":"Обсудить планы на выходные, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('81fbf1b0-04a3-5821-a530-7eeb51f447b5', '3daca43e-e086-5e67-864b-59317ec3fcce', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to cancel","right":"отменить"},{"id":"P2","left":"backup plan","right":"запасной план"},{"id":"P3","left":"to complain","right":"жаловаться"},{"id":"P4","left":"to make the most of","right":"извлечь максимум из"},{"id":"P5","left":"rainy day","right":"дождливый день"},{"id":"P6","left":"board game","right":"настольная игра"},{"id":"P7","left":"cosy","right":"уютный"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a3d31178-e011-5401-b9ff-7d4092ab216a', '3daca43e-e086-5e67-864b-59317ec3fcce', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should have a backup plan for outdoor events.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should have a backup plan for outdoor events."},{"id":"Q_B","is_correct":false,"text":"You should to have it yesterday."},{"id":"Q_C","is_correct":false,"text":"You must having plans last weekend."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aab2a64e-1026-5480-a991-fdc974f702e6', '3daca43e-e086-5e67-864b-59317ec3fcce', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If the picnic is cancelled, we will have a cosy board-game evening.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если пикник отменится, мы устроим уютный вечер с настольными играми.","target_language":"en","word_bank":["we","will","evening.","If","cancelled","board-game","is","the","cosy","picnic","cancelled,","yesterday","did","a","have"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21615ec6-3979-542d-8dc5-9fc19a9e73ef', '3daca43e-e086-5e67-864b-59317ec3fcce', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"rains","instruction":"Выберите подходящее слово.","options":["rains","will rain","rained"],"sentence_template":"If it ___ all weekend, the concert will move indoors.","translation_hint":"Если будет дождить все выходные, концерт перенесут внутрь."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e897be3-5e65-5826-80f6-244e93d59ee8', '3daca43e-e086-5e67-864b-59317ec3fcce', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","make","the","most","of","any","weather."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["mustn''t","of","make","most","went","the","You","should","any","weather."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d2d66a0d-7337-5343-a659-5845a50b01bd', '3daca43e-e086-5e67-864b-59317ec3fcce', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If your plans fall through, complaining will not help — a board game will.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5c8ccc1b-339a-59d3-91e5-585b37b2bc6a', '3daca43e-e086-5e67-864b-59317ec3fcce', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If your plans fall through, complaining will not help — a board game will.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если планы сорвутся, жалобы не помогут — поможет настольная игра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('84d3135a-4fa2-5e51-a3a8-ef8e2b3507a4', '3daca43e-e086-5e67-864b-59317ec3fcce', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"The forecast shows rain for Saturday.","translation":"Прогноз показывает дождь на субботу.","type":"dialogue"},{"character":"Tom","text":"So the picnic is off? What should we do instead?","translation":"Значит, пикника не будет? Чем заняться вместо?","type":"dialogue"},{"options":[{"is_correct":true,"text":"If it rains, we should host a board-game afternoon at our place."},{"is_correct":false,"text":"If it will rain, we hosted it yesterday."},{"is_correct":false,"text":"The rain is picnicking on Saturday."}],"text":"What does Anna suggest?","type":"choice"}],"title":"The Washed-out Picnic"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('02050400-9675-59ed-a944-0aaf3033dcfb', '3daca43e-e086-5e67-864b-59317ec3fcce', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“cosy” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Warm and comfortable (about a place or time)"},{"id":"D_B","is_correct":false,"text":"Cold and windy, typical for the coast"},{"id":"D_C","is_correct":false,"text":"Too hot for sleeping well"}],"word":"cosy"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6473fcf5-e9c9-5742-9356-5491b0aa3543', '3daca43e-e086-5e67-864b-59317ec3fcce', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If they cancel the show, we will get refunds.","explanation":"The missing word is “cancel”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"cancel","id":"LW_A","is_correct":true},{"audio_text":"will cancel","id":"LW_B","is_correct":false},{"audio_text":"cancelled","id":"LW_C","is_correct":false}],"sentence_template":"If they ___ the show, we will get refunds."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6f62aabc-413e-5817-8a27-e01a79541ae8', '3daca43e-e086-5e67-864b-59317ec3fcce', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"of","explanation":"The complete sentence is “You should make the most of the day.”.","hint_prefix":"of","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should make the most ___ the day."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e69d6c28-b9ab-56ee-a61a-41c8275eed64', '3daca43e-e086-5e67-864b-59317ec3fcce', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to cancel","id":"V1","text":"to cancel"},{"audio_text":"backup plan","id":"V2","text":"backup plan"},{"audio_text":"to complain","id":"V3","text":"to complain"},{"audio_text":"to make the most of","id":"V4","text":"to make the most of"},{"audio_text":"rainy day","id":"V5","text":"rainy day"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d9dd7798-e108-59ff-8b99-e71ab76e3903', '3daca43e-e086-5e67-864b-59317ec3fcce', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Our trip got cancelled because of the storm."}],"explanation":"“That is a pity — if you are free Sunday, we will have a games evening instead.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"That is a pity — if you are free Sunday, we will have a games evening instead."},{"id":"C_B","is_correct":false,"text":"We cancelled it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The storm is tripping us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('7a70673f-c326-51d4-9363-c63ad7e685c7', '3daca43e-e086-5e67-864b-59317ec3fcce', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('58345264-5cd2-5734-9e37-a30afaa7f6d8', 'en', 'to hang out with', 'проводить время с', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d2890133-c6a9-5afc-95c6-75087aa96f98', 'en', 'to sleep in', 'спать допоздна', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f41886b9-a4d8-5caf-93d8-df610d62ace2', 'en', 'to go hiking', 'ходить в поход', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3d4d0d01-2645-50d7-84f1-1bdb9cb26c8f', 'en', 'to bake', 'печь', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('90642956-c702-5e05-8250-7e717b7a424d', 'en', 'all of a sudden', 'вдруг, неожиданно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('efc33910-fb6d-5bc0-8069-f7ad1a070cb0', 'en', 'to take photos', 'фотографировать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c9a45481-73c9-55ca-a5ca-af2e401534e5', 'en', 'whole day', 'целый день', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('787eea9c-584c-5bb9-b72c-0ec54eaa56a6', 'en', 'to look forward to', 'предвкушать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b92fae75-1532-58ea-aed9-b335cd95705a', 'en', 'more peaceful', 'спокойнее (более)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9476f047-0ff6-5a68-b883-ce92a1b2b076', 'en', 'to visit relatives', 'навестить родственников', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cc89431f-2392-535c-9d66-0d5fe56b0510', 'en', 'picnic', 'пикник', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0ab4ca7a-4a1d-554e-acba-67338feb1a38', 'en', 'to stay in', 'остаться дома', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('485b853b-6044-598d-902c-66425c6edf86', 'en', 'weather forecast', 'прогноз погоды', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8ef8ee0e-0d1f-580c-b071-0df28ed006df', 'en', 'to book tickets', 'купить билеты заранее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('843dbac7-abe6-5068-8977-0ea4d0bf2880', 'en', 'to cancel', 'отменить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2ffb06fb-7560-59c3-85e4-e0f69f0e86d4', 'en', 'backup plan', 'запасной план', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('016ed52a-4126-5b70-97fd-2772291d4fdc', 'en', 'to complain', 'жаловаться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('86498c0f-530f-5ebe-9445-716b16039b4b', 'en', 'to make the most of', 'извлечь максимум из', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8364f0a1-a22e-51da-af35-3e0125ed2cc3', 'en', 'rainy day', 'дождливый день', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('87cec3e1-8d62-58f9-a3af-9c326228789e', 'en', 'board game', 'настольная игра', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4b4b28b0-20e2-5cb8-a644-870836e3e6e2', 'en', 'cosy', 'уютный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7a70673f-c326-51d4-9363-c63ad7e685c7', id, 'f2f0de47-2eae-556c-a850-798e7d210dad', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'to hang out with' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7a70673f-c326-51d4-9363-c63ad7e685c7', id, 'f2f0de47-2eae-556c-a850-798e7d210dad', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to sleep in' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7a70673f-c326-51d4-9363-c63ad7e685c7', id, 'f2f0de47-2eae-556c-a850-798e7d210dad', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to go hiking' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7a70673f-c326-51d4-9363-c63ad7e685c7', id, 'f2f0de47-2eae-556c-a850-798e7d210dad', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'to bake' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7a70673f-c326-51d4-9363-c63ad7e685c7', id, 'f2f0de47-2eae-556c-a850-798e7d210dad', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'all of a sudden' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7a70673f-c326-51d4-9363-c63ad7e685c7', id, 'f2f0de47-2eae-556c-a850-798e7d210dad', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'to take photos' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7a70673f-c326-51d4-9363-c63ad7e685c7', id, 'f2f0de47-2eae-556c-a850-798e7d210dad', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'whole day' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7a70673f-c326-51d4-9363-c63ad7e685c7', id, '1f5f80be-a8f0-5e2c-b617-ced2cad7fed0', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to look forward to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7a70673f-c326-51d4-9363-c63ad7e685c7', id, '1f5f80be-a8f0-5e2c-b617-ced2cad7fed0', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'more peaceful' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7a70673f-c326-51d4-9363-c63ad7e685c7', id, '1f5f80be-a8f0-5e2c-b617-ced2cad7fed0', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to visit relatives' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7a70673f-c326-51d4-9363-c63ad7e685c7', id, '1f5f80be-a8f0-5e2c-b617-ced2cad7fed0', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'picnic' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7a70673f-c326-51d4-9363-c63ad7e685c7', id, '1f5f80be-a8f0-5e2c-b617-ced2cad7fed0', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to stay in' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7a70673f-c326-51d4-9363-c63ad7e685c7', id, '1f5f80be-a8f0-5e2c-b617-ced2cad7fed0', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'weather forecast' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7a70673f-c326-51d4-9363-c63ad7e685c7', id, '1f5f80be-a8f0-5e2c-b617-ced2cad7fed0', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to book tickets' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7a70673f-c326-51d4-9363-c63ad7e685c7', id, '3daca43e-e086-5e67-864b-59317ec3fcce', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to cancel' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7a70673f-c326-51d4-9363-c63ad7e685c7', id, '3daca43e-e086-5e67-864b-59317ec3fcce', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'backup plan' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7a70673f-c326-51d4-9363-c63ad7e685c7', id, '3daca43e-e086-5e67-864b-59317ec3fcce', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to complain' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7a70673f-c326-51d4-9363-c63ad7e685c7', id, '3daca43e-e086-5e67-864b-59317ec3fcce', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to make the most of' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7a70673f-c326-51d4-9363-c63ad7e685c7', id, '3daca43e-e086-5e67-864b-59317ec3fcce', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'rainy day' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7a70673f-c326-51d4-9363-c63ad7e685c7', id, '3daca43e-e086-5e67-864b-59317ec3fcce', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'board game' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '7a70673f-c326-51d4-9363-c63ad7e685c7', id, '3daca43e-e086-5e67-864b-59317ec3fcce', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'cosy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
