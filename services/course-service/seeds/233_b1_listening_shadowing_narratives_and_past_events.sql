-- Track: B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('073548b9-406a-5187-9a9a-75c403b0eb3d', 'B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS', 'Рассказы и прошлые события', 'Развивайте навыки аудирования и повторения уровня B1 по теме «Рассказы и прошлые события».', '{"en":"Narratives and Past Events","ru":"Рассказы и прошлые события"}'::jsonb, '{"en":"Develop B1 listening and shadowing skills for narratives and past events.","ru":"Развивайте навыки аудирования и повторения уровня B1 по теме «Рассказы и прошлые события»."}'::jsonb, 'en', 'B1', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a5d1261f-0aff-534d-be01-f93c097d1660', NULL, 'Основная мысль и детали', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Setting the Scene","ru":"Основная мысль и детали"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('04695168-6c84-50d7-8292-b01b2c9f2c14', 'a5d1261f-0aff-534d-be01-f93c097d1660', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L1_N01","left":"sequence","right":"последовательность"},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L1_N02","left":"event","right":"событие"},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L1_N03","left":"meanwhile","right":"тем временем"},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L1_N04","left":"eventually","right":"в конце концов"},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L1_N05","left":"unexpected","right":"неожиданный"},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L1_N06","left":"outcome","right":"исход"},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L1_N07","left":"realise","right":"осознать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c94d8fca-c98c-5a43-8b90-aa750c47dd99', 'a5d1261f-0aff-534d-be01-f93c097d1660', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L1_N08","is_correct":true,"text":"We had been driving for an hour when an unexpected warning light appeared on the dashboard."},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L1_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L1_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('55d72b0c-5b73-52db-bd67-117c125821a2', 'a5d1261f-0aff-534d-be01-f93c097d1660', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We had been driving for an hour when an unexpected warning light appeared on the dashboard.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мы ехали уже час, когда на приборной панели появился неожиданный предупреждающий сигнал.","target_language":"en","word_bank":["We","had","been","driving","for","an","hour","when","an","unexpected","warning","light","appeared","on","the","dashboard."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('57aa610d-7e36-5a5e-b475-435930e3c3c6', 'a5d1261f-0aff-534d-be01-f93c097d1660', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"sequence","instruction":"Выберите подходящее слово.","options":["sequence","eventually","outcome"],"sentence_template":"We had been driving for an hour when an unexpected warning light appeared on the dashboard."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('891f5c3d-87d8-5133-9e0e-543617c84553', 'a5d1261f-0aff-534d-be01-f93c097d1660', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","had","been","driving","for","an","hour","when","an","unexpected","warning","light","appeared","on","the","dashboard."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["dashboard.","the","on","appeared","light","warning","unexpected","an","when","hour","an","for","driving","been","had","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac75edc7-179b-5b83-ab9b-28702dcd9a06', 'a5d1261f-0aff-534d-be01-f93c097d1660', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We had been driving for an hour when an unexpected warning light appeared on the dashboard. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('92914cf9-3c50-5723-9a20-305b32670aa0', 'a5d1261f-0aff-534d-be01-f93c097d1660', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We had been driving for an hour when an unexpected warning light appeared on the dashboard. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"Мы ехали уже час, когда на приборной панели появился неожиданный предупреждающий сигнал. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a633c18d-f789-5706-9e52-4e12993b20ae', 'a5d1261f-0aff-534d-be01-f93c097d1660', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"We had been driving for an hour when an unexpected warning light appeared on the dashboard.","translation":"Мы ехали уже час, когда на приборной панели появился неожиданный предупреждающий сигнал.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Setting the Scene"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b356b69f-78fc-5c58-a92c-74d3d08ad041', 'a5d1261f-0aff-534d-be01-f93c097d1660', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“sequence” means the order of events.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L1_N11","is_correct":true,"text":"the order of events"},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L1_N12","is_correct":false,"text":"something that happens"},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L1_N13","is_correct":false,"text":"during the same period"}],"word":"sequence"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('01db7156-d590-5c98-8879-249f19ab6efc', 'a5d1261f-0aff-534d-be01-f93c097d1660', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We had been driving for an hour when an unexpected warning light appeared on the dashboard.","explanation":"The missing expression is “sequence”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"sequence","id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L1_N14","is_correct":true},{"audio_text":"meanwhile","id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L1_N15","is_correct":false},{"audio_text":"unexpected","id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L1_N16","is_correct":false}],"sentence_template":"We had been driving for an hour when an unexpected warning light appeared on the dashboard."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5cafe1d-aa94-5c7f-bf82-0e00a3ba19cc', 'a5d1261f-0aff-534d-be01-f93c097d1660', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"sequence","explanation":"The recording uses “sequence” in this position.","hint_prefix":"seq","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We had been driving for an hour when an unexpected warning light appeared on the dashboard."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('95df76dc-732b-53c1-96ae-ea71d4f498e8', 'a5d1261f-0aff-534d-be01-f93c097d1660', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"sequence","id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L1_N17","text":"sequence"},{"audio_text":"event","id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L1_N18","text":"event"},{"audio_text":"meanwhile","id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L1_N19","text":"meanwhile"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('01081a99-d075-57c2-9e0e-ccc537d5da07', 'a5d1261f-0aff-534d-be01-f93c097d1660', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L1_N20","is_correct":true,"text":"We had been driving for an hour when an unexpected warning light appeared on the dashboard."},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L1_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L1_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('073548b9-406a-5187-9a9a-75c403b0eb3d', 'a5d1261f-0aff-534d-be01-f93c097d1660', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('6e031e09-d2e4-53b8-937a-9bc07d35dce0', NULL, 'Отношение и вывод', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Following Event Order","ru":"Отношение и вывод"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21d61937-2696-5585-b530-823b4794c06c', '6e031e09-d2e4-53b8-937a-9bc07d35dce0', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L2_N01","left":"sequence","right":"последовательность"},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L2_N02","left":"event","right":"событие"},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L2_N03","left":"meanwhile","right":"тем временем"},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L2_N04","left":"eventually","right":"в конце концов"},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L2_N05","left":"unexpected","right":"неожиданный"},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L2_N06","left":"outcome","right":"исход"},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L2_N07","left":"realise","right":"осознать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('58a644fe-4ee2-5198-8347-2d620ad08097', '6e031e09-d2e4-53b8-937a-9bc07d35dce0', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L2_N08","is_correct":true,"text":"Meanwhile, the weather was getting worse, so we realised that continuing would be risky."},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L2_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L2_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08d9cbcf-1ed4-5d62-82ed-91476e17b335', '6e031e09-d2e4-53b8-937a-9bc07d35dce0', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Meanwhile, the weather was getting worse, so we realised that continuing would be risky.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Тем временем погода ухудшалась, поэтому мы осознали, что продолжать будет рискованно.","target_language":"en","word_bank":["Meanwhile,","the","weather","was","getting","worse,","so","we","realised","that","continuing","would","be","risky."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3146a2fa-b9a3-5a7c-b310-b58071abd893', '6e031e09-d2e4-53b8-937a-9bc07d35dce0', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"event","instruction":"Выберите подходящее слово.","options":["event","unexpected","realise"],"sentence_template":"Meanwhile, the weather was getting worse, so we realised that continuing would be risky."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9418916f-dee3-5cb4-b72a-3700776326ab', '6e031e09-d2e4-53b8-937a-9bc07d35dce0', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Meanwhile,","the","weather","was","getting","worse,","so","we","realised","that","continuing","would","be","risky."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["risky.","be","would","continuing","that","realised","we","so","worse,","getting","was","weather","the","Meanwhile,"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('33b83721-8f8e-5b15-a6ab-aa550eab59b4', '6e031e09-d2e4-53b8-937a-9bc07d35dce0', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Meanwhile, the weather was getting worse, so we realised that continuing would be risky. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('10001989-65c5-5335-8a07-b3c2a7eba420', '6e031e09-d2e4-53b8-937a-9bc07d35dce0', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Meanwhile, the weather was getting worse, so we realised that continuing would be risky. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"Тем временем погода ухудшалась, поэтому мы осознали, что продолжать будет рискованно. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('70aaaf6e-17aa-56a2-a604-5c80dc85591c', '6e031e09-d2e4-53b8-937a-9bc07d35dce0', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"Meanwhile, the weather was getting worse, so we realised that continuing would be risky.","translation":"Тем временем погода ухудшалась, поэтому мы осознали, что продолжать будет рискованно.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Following Event Order"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e89d760-5bbb-5c0c-a483-65053c029c4b', '6e031e09-d2e4-53b8-937a-9bc07d35dce0', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“event” means something that happens.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L2_N11","is_correct":true,"text":"something that happens"},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L2_N12","is_correct":false,"text":"during the same period"},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L2_N13","is_correct":false,"text":"after delay or difficulty"}],"word":"event"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b44d5b43-e26a-5249-9204-a1cde5c2cca5', '6e031e09-d2e4-53b8-937a-9bc07d35dce0', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Meanwhile, the weather was getting worse, so we realised that continuing would be risky.","explanation":"The missing expression is “event”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"event","id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L2_N14","is_correct":true},{"audio_text":"eventually","id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L2_N15","is_correct":false},{"audio_text":"outcome","id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L2_N16","is_correct":false}],"sentence_template":"Meanwhile, the weather was getting worse, so we realised that continuing would be risky."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c18bb6d1-8735-5056-bea5-2b4d161805c7', '6e031e09-d2e4-53b8-937a-9bc07d35dce0', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"event","explanation":"The recording uses “event” in this position.","hint_prefix":"eve","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Meanwhile, the weather was getting worse, so we realised that continuing would be risky."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dba4a48c-c5ef-5316-9c6a-d5b35a4d44b7', '6e031e09-d2e4-53b8-937a-9bc07d35dce0', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"sequence","id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L2_N17","text":"sequence"},{"audio_text":"event","id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L2_N18","text":"event"},{"audio_text":"meanwhile","id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L2_N19","text":"meanwhile"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f75e8253-eb5b-5d3b-ad20-12df8f706349', '6e031e09-d2e4-53b8-937a-9bc07d35dce0', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L2_N20","is_correct":true,"text":"Meanwhile, the weather was getting worse, so we realised that continuing would be risky."},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L2_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L2_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('073548b9-406a-5187-9a9a-75c403b0eb3d', '6e031e09-d2e4-53b8-937a-9bc07d35dce0', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c2543182-ad86-5ce8-aa2f-8585f1ebb679', NULL, 'Связная речь и повторение', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Understanding the Outcome","ru":"Связная речь и повторение"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5575f4ef-2b87-53bc-94de-86d7f73d98a3', 'c2543182-ad86-5ce8-aa2f-8585f1ebb679', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L3_N01","left":"sequence","right":"последовательность"},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L3_N02","left":"event","right":"событие"},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L3_N03","left":"meanwhile","right":"тем временем"},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L3_N04","left":"eventually","right":"в конце концов"},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L3_N05","left":"unexpected","right":"неожиданный"},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L3_N06","left":"outcome","right":"исход"},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L3_N07","left":"realise","right":"осознать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('631a6e70-44e9-5d51-92d4-2af3f788c9b0', 'c2543182-ad86-5ce8-aa2f-8585f1ebb679', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L3_N08","is_correct":true,"text":"We eventually reached a garage, and the outcome was far better than we had expected."},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L3_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L3_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0f15d2c8-0eb7-5421-a444-7cd0696b1fe7', 'c2543182-ad86-5ce8-aa2f-8585f1ebb679', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We eventually reached a garage, and the outcome was far better than we had expected.","instruction":"Соберите перевод.","source_language":"ru","source_text":"В конце концов мы добрались до автосервиса, и исход оказался намного лучше, чем мы ожидали.","target_language":"en","word_bank":["We","eventually","reached","a","garage,","and","the","outcome","was","far","better","than","we","had","expected."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('008b962f-df5e-520c-aaf4-400bc3628061', 'c2543182-ad86-5ce8-aa2f-8585f1ebb679', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"meanwhile","instruction":"Выберите подходящее слово.","options":["meanwhile","outcome","sequence"],"sentence_template":"We eventually reached a garage, and the outcome was far better than we had expected."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e4bddb85-868d-5e9b-8e02-3e22c017469b', 'c2543182-ad86-5ce8-aa2f-8585f1ebb679', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","eventually","reached","a","garage,","and","the","outcome","was","far","better","than","we","had","expected."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["expected.","had","we","than","better","far","was","outcome","the","and","garage,","a","reached","eventually","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('01f6585d-3f01-5dd2-895c-28c869eb9fdb', 'c2543182-ad86-5ce8-aa2f-8585f1ebb679', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We eventually reached a garage, and the outcome was far better than we had expected. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a3b07e1-7f8f-5724-88a8-e05ee515f35e', 'c2543182-ad86-5ce8-aa2f-8585f1ebb679', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We eventually reached a garage, and the outcome was far better than we had expected. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"В конце концов мы добрались до автосервиса, и исход оказался намного лучше, чем мы ожидали. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0d656b9-e61f-5f9a-a408-2d211cd4b051', 'c2543182-ad86-5ce8-aa2f-8585f1ebb679', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"We eventually reached a garage, and the outcome was far better than we had expected.","translation":"В конце концов мы добрались до автосервиса, и исход оказался намного лучше, чем мы ожидали.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Understanding the Outcome"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c52f2541-2c0d-5012-a74b-63caa8eda9b9', 'c2543182-ad86-5ce8-aa2f-8585f1ebb679', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“meanwhile” means during the same period.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L3_N11","is_correct":true,"text":"during the same period"},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L3_N12","is_correct":false,"text":"after delay or difficulty"},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L3_N13","is_correct":false,"text":"not anticipated"}],"word":"meanwhile"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('089df1a9-f1aa-56ff-86bc-003912d0eaca', 'c2543182-ad86-5ce8-aa2f-8585f1ebb679', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We eventually reached a garage, and the outcome was far better than we had expected.","explanation":"The missing expression is “meanwhile”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"meanwhile","id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L3_N14","is_correct":true},{"audio_text":"unexpected","id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L3_N15","is_correct":false},{"audio_text":"realise","id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L3_N16","is_correct":false}],"sentence_template":"We eventually reached a garage, and the outcome was far better than we had expected."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a12d32b2-d352-5f01-b013-029330433883', 'c2543182-ad86-5ce8-aa2f-8585f1ebb679', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"meanwhile","explanation":"The recording uses “meanwhile” in this position.","hint_prefix":"mea","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We eventually reached a garage, and the outcome was far better than we had expected."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c8222c5b-c5d8-5535-b96b-c8e585f583f6', 'c2543182-ad86-5ce8-aa2f-8585f1ebb679', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"sequence","id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L3_N17","text":"sequence"},{"audio_text":"event","id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L3_N18","text":"event"},{"audio_text":"meanwhile","id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L3_N19","text":"meanwhile"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e6a53e50-3746-5d53-9ab2-abf2833faf00', 'c2543182-ad86-5ce8-aa2f-8585f1ebb679', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L3_N20","is_correct":true,"text":"We eventually reached a garage, and the outcome was far better than we had expected."},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L3_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_NARRATIVES_AND_PAST_EVENTS_L3_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('073548b9-406a-5187-9a9a-75c403b0eb3d', 'c2543182-ad86-5ce8-aa2f-8585f1ebb679', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('10a96db0-d415-5944-9e90-b75160dc78b5', 'en', 'sequence', 'последовательность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('06c6c815-c1b0-52bc-bd4d-195879fda1e0', 'en', 'event', 'событие', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8b7ac561-09ea-50ed-a452-42854cdc4c28', 'en', 'meanwhile', 'тем временем', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0a46fee2-39e8-5d1d-a3fc-dc463f12bed9', 'en', 'eventually', 'в конце концов', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('39e5b145-dfc2-5168-a753-aec6d71eacbe', 'en', 'unexpected', 'неожиданный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4a747c45-c5a6-5a02-8a76-b2ee1660f59d', 'en', 'outcome', 'исход', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48541af4-1fa8-52a3-b2ea-5215c8e207dd', 'en', 'realise', 'осознать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('10a96db0-d415-5944-9e90-b75160dc78b5', 'en', 'sequence', 'последовательность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('06c6c815-c1b0-52bc-bd4d-195879fda1e0', 'en', 'event', 'событие', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8b7ac561-09ea-50ed-a452-42854cdc4c28', 'en', 'meanwhile', 'тем временем', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0a46fee2-39e8-5d1d-a3fc-dc463f12bed9', 'en', 'eventually', 'в конце концов', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('39e5b145-dfc2-5168-a753-aec6d71eacbe', 'en', 'unexpected', 'неожиданный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4a747c45-c5a6-5a02-8a76-b2ee1660f59d', 'en', 'outcome', 'исход', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48541af4-1fa8-52a3-b2ea-5215c8e207dd', 'en', 'realise', 'осознать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('10a96db0-d415-5944-9e90-b75160dc78b5', 'en', 'sequence', 'последовательность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('06c6c815-c1b0-52bc-bd4d-195879fda1e0', 'en', 'event', 'событие', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8b7ac561-09ea-50ed-a452-42854cdc4c28', 'en', 'meanwhile', 'тем временем', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0a46fee2-39e8-5d1d-a3fc-dc463f12bed9', 'en', 'eventually', 'в конце концов', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('39e5b145-dfc2-5168-a753-aec6d71eacbe', 'en', 'unexpected', 'неожиданный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4a747c45-c5a6-5a02-8a76-b2ee1660f59d', 'en', 'outcome', 'исход', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48541af4-1fa8-52a3-b2ea-5215c8e207dd', 'en', 'realise', 'осознать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '073548b9-406a-5187-9a9a-75c403b0eb3d', id, 'a5d1261f-0aff-534d-be01-f93c097d1660', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'sequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '073548b9-406a-5187-9a9a-75c403b0eb3d', id, 'a5d1261f-0aff-534d-be01-f93c097d1660', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'event' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '073548b9-406a-5187-9a9a-75c403b0eb3d', id, 'a5d1261f-0aff-534d-be01-f93c097d1660', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'meanwhile' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '073548b9-406a-5187-9a9a-75c403b0eb3d', id, 'a5d1261f-0aff-534d-be01-f93c097d1660', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'eventually' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '073548b9-406a-5187-9a9a-75c403b0eb3d', id, 'a5d1261f-0aff-534d-be01-f93c097d1660', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'unexpected' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '073548b9-406a-5187-9a9a-75c403b0eb3d', id, 'a5d1261f-0aff-534d-be01-f93c097d1660', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'outcome' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '073548b9-406a-5187-9a9a-75c403b0eb3d', id, 'a5d1261f-0aff-534d-be01-f93c097d1660', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'realise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '073548b9-406a-5187-9a9a-75c403b0eb3d', id, '6e031e09-d2e4-53b8-937a-9bc07d35dce0', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'sequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '073548b9-406a-5187-9a9a-75c403b0eb3d', id, '6e031e09-d2e4-53b8-937a-9bc07d35dce0', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'event' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '073548b9-406a-5187-9a9a-75c403b0eb3d', id, '6e031e09-d2e4-53b8-937a-9bc07d35dce0', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'meanwhile' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '073548b9-406a-5187-9a9a-75c403b0eb3d', id, '6e031e09-d2e4-53b8-937a-9bc07d35dce0', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'eventually' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '073548b9-406a-5187-9a9a-75c403b0eb3d', id, '6e031e09-d2e4-53b8-937a-9bc07d35dce0', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'unexpected' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '073548b9-406a-5187-9a9a-75c403b0eb3d', id, '6e031e09-d2e4-53b8-937a-9bc07d35dce0', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'outcome' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '073548b9-406a-5187-9a9a-75c403b0eb3d', id, '6e031e09-d2e4-53b8-937a-9bc07d35dce0', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'realise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '073548b9-406a-5187-9a9a-75c403b0eb3d', id, 'c2543182-ad86-5ce8-aa2f-8585f1ebb679', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'sequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '073548b9-406a-5187-9a9a-75c403b0eb3d', id, 'c2543182-ad86-5ce8-aa2f-8585f1ebb679', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'event' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '073548b9-406a-5187-9a9a-75c403b0eb3d', id, 'c2543182-ad86-5ce8-aa2f-8585f1ebb679', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'meanwhile' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '073548b9-406a-5187-9a9a-75c403b0eb3d', id, 'c2543182-ad86-5ce8-aa2f-8585f1ebb679', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'eventually' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '073548b9-406a-5187-9a9a-75c403b0eb3d', id, 'c2543182-ad86-5ce8-aa2f-8585f1ebb679', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'unexpected' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '073548b9-406a-5187-9a9a-75c403b0eb3d', id, 'c2543182-ad86-5ce8-aa2f-8585f1ebb679', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'outcome' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '073548b9-406a-5187-9a9a-75c403b0eb3d', id, 'c2543182-ad86-5ce8-aa2f-8585f1ebb679', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'realise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
