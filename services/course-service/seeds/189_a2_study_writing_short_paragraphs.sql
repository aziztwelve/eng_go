-- Track: A2_STUDY_WRITING_SHORT_PARAGRAPHS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('d8816e17-a478-5982-99f5-43ef7f6cc95a', 'A2_STUDY_WRITING_SHORT_PARAGRAPHS', 'Написание коротких абзацев', 'Развивайте учебные навыки уровня A2 по теме «Написание коротких абзацев».', '{"en":"Writing Short Paragraphs","ru":"Написание коротких абзацев"}'::jsonb, '{"en":"Develop A2 study skills for writing short paragraphs.","ru":"Развивайте учебные навыки уровня A2 по теме «Написание коротких абзацев»."}'::jsonb, 'en', 'A2', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('867fcd4d-7322-5202-9037-b83fe303be50', NULL, 'Мой первый абзац', 'Рассказать о написании текстов, используя past simple и present perfect.', '{"en":"My First Paragraph","ru":"Мой первый абзац"}'::jsonb, '{"en":"Talk about writing using past simple and present perfect.","ru":"Рассказать о написании текстов, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a372170-4e1b-501f-9ed2-8a97fce74a42', '867fcd4d-7322-5202-9037-b83fe303be50', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"topic sentence","right":"тематическое предложение"},{"id":"P2","left":"supporting sentence","right":"поддерживающее предложение"},{"id":"P3","left":"linking word","right":"связующее слово"},{"id":"P4","left":"draft","right":"черновик"},{"id":"P5","left":"to edit","right":"отредактировать"},{"id":"P6","left":"paragraph","right":"абзац"},{"id":"P7","left":"so far","right":"до сих пор"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1351cbde-08b8-5eb5-922f-7d1227480877', '867fcd4d-7322-5202-9037-b83fe303be50', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I have written three drafts so far today.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I have written three drafts so far today."},{"id":"Q_B","is_correct":false,"text":"I have written three drafts yesterday."},{"id":"Q_C","is_correct":false,"text":"I write three drafts already so far."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e5d2c6e-07c9-571e-8332-a03636f12a9c', '867fcd4d-7322-5202-9037-b83fe303be50', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I wrote the draft and then edited the linking words.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я написал черновик, а затем отредактировал связующие слова.","target_language":"en","word_bank":["and","write","the","tomorrow","I","draft","wrote","then","edited","the","words.","linking","did"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d12b29a9-3ce4-56ff-9aae-43986f33a899', '867fcd4d-7322-5202-9037-b83fe303be50', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"topic","instruction":"Выберите подходящее слово.","options":["topic","topics","topical"],"sentence_template":"The teacher circled my ___ sentence in red last time.","translation_hint":"Преподаватель обвёл красным моё тематическое предложение в прошлый раз."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2b9b55d-ed97-582c-9cf5-e80eb024d7de', '867fcd4d-7322-5202-9037-b83fe303be50', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["She","has","shortened","her","paragraph","to","five","sentences."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["shortened","five","to","was","She","did","her","has","paragraph","sentences."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e756cfaa-ae83-5feb-9a35-ae11c7057c67', '867fcd4d-7322-5202-9037-b83fe303be50', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"My first paragraph had no structure, but I have rewritten it with a topic sentence and two supporting ones.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a069951c-0f9f-50af-8d2e-9e5d2f197180', '867fcd4d-7322-5202-9037-b83fe303be50', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"My first paragraph had no structure, but I have rewritten it with a topic sentence and two supporting ones.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Мой первый абзац не имел структуры, но я переписал его с тематическим предложением и двумя поддерживающими."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a4d15054-7ef3-53b9-8d02-6b43cda4d3fb', '867fcd4d-7322-5202-9037-b83fe303be50', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"How was your first attempt at academic paragraphs?","translation":"Как прошла первая попытка академических абзацев?","type":"dialogue"},{"character":"Voice 2","text":"Messy — I have read the feedback, and my sentences do not link.","translation":"Беспорядочно — я прочитал отзыв, мои предложения не связаны.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Add linking words like ''however'' and ''as a result''."},{"is_correct":false,"text":"I added them yesterday tomorrow."},{"is_correct":false,"text":"The paragraphs are linking my feedback."}],"text":"What does Voice 1 suggest?","type":"choice"}],"title":"After the Writing Class"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('301d5daa-fcff-5d31-885d-f3774e59a5cb', '867fcd4d-7322-5202-9037-b83fe303be50', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“linking word” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A word that connects ideas, like ''however''"},{"id":"D_B","is_correct":false,"text":"The main verb of a sentence"},{"id":"D_C","is_correct":false,"text":"A word that shows an object in a picture"}],"word":"linking word"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('36c720f2-1d9a-58a7-ad7d-8abb1cd917f7', '867fcd4d-7322-5202-9037-b83fe303be50', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have edited the draft twice.","explanation":"The missing word is “edited”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"edited","id":"LW_A","is_correct":true},{"audio_text":"edit","id":"LW_B","is_correct":false},{"audio_text":"editing","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ the draft twice."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('101a991e-7c29-54be-9289-6a39b9df1299', '867fcd4d-7322-5202-9037-b83fe303be50', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"topic","explanation":"The complete sentence is “Start with the topic sentence.”.","hint_prefix":"to","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Start with the ___ sentence."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a06c22da-e764-52a3-acd9-70a7dd47b3d1', '867fcd4d-7322-5202-9037-b83fe303be50', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"topic sentence","id":"V1","text":"topic sentence"},{"audio_text":"supporting sentence","id":"V2","text":"supporting sentence"},{"audio_text":"linking word","id":"V3","text":"linking word"},{"audio_text":"draft","id":"V4","text":"draft"},{"audio_text":"to edit","id":"V5","text":"to edit"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('978ddec2-fc54-53bc-9718-85c4fc762809', '867fcd4d-7322-5202-9037-b83fe303be50', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"How long should the paragraph be?"}],"explanation":"“Four to six sentences — I have learned it the hard way after my ten-line monster.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Four to six sentences — I have learned it the hard way after my ten-line monster."},{"id":"C_B","is_correct":false,"text":"I learned it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The paragraph is lining me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d8816e17-a478-5982-99f5-43ef7f6cc95a', '867fcd4d-7322-5202-9037-b83fe303be50', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('206ae522-31c3-57de-9b6a-c3a805209418', NULL, 'Пишем лучше', 'Сравнить версии текста и спланировать практику письма.', '{"en":"Writing Better","ru":"Пишем лучше"}'::jsonb, '{"en":"Compare text versions and plan writing practice.","ru":"Сравнить версии текста и спланировать практику письма."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b4082f04-9591-539c-bc78-78d1f2704acf', '206ae522-31c3-57de-9b6a-c3a805209418', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"more concise","right":"лаконичнее"},{"id":"P2","left":"to cut out","right":"вырезать (лишнее)"},{"id":"P3","left":"second draft","right":"второй черновик"},{"id":"P4","left":"wordy","right":"многословный"},{"id":"P5","left":"to read aloud","right":"прочитать вслух"},{"id":"P6","left":"clearer","right":"яснее"},{"id":"P7","left":"sentence variety","right":"разнообразие предложений"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd288fc4-cbca-5dba-bdeb-fb89205fe9ce', '206ae522-31c3-57de-9b6a-c3a805209418', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The second draft is more concise than the first.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The second draft is more concise than the first."},{"id":"Q_B","is_correct":false,"text":"The second draft is conciser than first."},{"id":"Q_C","is_correct":false,"text":"The draft is most concise than the first one."}],"question":"Which sentence compares two drafts correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('001c2976-8bfc-5e02-99ee-e159a28dcc03', '206ae522-31c3-57de-9b6a-c3a805209418', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"This week I am going to write one paragraph a day.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"На этой неделе я собираюсь писать по одному абзацу в день.","target_language":"en","word_bank":["am","did","day.","a","paragraph","one","This","to","write","yesterday","going","wrote","I","week"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5be8bde-e541-52fc-b859-ed34adb044f5', '206ae522-31c3-57de-9b6a-c3a805209418', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"clearer","instruction":"Выберите подходящее слово.","options":["clearer","clearest","more clear"],"sentence_template":"Short sentences are often ___ than long ones.","translation_hint":"Короткие предложения часто яснее длинных."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0693e476-f7a7-5a0a-9345-2fc9376983b2', '206ae522-31c3-57de-9b6a-c3a805209418', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","going","to","read","our","texts","aloud","in","class."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["aloud","texts","are","going","read","in","was","We","did","to","our","class."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb9b06d2-0378-52df-a93f-25f624e9d139', '206ae522-31c3-57de-9b6a-c3a805209418', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you read the paragraph aloud, every wordy phrase will jump out immediately.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('19833596-3586-503c-83da-41e4f395a445', '206ae522-31c3-57de-9b6a-c3a805209418', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you read the paragraph aloud, every wordy phrase will jump out immediately.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если прочитать абзац вслух, каждая многословная фраза сразу бросится в глаза."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2dd1cc7e-2fcc-5c65-a393-6ba22d5cf321', '206ae522-31c3-57de-9b6a-c3a805209418', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"Look — my first draft had ninety words; the second has sixty.","translation":"Смотри — в первом черновике было девяносто слов, во втором шестьдесят.","type":"dialogue"},{"character":"Voice 2","text":"And is the meaning still there?","translation":"И смысл сохранился?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes — I cut out the repetitions, and it reads better."},{"is_correct":false,"text":"Yes, I cut them tomorrow yesterday."},{"is_correct":false,"text":"The draft is wording my meaning."}],"text":"What does Voice 1 say?","type":"choice"}],"title":"The Two Drafts"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('20308900-f62c-5a0e-bde0-fa634edf65f2', '206ae522-31c3-57de-9b6a-c3a805209418', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“wordy” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Using too many words for a simple idea"},{"id":"D_B","is_correct":false,"text":"Clear, short and easy to follow"},{"id":"D_C","is_correct":false,"text":"Rich in useful examples"}],"word":"wordy"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('54cafb13-27d0-52b0-9002-6b019a510961', '206ae522-31c3-57de-9b6a-c3a805209418', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to cut out the empty phrases.","explanation":"The missing word is “cut out”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"cut out","id":"LW_A","is_correct":true},{"audio_text":"cutted out","id":"LW_B","is_correct":false},{"audio_text":"cutting out","id":"LW_C","is_correct":false}],"sentence_template":"I am going to ___ the empty phrases."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fd97ea4b-24d0-578c-a7da-3258d2e80186', '206ae522-31c3-57de-9b6a-c3a805209418', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"shorter","explanation":"The complete sentence is “The third draft is shorter than the second.”.","hint_prefix":"sh","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The third draft is ___ than the second."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('38c0d22f-07eb-52af-9849-34fb0b5649d9', '206ae522-31c3-57de-9b6a-c3a805209418', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"more concise","id":"V1","text":"more concise"},{"audio_text":"to cut out","id":"V2","text":"to cut out"},{"audio_text":"second draft","id":"V3","text":"second draft"},{"audio_text":"wordy","id":"V4","text":"wordy"},{"audio_text":"to read aloud","id":"V5","text":"to read aloud"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('05ac8843-91e5-56d0-8b51-2a71d43169c1', '206ae522-31c3-57de-9b6a-c3a805209418', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Classmate","text":"How do you find weak sentences?"}],"explanation":"“I read aloud — if I stumble, the sentence needs editing.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"I read aloud — if I stumble, the sentence needs editing."},{"id":"C_B","is_correct":false,"text":"I read it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The sentence is stumbling me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d8816e17-a478-5982-99f5-43ef7f6cc95a', '206ae522-31c3-57de-9b6a-c3a805209418', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b4469391-2115-540d-89e6-7941305f97fd', NULL, 'Если текст не складывается', 'Дать советы о письме, используя should и первое условное.', '{"en":"If the Text Does Not Come Together","ru":"Если текст не складывается"}'::jsonb, '{"en":"Give writing advice using should and the first conditional.","ru":"Дать советы о письме, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c3ab266c-8190-54b0-a535-2687141b0219', 'b4469391-2115-540d-89e6-7941305f97fd', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"writer''s block","right":"творческий ступор"},{"id":"P2","left":"to brainstorm","right":"побрейнштормить"},{"id":"P3","left":"outline first","right":"сначала план"},{"id":"P4","left":"perfect","right":"идеальный"},{"id":"P5","left":"to polish","right":"полировать (текст)"},{"id":"P6","left":"messy first draft","right":"грязный первый черновик"},{"id":"P7","left":"later","right":"позже"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fd1ca6d4-14a0-56c5-84c1-b926c756f538', 'b4469391-2115-540d-89e6-7941305f97fd', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should write a messy first draft and polish it later.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should write a messy first draft and polish it later."},{"id":"Q_B","is_correct":false,"text":"You should to write it yesterday."},{"id":"Q_C","is_correct":false,"text":"You must writing messy drafts last essay."}],"question":"Which sentence gives correct writing advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e839da4e-1b92-5f94-976a-2304d5e06e76', 'b4469391-2115-540d-89e6-7941305f97fd', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you sketch an outline first, the writer''s block passes faster.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если сначала набросать план, ступор проходит быстрее.","target_language":"en","word_bank":["outline","writer''s","faster.","block","the","yesterday","sketched","first,","If","you","sketch","an","did","passes"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('72f352e5-c09d-563b-9857-0cc89580a859', 'b4469391-2115-540d-89e6-7941305f97fd', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"perfect","instruction":"Выберите подходящее слово.","options":["perfect","perfectly","perfecter"],"sentence_template":"If you try to make the first draft ___ , you will never finish it.","translation_hint":"Если пытаться сделать идеальным первый черновик, он никогда не будет закончен."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('197c6d7c-f37b-5708-837e-19039e9dbdd5', 'b4469391-2115-540d-89e6-7941305f97fd', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","brainstorm","for","five","minutes","before","writing."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["writing.","mustn''t","went","for","minutes","before","five","brainstorm","should","You"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('47db55a7-fb87-53ce-9d7a-111595461830', 'b4469391-2115-540d-89e6-7941305f97fd', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you separate writing from editing, both stages will take half the time.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b0a937f-cda8-50e3-b768-2f9e874a1128', 'b4469391-2115-540d-89e6-7941305f97fd', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you separate writing from editing, both stages will take half the time.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если разделить письмо и редактуру, оба этапа займут вдвое меньше времени."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e3ca03bb-1255-56d1-92fd-2532c7196d2f', 'b4469391-2115-540d-89e6-7941305f97fd', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"I have been staring at the page for an hour — nothing comes.","translation":"Я час смотрю на страницу — ничего не приходит.","type":"dialogue"},{"character":"Voice 2","text":"Have you tried brainstorming without writing full sentences?","translation":"Пробовал побрейнштормить без полных предложений?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Good idea — I will list my ideas as single words first."},{"is_correct":false,"text":"I listed them yesterday tomorrow already."},{"is_correct":false,"text":"The page is staring at my ideas."}],"text":"What does Voice 1 do?","type":"choice"}],"title":"The Blank Page"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('396d714c-b436-5a56-8392-133c254b127d', 'b4469391-2115-540d-89e6-7941305f97fd', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“writer''s block” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"The state when you cannot start writing"},{"id":"D_B","is_correct":false,"text":"The final check of a finished text"},{"id":"D_C","is_correct":false,"text":"A technique for choosing a title"}],"word":"writer''s block"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf8b5cec-87cd-5747-bd01-f52cb3ca5c10', 'b4469391-2115-540d-89e6-7941305f97fd', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you outline first, the writing flows.","explanation":"The missing word is “outline”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"outline","id":"LW_A","is_correct":true},{"audio_text":"will outline","id":"LW_B","is_correct":false},{"audio_text":"outlined","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ first, the writing flows."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('659361bb-fef5-56ec-9fd1-a088c3f5cb59', 'b4469391-2115-540d-89e6-7941305f97fd', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"later","explanation":"The complete sentence is “Polish the text later , not during writing.”.","hint_prefix":"la","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Polish the text ___ , not during writing."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1dce8a97-b67c-51a6-95f8-c6a3646694de', 'b4469391-2115-540d-89e6-7941305f97fd', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"writer''s block","id":"V1","text":"writer''s block"},{"audio_text":"to brainstorm","id":"V2","text":"to brainstorm"},{"audio_text":"outline first","id":"V3","text":"outline first"},{"audio_text":"perfect","id":"V4","text":"perfect"},{"audio_text":"to polish","id":"V5","text":"to polish"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5d407500-b846-5978-96e1-c52d1e67a568', 'b4469391-2115-540d-89e6-7941305f97fd', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"I keep deleting my first sentences."}],"explanation":"“Stop deleting — write the messy draft to the end, and edit it tomorrow.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Stop deleting — write the messy draft to the end, and edit it tomorrow."},{"id":"C_B","is_correct":false,"text":"I deleted them yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The sentences are deleting me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d8816e17-a478-5982-99f5-43ef7f6cc95a', 'b4469391-2115-540d-89e6-7941305f97fd', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5ef3918f-bde7-5fac-94ff-aa5f4f9d3c41', 'en', 'topic sentence', 'тематическое предложение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6db89f6b-eccf-59c8-aa3e-633220364306', 'en', 'supporting sentence', 'поддерживающее предложение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('be5453d8-835a-5ed6-8ac6-e7699c8c6e45', 'en', 'linking word', 'связующее слово', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('01805131-84f5-5429-92d2-7f23e5c293a6', 'en', 'draft', 'черновик', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ed0a9b1c-9334-58bb-b673-fcca3b47979f', 'en', 'to edit', 'отредактировать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('75837a20-41dc-5c53-a24a-476573f53a7f', 'en', 'paragraph', 'абзац', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('478640e0-c4e8-5234-9e00-ca9b74dde93b', 'en', 'so far', 'до сих пор', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7c523ded-d3bf-5ef0-aad1-07704ae96a1a', 'en', 'more concise', 'лаконичнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6842c3e8-bbc2-5c1d-8347-f0ef029771dc', 'en', 'to cut out', 'вырезать (лишнее)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2d672d6f-a0b8-58be-8c9e-0b5c5dd3fbb2', 'en', 'second draft', 'второй черновик', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b68f0856-ba43-5ea6-bb65-2eb78119eb63', 'en', 'wordy', 'многословный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6226ed89-bdf0-5059-919d-ffca96417eda', 'en', 'to read aloud', 'прочитать вслух', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dec322c3-eded-524e-928d-e5d67a9ee19f', 'en', 'clearer', 'яснее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6391163a-6eca-55fc-8c85-da14a8d28c18', 'en', 'sentence variety', 'разнообразие предложений', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b1086698-48b0-5074-91e6-563c0a001406', 'en', 'writer''s block', 'творческий ступор', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1e0c71a4-2d33-5e8d-b28a-8368b412b934', 'en', 'to brainstorm', 'побрейнштормить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('256b036f-baeb-5988-8784-f57116b53bea', 'en', 'outline first', 'сначала план', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a00f5a64-14df-5fa7-968b-0bcb0fd408db', 'en', 'perfect', 'идеальный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a6b68398-e3cc-5471-9f7b-422cb8e0be78', 'en', 'to polish', 'полировать (текст)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('18c030e2-92bc-53cd-b585-a58cc08d9ad1', 'en', 'messy first draft', 'грязный первый черновик', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2031a517-3fd2-5477-ad5d-426925135c6c', 'en', 'later', 'позже', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd8816e17-a478-5982-99f5-43ef7f6cc95a', id, '867fcd4d-7322-5202-9037-b83fe303be50', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'topic sentence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd8816e17-a478-5982-99f5-43ef7f6cc95a', id, '867fcd4d-7322-5202-9037-b83fe303be50', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'supporting sentence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd8816e17-a478-5982-99f5-43ef7f6cc95a', id, '867fcd4d-7322-5202-9037-b83fe303be50', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'linking word' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd8816e17-a478-5982-99f5-43ef7f6cc95a', id, '867fcd4d-7322-5202-9037-b83fe303be50', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'draft' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd8816e17-a478-5982-99f5-43ef7f6cc95a', id, '867fcd4d-7322-5202-9037-b83fe303be50', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to edit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd8816e17-a478-5982-99f5-43ef7f6cc95a', id, '867fcd4d-7322-5202-9037-b83fe303be50', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'paragraph' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd8816e17-a478-5982-99f5-43ef7f6cc95a', id, '867fcd4d-7322-5202-9037-b83fe303be50', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'so far' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd8816e17-a478-5982-99f5-43ef7f6cc95a', id, '206ae522-31c3-57de-9b6a-c3a805209418', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'more concise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd8816e17-a478-5982-99f5-43ef7f6cc95a', id, '206ae522-31c3-57de-9b6a-c3a805209418', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to cut out' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd8816e17-a478-5982-99f5-43ef7f6cc95a', id, '206ae522-31c3-57de-9b6a-c3a805209418', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'second draft' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd8816e17-a478-5982-99f5-43ef7f6cc95a', id, '206ae522-31c3-57de-9b6a-c3a805209418', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'wordy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd8816e17-a478-5982-99f5-43ef7f6cc95a', id, '206ae522-31c3-57de-9b6a-c3a805209418', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to read aloud' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd8816e17-a478-5982-99f5-43ef7f6cc95a', id, '206ae522-31c3-57de-9b6a-c3a805209418', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'clearer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd8816e17-a478-5982-99f5-43ef7f6cc95a', id, '206ae522-31c3-57de-9b6a-c3a805209418', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'sentence variety' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd8816e17-a478-5982-99f5-43ef7f6cc95a', id, 'b4469391-2115-540d-89e6-7941305f97fd', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'writer''s block' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd8816e17-a478-5982-99f5-43ef7f6cc95a', id, 'b4469391-2115-540d-89e6-7941305f97fd', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to brainstorm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd8816e17-a478-5982-99f5-43ef7f6cc95a', id, 'b4469391-2115-540d-89e6-7941305f97fd', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'outline first' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd8816e17-a478-5982-99f5-43ef7f6cc95a', id, 'b4469391-2115-540d-89e6-7941305f97fd', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'perfect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd8816e17-a478-5982-99f5-43ef7f6cc95a', id, 'b4469391-2115-540d-89e6-7941305f97fd', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to polish' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd8816e17-a478-5982-99f5-43ef7f6cc95a', id, 'b4469391-2115-540d-89e6-7941305f97fd', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'messy first draft' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd8816e17-a478-5982-99f5-43ef7f6cc95a', id, 'b4469391-2115-540d-89e6-7941305f97fd', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'later' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
