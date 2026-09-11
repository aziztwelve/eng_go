-- Track: A2_STUDY_REVIEWING_LEARNING_PROGRESS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('3fe6893c-b983-5edf-8b6a-2bff60d01e1e', 'A2_STUDY_REVIEWING_LEARNING_PROGRESS', 'Оценка учебного прогресса', 'Развивайте учебные навыки уровня A2 по теме «Оценка учебного прогресса».', '{"en":"Reviewing Learning Progress","ru":"Оценка учебного прогресса"}'::jsonb, '{"en":"Develop A2 study skills for reviewing learning progress.","ru":"Развивайте учебные навыки уровня A2 по теме «Оценка учебного прогресса»."}'::jsonb, 'en', 'A2', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('cf89b902-7767-52be-b3a3-eec58fb58d89', NULL, 'Чего я достиг к концу месяца', 'Оценить прогресс, используя past simple и present perfect.', '{"en":"What I Achieved by the End of the Month","ru":"Чего я достиг к концу месяца"}'::jsonb, '{"en":"Assess progress using past simple and present perfect.","ru":"Оценить прогресс, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e2c2eed7-883e-5986-928f-4d80304d80c8', 'cf89b902-7767-52be-b3a3-eec58fb58d89', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to make progress","right":"делать успехи"},{"id":"P2","left":"milestone","right":"рубеж / веха"},{"id":"P3","left":"to achieve","right":"достичь"},{"id":"P4","left":"progress report","right":"отчёт о прогрессе"},{"id":"P5","left":"to look back on","right":"оглянуться на"},{"id":"P6","left":"fluent","right":"беглый (в речи)"},{"id":"P7","left":"by now","right":"к этому моменту"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3ccf0276-7eea-5b77-8a94-ed4b6ad5aee1', 'cf89b902-7767-52be-b3a3-eec58fb58d89', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I have reached two of my three goals by now.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I have reached two of my three goals by now."},{"id":"Q_B","is_correct":false,"text":"I have reached them last month."},{"id":"Q_C","is_correct":false,"text":"I reach two goals already by now."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a0a5349-9a6b-5cd8-8f23-3199ec3b0a8f', 'cf89b902-7767-52be-b3a3-eec58fb58d89', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I started in January and have covered half of the textbook by now.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я начал в январе и к этому моменту прошёл половину учебника.","target_language":"en","word_bank":["and","in","have","tomorrow","the","by","start","did","I","of","half","now.","covered","textbook","started","January"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('55909e4b-f1e0-501b-ba01-4add574cc60f', 'cf89b902-7767-52be-b3a3-eec58fb58d89', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"hit","instruction":"Выберите подходящее слово.","options":["hit","has hit","hitting"],"sentence_template":"Last month she ___ her first milestone.","translation_hint":"В прошлом месяце она достигла первого рубежа."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2fe2230e-8618-5d68-a405-bd021074ff06', 'cf89b902-7767-52be-b3a3-eec58fb58d89', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","have","made","visible","progress","this","term."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["term.","visible","was","made","this","progress","We","have","did"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d7d90b9-21a0-512e-9ba5-8174eca8cfbb', 'cf89b902-7767-52be-b3a3-eec58fb58d89', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Looking back on the term, I have become much more fluent, though my writing still needs work.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1da0f0ba-8260-53f4-b874-a4b04eb7bef5', 'cf89b902-7767-52be-b3a3-eec58fb58d89', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Looking back on the term, I have become much more fluent, though my writing still needs work.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Оглядываясь на семестр, я стал гораздо беглее в речи, хотя письму ещё требуется работа."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bfa13251-08ee-5c4d-a608-cb0449ca1069', 'cf89b902-7767-52be-b3a3-eec58fb58d89', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"So, what does your progress report say?","translation":"Итак, что говорит твой отчёт о прогрессе?","type":"dialogue"},{"character":"Voice 2","text":"Positive: I have learned five hundred words. Negative: listening is still weak.","translation":"Позитив: я выучил пятьсот слов. Негатив: аудирование всё ещё слабое.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Have you planned something specific to fix the listening?"},{"is_correct":false,"text":"Did you plan it tomorrow yesterday?"},{"is_correct":false,"text":"Is the report listening to your words?"}],"text":"What does Voice 1 ask?","type":"choice"}],"title":"The Monthly Review"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('654bd6a8-c2d8-5c86-be2b-3bf2401532eb', 'cf89b902-7767-52be-b3a3-eec58fb58d89', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“milestone” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"An important stage in progress"},{"id":"D_B","is_correct":false,"text":"A small daily task on your list"},{"id":"D_C","is_correct":false,"text":"A mistake you made last week"}],"word":"milestone"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('130ae34e-a049-547d-9720-823a8e1a31c3', 'cf89b902-7767-52be-b3a3-eec58fb58d89', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have achieved my main goal this term.","explanation":"The missing word is “achieved”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"achieved","id":"LW_A","is_correct":true},{"audio_text":"achieve","id":"LW_B","is_correct":false},{"audio_text":"achieving","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ my main goal this term."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ab57a162-3d48-5392-bd0a-227c6e1b74f1', 'cf89b902-7767-52be-b3a3-eec58fb58d89', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"progress","explanation":"The complete sentence is “She has made great progress in speaking.”.","hint_prefix":"pr","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"She has made great ___ in speaking."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e2de6c04-c220-5cdc-bba5-d1b0388d40b6', 'cf89b902-7767-52be-b3a3-eec58fb58d89', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to make progress","id":"V1","text":"to make progress"},{"audio_text":"milestone","id":"V2","text":"milestone"},{"audio_text":"to achieve","id":"V3","text":"to achieve"},{"audio_text":"progress report","id":"V4","text":"progress report"},{"audio_text":"to look back on","id":"V5","text":"to look back on"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('31524b55-de36-52c4-b502-14fb744de7b1', 'cf89b902-7767-52be-b3a3-eec58fb58d89', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Do you feel any different after the course?"}],"explanation":"“Yes — I have become more fluent, and I have stopped being afraid of phone calls.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes — I have become more fluent, and I have stopped being afraid of phone calls."},{"id":"C_B","is_correct":false,"text":"I felt it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The course is differing me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3fe6893c-b983-5edf-8b6a-2bff60d01e1e', 'cf89b902-7767-52be-b3a3-eec58fb58d89', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('6e958eb2-cc74-5bf2-a6aa-c3c80b1a17b8', NULL, 'План на следующий месяц', 'Сравнить результаты и спланировать следующий этап.', '{"en":"The Plan for Next Month","ru":"План на следующий месяц"}'::jsonb, '{"en":"Compare results and plan the next stage.","ru":"Сравнить результаты и спланировать следующий этап."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6866c6b8-fed6-5ecc-a71d-5994b4a5de63', '6e958eb2-cc74-5bf2-a6aa-c3c80b1a17b8', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"goal","right":"цель"},{"id":"P2","left":"more realistic","right":"реалистичнее"},{"id":"P3","left":"to set a target","right":"поставить цель"},{"id":"P4","left":"habit tracker","right":"трекер привычек"},{"id":"P5","left":"to measure","right":"измерить"},{"id":"P6","left":"smarter","right":"умнее (о целях)"},{"id":"P7","left":"weekly review","right":"недельная ревизия"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8685b5f4-d81d-5e2d-a1af-50f6706801ae', '6e958eb2-cc74-5bf2-a6aa-c3c80b1a17b8', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Twenty words a day is more realistic than a hundred.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Twenty words a day is more realistic than a hundred."},{"id":"Q_B","is_correct":false,"text":"Twenty words is realister than hundred."},{"id":"Q_C","is_correct":false,"text":"Twenty words is most realistic than hundred."}],"question":"Which sentence compares two goals correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e1967e40-94f3-5031-b01b-5ff08a2f0827', '6e958eb2-cc74-5bf2-a6aa-c3c80b1a17b8', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Next month I am going to measure my progress every week.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"В следующем месяце я собираюсь измерять прогресс каждую неделю.","target_language":"en","word_bank":["I","measured","to","Next","month","am","week.","every","yesterday","measure","progress","going","did","my"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7277a152-09b8-51f6-ad55-73a52603273f', '6e958eb2-cc74-5bf2-a6aa-c3c80b1a17b8', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"stronger","instruction":"Выберите подходящее слово.","options":["stronger","strongest","more strong"],"sentence_template":"A measurable goal is ___ than a vague dream.","translation_hint":"Измеримая цель сильнее расплывчатой мечты."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('be4e3ea8-3b95-518d-ba27-bde18de8398e', '6e958eb2-cc74-5bf2-a6aa-c3c80b1a17b8', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","am","going","to","keep","a","habit","tracker","again."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["am","tracker","keep","again.","was","I","habit","to","did","a","going"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('069dff57-adf9-5974-8db1-ae96bc08e801', '6e958eb2-cc74-5bf2-a6aa-c3c80b1a17b8', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you review your goals weekly, you will notice the weak spots before they become a habit of giving up.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c154396d-5182-521d-8ea8-ab179f87292a', '6e958eb2-cc74-5bf2-a6aa-c3c80b1a17b8', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you review your goals weekly, you will notice the weak spots before they become a habit of giving up.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если проверять цели еженедельно, слабые места заметны раньше, чем отказ от них станет привычкой."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fcf35972-54a9-5248-8b5f-d0912a8d8f9d', '6e958eb2-cc74-5bf2-a6aa-c3c80b1a17b8', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"My goal was ''speak better''. Guess what — I cannot even measure it.","translation":"Моя цель была ''говорить лучше''. Угадай что — её даже не измерить.","type":"dialogue"},{"character":"Voice 2","text":"That is the problem. Try ''ten minutes of speaking daily''.","translation":"В этом и проблема. Попробуй ''десять минут речи ежедневно''.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Good idea — that is going to be my next month''s target."},{"is_correct":false,"text":"It was my target yesterday tomorrow."},{"is_correct":false,"text":"The goal is measuring me vaguely."}],"text":"What does Voice 1 decide?","type":"choice"}],"title":"Setting New Targets"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4d1f47db-5e59-5173-99b6-ffbe94157028', '6e958eb2-cc74-5bf2-a6aa-c3c80b1a17b8', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“habit tracker” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A table or app where you mark daily actions"},{"id":"D_B","is_correct":false,"text":"A list of books you want to buy"},{"id":"D_C","is_correct":false,"text":"A grade report from your teacher"}],"word":"habit tracker"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3d9ef713-7897-52ea-9fb2-592dd6249e42', '6e958eb2-cc74-5bf2-a6aa-c3c80b1a17b8', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to set a realistic target.","explanation":"The missing word is “set”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"set","id":"LW_A","is_correct":true},{"audio_text":"setted","id":"LW_B","is_correct":false},{"audio_text":"setting","id":"LW_C","is_correct":false}],"sentence_template":"I am going to ___ a realistic target."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e588ec7e-8cc7-559c-977a-b9a631ccf85a', '6e958eb2-cc74-5bf2-a6aa-c3c80b1a17b8', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"more","explanation":"The complete sentence is “Weekly reviews are more useful than monthly ones.”.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Weekly reviews are ___ useful than monthly ones."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3d45d034-117b-52e8-bc75-13a8fa8343d5', '6e958eb2-cc74-5bf2-a6aa-c3c80b1a17b8', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"goal","id":"V1","text":"goal"},{"audio_text":"more realistic","id":"V2","text":"more realistic"},{"audio_text":"to set a target","id":"V3","text":"to set a target"},{"audio_text":"habit tracker","id":"V4","text":"habit tracker"},{"audio_text":"to measure","id":"V5","text":"to measure"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('218b57f8-9fb1-595d-8961-993c2bb6f719', '6e958eb2-cc74-5bf2-a6aa-c3c80b1a17b8', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"How will you track your reading?"}],"explanation":"“Pages per week — if I write the number down, the progress will be visible.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Pages per week — if I write the number down, the progress will be visible."},{"id":"C_B","is_correct":false,"text":"I tracked it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The reading is tracking my pages."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3fe6893c-b983-5edf-8b6a-2bff60d01e1e', '6e958eb2-cc74-5bf2-a6aa-c3c80b1a17b8', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9cecbdf7-deb0-502a-b117-d529ffd07835', NULL, 'Если прогресса нет', 'Обсудить застой в учёбе, используя should и первое условное.', '{"en":"If There Is No Progress","ru":"Если прогресса нет"}'::jsonb, '{"en":"Discuss a study plateau using should and the first conditional.","ru":"Обсудить застой в учёбе, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('807fbc7b-1b2e-5647-ba50-ec5dd4097b94', '9cecbdf7-deb0-502a-b117-d529ffd07835', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"plateau","right":"плато (застой)"},{"id":"P2","left":"to get stuck","right":"застрять"},{"id":"P3","left":"to change approach","right":"сменить подход"},{"id":"P4","left":"frustrating","right":"разочаровывающий"},{"id":"P5","left":"to compare with","right":"сравнить с"},{"id":"P6","left":"recording","right":"запись (аудио)"},{"id":"P7","left":"patience","right":"терпение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('af482810-1041-599b-a06d-d831dc082a9b', '9cecbdf7-deb0-502a-b117-d529ffd07835', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should change your approach, not just work harder.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should change your approach, not just work harder."},{"id":"Q_B","is_correct":false,"text":"You should to change it yesterday."},{"id":"Q_C","is_correct":false,"text":"You must changing approach last month."}],"question":"Which sentence gives correct advice about a plateau?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a8a4fc36-82f5-547c-875d-7eac6e2722be', '9cecbdf7-deb0-502a-b117-d529ffd07835', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you compare your current notes with those from six months ago, the progress is obvious.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если сравнить свои записи с записями полугодовой давности, прогресс виден сразу.","target_language":"en","word_bank":["you","six","progress","from","compared","notes","current","yesterday","ago,","your","compare","the","did","is","those","with","months","obvious.","If"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c109b92-abe6-5760-8ad0-11622b639b40', '9cecbdf7-deb0-502a-b117-d529ffd07835', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"change","instruction":"Выберите подходящее слово.","options":["change","will change","changed"],"sentence_template":"If you feel stuck, ___ your method first.","translation_hint":"Если чувствуешь, что застрял, сначала поменяй метод."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8edf9d4a-9a95-5c5c-afb3-7b59df612b39', '9cecbdf7-deb0-502a-b117-d529ffd07835', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","record","yourself","to","hear","the","difference."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["record","mustn''t","hear","You","difference.","the","to","yourself","should","went"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4f1be116-07ad-5024-8ea2-ad44b22e98eb', '9cecbdf7-deb0-502a-b117-d529ffd07835', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you record yourself speaking each month, you will hear progress that daily practice hides.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8738b45f-5e25-5339-851e-09728f0fb653', '9cecbdf7-deb0-502a-b117-d529ffd07835', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you record yourself speaking each month, you will hear progress that daily practice hides.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если записывать свою речь каждый месяц, услышишь прогресс, который скрывает ежедневная практика."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1bc610e5-9347-5854-9ea1-d90487d9a50b', '9cecbdf7-deb0-502a-b117-d529ffd07835', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"I have studied for a month and feel zero progress.","translation":"Я месяц занимался и не чувствую никакого прогресса.","type":"dialogue"},{"character":"Voice 2","text":"Do you remember your first recordings?","translation":"Помнишь свои первые записи?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Oh — I have just listened to January, and the difference is huge."},{"is_correct":false,"text":"I listened to it tomorrow yesterday."},{"is_correct":false,"text":"The month is studying my progress."}],"text":"What does Voice 1 realise?","type":"choice"}],"title":"The Frustrating Month"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('496747f7-4f98-5b98-af84-3a0f88bcf17f', '9cecbdf7-deb0-502a-b117-d529ffd07835', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“plateau” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A long period without visible progress"},{"id":"D_B","is_correct":false,"text":"A quick jump to a new level"},{"id":"D_C","is_correct":false,"text":"The first week of a new course"}],"word":"plateau"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf3fe2f5-75b4-580d-87ab-dade58fc7507', '9cecbdf7-deb0-502a-b117-d529ffd07835', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you get stuck, change the method.","explanation":"The missing word is “get”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"get","id":"LW_A","is_correct":true},{"audio_text":"will get","id":"LW_B","is_correct":false},{"audio_text":"got","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ stuck, change the method."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3d4565d8-4f01-5d37-b5a2-257c92b6fc96', '9cecbdf7-deb0-502a-b117-d529ffd07835', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"patience","explanation":"The complete sentence is “Have patience — progress is not always visible.”.","hint_prefix":"pa","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Have ___ — progress is not always visible."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9bd864e0-c397-5ec4-a054-2116d226d444', '9cecbdf7-deb0-502a-b117-d529ffd07835', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"plateau","id":"V1","text":"plateau"},{"audio_text":"to get stuck","id":"V2","text":"to get stuck"},{"audio_text":"to change approach","id":"V3","text":"to change approach"},{"audio_text":"frustrating","id":"V4","text":"frustrating"},{"audio_text":"to compare with","id":"V5","text":"to compare with"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a91b374e-c7a9-5e94-ab5a-f696044fd93b', '9cecbdf7-deb0-502a-b117-d529ffd07835', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"My test scores have stopped growing."}],"explanation":"“Change the approach — if you add listening practice, the scores will move again.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Change the approach — if you add listening practice, the scores will move again."},{"id":"C_B","is_correct":false,"text":"They moved yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The scores are testing me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3fe6893c-b983-5edf-8b6a-2bff60d01e1e', '9cecbdf7-deb0-502a-b117-d529ffd07835', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('50dbfd26-d1a0-5369-bc4f-6b1206e565da', 'en', 'to make progress', 'делать успехи', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fe75d63d-1ce9-55c8-b88e-03ae1705aa4a', 'en', 'milestone', 'рубеж / веха', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b1c5f262-1955-57d2-8746-74059c9daf39', 'en', 'to achieve', 'достичь', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('55fc7301-d63e-589e-a89d-3a30b86a5c30', 'en', 'progress report', 'отчёт о прогрессе', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7fc8daeb-95d1-590f-a839-09eae5e50140', 'en', 'to look back on', 'оглянуться на', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3eba48b6-30b2-5a61-8a4c-6d4eaff6f8da', 'en', 'fluent', 'беглый (в речи)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('047b622e-15a6-52fc-b496-e4155d5aae80', 'en', 'by now', 'к этому моменту', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('19a79cb5-83d6-576d-ab8f-3a32714c275b', 'en', 'goal', 'цель', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0d98a528-0888-500c-a383-2f9fdef4b2b4', 'en', 'more realistic', 'реалистичнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c28fc1d2-2969-51a7-acc8-69478d7ee720', 'en', 'to set a target', 'поставить цель', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ae58ed45-18bb-502c-ab42-090bbdd28595', 'en', 'habit tracker', 'трекер привычек', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a40904ba-6feb-52b5-ba4d-02f8a4b3122c', 'en', 'to measure', 'измерить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5c31fc4b-cabb-59f4-8f48-d8ba8db93084', 'en', 'smarter', 'умнее (о целях)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('13e71507-811e-5b10-bd88-26daef08963e', 'en', 'weekly review', 'недельная ревизия', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('be0b3c85-799a-504e-93a1-df1fef0d8bae', 'en', 'plateau', 'плато (застой)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('59bdb476-157e-5dfb-a22c-7acc98f3359a', 'en', 'to get stuck', 'застрять', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('30efda19-e679-5aa6-8488-eb1f4ae8559b', 'en', 'to change approach', 'сменить подход', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('10fb8a15-34ba-5ef1-bd3d-f7e613e0701b', 'en', 'frustrating', 'разочаровывающий', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7355ccc0-379c-5539-b665-f35b80074c50', 'en', 'to compare with', 'сравнить с', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('00f61ede-3397-566a-b02e-4c8194eb1d3a', 'en', 'recording', 'запись (аудио)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('97934868-2908-58bf-b1ce-e17b43cb2e63', 'en', 'patience', 'терпение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3fe6893c-b983-5edf-8b6a-2bff60d01e1e', id, 'cf89b902-7767-52be-b3a3-eec58fb58d89', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'to make progress' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3fe6893c-b983-5edf-8b6a-2bff60d01e1e', id, 'cf89b902-7767-52be-b3a3-eec58fb58d89', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'milestone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3fe6893c-b983-5edf-8b6a-2bff60d01e1e', id, 'cf89b902-7767-52be-b3a3-eec58fb58d89', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to achieve' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3fe6893c-b983-5edf-8b6a-2bff60d01e1e', id, 'cf89b902-7767-52be-b3a3-eec58fb58d89', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'progress report' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3fe6893c-b983-5edf-8b6a-2bff60d01e1e', id, 'cf89b902-7767-52be-b3a3-eec58fb58d89', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to look back on' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3fe6893c-b983-5edf-8b6a-2bff60d01e1e', id, 'cf89b902-7767-52be-b3a3-eec58fb58d89', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'fluent' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3fe6893c-b983-5edf-8b6a-2bff60d01e1e', id, 'cf89b902-7767-52be-b3a3-eec58fb58d89', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'by now' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3fe6893c-b983-5edf-8b6a-2bff60d01e1e', id, '6e958eb2-cc74-5bf2-a6aa-c3c80b1a17b8', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'goal' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3fe6893c-b983-5edf-8b6a-2bff60d01e1e', id, '6e958eb2-cc74-5bf2-a6aa-c3c80b1a17b8', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'more realistic' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3fe6893c-b983-5edf-8b6a-2bff60d01e1e', id, '6e958eb2-cc74-5bf2-a6aa-c3c80b1a17b8', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to set a target' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3fe6893c-b983-5edf-8b6a-2bff60d01e1e', id, '6e958eb2-cc74-5bf2-a6aa-c3c80b1a17b8', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'habit tracker' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3fe6893c-b983-5edf-8b6a-2bff60d01e1e', id, '6e958eb2-cc74-5bf2-a6aa-c3c80b1a17b8', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to measure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3fe6893c-b983-5edf-8b6a-2bff60d01e1e', id, '6e958eb2-cc74-5bf2-a6aa-c3c80b1a17b8', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'smarter' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3fe6893c-b983-5edf-8b6a-2bff60d01e1e', id, '6e958eb2-cc74-5bf2-a6aa-c3c80b1a17b8', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'weekly review' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3fe6893c-b983-5edf-8b6a-2bff60d01e1e', id, '9cecbdf7-deb0-502a-b117-d529ffd07835', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'plateau' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3fe6893c-b983-5edf-8b6a-2bff60d01e1e', id, '9cecbdf7-deb0-502a-b117-d529ffd07835', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to get stuck' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3fe6893c-b983-5edf-8b6a-2bff60d01e1e', id, '9cecbdf7-deb0-502a-b117-d529ffd07835', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to change approach' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3fe6893c-b983-5edf-8b6a-2bff60d01e1e', id, '9cecbdf7-deb0-502a-b117-d529ffd07835', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'frustrating' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3fe6893c-b983-5edf-8b6a-2bff60d01e1e', id, '9cecbdf7-deb0-502a-b117-d529ffd07835', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to compare with' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3fe6893c-b983-5edf-8b6a-2bff60d01e1e', id, '9cecbdf7-deb0-502a-b117-d529ffd07835', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'recording' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3fe6893c-b983-5edf-8b6a-2bff60d01e1e', id, '9cecbdf7-deb0-502a-b117-d529ffd07835', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'patience' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
