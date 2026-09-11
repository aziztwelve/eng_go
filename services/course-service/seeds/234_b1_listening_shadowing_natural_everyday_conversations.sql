-- Track: B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('45e386e3-3aec-5065-9dc2-353ec9f41cd9', 'B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS', 'Естественные повседневные разговоры', 'Развивайте навыки аудирования и повторения уровня B1 по теме «Естественные повседневные разговоры».', '{"en":"Natural Everyday Conversations","ru":"Естественные повседневные разговоры"}'::jsonb, '{"en":"Develop B1 listening and shadowing skills for natural everyday conversations.","ru":"Развивайте навыки аудирования и повторения уровня B1 по теме «Естественные повседневные разговоры»."}'::jsonb, 'en', 'B1', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('3961eb89-dc37-5af8-812e-74ff426b2d24', NULL, 'Основная мысль и детали', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Following the Main Point","ru":"Основная мысль и детали"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2abc7664-1d9d-5b1f-a0a9-8f770feae9cb', '3961eb89-dc37-5af8-812e-74ff426b2d24', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L1_N01","left":"main point","right":"основная мысль"},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L1_N02","left":"attitude","right":"отношение"},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L1_N03","left":"imply","right":"подразумевать"},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L1_N04","left":"hesitate","right":"колебаться"},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L1_N05","left":"interrupt","right":"перебивать"},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L1_N06","left":"respond","right":"отвечать"},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L1_N07","left":"context","right":"контекст"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('abc327f6-1f47-5d34-9987-f685a5f7b88d', '3961eb89-dc37-5af8-812e-74ff426b2d24', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L1_N08","is_correct":true,"text":"I was going to accept the invitation, but I hesitated when I realised how late the event would finish."},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L1_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L1_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('63f1343b-e31c-5699-ace5-7a89b9985ad5', '3961eb89-dc37-5af8-812e-74ff426b2d24', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I was going to accept the invitation, but I hesitated when I realised how late the event would finish.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я собирался принять приглашение, но заколебался, когда понял, как поздно закончится мероприятие.","target_language":"en","word_bank":["I","was","going","to","accept","the","invitation,","but","I","hesitated","when","I","realised","how","late","the","event","would","finish."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b432e7a-4e0c-5943-93ed-16135d0b2ea8', '3961eb89-dc37-5af8-812e-74ff426b2d24', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"main point","instruction":"Выберите подходящее слово.","options":["main point","hesitate","respond"],"sentence_template":"I was going to accept the invitation, but I hesitated when I realised how late the event would finish."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('002b236b-252d-5616-ad7d-cb800e571b3c', '3961eb89-dc37-5af8-812e-74ff426b2d24', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","was","going","to","accept","the","invitation,","but","I","hesitated","when","I","realised","how","late","the","event","would","finish."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["finish.","would","event","the","late","how","realised","I","when","hesitated","I","but","invitation,","the","accept","to","going","was","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1a76a562-cb43-56ef-a9cd-394f7af79159', '3961eb89-dc37-5af8-812e-74ff426b2d24', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I was going to accept the invitation, but I hesitated when I realised how late the event would finish. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('28fd477a-6491-5662-8be2-c6dbc5e0dd35', '3961eb89-dc37-5af8-812e-74ff426b2d24', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I was going to accept the invitation, but I hesitated when I realised how late the event would finish. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"Я собирался принять приглашение, но заколебался, когда понял, как поздно закончится мероприятие. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('174c281f-1fcc-5342-847f-25ac95e6be5a', '3961eb89-dc37-5af8-812e-74ff426b2d24', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"I was going to accept the invitation, but I hesitated when I realised how late the event would finish.","translation":"Я собирался принять приглашение, но заколебался, когда понял, как поздно закончится мероприятие.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Following the Main Point"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9176b15e-bf6d-5ff1-8bcf-d9b2870c8595', '3961eb89-dc37-5af8-812e-74ff426b2d24', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“main point” means the central message.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L1_N11","is_correct":true,"text":"the central message"},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L1_N12","is_correct":false,"text":"a speaker’s feeling or opinion"},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L1_N13","is_correct":false,"text":"suggest without saying directly"}],"word":"main point"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2589a504-42ae-5a7c-9043-247fb48f08c7', '3961eb89-dc37-5af8-812e-74ff426b2d24', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I was going to accept the invitation, but I hesitated when I realised how late the event would finish.","explanation":"The missing expression is “main point”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"main point","id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L1_N14","is_correct":true},{"audio_text":"imply","id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L1_N15","is_correct":false},{"audio_text":"interrupt","id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L1_N16","is_correct":false}],"sentence_template":"I was going to accept the invitation, but I hesitated when I realised how late the event would finish."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c117edea-84d8-5e27-ada3-abd228412ba3', '3961eb89-dc37-5af8-812e-74ff426b2d24', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"main point","explanation":"The recording uses “main point” in this position.","hint_prefix":"mai","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I was going to accept the invitation, but I hesitated when I realised how late the event would finish."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5f86ca9f-f069-5258-815e-286189914b40', '3961eb89-dc37-5af8-812e-74ff426b2d24', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"main point","id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L1_N17","text":"main point"},{"audio_text":"attitude","id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L1_N18","text":"attitude"},{"audio_text":"imply","id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L1_N19","text":"imply"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bae0d764-e119-5403-8260-a2388a65523f', '3961eb89-dc37-5af8-812e-74ff426b2d24', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L1_N20","is_correct":true,"text":"I was going to accept the invitation, but I hesitated when I realised how late the event would finish."},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L1_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L1_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('45e386e3-3aec-5065-9dc2-353ec9f41cd9', '3961eb89-dc37-5af8-812e-74ff426b2d24', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('deeeb736-f93d-5085-a8a9-62d8db016915', NULL, 'Отношение и вывод', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Recognising Speaker Attitude","ru":"Отношение и вывод"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e88d8ef-0659-5685-a8f8-b44104313112', 'deeeb736-f93d-5085-a8a9-62d8db016915', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L2_N01","left":"main point","right":"основная мысль"},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L2_N02","left":"attitude","right":"отношение"},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L2_N03","left":"imply","right":"подразумевать"},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L2_N04","left":"hesitate","right":"колебаться"},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L2_N05","left":"interrupt","right":"перебивать"},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L2_N06","left":"respond","right":"отвечать"},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L2_N07","left":"context","right":"контекст"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e21a578-9273-5b3f-9c94-7842b65aa9ea', 'deeeb736-f93d-5085-a8a9-62d8db016915', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L2_N08","is_correct":true,"text":"Her words sounded positive; however, her tone implied that she still had some doubts."},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L2_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L2_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4ff1df69-8176-5a70-9a9a-6039eb8524eb', 'deeeb736-f93d-5085-a8a9-62d8db016915', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Her words sounded positive; however, her tone implied that she still had some doubts.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Её слова звучали позитивно; однако её тон подразумевал, что у неё всё ещё были сомнения.","target_language":"en","word_bank":["Her","words","sounded","positive;","however,","her","tone","implied","that","she","still","had","some","doubts."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4445a636-fb16-524c-b283-f2fec5d8e4eb', 'deeeb736-f93d-5085-a8a9-62d8db016915', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"attitude","instruction":"Выберите подходящее слово.","options":["attitude","interrupt","context"],"sentence_template":"Her words sounded positive; however, her tone implied that she still had some doubts."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('858aa234-937e-5b53-8f8f-1ccef5574f02', 'deeeb736-f93d-5085-a8a9-62d8db016915', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Her","words","sounded","positive;","however,","her","tone","implied","that","she","still","had","some","doubts."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["doubts.","some","had","still","she","that","implied","tone","her","however,","positive;","sounded","words","Her"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a685aec8-f4d3-5fd0-94e2-0c6df333d265', 'deeeb736-f93d-5085-a8a9-62d8db016915', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Her words sounded positive; however, her tone implied that she still had some doubts. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41b952be-2af6-58d2-bb97-39335d9642c8', 'deeeb736-f93d-5085-a8a9-62d8db016915', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Her words sounded positive; however, her tone implied that she still had some doubts. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"Её слова звучали позитивно; однако её тон подразумевал, что у неё всё ещё были сомнения. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f7ac8dfb-3f62-5c12-8c90-b564d55bd275', 'deeeb736-f93d-5085-a8a9-62d8db016915', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"Her words sounded positive; however, her tone implied that she still had some doubts.","translation":"Её слова звучали позитивно; однако её тон подразумевал, что у неё всё ещё были сомнения.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Recognising Speaker Attitude"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf65a14c-7745-5d81-a748-290cb1ae9b04', 'deeeb736-f93d-5085-a8a9-62d8db016915', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“attitude” means a speaker’s feeling or opinion.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L2_N11","is_correct":true,"text":"a speaker’s feeling or opinion"},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L2_N12","is_correct":false,"text":"suggest without saying directly"},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L2_N13","is_correct":false,"text":"pause because of uncertainty"}],"word":"attitude"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('308c4212-14a8-5cee-b500-38d63edbbf54', 'deeeb736-f93d-5085-a8a9-62d8db016915', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Her words sounded positive; however, her tone implied that she still had some doubts.","explanation":"The missing expression is “attitude”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"attitude","id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L2_N14","is_correct":true},{"audio_text":"hesitate","id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L2_N15","is_correct":false},{"audio_text":"respond","id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L2_N16","is_correct":false}],"sentence_template":"Her words sounded positive; however, her tone implied that she still had some doubts."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0d8778ed-6cb8-5fad-a570-a447b90644a6', 'deeeb736-f93d-5085-a8a9-62d8db016915', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"attitude","explanation":"The recording uses “attitude” in this position.","hint_prefix":"att","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Her words sounded positive; however, her tone implied that she still had some doubts."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9c60e23e-611b-5e70-ab0e-5e318fc9bc50', 'deeeb736-f93d-5085-a8a9-62d8db016915', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"main point","id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L2_N17","text":"main point"},{"audio_text":"attitude","id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L2_N18","text":"attitude"},{"audio_text":"imply","id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L2_N19","text":"imply"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0386762f-9c2a-53be-9766-c311cec01493', 'deeeb736-f93d-5085-a8a9-62d8db016915', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L2_N20","is_correct":true,"text":"Her words sounded positive; however, her tone implied that she still had some doubts."},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L2_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L2_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('45e386e3-3aec-5065-9dc2-353ec9f41cd9', 'deeeb736-f93d-5085-a8a9-62d8db016915', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('fa455b49-a48e-5404-80b4-240ad19f6f07', NULL, 'Связная речь и повторение', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Shadowing Connected Speech","ru":"Связная речь и повторение"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0c2432a2-ae61-5e8f-8bf6-9ab53774eec6', 'fa455b49-a48e-5404-80b4-240ad19f6f07', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L3_N01","left":"main point","right":"основная мысль"},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L3_N02","left":"attitude","right":"отношение"},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L3_N03","left":"imply","right":"подразумевать"},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L3_N04","left":"hesitate","right":"колебаться"},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L3_N05","left":"interrupt","right":"перебивать"},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L3_N06","left":"respond","right":"отвечать"},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L3_N07","left":"context","right":"контекст"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ccf4575d-2ef9-575f-a0c6-4950cf8d040a', 'fa455b49-a48e-5404-80b4-240ad19f6f07', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L3_N08","is_correct":true,"text":"Although he was interrupted twice, he returned to the main point and responded calmly."},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L3_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L3_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('151ebec0-781d-5eff-b732-0b722c2bccde', 'fa455b49-a48e-5404-80b4-240ad19f6f07', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Although he was interrupted twice, he returned to the main point and responded calmly.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Хотя его дважды перебили, он вернулся к основной мысли и ответил спокойно.","target_language":"en","word_bank":["Although","he","was","interrupted","twice,","he","returned","to","the","main","point","and","responded","calmly."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c687bf47-d8e7-5568-b66a-c5431984e943', 'fa455b49-a48e-5404-80b4-240ad19f6f07', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"imply","instruction":"Выберите подходящее слово.","options":["imply","respond","main point"],"sentence_template":"Although he was interrupted twice, he returned to the main point and responded calmly."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e8e6b22-0d1a-56b1-acd9-31e3c05b52a5', 'fa455b49-a48e-5404-80b4-240ad19f6f07', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Although","he","was","interrupted","twice,","he","returned","to","the","main","point","and","responded","calmly."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["calmly.","responded","and","point","main","the","to","returned","he","twice,","interrupted","was","he","Although"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4c4267b3-80ef-50bc-aec0-410d58b57986', 'fa455b49-a48e-5404-80b4-240ad19f6f07', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Although he was interrupted twice, he returned to the main point and responded calmly. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e5cf9f0-23d3-52a2-b2df-ca2adf6a695c', 'fa455b49-a48e-5404-80b4-240ad19f6f07', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Although he was interrupted twice, he returned to the main point and responded calmly. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"Хотя его дважды перебили, он вернулся к основной мысли и ответил спокойно. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c89f6641-4149-5c04-a024-bdc7fcadc35b', 'fa455b49-a48e-5404-80b4-240ad19f6f07', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"Although he was interrupted twice, he returned to the main point and responded calmly.","translation":"Хотя его дважды перебили, он вернулся к основной мысли и ответил спокойно.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Shadowing Connected Speech"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('33762468-f2f4-5745-9340-838500ec9d3e', 'fa455b49-a48e-5404-80b4-240ad19f6f07', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“imply” means suggest without saying directly.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L3_N11","is_correct":true,"text":"suggest without saying directly"},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L3_N12","is_correct":false,"text":"pause because of uncertainty"},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L3_N13","is_correct":false,"text":"speak before someone finishes"}],"word":"imply"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('83c58389-7a4e-57e2-a2f0-dfdbe909f7cd', 'fa455b49-a48e-5404-80b4-240ad19f6f07', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Although he was interrupted twice, he returned to the main point and responded calmly.","explanation":"The missing expression is “imply”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"imply","id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L3_N14","is_correct":true},{"audio_text":"interrupt","id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L3_N15","is_correct":false},{"audio_text":"context","id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L3_N16","is_correct":false}],"sentence_template":"Although he was interrupted twice, he returned to the main point and responded calmly."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0fdc3a5d-3be9-5b0e-9342-20b57d42e9db', 'fa455b49-a48e-5404-80b4-240ad19f6f07', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"imply","explanation":"The recording uses “imply” in this position.","hint_prefix":"imp","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Although he was interrupted twice, he returned to the main point and responded calmly."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('58fc7eb4-da1b-5552-b016-6b68f89afaf9', 'fa455b49-a48e-5404-80b4-240ad19f6f07', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"main point","id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L3_N17","text":"main point"},{"audio_text":"attitude","id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L3_N18","text":"attitude"},{"audio_text":"imply","id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L3_N19","text":"imply"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('104fa9da-51e6-5c5c-8c2b-e02730bcbf4b', 'fa455b49-a48e-5404-80b4-240ad19f6f07', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L3_N20","is_correct":true,"text":"Although he was interrupted twice, he returned to the main point and responded calmly."},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L3_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_NATURAL_EVERYDAY_CONVERSATIONS_L3_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('45e386e3-3aec-5065-9dc2-353ec9f41cd9', 'fa455b49-a48e-5404-80b4-240ad19f6f07', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('affbd00b-225f-5d23-8187-1238820c54dc', 'en', 'main point', 'основная мысль', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('181781d1-c7fd-5988-88c6-d299544a0f01', 'en', 'attitude', 'отношение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0235e76-e5c1-5e99-8888-1283c64e1f02', 'en', 'imply', 'подразумевать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2ea856d1-0493-52da-8612-d4fb43439019', 'en', 'hesitate', 'колебаться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b251f523-d6ce-56dc-8f07-cbda0b3c4d37', 'en', 'interrupt', 'перебивать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('007ad6da-bd33-586c-ad7e-bf50c7a0ecbb', 'en', 'respond', 'отвечать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f8b20701-60d3-544b-9aed-6456f497de49', 'en', 'context', 'контекст', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('affbd00b-225f-5d23-8187-1238820c54dc', 'en', 'main point', 'основная мысль', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('181781d1-c7fd-5988-88c6-d299544a0f01', 'en', 'attitude', 'отношение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0235e76-e5c1-5e99-8888-1283c64e1f02', 'en', 'imply', 'подразумевать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2ea856d1-0493-52da-8612-d4fb43439019', 'en', 'hesitate', 'колебаться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b251f523-d6ce-56dc-8f07-cbda0b3c4d37', 'en', 'interrupt', 'перебивать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('007ad6da-bd33-586c-ad7e-bf50c7a0ecbb', 'en', 'respond', 'отвечать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f8b20701-60d3-544b-9aed-6456f497de49', 'en', 'context', 'контекст', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('affbd00b-225f-5d23-8187-1238820c54dc', 'en', 'main point', 'основная мысль', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('181781d1-c7fd-5988-88c6-d299544a0f01', 'en', 'attitude', 'отношение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0235e76-e5c1-5e99-8888-1283c64e1f02', 'en', 'imply', 'подразумевать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2ea856d1-0493-52da-8612-d4fb43439019', 'en', 'hesitate', 'колебаться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b251f523-d6ce-56dc-8f07-cbda0b3c4d37', 'en', 'interrupt', 'перебивать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('007ad6da-bd33-586c-ad7e-bf50c7a0ecbb', 'en', 'respond', 'отвечать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f8b20701-60d3-544b-9aed-6456f497de49', 'en', 'context', 'контекст', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45e386e3-3aec-5065-9dc2-353ec9f41cd9', id, '3961eb89-dc37-5af8-812e-74ff426b2d24', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'main point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45e386e3-3aec-5065-9dc2-353ec9f41cd9', id, '3961eb89-dc37-5af8-812e-74ff426b2d24', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'attitude' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45e386e3-3aec-5065-9dc2-353ec9f41cd9', id, '3961eb89-dc37-5af8-812e-74ff426b2d24', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'imply' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45e386e3-3aec-5065-9dc2-353ec9f41cd9', id, '3961eb89-dc37-5af8-812e-74ff426b2d24', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'hesitate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45e386e3-3aec-5065-9dc2-353ec9f41cd9', id, '3961eb89-dc37-5af8-812e-74ff426b2d24', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'interrupt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45e386e3-3aec-5065-9dc2-353ec9f41cd9', id, '3961eb89-dc37-5af8-812e-74ff426b2d24', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'respond' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45e386e3-3aec-5065-9dc2-353ec9f41cd9', id, '3961eb89-dc37-5af8-812e-74ff426b2d24', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'context' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45e386e3-3aec-5065-9dc2-353ec9f41cd9', id, 'deeeb736-f93d-5085-a8a9-62d8db016915', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'main point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45e386e3-3aec-5065-9dc2-353ec9f41cd9', id, 'deeeb736-f93d-5085-a8a9-62d8db016915', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'attitude' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45e386e3-3aec-5065-9dc2-353ec9f41cd9', id, 'deeeb736-f93d-5085-a8a9-62d8db016915', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'imply' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45e386e3-3aec-5065-9dc2-353ec9f41cd9', id, 'deeeb736-f93d-5085-a8a9-62d8db016915', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'hesitate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45e386e3-3aec-5065-9dc2-353ec9f41cd9', id, 'deeeb736-f93d-5085-a8a9-62d8db016915', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'interrupt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45e386e3-3aec-5065-9dc2-353ec9f41cd9', id, 'deeeb736-f93d-5085-a8a9-62d8db016915', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'respond' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45e386e3-3aec-5065-9dc2-353ec9f41cd9', id, 'deeeb736-f93d-5085-a8a9-62d8db016915', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'context' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45e386e3-3aec-5065-9dc2-353ec9f41cd9', id, 'fa455b49-a48e-5404-80b4-240ad19f6f07', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'main point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45e386e3-3aec-5065-9dc2-353ec9f41cd9', id, 'fa455b49-a48e-5404-80b4-240ad19f6f07', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'attitude' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45e386e3-3aec-5065-9dc2-353ec9f41cd9', id, 'fa455b49-a48e-5404-80b4-240ad19f6f07', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'imply' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45e386e3-3aec-5065-9dc2-353ec9f41cd9', id, 'fa455b49-a48e-5404-80b4-240ad19f6f07', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'hesitate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45e386e3-3aec-5065-9dc2-353ec9f41cd9', id, 'fa455b49-a48e-5404-80b4-240ad19f6f07', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'interrupt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45e386e3-3aec-5065-9dc2-353ec9f41cd9', id, 'fa455b49-a48e-5404-80b4-240ad19f6f07', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'respond' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45e386e3-3aec-5065-9dc2-353ec9f41cd9', id, 'fa455b49-a48e-5404-80b4-240ad19f6f07', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'context' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
