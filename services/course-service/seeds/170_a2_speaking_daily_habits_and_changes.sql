-- Track: A2_SPEAKING_DAILY_HABITS_AND_CHANGES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('f6d66ffc-d1cc-5471-ad8f-807f73d930e1', 'A2_SPEAKING_DAILY_HABITS_AND_CHANGES', 'Привычки и изменения', 'Развивайте разговорные навыки уровня A2 по теме «Привычки и изменения».', '{"en":"Daily Habits and Changes","ru":"Привычки и изменения"}'::jsonb, '{"en":"Develop A2 speaking skills for daily habits and changes.","ru":"Развивайте разговорные навыки уровня A2 по теме «Привычки и изменения»."}'::jsonb, 'en', 'A2', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('8211bd3a-6cfb-5441-8230-cafcd90f5779', NULL, 'Как изменился мой день', 'Рассказать об изменениях в привычках, используя past simple и present perfect.', '{"en":"How My Day Has Changed","ru":"Как изменился мой день"}'::jsonb, '{"en":"Talk about habit changes using past simple and present perfect.","ru":"Рассказать об изменениях в привычках, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('abe7751e-efa7-57db-94dc-73e2b2e62e64', '8211bd3a-6cfb-5441-8230-cafcd90f5779', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to give up","right":"бросить (привычку)"},{"id":"P2","left":"to take up","right":"начать (новое хобби)"},{"id":"P3","left":"used to","right":"раньше (делал)"},{"id":"P4","left":"habit","right":"привычка"},{"id":"P5","left":"morning routine","right":"утренний ритуал"},{"id":"P6","left":"lately","right":"в последнее время"},{"id":"P7","left":"to cut down on","right":"сократить (потребление)"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('240ef94b-a87c-5a98-8f2a-a7b309a13b25', '8211bd3a-6cfb-5441-8230-cafcd90f5779', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I have given up late-night snacks this month.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I have given up late-night snacks this month."},{"id":"Q_B","is_correct":false,"text":"I have given up them last month."},{"id":"Q_C","is_correct":false,"text":"I give up snacks already lately."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7f4a8b2-2e29-50c3-985b-f6d9885f1bea', '8211bd3a-6cfb-5441-8230-cafcd90f5779', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I used to drink three cups of coffee, but now I have cut down to one.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Раньше я пил три чашки кофе, а теперь сократил до одной.","target_language":"en","word_bank":["to","to","three","have","drink","now","cups","cut","drink","but","did","yesterday","I","I","coffee,","of","used","down","one."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6512c246-2a93-527b-a8f1-1fb7a5b2d75e', '8211bd3a-6cfb-5441-8230-cafcd90f5779', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"took","instruction":"Выберите подходящее слово.","options":["took","has take","taking"],"sentence_template":"Last year she ___ up running in the mornings.","translation_hint":"В прошлом году она начала бегать по утрам."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7fa2a8c1-69dd-512e-a238-d0cb6c71df9b', '8211bd3a-6cfb-5441-8230-cafcd90f5779', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["He","has","changed","his","morning","routine","completely."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["He","has","was","completely.","his","changed","routine","did","morning"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('88c7c04c-5240-5ec4-a645-b6e2d04562b1', '8211bd3a-6cfb-5441-8230-cafcd90f5779', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I used to check my phone in bed, but I have stopped doing it, and my sleep is much better.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7a847be-00fa-5339-aba9-aa071dd24035', '8211bd3a-6cfb-5441-8230-cafcd90f5779', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I used to check my phone in bed, but I have stopped doing it, and my sleep is much better.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Раньше я листал телефон в кровати, но прекратил это делать, и сон стал гораздо лучше."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0dee160e-8645-594f-b1f1-96fe7ccee6a5', '8211bd3a-6cfb-5441-8230-cafcd90f5779', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"You look much fitter lately. What has changed?","translation":"В последнее время ты выглядишь стройнее. Что изменилось?","type":"dialogue"},{"character":"Tom","text":"I have taken up swimming, and I go twice a week.","translation":"Я начал плавать и хожу дважды в неделю.","type":"dialogue"},{"options":[{"is_correct":true,"text":"How long have you been doing it?"},{"is_correct":false,"text":"How long did you do it tomorrow?"},{"is_correct":false,"text":"Is the swimming doing you twice a week?"}],"text":"What does Anna ask?","type":"choice"}],"title":"A New Habit"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d6a06014-5a09-5f18-808c-3ef2c9335c61', '8211bd3a-6cfb-5441-8230-cafcd90f5779', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to take up” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To start a new hobby or activity"},{"id":"D_B","is_correct":false,"text":"To stop doing something you enjoyed"},{"id":"D_C","is_correct":false,"text":"To lend something to a friend"}],"word":"to take up"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('03814307-26f7-5070-880b-2a143bd88327', '8211bd3a-6cfb-5441-8230-cafcd90f5779', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have taken up yoga this spring.","explanation":"The missing word is “taken”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"taken","id":"LW_A","is_correct":true},{"audio_text":"take","id":"LW_B","is_correct":false},{"audio_text":"taking","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ up yoga this spring."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f3891739-2b88-5f3e-b518-90225c45c33c', '8211bd3a-6cfb-5441-8230-cafcd90f5779', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"down","explanation":"The complete sentence is “She has cut down on sugar.”.","hint_prefix":"do","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"She has cut ___ on sugar."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cdc1eda0-f908-59b2-871d-051159ebb03a', '8211bd3a-6cfb-5441-8230-cafcd90f5779', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to give up","id":"V1","text":"to give up"},{"audio_text":"to take up","id":"V2","text":"to take up"},{"audio_text":"used to","id":"V3","text":"used to"},{"audio_text":"habit","id":"V4","text":"habit"},{"audio_text":"morning routine","id":"V5","text":"morning routine"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d92f6dc1-11fa-5bae-92e4-3f179bd466fb', '8211bd3a-6cfb-5441-8230-cafcd90f5779', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Do you still work late every evening?"}],"explanation":"“No, I have changed that — I finish at six now and feel much better.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"No, I have changed that — I finish at six now and feel much better."},{"id":"C_B","is_correct":false,"text":"Yes, I change it tomorrow yesterday."},{"id":"C_C","is_correct":false,"text":"The evenings are working me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f6d66ffc-d1cc-5471-ad8f-807f73d930e1', '8211bd3a-6cfb-5441-8230-cafcd90f5779', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f0721ef7-ec95-557c-b98e-a1407b7faa8e', NULL, 'Новые привычки с понедельника', 'Рассказать о планах изменить привычки и сравнить подходы.', '{"en":"New Habits From Monday","ru":"Новые привычки с понедельника"}'::jsonb, '{"en":"Talk about plans to change habits and compare approaches.","ru":"Рассказать о планах изменить привычки и сравнить подходы."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('81dcd5f4-c580-55bd-909a-da3e5b67c863', 'f0721ef7-ec95-557c-b98e-a1407b7faa8e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"gradually","right":"постепенно"},{"id":"P2","left":"all at once","right":"всё сразу"},{"id":"P3","left":"more realistic","right":"реалистичнее"},{"id":"P4","left":"to set a goal","right":"поставить цель"},{"id":"P5","left":"step by step","right":"шаг за шагом"},{"id":"P6","left":"to track progress","right":"отслеживать прогресс"},{"id":"P7","left":"motivation","right":"мотивация"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8a0c5f56-30e9-59bd-b1ab-f0acfb800668', 'f0721ef7-ec95-557c-b98e-a1407b7faa8e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Changing habits gradually is more realistic than changing everything at once.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Changing habits gradually is more realistic than changing everything at once."},{"id":"Q_B","is_correct":false,"text":"Changing gradually is realister than at once."},{"id":"Q_C","is_correct":false,"text":"Changing gradually is most realistic than all at once."}],"question":"Which sentence compares two approaches correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9d92d4af-21cb-5f56-a80f-b790e2e19c8d', 'f0721ef7-ec95-557c-b98e-a1407b7faa8e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"From Monday I am going to get up half an hour earlier — gradually.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"С понедельника я собираюсь вставать на полчаса раньше — постепенно.","target_language":"en","word_bank":["did","yesterday","up","earlier","From","am","gradually.","going","get","Monday","hour","an","half","I","got","to","—"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd48b07b-ca40-5ebf-ac6d-6374acaf625d', 'f0721ef7-ec95-557c-b98e-a1407b7faa8e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"more","instruction":"Выберите подходящее слово.","options":["more","most","much"],"sentence_template":"Small steps are ___ sustainable than big promises.","translation_hint":"Маленькие шаги устойчивее больших обещаний."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('076b0195-ecde-5d6b-b821-4a5d063461a1', 'f0721ef7-ec95-557c-b98e-a1407b7faa8e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","am","going","to","track","my","progress","in","a","simple","app."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["was","in","am","to","I","simple","did","a","my","progress","app.","going","track"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fa507a13-d347-54de-ae73-7b8a53d7ca29', 'f0721ef7-ec95-557c-b98e-a1407b7faa8e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you set one small goal at a time, you will keep your motivation much longer.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1ff9ad6f-9924-5943-9223-17af9a8ea32c', 'f0721ef7-ec95-557c-b98e-a1407b7faa8e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you set one small goal at a time, you will keep your motivation much longer.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если ставить одну маленькую цель за раз, мотивация сохранится гораздо дольше."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b661ec29-bc94-5f86-acd6-8afc8b3273fd', 'f0721ef7-ec95-557c-b98e-a1407b7faa8e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"I am going to change five things from Monday — diet, sport, sleep, everything!","translation":"С понедельника меняю пять вещей — питание, спорт, сон, всё!","type":"dialogue"},{"character":"Tom","text":"All at once? That sounds hard.","translation":"Всё сразу? Звучит тяжело.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Maybe one change at a time is more realistic."},{"is_correct":false,"text":"Five changes were realistic yesterday tomorrow."},{"is_correct":false,"text":"Monday is changing Anna''s things."}],"text":"What does Tom advise?","type":"choice"}],"title":"The Monday Plan"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a864cd38-eaa4-57d3-91b2-ae782a40e623', 'f0721ef7-ec95-557c-b98e-a1407b7faa8e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“gradually” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Slowly, step by step over time"},{"id":"D_B","is_correct":false,"text":"Very quickly, in a single day"},{"id":"D_C","is_correct":false,"text":"Without any plan or goal"}],"word":"gradually"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b3b58332-5939-50f4-afd1-025b4ea4d418', 'f0721ef7-ec95-557c-b98e-a1407b7faa8e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to set one small goal.","explanation":"The missing word is “set”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"set","id":"LW_A","is_correct":true},{"audio_text":"setted","id":"LW_B","is_correct":false},{"audio_text":"setting","id":"LW_C","is_correct":false}],"sentence_template":"I am going to ___ one small goal."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('045c5765-d2d8-5ed5-8bb5-5f664ef2c2ae', 'f0721ef7-ec95-557c-b98e-a1407b7faa8e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"more","explanation":"The complete sentence is “One habit at a time is more effective.”.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"One habit at a time is ___ effective."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0d7ade62-bad3-519d-965c-0bad50da692a', 'f0721ef7-ec95-557c-b98e-a1407b7faa8e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"gradually","id":"V1","text":"gradually"},{"audio_text":"all at once","id":"V2","text":"all at once"},{"audio_text":"more realistic","id":"V3","text":"more realistic"},{"audio_text":"to set a goal","id":"V4","text":"to set a goal"},{"audio_text":"step by step","id":"V5","text":"step by step"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b490bbe3-e663-5a9a-8c76-675017436c17', 'f0721ef7-ec95-557c-b98e-a1407b7faa8e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"I want to start running every day."}],"explanation":"“Start with three days a week — if it feels easy, you will add more naturally.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Start with three days a week — if it feels easy, you will add more naturally."},{"id":"C_B","is_correct":false,"text":"I started it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The running is starting me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f6d66ffc-d1cc-5471-ad8f-807f73d930e1', 'f0721ef7-ec95-557c-b98e-a1407b7faa8e', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c0e2ced4-c1f3-5ec8-ac05-a6f2c763146a', NULL, 'Хорошая привычка или плохая', 'Обсудить привычки, используя should и первое условное.', '{"en":"Good Habit or Bad Habit","ru":"Хорошая привычка или плохая"}'::jsonb, '{"en":"Discuss habits using should and the first conditional.","ru":"Обсудить привычки, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('07026802-687e-59e7-b3ed-9916e744d7ec', 'c0e2ced4-c1f3-5ec8-ac05-a6f2c763146a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"willpower","right":"сила воли"},{"id":"P2","left":"to reward yourself","right":"наградить себя"},{"id":"P3","left":"to skip","right":"пропустить (занятие)"},{"id":"P4","left":"regularly","right":"регулярно"},{"id":"P5","left":"to remind","right":"напомнить"},{"id":"P6","left":"bad habit","right":"вредная привычка"},{"id":"P7","left":"to stick to","right":"придерживаться"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16bb90c3-1a28-5ba6-a894-333df1a6db4c', 'c0e2ced4-c1f3-5ec8-ac05-a6f2c763146a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should reward yourself when you keep a habit.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should reward yourself when you keep a habit."},{"id":"Q_B","is_correct":false,"text":"You should to reward yourself yesterday."},{"id":"Q_C","is_correct":false,"text":"You must rewarding yourself last week."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('60df8c6e-ab37-5002-b3ed-31f8b6c6c9bd', 'c0e2ced4-c1f3-5ec8-ac05-a6f2c763146a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you skip the session once, it does not mean you should give up.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если ты пропустишь занятие один раз, это не значит, что надо бросать.","target_language":"en","word_bank":["once,","should","does","session","skip","you","did","it","you","mean","If","give","skipped","not","the","yesterday","up."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a154d33c-ac59-5e2b-ac66-fbbab19e0196', 'c0e2ced4-c1f3-5ec8-ac05-a6f2c763146a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"keep","instruction":"Выберите подходящее слово.","options":["keep","will keep","kept"],"sentence_template":"If you ___ your habit for a month, it will feel natural.","translation_hint":"Если поддерживать привычку месяц, она станет естественной."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('caf66032-e208-52ad-bfbb-5fadfdddceca', 'c0e2ced4-c1f3-5ec8-ac05-a6f2c763146a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","put","your","trainers","next","to","the","door."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["next","the","You","your","should","mustn''t","put","to","door.","trainers","went"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c8c5bca-3ec5-5a20-818e-d3c7fcf10d0d', 'c0e2ced4-c1f3-5ec8-ac05-a6f2c763146a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you make the habit smaller, your willpower will need to work less, and you will stick to it.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ddbe6dd2-e9d5-5c19-bddf-4eee837a4438', 'c0e2ced4-c1f3-5ec8-ac05-a6f2c763146a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you make the habit smaller, your willpower will need to work less, and you will stick to it.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если сделать привычку меньше, сила воли будет нужна реже, и ты сможешь её придерживаться."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('52cc9766-f088-5aad-a94b-28c21a4ab974', 'c0e2ced4-c1f3-5ec8-ac05-a6f2c763146a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"I skipped my English practice yesterday, and today too.","translation":"Я пропустила вчера практику английского, и сегодня тоже.","type":"dialogue"},{"character":"Tom","text":"That happens. What should you do next?","translation":"Так бывает. Что делать дальше?","type":"dialogue"},{"options":[{"is_correct":true,"text":"You should do just five minutes today to restart."},{"is_correct":false,"text":"You must doing five minutes yesterday."},{"is_correct":false,"text":"The practice is skipping you back."}],"text":"What is the best advice?","type":"choice"}],"title":"The Skipped Day"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bcabe07a-3633-5bf2-94fb-d42fe8a80d5d', 'c0e2ced4-c1f3-5ec8-ac05-a6f2c763146a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“willpower” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"The mental strength to do something difficult"},{"id":"D_B","is_correct":false,"text":"A reward you get for good results"},{"id":"D_C","is_correct":false,"text":"A habit you do without thinking"}],"word":"willpower"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f38fee2d-8a6c-5790-b0c4-612d0f8a3a2a', 'c0e2ced4-c1f3-5ec8-ac05-a6f2c763146a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you reward yourself after each week, habits stick.","explanation":"The missing word is “reward”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"reward","id":"LW_A","is_correct":true},{"audio_text":"will reward","id":"LW_B","is_correct":false},{"audio_text":"rewarded","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ yourself after each week, habits stick."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fecc8229-e406-5090-bb6f-a95d941e4580', 'c0e2ced4-c1f3-5ec8-ac05-a6f2c763146a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"to","explanation":"The complete sentence is “You should stick to the plan for a month.”.","hint_prefix":"to","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should stick ___ the plan for a month."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6711797c-7938-528b-934d-f8be8981fc98', 'c0e2ced4-c1f3-5ec8-ac05-a6f2c763146a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"willpower","id":"V1","text":"willpower"},{"audio_text":"to reward yourself","id":"V2","text":"to reward yourself"},{"audio_text":"to skip","id":"V3","text":"to skip"},{"audio_text":"regularly","id":"V4","text":"regularly"},{"audio_text":"to remind","id":"V5","text":"to remind"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c485e277-d150-5ec1-8aa5-cedc7576f7d6', 'c0e2ced4-c1f3-5ec8-ac05-a6f2c763146a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"I keep forgetting to do my exercises."}],"explanation":"“Set a phone reminder — if it rings at the same time daily, you will remember.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Set a phone reminder — if it rings at the same time daily, you will remember."},{"id":"C_B","is_correct":false,"text":"I set it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The exercises are forgetting me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f6d66ffc-d1cc-5471-ad8f-807f73d930e1', 'c0e2ced4-c1f3-5ec8-ac05-a6f2c763146a', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('89c7cda6-468f-56ac-a7c3-7417df662dca', 'en', 'to give up', 'бросить (привычку)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e145e089-1eef-5890-8a45-c98d103556c9', 'en', 'to take up', 'начать (новое хобби)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('343d4964-2251-51dd-bfc1-db0be8e0541e', 'en', 'used to', 'раньше (делал)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('96ae1f02-779f-5fe4-9ac5-6870c5f42c5e', 'en', 'habit', 'привычка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c5571d7c-1363-51cf-9282-8fa8f2e2b34d', 'en', 'morning routine', 'утренний ритуал', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('40874f5a-ee5f-580e-8cb5-082da06c6a23', 'en', 'lately', 'в последнее время', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d7a6a67-6c55-51e0-bb22-b9d2c2a6ed9e', 'en', 'to cut down on', 'сократить (потребление)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3a2a631c-2116-54a9-ad7e-595424748c15', 'en', 'gradually', 'постепенно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('521fc24e-6921-5fdf-81fa-60693ddfa537', 'en', 'all at once', 'всё сразу', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0d98a528-0888-500c-a383-2f9fdef4b2b4', 'en', 'more realistic', 'реалистичнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b952664b-3f5a-5fa7-9930-26039a6fd153', 'en', 'to set a goal', 'поставить цель', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9d9b1ae9-f3d5-54ca-89c3-f6c306284a06', 'en', 'step by step', 'шаг за шагом', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('47349a61-acd8-5d4e-8455-cd9be3b969f6', 'en', 'to track progress', 'отслеживать прогресс', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ea12f93b-5c43-530d-9c63-a9eddf79138b', 'en', 'motivation', 'мотивация', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c2c17c37-b1f1-5912-adc4-6bc98d96e128', 'en', 'willpower', 'сила воли', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c7e0ff82-105a-5972-bfdf-c7edc41b2b92', 'en', 'to reward yourself', 'наградить себя', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7b2e6c44-641c-5ef3-b773-e425a0910fa8', 'en', 'to skip', 'пропустить (занятие)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b91591cb-a38e-5ed2-bc8e-f05b47a31e0e', 'en', 'regularly', 'регулярно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a293c728-d11e-5893-8c1d-b3807474c23b', 'en', 'to remind', 'напомнить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eac77883-f30a-55a3-ae67-17c48ba2da82', 'en', 'bad habit', 'вредная привычка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ba787372-fdae-5a07-bd4a-8b075aab99fc', 'en', 'to stick to', 'придерживаться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f6d66ffc-d1cc-5471-ad8f-807f73d930e1', id, '8211bd3a-6cfb-5441-8230-cafcd90f5779', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'to give up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f6d66ffc-d1cc-5471-ad8f-807f73d930e1', id, '8211bd3a-6cfb-5441-8230-cafcd90f5779', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to take up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f6d66ffc-d1cc-5471-ad8f-807f73d930e1', id, '8211bd3a-6cfb-5441-8230-cafcd90f5779', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'used to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f6d66ffc-d1cc-5471-ad8f-807f73d930e1', id, '8211bd3a-6cfb-5441-8230-cafcd90f5779', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'habit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f6d66ffc-d1cc-5471-ad8f-807f73d930e1', id, '8211bd3a-6cfb-5441-8230-cafcd90f5779', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'morning routine' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f6d66ffc-d1cc-5471-ad8f-807f73d930e1', id, '8211bd3a-6cfb-5441-8230-cafcd90f5779', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'lately' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f6d66ffc-d1cc-5471-ad8f-807f73d930e1', id, '8211bd3a-6cfb-5441-8230-cafcd90f5779', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'to cut down on' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f6d66ffc-d1cc-5471-ad8f-807f73d930e1', id, 'f0721ef7-ec95-557c-b98e-a1407b7faa8e', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'gradually' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f6d66ffc-d1cc-5471-ad8f-807f73d930e1', id, 'f0721ef7-ec95-557c-b98e-a1407b7faa8e', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'all at once' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f6d66ffc-d1cc-5471-ad8f-807f73d930e1', id, 'f0721ef7-ec95-557c-b98e-a1407b7faa8e', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'more realistic' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f6d66ffc-d1cc-5471-ad8f-807f73d930e1', id, 'f0721ef7-ec95-557c-b98e-a1407b7faa8e', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to set a goal' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f6d66ffc-d1cc-5471-ad8f-807f73d930e1', id, 'f0721ef7-ec95-557c-b98e-a1407b7faa8e', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'step by step' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f6d66ffc-d1cc-5471-ad8f-807f73d930e1', id, 'f0721ef7-ec95-557c-b98e-a1407b7faa8e', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to track progress' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f6d66ffc-d1cc-5471-ad8f-807f73d930e1', id, 'f0721ef7-ec95-557c-b98e-a1407b7faa8e', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'motivation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f6d66ffc-d1cc-5471-ad8f-807f73d930e1', id, 'c0e2ced4-c1f3-5ec8-ac05-a6f2c763146a', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'willpower' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f6d66ffc-d1cc-5471-ad8f-807f73d930e1', id, 'c0e2ced4-c1f3-5ec8-ac05-a6f2c763146a', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to reward yourself' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f6d66ffc-d1cc-5471-ad8f-807f73d930e1', id, 'c0e2ced4-c1f3-5ec8-ac05-a6f2c763146a', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to skip' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f6d66ffc-d1cc-5471-ad8f-807f73d930e1', id, 'c0e2ced4-c1f3-5ec8-ac05-a6f2c763146a', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'regularly' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f6d66ffc-d1cc-5471-ad8f-807f73d930e1', id, 'c0e2ced4-c1f3-5ec8-ac05-a6f2c763146a', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to remind' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f6d66ffc-d1cc-5471-ad8f-807f73d930e1', id, 'c0e2ced4-c1f3-5ec8-ac05-a6f2c763146a', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'bad habit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f6d66ffc-d1cc-5471-ad8f-807f73d930e1', id, 'c0e2ced4-c1f3-5ec8-ac05-a6f2c763146a', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to stick to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
