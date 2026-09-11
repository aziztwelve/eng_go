-- Track: A2_EXAM_LISTENING_FOR_MAIN_IDEAS_AND_DETAILS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('a2ac1487-582e-544a-b112-2d2029aa65a6', 'A2_EXAM_LISTENING_FOR_MAIN_IDEAS_AND_DETAILS', 'Аудирование: основная мысль и детали', 'Развивайте экзаменационные навыки уровня A2 по теме «Аудирование: основная мысль и детали».', '{"en":"Listening for Main Ideas and Details","ru":"Аудирование: основная мысль и детали"}'::jsonb, '{"en":"Develop A2 exam skills for listening for main ideas and details.","ru":"Развивайте экзаменационные навыки уровня A2 по теме «Аудирование: основная мысль и детали»."}'::jsonb, 'en', 'A2', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('154b347f-f071-5001-a8b1-a7fbcc5ff1eb', NULL, 'Аудирование: что было в записи', 'Понимать аудиотексты, используя past simple и present perfect.', '{"en":"Listening: What Was in the Recording","ru":"Аудирование: что было в записи"}'::jsonb, '{"en":"Understand audio texts using past simple and present perfect.","ru":"Понимать аудиотексты, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a24fc95-2c70-54ef-963e-17c79f26ede7', '154b347f-f071-5001-a8b1-a7fbcc5ff1eb', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"recording","right":"запись"},{"id":"P2","left":"to catch","right":"уловить (на слух)"},{"id":"P3","left":"the main idea","right":"главная мысль"},{"id":"P4","left":"detail","right":"деталь"},{"id":"P5","left":"to note down","right":"записать (на ходу)"},{"id":"P6","left":"twice","right":"дважды"},{"id":"P7","left":"noise","right":"шум"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('51e54759-390f-5ad0-b5dd-96a3c50d960f', '154b347f-f071-5001-a8b1-a7fbcc5ff1eb', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I have listened to the recording twice already.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I have listened to the recording twice already."},{"id":"Q_B","is_correct":false,"text":"I have listened to it yesterday twice."},{"id":"Q_C","is_correct":false,"text":"I listen the recording already twice now."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3f5299ba-bb08-5b34-b767-eefee96f0a02', '154b347f-f071-5001-a8b1-a7fbcc5ff1eb', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I caught the main idea but missed two details.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я уловил главную мысль, но пропустил две детали.","target_language":"en","word_bank":["missed","caught","catch","idea","but","I","main","two","the","details.","tomorrow","did"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb99a122-01ec-589f-9d83-d3d0cfb31da4', '154b347f-f071-5001-a8b1-a7fbcc5ff1eb', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"once","instruction":"Выберите подходящее слово.","options":["once","ones","one"],"sentence_template":"The speaker mentioned the price only ___ .","translation_hint":"Спикер упомянул цену только один раз."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('92d5ad5e-534d-54fa-aec8-20d1b562417f', '154b347f-f071-5001-a8b1-a7fbcc5ff1eb', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["She","has","noted","down","all","the","numbers","from","the","talk."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["talk.","noted","was","numbers","the","did","down","She","has","from","the","all"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b890d1f-c209-5d8e-b42c-ad10e858cb77', '154b347f-f071-5001-a8b1-a7fbcc5ff1eb', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The recording has mentioned three deadlines, but only the second one is about the exam.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('59ad2451-28cc-5204-8725-9633aaa9e8cc', '154b347f-f071-5001-a8b1-a7fbcc5ff1eb', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The recording has mentioned three deadlines, but only the second one is about the exam.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"В записи упомянуты три срока, но только второй касается экзамена."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5ff50550-5d60-508d-82dd-0a77f6361892', '154b347f-f071-5001-a8b1-a7fbcc5ff1eb', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"What was the talk mainly about — transport or hotels?","translation":"О чём в основном был доклад — о транспорте или отелях?","type":"dialogue"},{"character":"Voice 2","text":"Hotels — the transport part was just one detail at the start.","translation":"Об отелях — транспорт был лишь деталью в начале.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Ah, so answer B was the main idea, not A."},{"is_correct":false,"text":"So answer A was the detail of B tomorrow."},{"is_correct":false,"text":"Is the talk listening to answers?"}],"text":"What does Voice 1 realise?","type":"choice"}],"title":"After the Listening"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('93b935bb-c218-5624-8a3e-e1d5ee301741', '154b347f-f071-5001-a8b1-a7fbcc5ff1eb', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to catch” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To hear and understand something difficult"},{"id":"D_B","is_correct":false,"text":"To hold an object with your hands"},{"id":"D_C","is_correct":false,"text":"To be late for a recording session"}],"word":"to catch"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a885458e-b266-51e4-9916-209c8788fe27', '154b347f-f071-5001-a8b1-a7fbcc5ff1eb', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have noted down every date in the talk.","explanation":"The missing word is “noted down”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"noted down","id":"LW_A","is_correct":true},{"audio_text":"note down","id":"LW_B","is_correct":false},{"audio_text":"noting down","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ every date in the talk."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8914f542-f1a7-5edc-920f-fa6049271378', '154b347f-f071-5001-a8b1-a7fbcc5ff1eb', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"details","explanation":"The complete sentence is “Listen for the numbers — they are often the details .”.","hint_prefix":"de","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Listen for the numbers — they are often the ___ ."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a621ef9b-cc1b-5465-9efc-017211996e78', '154b347f-f071-5001-a8b1-a7fbcc5ff1eb', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"recording","id":"V1","text":"recording"},{"audio_text":"to catch","id":"V2","text":"to catch"},{"audio_text":"the main idea","id":"V3","text":"the main idea"},{"audio_text":"detail","id":"V4","text":"detail"},{"audio_text":"to note down","id":"V5","text":"to note down"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c2e3e45b-2339-52d9-a3b0-e02162f33692', '154b347f-f071-5001-a8b1-a7fbcc5ff1eb', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Did you catch the address at the end?"}],"explanation":"“No — the noise covered it. I have put a guess and marked the question for review.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"No — the noise covered it. I have put a guess and marked the question for review."},{"id":"C_B","is_correct":false,"text":"I caught it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The address is ending me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a2ac1487-582e-544a-b112-2d2029aa65a6', '154b347f-f071-5001-a8b1-a7fbcc5ff1eb', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b67de961-e297-5cea-b6fc-5ab6cc5ec7db', NULL, 'Аудирование на следующей неделе', 'Планировать тренировку аудирования и сравнивать материалы.', '{"en":"Listening Next Week","ru":"Аудирование на следующей неделе"}'::jsonb, '{"en":"Plan listening practice and compare materials.","ru":"Планировать тренировку аудирования и сравнивать материалы."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('611a1470-6533-536c-ac83-b2267eb36e8e', 'b67de961-e297-5cea-b6fc-5ab6cc5ec7db', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"twice as fast","right":"вдвое быстрее"},{"id":"P2","left":"more natural","right":"естественнее"},{"id":"P3","left":"podcast","right":"подкаст"},{"id":"P4","left":"transcript","right":"расшифровка"},{"id":"P5","left":"to slow down the audio","right":"замедлить аудио"},{"id":"P6","left":"accent","right":"акцент"},{"id":"P7","left":"background noise","right":"фоновый шум"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('42c2bc70-33b0-56d6-bd80-43d711e0e5e6', 'b67de961-e297-5cea-b6fc-5ab6cc5ec7db', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Podcasts are more natural than exam recordings.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Podcasts are more natural than exam recordings."},{"id":"Q_B","is_correct":false,"text":"Podcasts are naturaler than exams."},{"id":"Q_C","is_correct":false,"text":"Podcasts are most natural than recordings."}],"question":"Which sentence compares two listening sources correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d49886db-d049-538b-893d-e419778f6417', 'b67de961-e297-5cea-b6fc-5ab6cc5ec7db', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I am going to listen to one podcast a day with the transcript.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я собираюсь слушать по одному подкасту в день с расшифровкой.","target_language":"en","word_bank":["did","one","day","with","listened","a","listen","yesterday","podcast","the","I","am","transcript.","going","to","to"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3eeb883d-f35f-5354-8473-1f71713fee44', 'b67de961-e297-5cea-b6fc-5ab6cc5ec7db', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"harder","instruction":"Выберите подходящее слово.","options":["harder","hardest","more hard"],"sentence_template":"Audio with background noise is ___ than studio audio.","translation_hint":"Аудио с фоновым шумом сложнее студийного."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b4cd0115-307a-52c9-8ae8-bef129a9cdd3', 'b67de961-e297-5cea-b6fc-5ab6cc5ec7db', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","going","to","practise","with","two","accents","this","month."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["two","are","this","practise","month.","with","We","accents","going","to","was","did"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4bc7603-2271-5c12-8a78-4fb70f533969', 'b67de961-e297-5cea-b6fc-5ab6cc5ec7db', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you listen at normal speed first and then check the transcript, your ear will improve twice as fast.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('beb0894d-e125-5b28-94dc-2d409d721a8e', 'b67de961-e297-5cea-b6fc-5ab6cc5ec7db', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you listen at normal speed first and then check the transcript, your ear will improve twice as fast.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если слушать сначала на нормальной скорости, а потом проверять по расшифровке, слух улучшится вдвое быстрее."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7ec6320-94dc-57b8-b3fc-abb4ff528a45', 'b67de961-e297-5cea-b6fc-5ab6cc5ec7db', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"Exam recordings are so slow and clean — is that bad?","translation":"Экзаменационные записи такие медленные и чистые — это плохо?","type":"dialogue"},{"character":"Voice 2","text":"For the exam, no. But real speech is faster and noisier.","translation":"Для экзамена нет. Но реальная речь быстрее и шумнее.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Then I am going to add one noisy podcast a day."},{"is_correct":false,"text":"Then I added it yesterday tomorrow."},{"is_correct":false,"text":"The exam is podcasting my speech."}],"text":"What does Voice 1 plan?","type":"choice"}],"title":"Choosing Practice Material"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a49f3b80-d52b-5b45-8eb8-2b581efde698', 'b67de961-e297-5cea-b6fc-5ab6cc5ec7db', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“transcript” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"The written text of an audio recording"},{"id":"D_B","is_correct":false,"text":"A translation of the task into Russian"},{"id":"D_C","is_correct":false,"text":"A list of new words with translations"}],"word":"transcript"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a9cd784b-ab47-502c-833d-0e604d2d6c0f', 'b67de961-e297-5cea-b6fc-5ab6cc5ec7db', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to play the audio first.","explanation":"The missing word is “play”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"play","id":"LW_A","is_correct":true},{"audio_text":"played","id":"LW_B","is_correct":false},{"audio_text":"playing","id":"LW_C","is_correct":false}],"sentence_template":"I am going to ___ the audio first."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c6314ac7-5a14-5768-b6fb-f4ea6dad465a', 'b67de961-e297-5cea-b6fc-5ab6cc5ec7db', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"better","explanation":"The complete sentence is “Podcasts with transcripts are better for learners.”.","hint_prefix":"be","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Podcasts with transcripts are ___ for learners."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('303271f1-2a70-5de3-a16b-7dcedbf1066f', 'b67de961-e297-5cea-b6fc-5ab6cc5ec7db', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"twice as fast","id":"V1","text":"twice as fast"},{"audio_text":"more natural","id":"V2","text":"more natural"},{"audio_text":"podcast","id":"V3","text":"podcast"},{"audio_text":"transcript","id":"V4","text":"transcript"},{"audio_text":"to slow down the audio","id":"V5","text":"to slow down the audio"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1346941e-08c4-5821-b24a-126ba90ba734', 'b67de961-e297-5cea-b6fc-5ab6cc5ec7db', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"British or American audio for practice?"}],"explanation":"“Both — if you know two accents, any exam voice will sound familiar.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Both — if you know two accents, any exam voice will sound familiar."},{"id":"C_B","is_correct":false,"text":"I practised it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The accents are Britishing me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a2ac1487-582e-544a-b112-2d2029aa65a6', 'b67de961-e297-5cea-b6fc-5ab6cc5ec7db', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('11a71593-1bd2-5382-9956-705ddaa30fd2', NULL, 'Если не успел за записью', 'Разобрать стратегии аудирования, используя should и первое условное.', '{"en":"If You Cannot Keep Up with the Recording","ru":"Если не успел за записью"}'::jsonb, '{"en":"Analyse listening strategies using should and the first conditional.","ru":"Разобрать стратегии аудирования, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1ee941e6-ae77-51f4-8683-aa901a63d571', '11a71593-1bd2-5382-9956-705ddaa30fd2', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to fall behind","right":"отставать"},{"id":"P2","left":"to panic","right":"паниковать"},{"id":"P3","left":"keyword","right":"ключевое слово"},{"id":"P4","left":"to skip","right":"пропустить"},{"id":"P5","left":"for now","right":"пока (что)"},{"id":"P6","left":"to move on","right":"двигаться дальше"},{"id":"P7","left":"lost","right":"потерявшийся (потерявший нить)"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a1220d9f-5618-5fd6-8f1f-1042c2dccee7', '11a71593-1bd2-5382-9956-705ddaa30fd2', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should move to the next question instead of panicking.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should move to the next question instead of panicking."},{"id":"Q_B","is_correct":false,"text":"You should to move on yesterday."},{"id":"Q_C","is_correct":false,"text":"You must moving on last listening."}],"question":"Which sentence gives correct listening advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bcbe5801-fea3-595e-99a9-69aaf83a79c1', '11a71593-1bd2-5382-9956-705ddaa30fd2', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you get stuck on one question, you will lose the next two as well.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если застрянешь на одном вопросе, потеряешь ещё два следующих.","target_language":"en","word_bank":["next","one","will","as","lose","on","you","did","question,","you","get","stuck","the","well.","yesterday","two","got stuck","If"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('25c8454c-6ba5-5970-8574-ab85bcb0cdda', '11a71593-1bd2-5382-9956-705ddaa30fd2', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"move","instruction":"Выберите подходящее слово.","options":["move","will move","moved"],"sentence_template":"If you miss a keyword, ___ on to the next task.","translation_hint":"Если пропустил ключевое слово, переходи к следующему заданию."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b6cefc96-958c-57f2-bcf3-f627555d1789', '11a71593-1bd2-5382-9956-705ddaa30fd2', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","read","the","questions","before","the","audio","starts."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["the","went","You","the","should","read","before","mustn''t","questions","starts.","audio"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd61b9bc-eef9-5772-95a9-06aec4ed0d67', '11a71593-1bd2-5382-9956-705ddaa30fd2', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you read the questions in advance, you will know which keywords to wait for.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d79afba-77f3-5f79-a179-db2aa8f38d60', '11a71593-1bd2-5382-9956-705ddaa30fd2', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you read the questions in advance, you will know which keywords to wait for.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если прочитать вопросы заранее, будешь знать, каких ключевых слов ждать."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('812ae61d-1ec0-5d64-ba06-d7f3ee920002', '11a71593-1bd2-5382-9956-705ddaa30fd2', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"I lost the thread in the middle of part two and missed everything after it.","translation":"Я потерял нить в середине второй части и пропустил всё после.","type":"dialogue"},{"character":"Voice 2","text":"Classic. What do the tips say about that moment?","translation":"Классика. Что говорят советы про такой момент?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Let it go and catch the next question — the recording waits for nobody."},{"is_correct":false,"text":"I let it go yesterday tomorrow."},{"is_correct":false,"text":"The thread is recording my questions."}],"text":"What is the rule?","type":"choice"}],"title":"The Lost Minute"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a8cddae-93c1-585b-8882-52b10a340239', '11a71593-1bd2-5382-9956-705ddaa30fd2', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“keyword” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"The important word that carries the answer"},{"id":"D_B","is_correct":false,"text":"Any word you hear clearly"},{"id":"D_C","is_correct":false,"text":"The first word of every question"}],"word":"keyword"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4e56f471-8da1-5e77-bc2c-571a0a13fef5', '11a71593-1bd2-5382-9956-705ddaa30fd2', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you miss a question, skip it.","explanation":"The missing word is “miss”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"miss","id":"LW_A","is_correct":true},{"audio_text":"will miss","id":"LW_B","is_correct":false},{"audio_text":"missed","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ a question, skip it."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fcfe1db4-2073-55a6-8384-263b5441751c', '11a71593-1bd2-5382-9956-705ddaa30fd2', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"panic","explanation":"The complete sentence is “Do not panic — breathe and refocus.”.","hint_prefix":"pa","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Do not ___ — breathe and refocus."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08cfebdc-d566-590d-b84c-6be2ac31560e', '11a71593-1bd2-5382-9956-705ddaa30fd2', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to fall behind","id":"V1","text":"to fall behind"},{"audio_text":"to panic","id":"V2","text":"to panic"},{"audio_text":"keyword","id":"V3","text":"keyword"},{"audio_text":"to skip","id":"V4","text":"to skip"},{"audio_text":"for now","id":"V5","text":"for now"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7104a277-64ab-53d3-a282-c656eb905653', '11a71593-1bd2-5382-9956-705ddaa30fd2', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"The speakers talk so fast!"}],"explanation":"“Hunt keywords, not words — if you catch three key ones, the answer will come.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Hunt keywords, not words — if you catch three key ones, the answer will come."},{"id":"C_B","is_correct":false,"text":"I caught them yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The speakers are wording me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a2ac1487-582e-544a-b112-2d2029aa65a6', '11a71593-1bd2-5382-9956-705ddaa30fd2', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('00f61ede-3397-566a-b02e-4c8194eb1d3a', 'en', 'recording', 'запись', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e556fd80-61de-5739-b61d-eaefb3befc05', 'en', 'to catch', 'уловить (на слух)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('09326672-614d-5553-82eb-6c5ca2587bdf', 'en', 'the main idea', 'главная мысль', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('782ece6c-01d6-5f48-9142-360a91cab81b', 'en', 'detail', 'деталь', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cda1a85c-4d72-5954-aa03-014d64e04090', 'en', 'to note down', 'записать (на ходу)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('75cc07dc-9d42-551b-974d-c9e3b1f498dd', 'en', 'twice', 'дважды', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9a993051-cd13-5206-85e8-5e830dc22c82', 'en', 'noise', 'шум', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('387ae213-5efd-50e2-954a-77b08e048672', 'en', 'twice as fast', 'вдвое быстрее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a4dec117-2670-5314-b7fe-f85b62f78979', 'en', 'more natural', 'естественнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('22ea00aa-3402-5f19-9961-ec23e80501c0', 'en', 'podcast', 'подкаст', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('65ffe843-a2b6-53dd-93dc-7adde21127be', 'en', 'transcript', 'расшифровка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f17d7a9c-6462-5472-af4b-829c19e4dc64', 'en', 'to slow down the audio', 'замедлить аудио', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3d9c765b-cb11-50e6-b409-78797b88dcaa', 'en', 'accent', 'акцент', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4f27db8d-2a6e-57a3-afc6-bef6235331ed', 'en', 'background noise', 'фоновый шум', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3700b5c7-2c4c-5419-a80b-2fb14a8de264', 'en', 'to fall behind', 'отставать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7d129a27-0026-5b39-b252-bfdbf5e4223c', 'en', 'to panic', 'паниковать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('55eff174-9b2e-5e3d-8eaf-b351d7ab2c33', 'en', 'keyword', 'ключевое слово', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7b2e6c44-641c-5ef3-b773-e425a0910fa8', 'en', 'to skip', 'пропустить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2e4be596-da06-56bb-9263-f7dc898cc79c', 'en', 'for now', 'пока (что)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8fa866dc-a363-5b7e-9a8a-8170726076ad', 'en', 'to move on', 'двигаться дальше', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('321b1a15-2d5f-5e3b-ae82-147ae155b5e2', 'en', 'lost', 'потерявшийся (потерявший нить)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a2ac1487-582e-544a-b112-2d2029aa65a6', id, '154b347f-f071-5001-a8b1-a7fbcc5ff1eb', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'recording' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a2ac1487-582e-544a-b112-2d2029aa65a6', id, '154b347f-f071-5001-a8b1-a7fbcc5ff1eb', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to catch' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a2ac1487-582e-544a-b112-2d2029aa65a6', id, '154b347f-f071-5001-a8b1-a7fbcc5ff1eb', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'the main idea' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a2ac1487-582e-544a-b112-2d2029aa65a6', id, '154b347f-f071-5001-a8b1-a7fbcc5ff1eb', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'detail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a2ac1487-582e-544a-b112-2d2029aa65a6', id, '154b347f-f071-5001-a8b1-a7fbcc5ff1eb', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to note down' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a2ac1487-582e-544a-b112-2d2029aa65a6', id, '154b347f-f071-5001-a8b1-a7fbcc5ff1eb', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'twice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a2ac1487-582e-544a-b112-2d2029aa65a6', id, '154b347f-f071-5001-a8b1-a7fbcc5ff1eb', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'noise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a2ac1487-582e-544a-b112-2d2029aa65a6', id, 'b67de961-e297-5cea-b6fc-5ab6cc5ec7db', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'twice as fast' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a2ac1487-582e-544a-b112-2d2029aa65a6', id, 'b67de961-e297-5cea-b6fc-5ab6cc5ec7db', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'more natural' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a2ac1487-582e-544a-b112-2d2029aa65a6', id, 'b67de961-e297-5cea-b6fc-5ab6cc5ec7db', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'podcast' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a2ac1487-582e-544a-b112-2d2029aa65a6', id, 'b67de961-e297-5cea-b6fc-5ab6cc5ec7db', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'transcript' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a2ac1487-582e-544a-b112-2d2029aa65a6', id, 'b67de961-e297-5cea-b6fc-5ab6cc5ec7db', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to slow down the audio' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a2ac1487-582e-544a-b112-2d2029aa65a6', id, 'b67de961-e297-5cea-b6fc-5ab6cc5ec7db', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'accent' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a2ac1487-582e-544a-b112-2d2029aa65a6', id, 'b67de961-e297-5cea-b6fc-5ab6cc5ec7db', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'background noise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a2ac1487-582e-544a-b112-2d2029aa65a6', id, '11a71593-1bd2-5382-9956-705ddaa30fd2', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to fall behind' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a2ac1487-582e-544a-b112-2d2029aa65a6', id, '11a71593-1bd2-5382-9956-705ddaa30fd2', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to panic' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a2ac1487-582e-544a-b112-2d2029aa65a6', id, '11a71593-1bd2-5382-9956-705ddaa30fd2', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'keyword' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a2ac1487-582e-544a-b112-2d2029aa65a6', id, '11a71593-1bd2-5382-9956-705ddaa30fd2', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to skip' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a2ac1487-582e-544a-b112-2d2029aa65a6', id, '11a71593-1bd2-5382-9956-705ddaa30fd2', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'for now' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a2ac1487-582e-544a-b112-2d2029aa65a6', id, '11a71593-1bd2-5382-9956-705ddaa30fd2', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to move on' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a2ac1487-582e-544a-b112-2d2029aa65a6', id, '11a71593-1bd2-5382-9956-705ddaa30fd2', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'lost' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
