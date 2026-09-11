-- Track: A2_SPEAKING_FUTURE_PLANS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('a3d2e99f-0be5-5717-aa25-c1eb15266049', 'A2_SPEAKING_FUTURE_PLANS', 'Планы на будущее', 'Развивайте разговорные навыки уровня A2 по теме «Планы на будущее».', '{"en":"Future Plans","ru":"Планы на будущее"}'::jsonb, '{"en":"Develop A2 speaking skills for future plans.","ru":"Развивайте разговорные навыки уровня A2 по теме «Планы на будущее»."}'::jsonb, 'en', 'A2', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('66761b16-ab7e-59bd-98eb-386991b79544', NULL, 'Что я уже сделал для цели', 'Рассказать о подготовке к планам, используя past simple и present perfect.', '{"en":"What I Have Already Done for the Goal","ru":"Что я уже сделал для цели"}'::jsonb, '{"en":"Talk about preparation for plans using past simple and present perfect.","ru":"Рассказать о подготовке к планам, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('954ae0d3-5a37-5f36-a472-b210d19fd170', '66761b16-ab7e-59bd-98eb-386991b79544', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to save up","right":"копить (деньги)"},{"id":"P2","left":"to apply for a course","right":"подать документы на курс"},{"id":"P3","left":"goal","right":"цель"},{"id":"P4","left":"to enrol","right":"записаться (на учёбу)"},{"id":"P5","left":"to book in advance","right":"забронировать заранее"},{"id":"P6","left":"step","right":"шаг"},{"id":"P7","left":"achieved","right":"достигнутый"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4f714abc-ee9a-59b2-8ccf-214a145adb51', '66761b16-ab7e-59bd-98eb-386991b79544', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I have saved up half of the money for the car.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I have saved up half of the money for the car."},{"id":"Q_B","is_correct":false,"text":"I have saved up it last month."},{"id":"Q_C","is_correct":false,"text":"I save up half already now."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('19df8fb1-ad67-5065-b900-9880a1da3866', '66761b16-ab7e-59bd-98eb-386991b79544', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I enrolled in a driving course and have already passed the theory.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я записался на курсы вождения и уже прошёл теорию.","target_language":"en","word_bank":["a","driving","theory.","enrols","enrolled","tomorrow","and","course","the","passed","already","in","I","did","have"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce329eda-2884-573a-8511-4049444846e1', '66761b16-ab7e-59bd-98eb-386991b79544', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"ago","instruction":"Выберите подходящее слово.","options":["ago","since","before"],"sentence_template":"She applied for the language course three weeks ___ .","translation_hint":"Она подала документы на языковой курс три недели назад."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b6fe3f34-a4f2-505c-b7b0-f4bea2898922', '66761b16-ab7e-59bd-98eb-386991b79544', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","have","taken","the","first","step","towards","our","goal."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["taken","did","goal.","was","We","our","first","the","step","towards","have"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c01c097c-c893-5629-a7d5-713067c351ff', '66761b16-ab7e-59bd-98eb-386991b79544', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I started saving in January, and I have already reached a third of my goal.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b8564c60-71c6-5ed4-a99b-f9ad91b886d0', '66761b16-ab7e-59bd-98eb-386991b79544', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I started saving in January, and I have already reached a third of my goal.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Я начал копить в январе и уже достиг трети своей цели."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f8481f79-08be-5ead-82ed-1471841fe875', '66761b16-ab7e-59bd-98eb-386991b79544', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"So, the plan is to open a small cafe next year. What have you done so far?","translation":"Итак, план — открыть небольшое кафе в следующем году. Что ты уже сделал?","type":"dialogue"},{"character":"Tom","text":"I have written the business plan and found two possible locations.","translation":"Я написал бизнес-план и нашёл два возможных места.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Have you compared the rents yet?"},{"is_correct":false,"text":"Did you has compared them tomorrow?"},{"is_correct":false,"text":"Is the plan opening the cafe itself?"}],"text":"What does Anna ask?","type":"choice"}],"title":"The Big Plan"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0df1f95-4fd9-5891-b934-bd8658ed815a', '66761b16-ab7e-59bd-98eb-386991b79544', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to enrol” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To officially join a course or school"},{"id":"D_B","is_correct":false,"text":"To leave a course before it finishes"},{"id":"D_C","is_correct":false,"text":"To teach a course to others"}],"word":"to enrol"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('807f4107-2bad-519a-a1b3-14c027078b2a', '66761b16-ab7e-59bd-98eb-386991b79544', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have enrolled in a cooking course.","explanation":"The missing word is “enrolled”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"enrolled","id":"LW_A","is_correct":true},{"audio_text":"enrol","id":"LW_B","is_correct":false},{"audio_text":"enrolling","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ in a cooking course."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c438965-a478-5252-a4b2-8a64c4ec1a24', '66761b16-ab7e-59bd-98eb-386991b79544', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"up","explanation":"The complete sentence is “She has saved up 500 euros.”.","hint_prefix":"up","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"She has saved ___ 500 euros."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d9dd0258-2f75-5f68-95f1-110aa974c2dd', '66761b16-ab7e-59bd-98eb-386991b79544', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to save up","id":"V1","text":"to save up"},{"audio_text":"to apply for a course","id":"V2","text":"to apply for a course"},{"audio_text":"goal","id":"V3","text":"goal"},{"audio_text":"to enrol","id":"V4","text":"to enrol"},{"audio_text":"to book in advance","id":"V5","text":"to book in advance"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('918681fa-2176-5590-8e4a-b740dcea5b36', '66761b16-ab7e-59bd-98eb-386991b79544', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"How are your plans for the move going?"}],"explanation":"“Slowly but surely — I have packed the books and have sold the old sofa.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Slowly but surely — I have packed the books and have sold the old sofa."},{"id":"C_B","is_correct":false,"text":"I pack them yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The plans are moving me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a3d2e99f-0be5-5717-aa25-c1eb15266049', '66761b16-ab7e-59bd-98eb-386991b79544', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f8f72c3c-3d40-5766-a754-b2296734c369', NULL, 'Планы на год', 'Рассказать о планах и сравнить варианты будущего.', '{"en":"Plans for the Year","ru":"Планы на год"}'::jsonb, '{"en":"Talk about plans and compare future options.","ru":"Рассказать о планах и сравнить варианты будущего."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3d32de1d-beba-52ae-a85d-590dbb9ef085', 'f8f72c3c-3d40-5766-a754-b2296734c369', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to move abroad","right":"переехать за границу"},{"id":"P2","left":"safer","right":"безопаснее (вариант)"},{"id":"P3","left":"more exciting","right":"интереснее"},{"id":"P4","left":"to change jobs","right":"сменить работу"},{"id":"P5","left":"to be going to","right":"собираться"},{"id":"P6","left":"opportunity","right":"возможность"},{"id":"P7","left":"in five years","right":"через пять лет"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1deef8a-9303-5986-9581-2f68e0acf5a0', 'f8f72c3c-3d40-5766-a754-b2296734c369', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I am going to change jobs in September.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I am going to change jobs in September."},{"id":"Q_B","is_correct":false,"text":"I changed jobs in September last year."},{"id":"Q_C","is_correct":false,"text":"I has changed jobs tomorrow already."}],"question":"Which sentence talks about a plan?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('623dbbb5-5584-5f9a-a375-57ccc95b9968', 'f8f72c3c-3d40-5766-a754-b2296734c369', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We are going to move to the coast, although life there is more expensive.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мы собираемся переехать к морю, хотя жизнь там дороже.","target_language":"en","word_bank":["is","life","to","more","expensive.","going","move","to","yesterday","the","moved","there","We","are","although","coast,","did"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc1afc90-2837-51e1-8abd-01df263fd5f6', 'f8f72c3c-3d40-5766-a754-b2296734c369', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"safer","instruction":"Выберите подходящее слово.","options":["safer","safest","more safe"],"sentence_template":"Staying in the same job is ___ than starting a business.","translation_hint":"Остаться на той же работе безопаснее, чем открыть своё дело."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('572b45eb-6844-5098-a6d5-c5f629651a0a', 'f8f72c3c-3d40-5766-a754-b2296734c369', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["They","are","going","to","buy","a","small","house","in","the","village."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["a","going","to","buy","did","small","house","are","the","They","village.","in","was"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3ccecd65-4f5c-54bd-9a8a-6bbea73f9137', 'f8f72c3c-3d40-5766-a754-b2296734c369', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If I get this opportunity, I am going to take it, even if it is the harder choice.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a51b802-bbad-5c80-95e2-52c216d63d61', 'f8f72c3c-3d40-5766-a754-b2296734c369', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If I get this opportunity, I am going to take it, even if it is the harder choice.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если представится такая возможность, я ею воспользуюсь, даже если это более сложный выбор."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b2eb5f2-bd32-563b-9d5a-f6a33a923eb7', 'f8f72c3c-3d40-5766-a754-b2296734c369', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"Next year I can either study abroad or stay and work.","translation":"В следующем году я могу либо учиться за границей, либо остаться и работать.","type":"dialogue"},{"character":"Tom","text":"Studying is more expensive, but it opens more doors.","translation":"Учёба дороже, но открывает больше дверей.","type":"dialogue"},{"options":[{"is_correct":true,"text":"True — and if I stay, I will always wonder about the other path."},{"is_correct":false,"text":"True, and I stayed there yesterday tomorrow."},{"is_correct":false,"text":"Is the path studying me next year?"}],"text":"What does Anna think?","type":"choice"}],"title":"Two Paths"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('413c5212-20bd-50a3-8705-8a9009b04af6', 'f8f72c3c-3d40-5766-a754-b2296734c369', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“opportunity” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A chance to do something good"},{"id":"D_B","is_correct":false,"text":"A problem that blocks your plans"},{"id":"D_C","is_correct":false,"text":"A rule that limits your choices"}],"word":"opportunity"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b7044961-308f-5d0d-ac68-f72bf823148d', 'f8f72c3c-3d40-5766-a754-b2296734c369', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to change jobs in autumn.","explanation":"The missing word is “change”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"change","id":"LW_A","is_correct":true},{"audio_text":"changed","id":"LW_B","is_correct":false},{"audio_text":"changing","id":"LW_C","is_correct":false}],"sentence_template":"I am going to ___ jobs in autumn."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('19b50259-3111-5679-82e1-4573d5aa5c62', 'f8f72c3c-3d40-5766-a754-b2296734c369', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"better","explanation":"The complete sentence is “The city job is better paid than the village one.”.","hint_prefix":"be","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The city job is ___ paid than the village one."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f614890f-eabb-55f5-8b46-a6d86ab2a029', 'f8f72c3c-3d40-5766-a754-b2296734c369', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to move abroad","id":"V1","text":"to move abroad"},{"audio_text":"safer","id":"V2","text":"safer"},{"audio_text":"more exciting","id":"V3","text":"more exciting"},{"audio_text":"to change jobs","id":"V4","text":"to change jobs"},{"audio_text":"to be going to","id":"V5","text":"to be going to"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('134a3526-98b8-5066-bc97-1768963d6255', 'f8f72c3c-3d40-5766-a754-b2296734c369', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Any big plans for the summer?"}],"explanation":"“Yes — we are going to visit my in-laws, and if we save enough, we will add a week by the sea.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes — we are going to visit my in-laws, and if we save enough, we will add a week by the sea."},{"id":"C_B","is_correct":false,"text":"We visited them yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The summer is planning us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a3d2e99f-0be5-5717-aa25-c1eb15266049', 'f8f72c3c-3d40-5766-a754-b2296734c369', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2b096046-267b-51e2-87cf-6286801f1683', NULL, 'Если план не сбудется', 'Обсудить запасные планы, используя should и первое условное.', '{"en":"If the Plan Does Not Work Out","ru":"Если план не сбудется"}'::jsonb, '{"en":"Discuss backup plans using should and the first conditional.","ru":"Обсудить запасные планы, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('13e91792-04ef-5b10-b1a1-55376e82c93d', '2b096046-267b-51e2-87cf-6286801f1683', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"plan B","right":"запасной план"},{"id":"P2","left":"to fail","right":"провалиться (о плане)"},{"id":"P3","left":"to prepare for the worst","right":"готовиться к худшему"},{"id":"P4","left":"to learn from","right":"извлечь урок из"},{"id":"P5","left":"to adapt","right":"адаптироваться"},{"id":"P6","left":"positive","right":"позитивный"},{"id":"P7","left":"to give up","right":"сдаваться"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4acdf453-2dd4-5cd2-8c2a-b1329efec1b7', '2b096046-267b-51e2-87cf-6286801f1683', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should always have a plan B.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should always have a plan B."},{"id":"Q_B","is_correct":false,"text":"You should to have it yesterday."},{"id":"Q_C","is_correct":false,"text":"You must having it last year."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('37e86b26-e8cb-5062-afbb-fd1fbf4ac16f', '2b096046-267b-51e2-87cf-6286801f1683', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If the plan fails, we will learn from it and try again.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если план провалится, мы извлечём урок и попробуем снова.","target_language":"en","word_bank":["try","and","will","yesterday","If","the","fails,","from","plan","failed","again.","did","learn","we","it"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('64629538-aaad-5c83-b44b-3935fc03f8ff', '2b096046-267b-51e2-87cf-6286801f1683', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"is","instruction":"Выберите подходящее слово.","options":["is","will be","was"],"sentence_template":"If the visa ___ refused, we will travel inside the country.","translation_hint":"Если виза будет отклонена, мы попутешествуем по стране."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12f3cd0e-bbc1-5501-bd49-a542a44f00cd', '2b096046-267b-51e2-87cf-6286801f1683', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","prepare","for","both","outcomes."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["went","You","both","outcomes.","prepare","mustn''t","for","should"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b33476b-7ed3-59b2-b01b-6425b65bb46b', '2b096046-267b-51e2-87cf-6286801f1683', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If one door closes, another one will open — but only for people who keep looking.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a41a5f2c-a15f-5b3e-8248-c12d3121da99', '2b096046-267b-51e2-87cf-6286801f1683', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If one door closes, another one will open — but only for people who keep looking.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если одна дверь закрывается, откроется другая — но только для тех, кто продолжает искать."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0598379-1ca5-55ee-9cf5-a2f3fdb4c7c5', '2b096046-267b-51e2-87cf-6286801f1683', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"The embassy has refused our visa application.","translation":"Посольство отклонило нашу заявку на визу.","type":"dialogue"},{"character":"Tom","text":"That is disappointing. What is our plan B?","translation":"Это разочаровывает. Каков наш запасной план?","type":"dialogue"},{"options":[{"is_correct":true,"text":"If we cannot appeal, we will discover our own region instead."},{"is_correct":false,"text":"If we appealed it tomorrow yesterday, all was fine."},{"is_correct":false,"text":"The visa is planning our region."}],"text":"What does Anna say?","type":"choice"}],"title":"The Rejected Application"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e9d4245-a0bd-5909-afbc-cdf63cc80bbe', '2b096046-267b-51e2-87cf-6286801f1683', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“plan B” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"An alternative plan if the first one fails"},{"id":"D_B","is_correct":false,"text":"The first and best plan you make"},{"id":"D_C","is_correct":false,"text":"A plan you never intend to use"}],"word":"plan B"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('46a10537-b05a-5c70-a5f8-f64522cbac14', '2b096046-267b-51e2-87cf-6286801f1683', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If the course is full, we will find a tutor.","explanation":"The missing word is “is full”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"is full","id":"LW_A","is_correct":true},{"audio_text":"will be full","id":"LW_B","is_correct":false},{"audio_text":"was full","id":"LW_C","is_correct":false}],"sentence_template":"If the course ___ , we will find a tutor."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fbbb1fec-0b4d-57dc-897c-886a54dc535a', '2b096046-267b-51e2-87cf-6286801f1683', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"up","explanation":"The complete sentence is “You should never give up after one failure.”.","hint_prefix":"up","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should never give ___ after one failure."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0a10c01-f909-5856-bdbe-b0a47e3f2354', '2b096046-267b-51e2-87cf-6286801f1683', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"plan B","id":"V1","text":"plan B"},{"audio_text":"to fail","id":"V2","text":"to fail"},{"audio_text":"to prepare for the worst","id":"V3","text":"to prepare for the worst"},{"audio_text":"to learn from","id":"V4","text":"to learn from"},{"audio_text":"to adapt","id":"V5","text":"to adapt"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2472e100-e2a7-5334-89ea-f988afc82495', '2b096046-267b-51e2-87cf-6286801f1683', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"I did not pass the entrance exam."}],"explanation":"“Do not give up — if you try again in spring, you will be twice as prepared.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Do not give up — if you try again in spring, you will be twice as prepared."},{"id":"C_B","is_correct":false,"text":"I passed it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The exam is giving up me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a3d2e99f-0be5-5717-aa25-c1eb15266049', '2b096046-267b-51e2-87cf-6286801f1683', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('172dc7ba-8ab8-5293-b976-3c33dbe0a801', 'en', 'to save up', 'копить (деньги)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3721bccf-a59c-5b32-820e-1e515964f0c2', 'en', 'to apply for a course', 'подать документы на курс', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('19a79cb5-83d6-576d-ab8f-3a32714c275b', 'en', 'goal', 'цель', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5e35a9da-d018-513c-8ff3-f04b2520f395', 'en', 'to enrol', 'записаться (на учёбу)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ca0b287e-cd58-5ef4-868a-0a71caaa4760', 'en', 'to book in advance', 'забронировать заранее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('78f67445-c265-5d8b-b343-567a35a62071', 'en', 'step', 'шаг', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fde440ce-6c1b-517c-883e-5743c00a682d', 'en', 'achieved', 'достигнутый', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2846ea4f-d09a-517d-96e2-5b2cbc8edc45', 'en', 'to move abroad', 'переехать за границу', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8ed7335a-2495-571c-9fd7-1eaeed5dbc5f', 'en', 'safer', 'безопаснее (вариант)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('da52880a-1996-5c45-a28a-1dc536a46bc9', 'en', 'more exciting', 'интереснее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b8ce90ad-8b8f-50f2-b7df-ba686de170e3', 'en', 'to change jobs', 'сменить работу', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5ac9820e-614b-535a-877f-013a6449379e', 'en', 'to be going to', 'собираться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c9b6b4a2-e87c-5627-b61d-40dab0a7d50a', 'en', 'opportunity', 'возможность', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b37f2609-bf8a-520b-8f23-04c31092d97a', 'en', 'in five years', 'через пять лет', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('17a1740f-266a-5fe5-8e11-f34afee896b4', 'en', 'plan B', 'запасной план', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('35cd1e97-b7f9-5ced-a5fd-564aea1dfd6a', 'en', 'to fail', 'провалиться (о плане)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3f5dca07-d7ed-51b0-bf46-c34fda9fbc88', 'en', 'to prepare for the worst', 'готовиться к худшему', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('40aa4c98-facb-5c19-8288-ac4abdc8347a', 'en', 'to learn from', 'извлечь урок из', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f7b0ffc7-48d3-5132-8db3-b36c5854a96a', 'en', 'to adapt', 'адаптироваться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b66c7032-e60b-5959-a7e6-ed8f2ec5b418', 'en', 'positive', 'позитивный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('89c7cda6-468f-56ac-a7c3-7417df662dca', 'en', 'to give up', 'сдаваться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3d2e99f-0be5-5717-aa25-c1eb15266049', id, '66761b16-ab7e-59bd-98eb-386991b79544', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'to save up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3d2e99f-0be5-5717-aa25-c1eb15266049', id, '66761b16-ab7e-59bd-98eb-386991b79544', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to apply for a course' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3d2e99f-0be5-5717-aa25-c1eb15266049', id, '66761b16-ab7e-59bd-98eb-386991b79544', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'goal' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3d2e99f-0be5-5717-aa25-c1eb15266049', id, '66761b16-ab7e-59bd-98eb-386991b79544', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'to enrol' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3d2e99f-0be5-5717-aa25-c1eb15266049', id, '66761b16-ab7e-59bd-98eb-386991b79544', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to book in advance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3d2e99f-0be5-5717-aa25-c1eb15266049', id, '66761b16-ab7e-59bd-98eb-386991b79544', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'step' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3d2e99f-0be5-5717-aa25-c1eb15266049', id, '66761b16-ab7e-59bd-98eb-386991b79544', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'achieved' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3d2e99f-0be5-5717-aa25-c1eb15266049', id, 'f8f72c3c-3d40-5766-a754-b2296734c369', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to move abroad' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3d2e99f-0be5-5717-aa25-c1eb15266049', id, 'f8f72c3c-3d40-5766-a754-b2296734c369', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'safer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3d2e99f-0be5-5717-aa25-c1eb15266049', id, 'f8f72c3c-3d40-5766-a754-b2296734c369', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'more exciting' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3d2e99f-0be5-5717-aa25-c1eb15266049', id, 'f8f72c3c-3d40-5766-a754-b2296734c369', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to change jobs' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3d2e99f-0be5-5717-aa25-c1eb15266049', id, 'f8f72c3c-3d40-5766-a754-b2296734c369', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to be going to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3d2e99f-0be5-5717-aa25-c1eb15266049', id, 'f8f72c3c-3d40-5766-a754-b2296734c369', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'opportunity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3d2e99f-0be5-5717-aa25-c1eb15266049', id, 'f8f72c3c-3d40-5766-a754-b2296734c369', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'in five years' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3d2e99f-0be5-5717-aa25-c1eb15266049', id, '2b096046-267b-51e2-87cf-6286801f1683', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'plan B' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3d2e99f-0be5-5717-aa25-c1eb15266049', id, '2b096046-267b-51e2-87cf-6286801f1683', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to fail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3d2e99f-0be5-5717-aa25-c1eb15266049', id, '2b096046-267b-51e2-87cf-6286801f1683', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to prepare for the worst' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3d2e99f-0be5-5717-aa25-c1eb15266049', id, '2b096046-267b-51e2-87cf-6286801f1683', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to learn from' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3d2e99f-0be5-5717-aa25-c1eb15266049', id, '2b096046-267b-51e2-87cf-6286801f1683', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to adapt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3d2e99f-0be5-5717-aa25-c1eb15266049', id, '2b096046-267b-51e2-87cf-6286801f1683', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'positive' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a3d2e99f-0be5-5717-aa25-c1eb15266049', id, '2b096046-267b-51e2-87cf-6286801f1683', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to give up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
