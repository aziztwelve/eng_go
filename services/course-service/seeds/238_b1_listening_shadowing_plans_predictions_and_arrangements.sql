-- Track: B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('dd1a72a4-84f1-55e5-a6ca-b3136bfc7ccf', 'B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS', 'Планы, прогнозы и договорённости', 'Развивайте навыки аудирования и повторения уровня B1 по теме «Планы, прогнозы и договорённости».', '{"en":"Plans, Predictions and Arrangements","ru":"Планы, прогнозы и договорённости"}'::jsonb, '{"en":"Develop B1 listening and shadowing skills for plans, predictions and arrangements.","ru":"Развивайте навыки аудирования и повторения уровня B1 по теме «Планы, прогнозы и договорённости»."}'::jsonb, 'en', 'B1', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('75c83d42-7074-5a68-a79e-96a3a78ebdf9', NULL, 'Основная мысль и детали', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Firm Arrangements","ru":"Основная мысль и детали"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a84ddf42-bea8-5e3d-8e30-38b9a5022a5d', '75c83d42-7074-5a68-a79e-96a3a78ebdf9', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L1_N01","left":"arrangement","right":"договорённость"},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L1_N02","left":"likely","right":"вероятно"},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L1_N03","left":"postpone","right":"отложить"},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L1_N04","left":"alternative","right":"альтернатива"},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L1_N05","left":"confirm","right":"подтвердить"},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L1_N06","left":"prediction","right":"прогноз"},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L1_N07","left":"intention","right":"намерение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0c81fa5d-cc70-5141-82ca-c6a9cbc2da3e', '75c83d42-7074-5a68-a79e-96a3a78ebdf9', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L1_N08","is_correct":true,"text":"The arrangement is likely to change because the organiser has not confirmed the venue."},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L1_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L1_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('223ff461-c4d9-5336-9233-5a44d8d9fd96', '75c83d42-7074-5a68-a79e-96a3a78ebdf9', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The arrangement is likely to change because the organiser has not confirmed the venue.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Договорённость, вероятно, изменится, потому что организатор не подтвердил место проведения.","target_language":"en","word_bank":["The","arrangement","is","likely","to","change","because","the","organiser","has","not","confirmed","the","venue."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cfe33271-41cf-522f-bf1c-dbf1be23777d', '75c83d42-7074-5a68-a79e-96a3a78ebdf9', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"arrangement","instruction":"Выберите подходящее слово.","options":["arrangement","alternative","prediction"],"sentence_template":"The ___ is likely to change because the organiser has not confirmed the venue."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7ef70a9f-0e07-5b55-89dd-528f93bb2e99', '75c83d42-7074-5a68-a79e-96a3a78ebdf9', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","arrangement","is","likely","to","change","because","the","organiser","has","not","confirmed","the","venue."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["venue.","the","confirmed","not","has","organiser","the","because","change","to","likely","is","arrangement","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('52887e51-f89a-5af0-bc7d-32ca9805306d', '75c83d42-7074-5a68-a79e-96a3a78ebdf9', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The arrangement is likely to change because the organiser has not confirmed the venue. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('927235a5-c991-5330-89a0-a3efeb373c55', '75c83d42-7074-5a68-a79e-96a3a78ebdf9', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The arrangement is likely to change because the organiser has not confirmed the venue. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"Договорённость, вероятно, изменится, потому что организатор не подтвердил место проведения. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4ef4dae9-04a7-5ceb-9135-a75f50953dcd', '75c83d42-7074-5a68-a79e-96a3a78ebdf9', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"The arrangement is likely to change because the organiser has not confirmed the venue.","translation":"Договорённость, вероятно, изменится, потому что организатор не подтвердил место проведения.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Firm Arrangements"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c2e412f8-ec08-5623-8e0b-0ca706b9a3ca', '75c83d42-7074-5a68-a79e-96a3a78ebdf9', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“arrangement” means a plan agreed with others.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L1_N11","is_correct":true,"text":"a plan agreed with others"},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L1_N12","is_correct":false,"text":"expected to happen"},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L1_N13","is_correct":false,"text":"move to a later time"}],"word":"arrangement"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('64cbd39a-f813-534d-b0c4-2e626457c36b', '75c83d42-7074-5a68-a79e-96a3a78ebdf9', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The arrangement is likely to change because the organiser has not confirmed the venue.","explanation":"The missing expression is “arrangement”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"arrangement","id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L1_N14","is_correct":true},{"audio_text":"postpone","id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L1_N15","is_correct":false},{"audio_text":"confirm","id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L1_N16","is_correct":false}],"sentence_template":"The ___ is likely to change because the organiser has not confirmed the venue."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fcf382b9-65e6-57f4-a8a4-8d59277bb34c', '75c83d42-7074-5a68-a79e-96a3a78ebdf9', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"arrangement","explanation":"The recording uses “arrangement” in this position.","hint_prefix":"arr","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ is likely to change because the organiser has not confirmed the venue."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ab20b2f1-c388-5c2f-92bc-cba491a30197', '75c83d42-7074-5a68-a79e-96a3a78ebdf9', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"arrangement","id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L1_N17","text":"arrangement"},{"audio_text":"likely","id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L1_N18","text":"likely"},{"audio_text":"postpone","id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L1_N19","text":"postpone"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e834b910-3694-5778-88ca-06f03f4152db', '75c83d42-7074-5a68-a79e-96a3a78ebdf9', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L1_N20","is_correct":true,"text":"The arrangement is likely to change because the organiser has not confirmed the venue."},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L1_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L1_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('dd1a72a4-84f1-55e5-a6ca-b3136bfc7ccf', '75c83d42-7074-5a68-a79e-96a3a78ebdf9', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('87798683-cae4-5aac-88a0-6169808101b3', NULL, 'Отношение и вывод', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Possible Changes","ru":"Отношение и вывод"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90abc511-b397-5ea0-892d-b062810d8adb', '87798683-cae4-5aac-88a0-6169808101b3', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L2_N01","left":"arrangement","right":"договорённость"},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L2_N02","left":"likely","right":"вероятно"},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L2_N03","left":"postpone","right":"отложить"},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L2_N04","left":"alternative","right":"альтернатива"},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L2_N05","left":"confirm","right":"подтвердить"},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L2_N06","left":"prediction","right":"прогноз"},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L2_N07","left":"intention","right":"намерение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9000cd07-5650-5175-9aa1-cd0bc2aa3555', '87798683-cae4-5aac-88a0-6169808101b3', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L2_N08","is_correct":true,"text":"If the meeting is postponed, we will need an alternative that suits everyone."},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L2_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L2_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0366fa21-ed49-5b72-b3db-debccde87916', '87798683-cae4-5aac-88a0-6169808101b3', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If the meeting is postponed, we will need an alternative that suits everyone.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Если встречу отложат, нам понадобится альтернатива, которая подойдёт всем.","target_language":"en","word_bank":["If","the","meeting","is","postponed,","we","will","need","an","alternative","that","suits","everyone."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ca73e367-a830-5eee-a1f3-7e4648d35012', '87798683-cae4-5aac-88a0-6169808101b3', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"likely","instruction":"Выберите подходящее слово.","options":["likely","confirm","intention"],"sentence_template":"If the meeting is postponed, we will need an alternative that suits everyone."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ebd651e-be0f-5270-a3ff-2fbb50432903', '87798683-cae4-5aac-88a0-6169808101b3', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["If","the","meeting","is","postponed,","we","will","need","an","alternative","that","suits","everyone."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["everyone.","suits","that","alternative","an","need","will","we","postponed,","is","meeting","the","If"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fb582150-fd39-5492-97fb-201760c671de', '87798683-cae4-5aac-88a0-6169808101b3', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If the meeting is postponed, we will need an alternative that suits everyone. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('30040b06-ec3e-5108-8762-8770dfab27dd', '87798683-cae4-5aac-88a0-6169808101b3', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If the meeting is postponed, we will need an alternative that suits everyone. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"Если встречу отложат, нам понадобится альтернатива, которая подойдёт всем. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3dbf03ff-cdbc-5f7e-b6a5-fec499fbc65e', '87798683-cae4-5aac-88a0-6169808101b3', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"If the meeting is postponed, we will need an alternative that suits everyone.","translation":"Если встречу отложат, нам понадобится альтернатива, которая подойдёт всем.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Possible Changes"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('de74b898-22eb-549a-be24-4f62807bfe13', '87798683-cae4-5aac-88a0-6169808101b3', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“likely” means expected to happen.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L2_N11","is_correct":true,"text":"expected to happen"},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L2_N12","is_correct":false,"text":"move to a later time"},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L2_N13","is_correct":false,"text":"another possible option"}],"word":"likely"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c0056ece-ce8a-56dd-84cb-d37716f9b31d', '87798683-cae4-5aac-88a0-6169808101b3', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If the meeting is postponed, we will need an alternative that suits everyone.","explanation":"The missing expression is “likely”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"likely","id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L2_N14","is_correct":true},{"audio_text":"alternative","id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L2_N15","is_correct":false},{"audio_text":"prediction","id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L2_N16","is_correct":false}],"sentence_template":"If the meeting is postponed, we will need an alternative that suits everyone."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4895f41f-0c14-576e-bc54-a767aec73481', '87798683-cae4-5aac-88a0-6169808101b3', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"likely","explanation":"The recording uses “likely” in this position.","hint_prefix":"lik","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"If the meeting is postponed, we will need an alternative that suits everyone."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b5449c3-f08d-5c20-a1b2-3e41357dbf67', '87798683-cae4-5aac-88a0-6169808101b3', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"arrangement","id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L2_N17","text":"arrangement"},{"audio_text":"likely","id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L2_N18","text":"likely"},{"audio_text":"postpone","id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L2_N19","text":"postpone"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e7fcc95-51df-5110-937d-2567430e25e7', '87798683-cae4-5aac-88a0-6169808101b3', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L2_N20","is_correct":true,"text":"If the meeting is postponed, we will need an alternative that suits everyone."},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L2_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L2_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('dd1a72a4-84f1-55e5-a6ca-b3136bfc7ccf', '87798683-cae4-5aac-88a0-6169808101b3', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e9819309-d261-5495-a984-406e9fe9f948', NULL, 'Связная речь и повторение', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Predictions and Reasons","ru":"Связная речь и повторение"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('27171b7e-edd3-5681-b708-3d10a10ae8dc', 'e9819309-d261-5495-a984-406e9fe9f948', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L3_N01","left":"arrangement","right":"договорённость"},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L3_N02","left":"likely","right":"вероятно"},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L3_N03","left":"postpone","right":"отложить"},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L3_N04","left":"alternative","right":"альтернатива"},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L3_N05","left":"confirm","right":"подтвердить"},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L3_N06","left":"prediction","right":"прогноз"},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L3_N07","left":"intention","right":"намерение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a19754e1-a62b-5e7e-ba25-adc07777c646', 'e9819309-d261-5495-a984-406e9fe9f948', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L3_N08","is_correct":true,"text":"Her intention is clear, but her prediction depends on information that may not be reliable."},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L3_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L3_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b197af98-3966-5969-be53-70b9696b9189', 'e9819309-d261-5495-a984-406e9fe9f948', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Her intention is clear, but her prediction depends on information that may not be reliable.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Её намерение ясно, но прогноз зависит от информации, которая может быть ненадёжной.","target_language":"en","word_bank":["Her","intention","is","clear,","but","her","prediction","depends","on","information","that","may","not","be","reliable."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7c58e56-70ba-51ee-9801-72a3143575a7', 'e9819309-d261-5495-a984-406e9fe9f948', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"postpone","instruction":"Выберите подходящее слово.","options":["postpone","prediction","arrangement"],"sentence_template":"Her intention is clear, but her prediction depends on information that may not be reliable."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b8995953-09fd-5717-877d-cf05b4fdc8d0', 'e9819309-d261-5495-a984-406e9fe9f948', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Her","intention","is","clear,","but","her","prediction","depends","on","information","that","may","not","be","reliable."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["reliable.","be","not","may","that","information","on","depends","prediction","her","but","clear,","is","intention","Her"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('029a746b-5d36-502e-8e8e-2a2fa4ba6116', 'e9819309-d261-5495-a984-406e9fe9f948', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Her intention is clear, but her prediction depends on information that may not be reliable. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65c3bed2-58e9-5286-9ae4-0336ef875d68', 'e9819309-d261-5495-a984-406e9fe9f948', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Her intention is clear, but her prediction depends on information that may not be reliable. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"Её намерение ясно, но прогноз зависит от информации, которая может быть ненадёжной. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3bee833c-da60-536b-896a-0f185abb4e2b', 'e9819309-d261-5495-a984-406e9fe9f948', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"Her intention is clear, but her prediction depends on information that may not be reliable.","translation":"Её намерение ясно, но прогноз зависит от информации, которая может быть ненадёжной.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Predictions and Reasons"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a693262-fc2a-5498-8703-20acca477001', 'e9819309-d261-5495-a984-406e9fe9f948', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“postpone” means move to a later time.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L3_N11","is_correct":true,"text":"move to a later time"},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L3_N12","is_correct":false,"text":"another possible option"},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L3_N13","is_correct":false,"text":"state that details are correct"}],"word":"postpone"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18726939-069e-57c5-bc48-5a07f9d31964', 'e9819309-d261-5495-a984-406e9fe9f948', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Her intention is clear, but her prediction depends on information that may not be reliable.","explanation":"The missing expression is “postpone”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"postpone","id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L3_N14","is_correct":true},{"audio_text":"confirm","id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L3_N15","is_correct":false},{"audio_text":"intention","id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L3_N16","is_correct":false}],"sentence_template":"Her intention is clear, but her prediction depends on information that may not be reliable."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fb5507d2-5225-57b9-8e6a-3f4d02cc2d8c', 'e9819309-d261-5495-a984-406e9fe9f948', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"postpone","explanation":"The recording uses “postpone” in this position.","hint_prefix":"pos","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Her intention is clear, but her prediction depends on information that may not be reliable."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc08fd47-e31f-59e3-8e14-767207f4ddf8', 'e9819309-d261-5495-a984-406e9fe9f948', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"arrangement","id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L3_N17","text":"arrangement"},{"audio_text":"likely","id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L3_N18","text":"likely"},{"audio_text":"postpone","id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L3_N19","text":"postpone"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b1cc394-fb03-567c-a3d4-d1a13f20305a', 'e9819309-d261-5495-a984-406e9fe9f948', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L3_N20","is_correct":true,"text":"Her intention is clear, but her prediction depends on information that may not be reliable."},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L3_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_PLANS_PREDICTIONS_AND_ARRANGEMENTS_L3_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('dd1a72a4-84f1-55e5-a6ca-b3136bfc7ccf', 'e9819309-d261-5495-a984-406e9fe9f948', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8e7d729d-71da-5f8a-a729-65d7bb6cf815', 'en', 'arrangement', 'договорённость', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bc4bfab4-e5f9-5dc1-8798-c293889f16d8', 'en', 'likely', 'вероятно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3a223fb-a5b1-55d6-8f4a-3037c444b4e7', 'en', 'postpone', 'отложить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0312a5d-b319-5bd9-bb95-f06350d406c6', 'en', 'alternative', 'альтернатива', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67b7d91b-1d2a-5380-87b4-36cc0aec0a14', 'en', 'confirm', 'подтвердить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c51800f8-4549-5206-bed0-86fde8f256ab', 'en', 'prediction', 'прогноз', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3fd87506-e081-5f42-aa31-cc8e9c5cf55d', 'en', 'intention', 'намерение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8e7d729d-71da-5f8a-a729-65d7bb6cf815', 'en', 'arrangement', 'договорённость', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bc4bfab4-e5f9-5dc1-8798-c293889f16d8', 'en', 'likely', 'вероятно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3a223fb-a5b1-55d6-8f4a-3037c444b4e7', 'en', 'postpone', 'отложить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0312a5d-b319-5bd9-bb95-f06350d406c6', 'en', 'alternative', 'альтернатива', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67b7d91b-1d2a-5380-87b4-36cc0aec0a14', 'en', 'confirm', 'подтвердить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c51800f8-4549-5206-bed0-86fde8f256ab', 'en', 'prediction', 'прогноз', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3fd87506-e081-5f42-aa31-cc8e9c5cf55d', 'en', 'intention', 'намерение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8e7d729d-71da-5f8a-a729-65d7bb6cf815', 'en', 'arrangement', 'договорённость', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bc4bfab4-e5f9-5dc1-8798-c293889f16d8', 'en', 'likely', 'вероятно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3a223fb-a5b1-55d6-8f4a-3037c444b4e7', 'en', 'postpone', 'отложить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0312a5d-b319-5bd9-bb95-f06350d406c6', 'en', 'alternative', 'альтернатива', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67b7d91b-1d2a-5380-87b4-36cc0aec0a14', 'en', 'confirm', 'подтвердить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c51800f8-4549-5206-bed0-86fde8f256ab', 'en', 'prediction', 'прогноз', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3fd87506-e081-5f42-aa31-cc8e9c5cf55d', 'en', 'intention', 'намерение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd1a72a4-84f1-55e5-a6ca-b3136bfc7ccf', id, '75c83d42-7074-5a68-a79e-96a3a78ebdf9', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'arrangement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd1a72a4-84f1-55e5-a6ca-b3136bfc7ccf', id, '75c83d42-7074-5a68-a79e-96a3a78ebdf9', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'likely' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd1a72a4-84f1-55e5-a6ca-b3136bfc7ccf', id, '75c83d42-7074-5a68-a79e-96a3a78ebdf9', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'postpone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd1a72a4-84f1-55e5-a6ca-b3136bfc7ccf', id, '75c83d42-7074-5a68-a79e-96a3a78ebdf9', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'alternative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd1a72a4-84f1-55e5-a6ca-b3136bfc7ccf', id, '75c83d42-7074-5a68-a79e-96a3a78ebdf9', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd1a72a4-84f1-55e5-a6ca-b3136bfc7ccf', id, '75c83d42-7074-5a68-a79e-96a3a78ebdf9', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'prediction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd1a72a4-84f1-55e5-a6ca-b3136bfc7ccf', id, '75c83d42-7074-5a68-a79e-96a3a78ebdf9', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'intention' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd1a72a4-84f1-55e5-a6ca-b3136bfc7ccf', id, '87798683-cae4-5aac-88a0-6169808101b3', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'arrangement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd1a72a4-84f1-55e5-a6ca-b3136bfc7ccf', id, '87798683-cae4-5aac-88a0-6169808101b3', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'likely' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd1a72a4-84f1-55e5-a6ca-b3136bfc7ccf', id, '87798683-cae4-5aac-88a0-6169808101b3', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'postpone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd1a72a4-84f1-55e5-a6ca-b3136bfc7ccf', id, '87798683-cae4-5aac-88a0-6169808101b3', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'alternative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd1a72a4-84f1-55e5-a6ca-b3136bfc7ccf', id, '87798683-cae4-5aac-88a0-6169808101b3', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd1a72a4-84f1-55e5-a6ca-b3136bfc7ccf', id, '87798683-cae4-5aac-88a0-6169808101b3', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'prediction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd1a72a4-84f1-55e5-a6ca-b3136bfc7ccf', id, '87798683-cae4-5aac-88a0-6169808101b3', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'intention' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd1a72a4-84f1-55e5-a6ca-b3136bfc7ccf', id, 'e9819309-d261-5495-a984-406e9fe9f948', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'arrangement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd1a72a4-84f1-55e5-a6ca-b3136bfc7ccf', id, 'e9819309-d261-5495-a984-406e9fe9f948', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'likely' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd1a72a4-84f1-55e5-a6ca-b3136bfc7ccf', id, 'e9819309-d261-5495-a984-406e9fe9f948', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'postpone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd1a72a4-84f1-55e5-a6ca-b3136bfc7ccf', id, 'e9819309-d261-5495-a984-406e9fe9f948', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'alternative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd1a72a4-84f1-55e5-a6ca-b3136bfc7ccf', id, 'e9819309-d261-5495-a984-406e9fe9f948', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd1a72a4-84f1-55e5-a6ca-b3136bfc7ccf', id, 'e9819309-d261-5495-a984-406e9fe9f948', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'prediction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dd1a72a4-84f1-55e5-a6ca-b3136bfc7ccf', id, 'e9819309-d261-5495-a984-406e9fe9f948', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'intention' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
