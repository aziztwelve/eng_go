-- Track: A2_LISTENING_SHADOWING_CONNECTED_EVERYDAY_CONVERSATIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('db7d6495-a5c5-5de2-8264-a916eb2c6a2e', 'A2_LISTENING_SHADOWING_CONNECTED_EVERYDAY_CONVERSATIONS', 'Связная повседневная речь', 'Развивайте навыки аудирования и повторения уровня A2 по теме «Связная повседневная речь».', '{"en":"Connected Everyday Conversations","ru":"Связная повседневная речь"}'::jsonb, '{"en":"Develop A2 listening and shadowing skills for connected everyday conversations.","ru":"Развивайте навыки аудирования и повторения уровня A2 по теме «Связная повседневная речь»."}'::jsonb, 'en', 'A2', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f2499dbb-e79f-5103-b01d-75b8f00fff16', NULL, 'Разговор старых знакомых', 'Понимать связную речь о прошлом, используя past simple и present perfect.', '{"en":"Old Acquaintances Talking","ru":"Разговор старых знакомых"}'::jsonb, '{"en":"Understand connected speech about the past using past simple and present perfect.","ru":"Понимать связную речь о прошлом, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3ceb7dee-1e05-5e32-bd17-c672b7a368b0', 'f2499dbb-e79f-5103-b01d-75b8f00fff16', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"by the way","right":"кстати"},{"id":"P2","left":"to run into","right":"случайно встретить"},{"id":"P3","left":"It''s been ages","right":"прошла уйма времени"},{"id":"P4","left":"to keep in touch","right":"держать связь"},{"id":"P5","left":"neighbourhood","right":"район"},{"id":"P6","left":"to hear from","right":"получать весточку от"},{"id":"P7","left":"how about","right":"как насчёт"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a39c111f-49a7-516a-910e-56ee420b9af9', 'f2499dbb-e79f-5103-b01d-75b8f00fff16', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Yes, I last saw you at Marina''s wedding!”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Yes, I last saw you at Marina''s wedding!"},{"id":"Q_B","is_correct":false,"text":"Yes, I will saw you tomorrow at wedding."},{"id":"Q_C","is_correct":false,"text":"Yes, the ages are seeing us."}],"question":"Which reply is natural when someone says ''It''s been ages''?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6f90a80e-5b90-5d9b-89e5-c99d6e79ce8e', 'f2499dbb-e79f-5103-b01d-75b8f00fff16', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"By the way, I ran into our old teacher last week.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Кстати, я случайно встретил нашего старого учителя на прошлой неделе.","target_language":"en","word_bank":["By","into","teacher","did","old","week.","way,","last","our","the","run","ran","tomorrow","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f97215c2-16ea-5e4c-ae01-9323645fb23d', 'f2499dbb-e79f-5103-b01d-75b8f00fff16', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"heard","instruction":"Выберите подходящее слово.","options":["heard","hear","hearing"],"sentence_template":"We have ___ from Lena since she moved.","translation_hint":"Мы не получали вестей от Лены с её переезда."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b562a391-452d-5094-ace6-d6cf30ecd23a', 'f2499dbb-e79f-5103-b01d-75b8f00fff16', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["It","has","been","ages","since","we","last","spoke","properly."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["we","It","last","properly.","been","did","was","since","has","ages","spoke"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cf70de5c-0d4b-5c95-a422-12cd798fa59a', 'f2499dbb-e79f-5103-b01d-75b8f00fff16', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"You look great! Have you changed your hair? We should keep in touch this time — how about coffee next week?","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('51976506-f258-52cf-bfe8-d7f3bde8350a', 'f2499dbb-e79f-5103-b01d-75b8f00fff16', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"You look great! Have you changed your hair? We should keep in touch this time — how about coffee next week?","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Ты отлично выглядишь! Ты сменила причёску? Давай в этот раз держаться связи — как насчёт кофе на следующей неделе?"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('91e9624e-5329-5678-8eca-b326bbd51f76', 'f2499dbb-e79f-5103-b01d-75b8f00fff16', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"Wait — is that you, Kirill? It''s been ages!","translation":"Подожди — это ты, Кирилл? Сколько лет!","type":"dialogue"},{"character":"Voice 2","text":"Anna! I did not recognise you with the short hair. How have you been?","translation":"Аня! Я не узнал тебя с короткой стрижкой. Как ты?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Really well — I have changed jobs since we last met."},{"is_correct":false,"text":"Really good, I change jobs tomorrow yesterday."},{"is_correct":false,"text":"The hair is recognising me."}],"text":"What does Anna probably answer?","type":"choice"}],"title":"At the Supermarket"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('42405e1b-94d3-586d-9bea-a4f4e51fb27e', 'f2499dbb-e79f-5103-b01d-75b8f00fff16', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to run into” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To meet someone by chance"},{"id":"D_B","is_correct":false,"text":"To visit someone after making an appointment"},{"id":"D_C","is_correct":false,"text":"To write a message to an old friend"}],"word":"to run into"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('656d3e9d-f52b-5246-b8b4-332c0a41c177', 'f2499dbb-e79f-5103-b01d-75b8f00fff16', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have run into an old classmate today.","explanation":"The missing word is “run into”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"run into","id":"LW_A","is_correct":true},{"audio_text":"ran into","id":"LW_B","is_correct":false},{"audio_text":"running into","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ an old classmate today."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('276d16d2-0b91-59d9-b441-701869cb7b49', 'f2499dbb-e79f-5103-b01d-75b8f00fff16', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"in","explanation":"The complete sentence is “Let''s keep in touch from now on.”.","hint_prefix":"in","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Let''s keep ___ touch from now on."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('14adfb21-974c-58a1-b5d3-fe050c0a86c7', 'f2499dbb-e79f-5103-b01d-75b8f00fff16', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"by the way","id":"V1","text":"by the way"},{"audio_text":"to run into","id":"V2","text":"to run into"},{"audio_text":"It''s been ages","id":"V3","text":"It''s been ages"},{"audio_text":"to keep in touch","id":"V4","text":"to keep in touch"},{"audio_text":"neighbourhood","id":"V5","text":"neighbourhood"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('69cca06a-affe-54b7-b6d0-8294d01c07ac', 'f2499dbb-e79f-5103-b01d-75b8f00fff16', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Acquaintance","text":"We should catch up one day!"}],"explanation":"“Definitely — it has been ages. I have moved, but my number is the same.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Definitely — it has been ages. I have moved, but my number is the same."},{"id":"C_B","is_correct":false,"text":"We caught up yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The day is catching us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('db7d6495-a5c5-5de2-8264-a916eb2c6a2e', 'f2499dbb-e79f-5103-b01d-75b8f00fff16', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('80a77fc9-2f9d-5797-a319-d4dd477d2b5d', NULL, 'Договариваемся о встрече', 'Понимать договорённости о будущем и сравнивать варианты.', '{"en":"Making Arrangements","ru":"Договариваемся о встрече"}'::jsonb, '{"en":"Understand future arrangements and compare options.","ru":"Понимать договорённости о будущем и сравнивать варианты."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('56959a83-b3d6-5ede-b960-8f5fc8a0cfb9', '80a77fc9-2f9d-5797-a319-d4dd477d2b5d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"Are you free...?","right":"Ты свободен...?"},{"id":"P2","left":"to suit","right":"подходить (о времени)"},{"id":"P3","left":"instead","right":"вместо"},{"id":"P4","left":"to make it","right":"смочь прийти"},{"id":"P5","left":"to put off","right":"перенести (на потом)"},{"id":"P6","left":"either ... or","right":"либо ... либо"},{"id":"P7","left":"the sooner the better","right":"чем раньше, тем лучше"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('56ef9b3f-1373-53c8-8abb-744fccc06437', '80a77fc9-2f9d-5797-a319-d4dd477d2b5d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Saturday doesn''t suit me — could we do Sunday instead?”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Saturday doesn''t suit me — could we do Sunday instead?"},{"id":"Q_B","is_correct":false,"text":"Saturday suits me not, do Sunday yesterday."},{"id":"Q_C","is_correct":false,"text":"Sunday is suiting Saturday instead me."}],"question":"Which sentence offers an alternative politely?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('561e33fb-3303-5f37-9afe-256358c76b2d', '80a77fc9-2f9d-5797-a319-d4dd477d2b5d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I am busy on Thursday, but I can make it on Friday — the sooner the better.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"В четверг я занят, но могу в пятницу — чем раньше, тем лучше.","target_language":"en","word_bank":["on","did","the","Friday","can","make","the","sooner","better.","am","was","yesterday","busy","Thursday,","on","I","it","—","but","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e222ba31-bf4e-5a6d-afc5-80edc712ded1', '80a77fc9-2f9d-5797-a319-d4dd477d2b5d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"put off","instruction":"Выберите подходящее слово.","options":["put off","puts off","putting off"],"sentence_template":"Let''s ___ the picnic until the weather improves.","translation_hint":"Давай перенесём пикник до улучшения погоды."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('065b22c5-0120-55c8-8317-fc327dba811d', '80a77fc9-2f9d-5797-a319-d4dd477d2b5d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Either","Saturday","or","Sunday","suits","me","fine."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["fine.","me","was","or","Sunday","Either","did","Saturday","suits"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc9a206f-bcff-5bdb-ac35-f199235be94d', '80a77fc9-2f9d-5797-a319-d4dd477d2b5d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I cannot make it at six, but seven works — if that is too late, we can put the meeting off to the morning.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d8f0f9f-9cf1-57d6-8d14-d83e03ca97ba', '80a77fc9-2f9d-5797-a319-d4dd477d2b5d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I cannot make it at six, but seven works — if that is too late, we can put the meeting off to the morning.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Я не смогу в шесть, но семь подходит — если это поздно, перенесём встречу на утро."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c24f2d43-8d94-59e8-b13f-d9594c97bd1d', '80a77fc9-2f9d-5797-a319-d4dd477d2b5d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"Are you free on Thursday evening?","translation":"Ты свободен в четверг вечером?","type":"dialogue"},{"character":"Voice 2","text":"Not really. Either Friday or the weekend would be better.","translation":"Не очень. Либо пятница, либо выходные подойдут лучше.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Then let''s say Friday at seven — the sooner the better."},{"is_correct":false,"text":"Then we say Friday yesterday at seven."},{"is_correct":false,"text":"Then Thursday is being free on Friday."}],"text":"What does Voice 1 say?","type":"choice"}],"title":"Finding a Time"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b61fbce-9561-582d-9981-2f00229400f1', '80a77fc9-2f9d-5797-a319-d4dd477d2b5d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to make it” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To manage to come to an event"},{"id":"D_B","is_correct":false,"text":"To create something with your hands"},{"id":"D_C","is_correct":false,"text":"To be late for a meeting again"}],"word":"to make it"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('099046cc-1098-53a0-8150-5487fdbaf699', '80a77fc9-2f9d-5797-a319-d4dd477d2b5d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Could we meet on Sunday instead?","explanation":"The missing word is “instead”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"instead","id":"LW_A","is_correct":true},{"audio_text":"instead of","id":"LW_B","is_correct":false},{"audio_text":"insteadly","id":"LW_C","is_correct":false}],"sentence_template":"Could we meet on Sunday ___ ?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b9c32d33-833f-51cd-a975-158c0ebd9922', '80a77fc9-2f9d-5797-a319-d4dd477d2b5d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"suits","explanation":"The complete sentence is “Seven o''clock suits me fine.”.","hint_prefix":"su","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Seven o''clock ___ me fine."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7ef00e53-7d67-5811-b7ec-4684ef04811e', '80a77fc9-2f9d-5797-a319-d4dd477d2b5d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"Are you free...?","id":"V1","text":"Are you free...?"},{"audio_text":"to suit","id":"V2","text":"to suit"},{"audio_text":"instead","id":"V3","text":"instead"},{"audio_text":"to make it","id":"V4","text":"to make it"},{"audio_text":"to put off","id":"V5","text":"to put off"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('783cc9d6-2c62-55f7-8577-73b03dea3f0a', '80a77fc9-2f9d-5797-a319-d4dd477d2b5d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Can you come to dinner on Wednesday?"}],"explanation":"“I''d love to, but I can''t make it — could we put it off to next week?” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"I''d love to, but I can''t make it — could we put it off to next week?"},{"id":"C_B","is_correct":false,"text":"I made it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"Wednesday is dining me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('db7d6495-a5c5-5de2-8264-a916eb2c6a2e', '80a77fc9-2f9d-5797-a319-d4dd477d2b5d', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0fc52fdf-7c7c-521f-bd69-348a4f5bae03', NULL, 'Если разговор заходит о планах', 'Следить за разговором о планах, используя should и первое условное.', '{"en":"When the Talk Turns to Plans","ru":"Если разговор заходит о планах"}'::jsonb, '{"en":"Follow a conversation about plans using should and the first conditional.","ru":"Следить за разговором о планах, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3963d87e-9dad-51fa-899f-8d20c05b853c', '0fc52fdf-7c7c-521f-bd69-348a4f5bae03', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to sound like a plan","right":"звучит как план"},{"id":"P2","left":"to be up to","right":"собираться, замышлять"},{"id":"P3","left":"no rush","right":"не спеши (не срочно)"},{"id":"P4","left":"to count on","right":"рассчитывать на"},{"id":"P5","left":"in case","right":"на случай"},{"id":"P6","left":"to decide later","right":"решить позже"},{"id":"P7","left":"for now","right":"пока (что)"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('351a69c5-be86-5b55-9402-070ab273c38d', '0fc52fdf-7c7c-521f-bd69-348a4f5bae03', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Let''s decide later — there''s no rush.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Let''s decide later — there''s no rush."},{"id":"Q_B","is_correct":false,"text":"Let''s decide it yesterday already now."},{"id":"Q_C","is_correct":false,"text":"The decision is deciding us later."}],"question":"Which reply means ''let''s wait before deciding''?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1bc1e05a-69fc-526d-9bc6-321268018f9e', '0fc52fdf-7c7c-521f-bd69-348a4f5bae03', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If the weather turns bad, we should have a backup option just in case.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если погода испортится, у нас должен быть запасной вариант на этот случай.","target_language":"en","word_bank":["just","yesterday","case.","If","should","in","option","did","turned","bad,","a","the","turns","we","weather","backup","have"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f085ad09-051c-5fc6-bb65-0f6dfbed040d', '0fc52fdf-7c7c-521f-bd69-348a4f5bae03', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"count on","instruction":"Выберите подходящее слово.","options":["count on","counts on","counting on"],"sentence_template":"You can ___ me — I will be there at eight.","translation_hint":"Можешь на меня рассчитывать — я буду там в восемь."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('254329cf-88ea-58e9-ac2d-97c45d62a97c', '0fc52fdf-7c7c-521f-bd69-348a4f5bae03', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["That","sounds","like","a","plan","—","for","now."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["sounds","plan","a","That","for","was","like","—","now.","did"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('089e8b77-6b71-59da-8c09-89719fdcee91', '0fc52fdf-7c7c-521f-bd69-348a4f5bae03', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you are not sure about Sunday, no problem — decide later, and I will keep the second ticket just in case.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1a037725-691a-5851-80fb-fc0c316e08be', '0fc52fdf-7c7c-521f-bd69-348a4f5bae03', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you are not sure about Sunday, no problem — decide later, and I will keep the second ticket just in case.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если не уверен насчёт воскресенья, ничего — реши позже, а я придержу второй билет на всякий случай."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e80b414d-2451-5d01-8059-87a36dc09924', '0fc52fdf-7c7c-521f-bd69-348a4f5bae03', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"What are you up to this weekend?","translation":"Что ты задумал на эти выходные?","type":"dialogue"},{"character":"Voice 2","text":"Nothing fixed. If the weather is fine, I might cycle to the forest.","translation":"Ничего определённого. Если погода будет хорошей, могу поехать в лес на велосипеде.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Sounds like a plan — count me in if you go on Sunday."},{"is_correct":false,"text":"Sounded like a plan yesterday tomorrow."},{"is_correct":false,"text":"The forest is cycling you on Sunday."}],"text":"What does Voice 1 answer?","type":"choice"}],"title":"Weekend Ideas"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b6b2c19b-21d8-5c97-a74a-883abeba842c', '0fc52fdf-7c7c-521f-bd69-348a4f5bae03', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to count on” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To rely on someone or something"},{"id":"D_B","is_correct":false,"text":"To count things quickly in your head"},{"id":"D_C","is_correct":false,"text":"To cancel plans without telling anyone"}],"word":"to count on"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9fdf2fba-3036-552d-9543-a34974b74541', '0fc52fdf-7c7c-521f-bd69-348a4f5bae03', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I will keep the tickets in case you change your mind.","explanation":"The missing word is “in”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"in","id":"LW_A","is_correct":true},{"audio_text":"on","id":"LW_B","is_correct":false},{"audio_text":"at","id":"LW_C","is_correct":false}],"sentence_template":"I will keep the tickets ___ case you change your mind."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e6c37a73-274a-5c80-bbd1-97c7a9a64ee2', '0fc52fdf-7c7c-521f-bd69-348a4f5bae03', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"on","explanation":"The complete sentence is “You can count on me any time.”.","hint_prefix":"on","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You can count ___ me any time."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('43750cd4-a83b-5a94-9c68-4109ec40c29f', '0fc52fdf-7c7c-521f-bd69-348a4f5bae03', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to sound like a plan","id":"V1","text":"to sound like a plan"},{"audio_text":"to be up to","id":"V2","text":"to be up to"},{"audio_text":"no rush","id":"V3","text":"no rush"},{"audio_text":"to count on","id":"V4","text":"to count on"},{"audio_text":"in case","id":"V5","text":"in case"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c3b692b4-f548-5513-a549-8d52fd3f4da3', '0fc52fdf-7c7c-521f-bd69-348a4f5bae03', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Shall we book the tickets tonight?"}],"explanation":"“No rush — if we book on Friday, the price will be the same.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"No rush — if we book on Friday, the price will be the same."},{"id":"C_B","is_correct":false,"text":"I booked them yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The tickets are rushing us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('db7d6495-a5c5-5de2-8264-a916eb2c6a2e', '0fc52fdf-7c7c-521f-bd69-348a4f5bae03', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('19979acb-b9d2-5f30-ae9f-87a69ba5a237', 'en', 'by the way', 'кстати', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f9b4331c-d24f-5cb3-a2a7-d71ed130efe1', 'en', 'to run into', 'случайно встретить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4f69149d-618e-59c9-a9d9-b79729f5dc97', 'en', 'It''s been ages', 'прошла уйма времени', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('42751fc3-d983-5e0e-88d9-bd417d6097c7', 'en', 'to keep in touch', 'держать связь', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9051312b-7b12-5690-a98f-a1fd559b6a8a', 'en', 'neighbourhood', 'район', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6dcbf144-142a-587b-9803-dff29028f7f3', 'en', 'to hear from', 'получать весточку от', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('19ff8ab8-1435-567d-976c-dc2e83559dbe', 'en', 'how about', 'как насчёт', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bc291ea8-20f4-5311-a49a-00e130d61f57', 'en', 'Are you free...?', 'Ты свободен...?', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7bb1b89e-fbcf-5b04-9e8c-93f083e9087c', 'en', 'to suit', 'подходить (о времени)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8cf98276-de25-579b-82cf-1940736d09a8', 'en', 'instead', 'вместо', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('75933d1b-f119-5962-8acb-05efc47524cb', 'en', 'to make it', 'смочь прийти', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d29734d4-9a16-55cc-839e-bd90d3654e1e', 'en', 'to put off', 'перенести (на потом)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('342f4548-0878-5092-8642-bd0e7b8b7a9c', 'en', 'either ... or', 'либо ... либо', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d606782c-513b-5bce-8849-af1be6673f16', 'en', 'the sooner the better', 'чем раньше, тем лучше', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5765cbda-bb1c-544d-ac61-8a00da569b40', 'en', 'to sound like a plan', 'звучит как план', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2dbe39f4-1dbc-5851-9ef1-37019bbdf608', 'en', 'to be up to', 'собираться, замышлять', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('98b725ce-2a77-5e1f-aa76-4b2165519385', 'en', 'no rush', 'не спеши (не срочно)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('100337a4-d89b-5150-97df-821febd3fcb1', 'en', 'to count on', 'рассчитывать на', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('048c812f-0fc6-5b32-a36f-469c071d3805', 'en', 'in case', 'на случай', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9061863b-930c-5a3a-9de2-bbe58b28093b', 'en', 'to decide later', 'решить позже', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2e4be596-da06-56bb-9263-f7dc898cc79c', 'en', 'for now', 'пока (что)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'db7d6495-a5c5-5de2-8264-a916eb2c6a2e', id, 'f2499dbb-e79f-5103-b01d-75b8f00fff16', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'by the way' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'db7d6495-a5c5-5de2-8264-a916eb2c6a2e', id, 'f2499dbb-e79f-5103-b01d-75b8f00fff16', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to run into' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'db7d6495-a5c5-5de2-8264-a916eb2c6a2e', id, 'f2499dbb-e79f-5103-b01d-75b8f00fff16', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'It''s been ages' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'db7d6495-a5c5-5de2-8264-a916eb2c6a2e', id, 'f2499dbb-e79f-5103-b01d-75b8f00fff16', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'to keep in touch' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'db7d6495-a5c5-5de2-8264-a916eb2c6a2e', id, 'f2499dbb-e79f-5103-b01d-75b8f00fff16', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'neighbourhood' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'db7d6495-a5c5-5de2-8264-a916eb2c6a2e', id, 'f2499dbb-e79f-5103-b01d-75b8f00fff16', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'to hear from' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'db7d6495-a5c5-5de2-8264-a916eb2c6a2e', id, 'f2499dbb-e79f-5103-b01d-75b8f00fff16', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'how about' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'db7d6495-a5c5-5de2-8264-a916eb2c6a2e', id, '80a77fc9-2f9d-5797-a319-d4dd477d2b5d', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'Are you free...?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'db7d6495-a5c5-5de2-8264-a916eb2c6a2e', id, '80a77fc9-2f9d-5797-a319-d4dd477d2b5d', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to suit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'db7d6495-a5c5-5de2-8264-a916eb2c6a2e', id, '80a77fc9-2f9d-5797-a319-d4dd477d2b5d', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'instead' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'db7d6495-a5c5-5de2-8264-a916eb2c6a2e', id, '80a77fc9-2f9d-5797-a319-d4dd477d2b5d', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to make it' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'db7d6495-a5c5-5de2-8264-a916eb2c6a2e', id, '80a77fc9-2f9d-5797-a319-d4dd477d2b5d', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to put off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'db7d6495-a5c5-5de2-8264-a916eb2c6a2e', id, '80a77fc9-2f9d-5797-a319-d4dd477d2b5d', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'either ... or' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'db7d6495-a5c5-5de2-8264-a916eb2c6a2e', id, '80a77fc9-2f9d-5797-a319-d4dd477d2b5d', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'the sooner the better' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'db7d6495-a5c5-5de2-8264-a916eb2c6a2e', id, '0fc52fdf-7c7c-521f-bd69-348a4f5bae03', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to sound like a plan' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'db7d6495-a5c5-5de2-8264-a916eb2c6a2e', id, '0fc52fdf-7c7c-521f-bd69-348a4f5bae03', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to be up to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'db7d6495-a5c5-5de2-8264-a916eb2c6a2e', id, '0fc52fdf-7c7c-521f-bd69-348a4f5bae03', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'no rush' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'db7d6495-a5c5-5de2-8264-a916eb2c6a2e', id, '0fc52fdf-7c7c-521f-bd69-348a4f5bae03', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to count on' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'db7d6495-a5c5-5de2-8264-a916eb2c6a2e', id, '0fc52fdf-7c7c-521f-bd69-348a4f5bae03', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'in case' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'db7d6495-a5c5-5de2-8264-a916eb2c6a2e', id, '0fc52fdf-7c7c-521f-bd69-348a4f5bae03', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to decide later' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'db7d6495-a5c5-5de2-8264-a916eb2c6a2e', id, '0fc52fdf-7c7c-521f-bd69-348a4f5bae03', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'for now' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
