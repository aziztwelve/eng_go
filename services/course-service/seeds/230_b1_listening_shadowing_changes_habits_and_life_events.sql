-- Track: B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('ded96a75-0cad-5e26-9030-635e0bbe60fa', 'B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS', 'Изменения, привычки и жизненные события', 'Развивайте навыки аудирования и повторения уровня B1 по теме «Изменения, привычки и жизненные события».', '{"en":"Changes, Habits and Life Events","ru":"Изменения, привычки и жизненные события"}'::jsonb, '{"en":"Develop B1 listening and shadowing skills for changes, habits and life events.","ru":"Развивайте навыки аудирования и повторения уровня B1 по теме «Изменения, привычки и жизненные события»."}'::jsonb, 'en', 'B1', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0bf76f3e-2d6c-50c5-9f07-6fdcf33df054', NULL, 'Основная мысль и детали', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Past and Present Habits","ru":"Основная мысль и детали"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb4f0a5f-b16a-52e8-8907-2666937fb11d', '0bf76f3e-2d6c-50c5-9f07-6fdcf33df054', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L1_N01","left":"used to","right":"раньше обычно"},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L1_N02","left":"adapt","right":"адаптироваться"},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L1_N03","left":"gradually","right":"постепенно"},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L1_N04","left":"turning point","right":"поворотный момент"},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L1_N05","left":"routine","right":"распорядок"},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L1_N06","left":"recently","right":"недавно"},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L1_N07","left":"adjustment","right":"адаптация"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('adbfd311-4095-5d42-a17c-16ea10d858ff', '0bf76f3e-2d6c-50c5-9f07-6fdcf33df054', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L1_N08","is_correct":true,"text":"I used to travel to work every day, but recently I have adapted to a mostly remote routine."},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L1_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L1_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9bad6665-ff2b-57bf-93e6-4e9a8a466f14', '0bf76f3e-2d6c-50c5-9f07-6fdcf33df054', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I used to travel to work every day, but recently I have adapted to a mostly remote routine.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Раньше я ездил на работу каждый день, но недавно адаптировался к преимущественно удалённому распорядку.","target_language":"en","word_bank":["I","used","to","travel","to","work","every","day,","but","recently","I","have","adapted","to","a","mostly","remote","routine."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a0d541d-3959-59d2-9086-32d17c893ddb', '0bf76f3e-2d6c-50c5-9f07-6fdcf33df054', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"used to","instruction":"Выберите подходящее слово.","options":["used to","turning point","recently"],"sentence_template":"I ___ travel to work every day, but recently I have adapted to a mostly remote routine."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a1f20a5d-b5a6-5a59-91a1-5ebeb21b1343', '0bf76f3e-2d6c-50c5-9f07-6fdcf33df054', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","used","to","travel","to","work","every","day,","but","recently","I","have","adapted","to","a","mostly","remote","routine."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["routine.","remote","mostly","a","to","adapted","have","I","recently","but","day,","every","work","to","travel","to","used","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('48b9c7c9-fe52-5e96-a7b0-8f9345fe9d18', '0bf76f3e-2d6c-50c5-9f07-6fdcf33df054', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I used to travel to work every day, but recently I have adapted to a mostly remote routine. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3516dd1b-207e-518d-bcdb-848657c58ca3', '0bf76f3e-2d6c-50c5-9f07-6fdcf33df054', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I used to travel to work every day, but recently I have adapted to a mostly remote routine. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"Раньше я ездил на работу каждый день, но недавно адаптировался к преимущественно удалённому распорядку. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e0e160c0-83ef-5d33-bdcf-c05ac144fa5f', '0bf76f3e-2d6c-50c5-9f07-6fdcf33df054', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"I used to travel to work every day, but recently I have adapted to a mostly remote routine.","translation":"Раньше я ездил на работу каждый день, но недавно адаптировался к преимущественно удалённому распорядку.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Past and Present Habits"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('890d9b47-1907-5efd-a79c-48396c101b24', '0bf76f3e-2d6c-50c5-9f07-6fdcf33df054', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“used to” means describes a past habit or state.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L1_N11","is_correct":true,"text":"describes a past habit or state"},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L1_N12","is_correct":false,"text":"change to suit new conditions"},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L1_N13","is_correct":false,"text":"slowly over time"}],"word":"used to"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('22ded432-6736-5549-aedc-ecf0ae4ca5f8', '0bf76f3e-2d6c-50c5-9f07-6fdcf33df054', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I used to travel to work every day, but recently I have adapted to a mostly remote routine.","explanation":"The missing expression is “used to”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"used to","id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L1_N14","is_correct":true},{"audio_text":"gradually","id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L1_N15","is_correct":false},{"audio_text":"routine","id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L1_N16","is_correct":false}],"sentence_template":"I ___ travel to work every day, but recently I have adapted to a mostly remote routine."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd050fd4-58cc-5372-a93a-6ede485cbeb0', '0bf76f3e-2d6c-50c5-9f07-6fdcf33df054', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"used to","explanation":"The recording uses “used to” in this position.","hint_prefix":"use","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I ___ travel to work every day, but recently I have adapted to a mostly remote routine."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('14aa29d7-9d5e-5557-8521-6d300910be43', '0bf76f3e-2d6c-50c5-9f07-6fdcf33df054', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"used to","id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L1_N17","text":"used to"},{"audio_text":"adapt","id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L1_N18","text":"adapt"},{"audio_text":"gradually","id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L1_N19","text":"gradually"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3bbdcfba-a51c-5ddd-9815-c1b717bfe2a1', '0bf76f3e-2d6c-50c5-9f07-6fdcf33df054', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L1_N20","is_correct":true,"text":"I used to travel to work every day, but recently I have adapted to a mostly remote routine."},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L1_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L1_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ded96a75-0cad-5e26-9030-635e0bbe60fa', '0bf76f3e-2d6c-50c5-9f07-6fdcf33df054', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2122d713-f06b-5c71-823f-a79fc961c84f', NULL, 'Отношение и вывод', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Explaining Change","ru":"Отношение и вывод"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('88b170c5-a733-5963-b38d-91e457531763', '2122d713-f06b-5c71-823f-a79fc961c84f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L2_N01","left":"used to","right":"раньше обычно"},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L2_N02","left":"adapt","right":"адаптироваться"},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L2_N03","left":"gradually","right":"постепенно"},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L2_N04","left":"turning point","right":"поворотный момент"},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L2_N05","left":"routine","right":"распорядок"},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L2_N06","left":"recently","right":"недавно"},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L2_N07","left":"adjustment","right":"адаптация"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('937b1793-913f-5f62-ae6e-d34d85b679ad', '2122d713-f06b-5c71-823f-a79fc961c84f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L2_N08","is_correct":true,"text":"The move was a turning point, although the adjustment happened gradually rather than immediately."},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L2_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L2_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc941136-9dc0-5149-b27d-de0e11422eae', '2122d713-f06b-5c71-823f-a79fc961c84f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The move was a turning point, although the adjustment happened gradually rather than immediately.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Переезд стал поворотным моментом, хотя адаптация происходила постепенно, а не сразу.","target_language":"en","word_bank":["The","move","was","a","turning","point,","although","the","adjustment","happened","gradually","rather","than","immediately."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5446ce4-023b-5482-be3c-75af1bc62302', '2122d713-f06b-5c71-823f-a79fc961c84f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"adapt","instruction":"Выберите подходящее слово.","options":["adapt","routine","adjustment"],"sentence_template":"The move was a turning point, although the adjustment happened gradually rather than immediately."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ebf4b3ac-fe30-5695-a2c6-7c3dc0bf7b6a', '2122d713-f06b-5c71-823f-a79fc961c84f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","move","was","a","turning","point,","although","the","adjustment","happened","gradually","rather","than","immediately."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["immediately.","than","rather","gradually","happened","adjustment","the","although","point,","turning","a","was","move","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3d0759a-2f8f-5405-94eb-8aec7959ed04', '2122d713-f06b-5c71-823f-a79fc961c84f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The move was a turning point, although the adjustment happened gradually rather than immediately. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a4781131-6a39-5c19-a431-ae08d2bd31e0', '2122d713-f06b-5c71-823f-a79fc961c84f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The move was a turning point, although the adjustment happened gradually rather than immediately. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"Переезд стал поворотным моментом, хотя адаптация происходила постепенно, а не сразу. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b3928cd-c08f-5e50-953d-9694dfba3814', '2122d713-f06b-5c71-823f-a79fc961c84f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"The move was a turning point, although the adjustment happened gradually rather than immediately.","translation":"Переезд стал поворотным моментом, хотя адаптация происходила постепенно, а не сразу.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Explaining Change"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fe769c1d-5973-55af-b295-20019ee90c1d', '2122d713-f06b-5c71-823f-a79fc961c84f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“adapt” means change to suit new conditions.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L2_N11","is_correct":true,"text":"change to suit new conditions"},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L2_N12","is_correct":false,"text":"slowly over time"},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L2_N13","is_correct":false,"text":"an event causing major change"}],"word":"adapt"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dcf65e1a-b6d7-5483-b80e-c4c51c7280e8', '2122d713-f06b-5c71-823f-a79fc961c84f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The move was a turning point, although the adjustment happened gradually rather than immediately.","explanation":"The missing expression is “adapt”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"adapt","id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L2_N14","is_correct":true},{"audio_text":"turning point","id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L2_N15","is_correct":false},{"audio_text":"recently","id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L2_N16","is_correct":false}],"sentence_template":"The move was a turning point, although the adjustment happened gradually rather than immediately."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0c5a73fe-3a7f-563b-8057-79b985be4c6e', '2122d713-f06b-5c71-823f-a79fc961c84f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"adapt","explanation":"The recording uses “adapt” in this position.","hint_prefix":"ada","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The move was a turning point, although the adjustment happened gradually rather than immediately."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7c87b656-f714-563c-a662-d278abe6b973', '2122d713-f06b-5c71-823f-a79fc961c84f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"used to","id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L2_N17","text":"used to"},{"audio_text":"adapt","id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L2_N18","text":"adapt"},{"audio_text":"gradually","id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L2_N19","text":"gradually"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d315125d-e143-5949-93c6-4ff3e32f0843', '2122d713-f06b-5c71-823f-a79fc961c84f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L2_N20","is_correct":true,"text":"The move was a turning point, although the adjustment happened gradually rather than immediately."},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L2_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L2_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ded96a75-0cad-5e26-9030-635e0bbe60fa', '2122d713-f06b-5c71-823f-a79fc961c84f', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('17a595fb-2353-5c03-88bb-d6accbe9f35c', NULL, 'Связная речь и повторение', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Life Events","ru":"Связная речь и повторение"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d09bd12f-8240-5380-ac70-55cb16ab48f0', '17a595fb-2353-5c03-88bb-d6accbe9f35c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L3_N01","left":"used to","right":"раньше обычно"},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L3_N02","left":"adapt","right":"адаптироваться"},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L3_N03","left":"gradually","right":"постепенно"},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L3_N04","left":"turning point","right":"поворотный момент"},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L3_N05","left":"routine","right":"распорядок"},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L3_N06","left":"recently","right":"недавно"},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L3_N07","left":"adjustment","right":"адаптация"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e1ee9319-6626-53c0-b492-e20013ec1086', '17a595fb-2353-5c03-88bb-d6accbe9f35c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L3_N08","is_correct":true,"text":"Since changing my routine, I have become more organised and less dependent on fixed working hours."},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L3_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L3_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fe424a2a-2dd4-5084-b3dc-48965c9019b5', '17a595fb-2353-5c03-88bb-d6accbe9f35c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Since changing my routine, I have become more organised and less dependent on fixed working hours.","instruction":"Соберите перевод.","source_language":"ru","source_text":"После изменения распорядка я стал более организованным и менее зависимым от фиксированного рабочего времени.","target_language":"en","word_bank":["Since","changing","my","routine,","I","have","become","more","organised","and","less","dependent","on","fixed","working","hours."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('de9d0c1b-278a-5079-a968-19c06f96f701', '17a595fb-2353-5c03-88bb-d6accbe9f35c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"gradually","instruction":"Выберите подходящее слово.","options":["gradually","recently","used to"],"sentence_template":"Since changing my routine, I have become more organised and less dependent on fixed working hours."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3f631b7f-b29e-5c35-bbe9-d184128bdc98', '17a595fb-2353-5c03-88bb-d6accbe9f35c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Since","changing","my","routine,","I","have","become","more","organised","and","less","dependent","on","fixed","working","hours."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["hours.","working","fixed","on","dependent","less","and","organised","more","become","have","I","routine,","my","changing","Since"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4e5f39b1-8e67-5db8-8414-d0b35000bc85', '17a595fb-2353-5c03-88bb-d6accbe9f35c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Since changing my routine, I have become more organised and less dependent on fixed working hours. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2af8db1f-6d00-5fb5-b610-becb5abc3024', '17a595fb-2353-5c03-88bb-d6accbe9f35c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Since changing my routine, I have become more organised and less dependent on fixed working hours. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"После изменения распорядка я стал более организованным и менее зависимым от фиксированного рабочего времени. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('34edd0a2-5c74-5757-8894-464f4ed19e91', '17a595fb-2353-5c03-88bb-d6accbe9f35c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"Since changing my routine, I have become more organised and less dependent on fixed working hours.","translation":"После изменения распорядка я стал более организованным и менее зависимым от фиксированного рабочего времени.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Life Events"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef9508e1-1f6c-54d2-b5f6-91b6e6cc6e1c', '17a595fb-2353-5c03-88bb-d6accbe9f35c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“gradually” means slowly over time.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L3_N11","is_correct":true,"text":"slowly over time"},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L3_N12","is_correct":false,"text":"an event causing major change"},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L3_N13","is_correct":false,"text":"a regular pattern of activity"}],"word":"gradually"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('51a2d5de-36c0-5e72-bd99-62ad55b874ed', '17a595fb-2353-5c03-88bb-d6accbe9f35c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Since changing my routine, I have become more organised and less dependent on fixed working hours.","explanation":"The missing expression is “gradually”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"gradually","id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L3_N14","is_correct":true},{"audio_text":"routine","id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L3_N15","is_correct":false},{"audio_text":"adjustment","id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L3_N16","is_correct":false}],"sentence_template":"Since changing my routine, I have become more organised and less dependent on fixed working hours."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd1385e2-b93d-51ca-b5f6-c6b61f4eed78', '17a595fb-2353-5c03-88bb-d6accbe9f35c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"gradually","explanation":"The recording uses “gradually” in this position.","hint_prefix":"gra","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Since changing my routine, I have become more organised and less dependent on fixed working hours."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0d67e29f-5070-5d06-9d63-f70ebb306b5e', '17a595fb-2353-5c03-88bb-d6accbe9f35c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"used to","id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L3_N17","text":"used to"},{"audio_text":"adapt","id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L3_N18","text":"adapt"},{"audio_text":"gradually","id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L3_N19","text":"gradually"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6da85abe-7641-5027-98a2-91d87f889f5e', '17a595fb-2353-5c03-88bb-d6accbe9f35c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L3_N20","is_correct":true,"text":"Since changing my routine, I have become more organised and less dependent on fixed working hours."},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L3_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_CHANGES_HABITS_AND_LIFE_EVENTS_L3_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ded96a75-0cad-5e26-9030-635e0bbe60fa', '17a595fb-2353-5c03-88bb-d6accbe9f35c', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('343d4964-2251-51dd-bfc1-db0be8e0541e', 'en', 'used to', 'раньше обычно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e4964c36-6c34-5ac8-90d6-59667aa74f87', 'en', 'adapt', 'адаптироваться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3a2a631c-2116-54a9-ad7e-595424748c15', 'en', 'gradually', 'постепенно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f7456b07-e9b2-596e-9936-0201d197a066', 'en', 'turning point', 'поворотный момент', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e3dd4615-c46c-550b-92b6-880dcf30814a', 'en', 'routine', 'распорядок', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3e3d8c84-75dc-5b72-8ab7-00bd1f2fceb1', 'en', 'recently', 'недавно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f1827992-317e-5711-9b15-74ab884ae55d', 'en', 'adjustment', 'адаптация', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('343d4964-2251-51dd-bfc1-db0be8e0541e', 'en', 'used to', 'раньше обычно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e4964c36-6c34-5ac8-90d6-59667aa74f87', 'en', 'adapt', 'адаптироваться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3a2a631c-2116-54a9-ad7e-595424748c15', 'en', 'gradually', 'постепенно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f7456b07-e9b2-596e-9936-0201d197a066', 'en', 'turning point', 'поворотный момент', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e3dd4615-c46c-550b-92b6-880dcf30814a', 'en', 'routine', 'распорядок', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3e3d8c84-75dc-5b72-8ab7-00bd1f2fceb1', 'en', 'recently', 'недавно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f1827992-317e-5711-9b15-74ab884ae55d', 'en', 'adjustment', 'адаптация', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('343d4964-2251-51dd-bfc1-db0be8e0541e', 'en', 'used to', 'раньше обычно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e4964c36-6c34-5ac8-90d6-59667aa74f87', 'en', 'adapt', 'адаптироваться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3a2a631c-2116-54a9-ad7e-595424748c15', 'en', 'gradually', 'постепенно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f7456b07-e9b2-596e-9936-0201d197a066', 'en', 'turning point', 'поворотный момент', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e3dd4615-c46c-550b-92b6-880dcf30814a', 'en', 'routine', 'распорядок', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3e3d8c84-75dc-5b72-8ab7-00bd1f2fceb1', 'en', 'recently', 'недавно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f1827992-317e-5711-9b15-74ab884ae55d', 'en', 'adjustment', 'адаптация', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ded96a75-0cad-5e26-9030-635e0bbe60fa', id, '0bf76f3e-2d6c-50c5-9f07-6fdcf33df054', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'used to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ded96a75-0cad-5e26-9030-635e0bbe60fa', id, '0bf76f3e-2d6c-50c5-9f07-6fdcf33df054', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'adapt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ded96a75-0cad-5e26-9030-635e0bbe60fa', id, '0bf76f3e-2d6c-50c5-9f07-6fdcf33df054', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'gradually' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ded96a75-0cad-5e26-9030-635e0bbe60fa', id, '0bf76f3e-2d6c-50c5-9f07-6fdcf33df054', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'turning point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ded96a75-0cad-5e26-9030-635e0bbe60fa', id, '0bf76f3e-2d6c-50c5-9f07-6fdcf33df054', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'routine' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ded96a75-0cad-5e26-9030-635e0bbe60fa', id, '0bf76f3e-2d6c-50c5-9f07-6fdcf33df054', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'recently' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ded96a75-0cad-5e26-9030-635e0bbe60fa', id, '0bf76f3e-2d6c-50c5-9f07-6fdcf33df054', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'adjustment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ded96a75-0cad-5e26-9030-635e0bbe60fa', id, '2122d713-f06b-5c71-823f-a79fc961c84f', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'used to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ded96a75-0cad-5e26-9030-635e0bbe60fa', id, '2122d713-f06b-5c71-823f-a79fc961c84f', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'adapt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ded96a75-0cad-5e26-9030-635e0bbe60fa', id, '2122d713-f06b-5c71-823f-a79fc961c84f', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'gradually' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ded96a75-0cad-5e26-9030-635e0bbe60fa', id, '2122d713-f06b-5c71-823f-a79fc961c84f', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'turning point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ded96a75-0cad-5e26-9030-635e0bbe60fa', id, '2122d713-f06b-5c71-823f-a79fc961c84f', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'routine' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ded96a75-0cad-5e26-9030-635e0bbe60fa', id, '2122d713-f06b-5c71-823f-a79fc961c84f', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'recently' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ded96a75-0cad-5e26-9030-635e0bbe60fa', id, '2122d713-f06b-5c71-823f-a79fc961c84f', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'adjustment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ded96a75-0cad-5e26-9030-635e0bbe60fa', id, '17a595fb-2353-5c03-88bb-d6accbe9f35c', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'used to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ded96a75-0cad-5e26-9030-635e0bbe60fa', id, '17a595fb-2353-5c03-88bb-d6accbe9f35c', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'adapt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ded96a75-0cad-5e26-9030-635e0bbe60fa', id, '17a595fb-2353-5c03-88bb-d6accbe9f35c', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'gradually' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ded96a75-0cad-5e26-9030-635e0bbe60fa', id, '17a595fb-2353-5c03-88bb-d6accbe9f35c', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'turning point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ded96a75-0cad-5e26-9030-635e0bbe60fa', id, '17a595fb-2353-5c03-88bb-d6accbe9f35c', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'routine' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ded96a75-0cad-5e26-9030-635e0bbe60fa', id, '17a595fb-2353-5c03-88bb-d6accbe9f35c', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'recently' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ded96a75-0cad-5e26-9030-635e0bbe60fa', id, '17a595fb-2353-5c03-88bb-d6accbe9f35c', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'adjustment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
