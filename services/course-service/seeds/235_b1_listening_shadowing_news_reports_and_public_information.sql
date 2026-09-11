-- Track: B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('8db456a7-9e5b-5f45-9179-1d8d859a0e4b', 'B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION', 'Новости, репортажи и общественная информация', 'Развивайте навыки аудирования и повторения уровня B1 по теме «Новости, репортажи и общественная информация».', '{"en":"News Reports and Public Information","ru":"Новости, репортажи и общественная информация"}'::jsonb, '{"en":"Develop B1 listening and shadowing skills for news reports and public information.","ru":"Развивайте навыки аудирования и повторения уровня B1 по теме «Новости, репортажи и общественная информация»."}'::jsonb, 'en', 'B1', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f5fa4443-7298-5ae7-b350-22fd62265e0b', NULL, 'Основная мысль и детали', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Understanding Headlines","ru":"Основная мысль и детали"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b867c838-29b6-56a2-9937-16b46de76047', 'f5fa4443-7298-5ae7-b350-22fd62265e0b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L1_N01","left":"headline","right":"заголовок новости"},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L1_N02","left":"report","right":"репортаж"},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L1_N03","left":"according to","right":"согласно"},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L1_N04","left":"witness","right":"свидетель"},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L1_N05","left":"estimate","right":"оценка"},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L1_N06","left":"announce","right":"объявлять"},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L1_N07","left":"confirm","right":"подтверждать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78acc538-9dc6-5f3c-9f24-ceb40c886925', 'f5fa4443-7298-5ae7-b350-22fd62265e0b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L1_N08","is_correct":true,"text":"According to the report, officials have announced temporary changes, but they have not confirmed how long these will last."},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L1_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L1_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('91b6e543-7e12-5d82-bf9e-4310455d4c15', 'f5fa4443-7298-5ae7-b350-22fd62265e0b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"According to the report, officials have announced temporary changes, but they have not confirmed how long these will last.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Согласно репортажу, власти объявили о временных изменениях, но не подтвердили, как долго они продлятся.","target_language":"en","word_bank":["According","to","the","report,","officials","have","announced","temporary","changes,","but","they","have","not","confirmed","how","long","these","will","last."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8a262378-308d-5d05-b606-7ddc0f64ef07', 'f5fa4443-7298-5ae7-b350-22fd62265e0b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"headline","instruction":"Выберите подходящее слово.","options":["headline","witness","announce"],"sentence_template":"According to the report, officials have announced temporary changes, but they have not confirmed how long these will last."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('54ee0bdf-be6a-5383-8636-1dfc3e007ae9', 'f5fa4443-7298-5ae7-b350-22fd62265e0b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["According","to","the","report,","officials","have","announced","temporary","changes,","but","they","have","not","confirmed","how","long","these","will","last."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["last.","will","these","long","how","confirmed","not","have","they","but","changes,","temporary","announced","have","officials","report,","the","to","According"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1fc96e9d-bb10-5eb7-abd9-d2d0a199a344', 'f5fa4443-7298-5ae7-b350-22fd62265e0b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"According to the report, officials have announced temporary changes, but they have not confirmed how long these will last. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6252ee0f-41ea-5c18-a911-331a5aad65b7', 'f5fa4443-7298-5ae7-b350-22fd62265e0b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"According to the report, officials have announced temporary changes, but they have not confirmed how long these will last. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"Согласно репортажу, власти объявили о временных изменениях, но не подтвердили, как долго они продлятся. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('85b4a62b-6ba3-551a-b0d2-3614b5205eef', 'f5fa4443-7298-5ae7-b350-22fd62265e0b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"According to the report, officials have announced temporary changes, but they have not confirmed how long these will last.","translation":"Согласно репортажу, власти объявили о временных изменениях, но не подтвердили, как долго они продлятся.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Understanding Headlines"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4bcef2d1-05ef-59cc-a999-c180e6f9cf37', 'f5fa4443-7298-5ae7-b350-22fd62265e0b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“headline” means the title of a news report.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L1_N11","is_correct":true,"text":"the title of a news report"},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L1_N12","is_correct":false,"text":"a factual account of an event"},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L1_N13","is_correct":false,"text":"as stated by a source"}],"word":"headline"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a570f1b3-8186-58f3-a8bd-fee8c39c0c0a', 'f5fa4443-7298-5ae7-b350-22fd62265e0b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"According to the report, officials have announced temporary changes, but they have not confirmed how long these will last.","explanation":"The missing expression is “headline”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"headline","id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L1_N14","is_correct":true},{"audio_text":"according to","id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L1_N15","is_correct":false},{"audio_text":"estimate","id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L1_N16","is_correct":false}],"sentence_template":"According to the report, officials have announced temporary changes, but they have not confirmed how long these will last."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1317968b-b7de-507c-842a-256928b8e276', 'f5fa4443-7298-5ae7-b350-22fd62265e0b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"headline","explanation":"The recording uses “headline” in this position.","hint_prefix":"hea","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"According to the report, officials have announced temporary changes, but they have not confirmed how long these will last."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9421a4b1-8cc8-5e43-a37c-4db98eee6c39', 'f5fa4443-7298-5ae7-b350-22fd62265e0b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"headline","id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L1_N17","text":"headline"},{"audio_text":"report","id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L1_N18","text":"report"},{"audio_text":"according to","id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L1_N19","text":"according to"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5f5c2a3d-b527-55d0-980f-f7d016ef702e', 'f5fa4443-7298-5ae7-b350-22fd62265e0b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L1_N20","is_correct":true,"text":"According to the report, officials have announced temporary changes, but they have not confirmed how long these will last."},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L1_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L1_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8db456a7-9e5b-5f45-9179-1d8d859a0e4b', 'f5fa4443-7298-5ae7-b350-22fd62265e0b', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('365fcb74-f44c-5ea3-9b40-98852d810439', NULL, 'Отношение и вывод', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Following a Short Report","ru":"Отношение и вывод"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9d1061aa-190f-5e54-bcf2-5671c3335331', '365fcb74-f44c-5ea3-9b40-98852d810439', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L2_N01","left":"headline","right":"заголовок новости"},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L2_N02","left":"report","right":"репортаж"},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L2_N03","left":"according to","right":"согласно"},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L2_N04","left":"witness","right":"свидетель"},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L2_N05","left":"estimate","right":"оценка"},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L2_N06","left":"announce","right":"объявлять"},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L2_N07","left":"confirm","right":"подтверждать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4367f66e-cec1-595f-af15-d5a2fc090591', '365fcb74-f44c-5ea3-9b40-98852d810439', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L2_N08","is_correct":true,"text":"A witness described what happened, although some details differ from the initial headline."},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L2_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L2_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bad85008-8d83-518d-aa52-78030f6cdeaf', '365fcb74-f44c-5ea3-9b40-98852d810439', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A witness described what happened, although some details differ from the initial headline.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Свидетель описал произошедшее, хотя некоторые детали отличаются от первоначального заголовка.","target_language":"en","word_bank":["A","witness","described","what","happened,","although","some","details","differ","from","the","initial","headline."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4e48bd1e-92f2-5cfc-a026-975b3dcca2aa', '365fcb74-f44c-5ea3-9b40-98852d810439', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"report","instruction":"Выберите подходящее слово.","options":["report","estimate","confirm"],"sentence_template":"A witness described what happened, although some details differ from the initial headline."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9ffe4500-ff0a-5570-882c-1b8b56ef4e2e', '365fcb74-f44c-5ea3-9b40-98852d810439', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","witness","described","what","happened,","although","some","details","differ","from","the","initial","headline."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["headline.","initial","the","from","differ","details","some","although","happened,","what","described","witness","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4d215cb-cc71-5f77-8776-fb559901802f', '365fcb74-f44c-5ea3-9b40-98852d810439', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A witness described what happened, although some details differ from the initial headline. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('83e51893-587a-5f4e-bdce-36b6c8c3cc68', '365fcb74-f44c-5ea3-9b40-98852d810439', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A witness described what happened, although some details differ from the initial headline. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"Свидетель описал произошедшее, хотя некоторые детали отличаются от первоначального заголовка. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('221f1b1e-2be2-5106-8e11-1fb80b62b48c', '365fcb74-f44c-5ea3-9b40-98852d810439', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"A witness described what happened, although some details differ from the initial headline.","translation":"Свидетель описал произошедшее, хотя некоторые детали отличаются от первоначального заголовка.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Following a Short Report"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a59e69a9-9dc5-56ec-a8ea-15307634cb07', '365fcb74-f44c-5ea3-9b40-98852d810439', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“report” means a factual account of an event.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L2_N11","is_correct":true,"text":"a factual account of an event"},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L2_N12","is_correct":false,"text":"as stated by a source"},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L2_N13","is_correct":false,"text":"a person who saw an event"}],"word":"report"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('180f6bfd-f108-51a5-9c10-603a103dc121', '365fcb74-f44c-5ea3-9b40-98852d810439', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A witness described what happened, although some details differ from the initial headline.","explanation":"The missing expression is “report”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"report","id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L2_N14","is_correct":true},{"audio_text":"witness","id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L2_N15","is_correct":false},{"audio_text":"announce","id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L2_N16","is_correct":false}],"sentence_template":"A witness described what happened, although some details differ from the initial headline."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('879a0844-782a-583b-aba7-2aba821690fc', '365fcb74-f44c-5ea3-9b40-98852d810439', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"report","explanation":"The recording uses “report” in this position.","hint_prefix":"rep","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A witness described what happened, although some details differ from the initial headline."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5dd15f98-f0b9-56b8-96ca-69633f71d19f', '365fcb74-f44c-5ea3-9b40-98852d810439', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"headline","id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L2_N17","text":"headline"},{"audio_text":"report","id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L2_N18","text":"report"},{"audio_text":"according to","id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L2_N19","text":"according to"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fb56e1c4-98e9-5fa0-b7d2-4f45bfc977e7', '365fcb74-f44c-5ea3-9b40-98852d810439', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L2_N20","is_correct":true,"text":"A witness described what happened, although some details differ from the initial headline."},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L2_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L2_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8db456a7-9e5b-5f45-9179-1d8d859a0e4b', '365fcb74-f44c-5ea3-9b40-98852d810439', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ecd8282a-88e3-5dfa-a924-e5da183b2a6c', NULL, 'Связная речь и повторение', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Identifying Important Details","ru":"Связная речь и повторение"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('63ca060b-1ed5-5839-8c7f-d25e2f80afc7', 'ecd8282a-88e3-5dfa-a924-e5da183b2a6c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L3_N01","left":"headline","right":"заголовок новости"},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L3_N02","left":"report","right":"репортаж"},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L3_N03","left":"according to","right":"согласно"},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L3_N04","left":"witness","right":"свидетель"},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L3_N05","left":"estimate","right":"оценка"},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L3_N06","left":"announce","right":"объявлять"},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L3_N07","left":"confirm","right":"подтверждать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5d976e78-4b48-550e-8e96-40cca7f25f4e', 'ecd8282a-88e3-5dfa-a924-e5da183b2a6c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L3_N08","is_correct":true,"text":"The current estimate may change when investigators receive more reliable information."},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L3_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L3_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0acf4215-c6ef-58bf-a23a-f9022a6a667f', 'ecd8282a-88e3-5dfa-a924-e5da183b2a6c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The current estimate may change when investigators receive more reliable information.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Текущая оценка может измениться, когда следователи получат более надёжную информацию.","target_language":"en","word_bank":["The","current","estimate","may","change","when","investigators","receive","more","reliable","information."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a1046e0-6141-58b8-a880-d37ab0b9f9c8', 'ecd8282a-88e3-5dfa-a924-e5da183b2a6c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"according to","instruction":"Выберите подходящее слово.","options":["according to","announce","headline"],"sentence_template":"The current estimate may change when investigators receive more reliable information."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f64cd901-d5cc-5ee8-acd4-4339781ba5fc', 'ecd8282a-88e3-5dfa-a924-e5da183b2a6c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","current","estimate","may","change","when","investigators","receive","more","reliable","information."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["information.","reliable","more","receive","investigators","when","change","may","estimate","current","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('73278597-e875-5afb-9c22-2f9d7cda4b59', 'ecd8282a-88e3-5dfa-a924-e5da183b2a6c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The current estimate may change when investigators receive more reliable information. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3167aaf7-7590-5ddc-8e00-9cd6b5744362', 'ecd8282a-88e3-5dfa-a924-e5da183b2a6c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The current estimate may change when investigators receive more reliable information. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"Текущая оценка может измениться, когда следователи получат более надёжную информацию. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('30d71902-67de-57b8-98d6-f7876951819a', 'ecd8282a-88e3-5dfa-a924-e5da183b2a6c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"The current estimate may change when investigators receive more reliable information.","translation":"Текущая оценка может измениться, когда следователи получат более надёжную информацию.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Identifying Important Details"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('764d1371-8b57-5757-a1da-54c37d74040a', 'ecd8282a-88e3-5dfa-a924-e5da183b2a6c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“according to” means as stated by a source.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L3_N11","is_correct":true,"text":"as stated by a source"},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L3_N12","is_correct":false,"text":"a person who saw an event"},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L3_N13","is_correct":false,"text":"an approximate calculation"}],"word":"according to"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e16a22d3-6b49-53f2-8ce0-d0e6e200845e', 'ecd8282a-88e3-5dfa-a924-e5da183b2a6c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The current estimate may change when investigators receive more reliable information.","explanation":"The missing expression is “according to”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"according to","id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L3_N14","is_correct":true},{"audio_text":"estimate","id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L3_N15","is_correct":false},{"audio_text":"confirm","id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L3_N16","is_correct":false}],"sentence_template":"The current estimate may change when investigators receive more reliable information."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('af92ce7c-583e-5248-89ad-cf0cca3dd006', 'ecd8282a-88e3-5dfa-a924-e5da183b2a6c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"according to","explanation":"The recording uses “according to” in this position.","hint_prefix":"acc","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The current estimate may change when investigators receive more reliable information."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('727f1a3a-1872-562e-99a1-9b5eba9b8eaa', 'ecd8282a-88e3-5dfa-a924-e5da183b2a6c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"headline","id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L3_N17","text":"headline"},{"audio_text":"report","id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L3_N18","text":"report"},{"audio_text":"according to","id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L3_N19","text":"according to"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('386c483f-9e9f-5e29-b173-af5b80683440', 'ecd8282a-88e3-5dfa-a924-e5da183b2a6c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L3_N20","is_correct":true,"text":"The current estimate may change when investigators receive more reliable information."},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L3_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_NEWS_REPORTS_AND_PUBLIC_INFORMATION_L3_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8db456a7-9e5b-5f45-9179-1d8d859a0e4b', 'ecd8282a-88e3-5dfa-a924-e5da183b2a6c', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('617d0e20-73af-5930-a68b-fbbebdd67cf5', 'en', 'headline', 'заголовок новости', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('522dcfe2-2bac-5ff5-9f0d-e47290cf57ec', 'en', 'report', 'репортаж', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aade0879-6b31-586e-8501-d487ffbd8b66', 'en', 'according to', 'согласно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dd0adf2b-e3e4-5ddf-abca-3005b12e1dd5', 'en', 'witness', 'свидетель', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2fec883d-5ac5-5974-8704-59db4df775d7', 'en', 'estimate', 'оценка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d5f0402f-b2e2-5a44-8c4c-72f33d4b7b65', 'en', 'announce', 'объявлять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67b7d91b-1d2a-5380-87b4-36cc0aec0a14', 'en', 'confirm', 'подтверждать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('617d0e20-73af-5930-a68b-fbbebdd67cf5', 'en', 'headline', 'заголовок новости', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('522dcfe2-2bac-5ff5-9f0d-e47290cf57ec', 'en', 'report', 'репортаж', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aade0879-6b31-586e-8501-d487ffbd8b66', 'en', 'according to', 'согласно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dd0adf2b-e3e4-5ddf-abca-3005b12e1dd5', 'en', 'witness', 'свидетель', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2fec883d-5ac5-5974-8704-59db4df775d7', 'en', 'estimate', 'оценка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d5f0402f-b2e2-5a44-8c4c-72f33d4b7b65', 'en', 'announce', 'объявлять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67b7d91b-1d2a-5380-87b4-36cc0aec0a14', 'en', 'confirm', 'подтверждать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('617d0e20-73af-5930-a68b-fbbebdd67cf5', 'en', 'headline', 'заголовок новости', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('522dcfe2-2bac-5ff5-9f0d-e47290cf57ec', 'en', 'report', 'репортаж', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aade0879-6b31-586e-8501-d487ffbd8b66', 'en', 'according to', 'согласно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dd0adf2b-e3e4-5ddf-abca-3005b12e1dd5', 'en', 'witness', 'свидетель', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2fec883d-5ac5-5974-8704-59db4df775d7', 'en', 'estimate', 'оценка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d5f0402f-b2e2-5a44-8c4c-72f33d4b7b65', 'en', 'announce', 'объявлять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67b7d91b-1d2a-5380-87b4-36cc0aec0a14', 'en', 'confirm', 'подтверждать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db456a7-9e5b-5f45-9179-1d8d859a0e4b', id, 'f5fa4443-7298-5ae7-b350-22fd62265e0b', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'headline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db456a7-9e5b-5f45-9179-1d8d859a0e4b', id, 'f5fa4443-7298-5ae7-b350-22fd62265e0b', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'report' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db456a7-9e5b-5f45-9179-1d8d859a0e4b', id, 'f5fa4443-7298-5ae7-b350-22fd62265e0b', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'according to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db456a7-9e5b-5f45-9179-1d8d859a0e4b', id, 'f5fa4443-7298-5ae7-b350-22fd62265e0b', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'witness' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db456a7-9e5b-5f45-9179-1d8d859a0e4b', id, 'f5fa4443-7298-5ae7-b350-22fd62265e0b', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'estimate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db456a7-9e5b-5f45-9179-1d8d859a0e4b', id, 'f5fa4443-7298-5ae7-b350-22fd62265e0b', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'announce' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db456a7-9e5b-5f45-9179-1d8d859a0e4b', id, 'f5fa4443-7298-5ae7-b350-22fd62265e0b', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db456a7-9e5b-5f45-9179-1d8d859a0e4b', id, '365fcb74-f44c-5ea3-9b40-98852d810439', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'headline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db456a7-9e5b-5f45-9179-1d8d859a0e4b', id, '365fcb74-f44c-5ea3-9b40-98852d810439', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'report' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db456a7-9e5b-5f45-9179-1d8d859a0e4b', id, '365fcb74-f44c-5ea3-9b40-98852d810439', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'according to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db456a7-9e5b-5f45-9179-1d8d859a0e4b', id, '365fcb74-f44c-5ea3-9b40-98852d810439', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'witness' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db456a7-9e5b-5f45-9179-1d8d859a0e4b', id, '365fcb74-f44c-5ea3-9b40-98852d810439', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'estimate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db456a7-9e5b-5f45-9179-1d8d859a0e4b', id, '365fcb74-f44c-5ea3-9b40-98852d810439', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'announce' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db456a7-9e5b-5f45-9179-1d8d859a0e4b', id, '365fcb74-f44c-5ea3-9b40-98852d810439', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db456a7-9e5b-5f45-9179-1d8d859a0e4b', id, 'ecd8282a-88e3-5dfa-a924-e5da183b2a6c', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'headline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db456a7-9e5b-5f45-9179-1d8d859a0e4b', id, 'ecd8282a-88e3-5dfa-a924-e5da183b2a6c', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'report' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db456a7-9e5b-5f45-9179-1d8d859a0e4b', id, 'ecd8282a-88e3-5dfa-a924-e5da183b2a6c', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'according to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db456a7-9e5b-5f45-9179-1d8d859a0e4b', id, 'ecd8282a-88e3-5dfa-a924-e5da183b2a6c', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'witness' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db456a7-9e5b-5f45-9179-1d8d859a0e4b', id, 'ecd8282a-88e3-5dfa-a924-e5da183b2a6c', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'estimate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db456a7-9e5b-5f45-9179-1d8d859a0e4b', id, 'ecd8282a-88e3-5dfa-a924-e5da183b2a6c', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'announce' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db456a7-9e5b-5f45-9179-1d8d859a0e4b', id, 'ecd8282a-88e3-5dfa-a924-e5da183b2a6c', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
