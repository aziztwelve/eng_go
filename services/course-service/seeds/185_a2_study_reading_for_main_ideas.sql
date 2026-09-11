-- Track: A2_STUDY_READING_FOR_MAIN_IDEAS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('63f296af-9ac6-5135-abf2-60992c3ffff8', 'A2_STUDY_READING_FOR_MAIN_IDEAS', 'Чтение для понимания основной идеи', 'Развивайте учебные навыки уровня A2 по теме «Чтение для понимания основной идеи».', '{"en":"Reading for Main Ideas","ru":"Чтение для понимания основной идеи"}'::jsonb, '{"en":"Develop A2 study skills for reading for main ideas.","ru":"Развивайте учебные навыки уровня A2 по теме «Чтение для понимания основной идеи»."}'::jsonb, 'en', 'A2', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('228eb8b9-766a-530b-b467-198c4afe1734', NULL, 'О чём была статья', 'Рассказать о прочитанном, используя past simple и present perfect.', '{"en":"What the Article Was About","ru":"О чём была статья"}'::jsonb, '{"en":"Talk about a text using past simple and present perfect.","ru":"Рассказать о прочитанном, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('59751874-2fb1-5a96-9f97-62d1dddd094f', '228eb8b9-766a-530b-b467-198c4afe1734', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"main idea","right":"главная мысль"},{"id":"P2","left":"topic sentence","right":"тематическое предложение"},{"id":"P3","left":"to skim","right":"просмотреть бегло"},{"id":"P4","left":"supporting detail","right":"подробность (подтверждающая)"},{"id":"P5","left":"to come across","right":"наткнуться на"},{"id":"P6","left":"heading","right":"заголовок"},{"id":"P7","left":"so far","right":"до сих пор"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fb9299ed-ebfd-5679-879a-3df3777b12c7', '228eb8b9-766a-530b-b467-198c4afe1734', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I have skimmed two chapters so far this evening.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I have skimmed two chapters so far this evening."},{"id":"Q_B","is_correct":false,"text":"I have skimmed them yesterday evening."},{"id":"Q_C","is_correct":false,"text":"I skim two chapters already so far."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa92e382-279f-5ab0-8111-dc31ee790e83', '228eb8b9-766a-530b-b467-198c4afe1734', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I skimmed the article and have found three supporting details.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я бегло просмотрел статью и нашёл три подтверждающие детали.","target_language":"en","word_bank":["article","skim","supporting","did","the","three","have","I","tomorrow","skimmed","and","details.","found"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3f1f309c-128d-5485-8d6e-c9d6f69e69ef', '228eb8b9-766a-530b-b467-198c4afe1734', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"topic","instruction":"Выберите подходящее слово.","options":["topic","topics","topical"],"sentence_template":"The first paragraph usually contains the ___ sentence.","translation_hint":"Первый абзац обычно содержит тематическое предложение."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1bdeb78a-45b4-5c8d-abaa-fcc1d212f58c', '228eb8b9-766a-530b-b467-198c4afe1734', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["She","has","underlined","the","main","idea","of","each","paragraph."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["each","idea","did","of","main","underlined","paragraph.","has","She","was","the"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('131ee957-c517-5d66-80d7-43c476c6f124', '228eb8b9-766a-530b-b467-198c4afe1734', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The heading promised tips on saving money, and the article has actually delivered them in the third section.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f8a9edcb-1345-5f21-a1ca-e8ab677b2764', '228eb8b9-766a-530b-b467-198c4afe1734', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The heading promised tips on saving money, and the article has actually delivered them in the third section.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Заголовок обещал советы по экономии денег, и статья действительно выдала их в третьем разделе."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('457cdb3b-5ad0-58ee-b67a-ddc22749a825', '228eb8b9-766a-530b-b467-198c4afe1734', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"What was the article about, in one sentence?","translation":"О чём была статья, в одном предложении?","type":"dialogue"},{"character":"Voice 2","text":"Remote work saves companies money — but only if they trust their staff.","translation":"Удалённая работа экономит компаниям деньги — но только если они доверяют сотрудникам.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Which details has the author used to support it?"},{"is_correct":false,"text":"Which details did the author use tomorrow?"},{"is_correct":false,"text":"Is the sentence saving the article money?"}],"text":"What does Voice 1 ask?","type":"choice"}],"title":"After the Reading Class"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('635f9e06-9f1e-5f62-8e51-00a85999824b', '228eb8b9-766a-530b-b467-198c4afe1734', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“topic sentence” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"The sentence that states the main idea of a paragraph"},{"id":"D_B","is_correct":false,"text":"A quote from another article"},{"id":"D_C","is_correct":false,"text":"The last question of the text"}],"word":"topic sentence"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d498368c-fa28-5216-99fd-477a80c55e28', '228eb8b9-766a-530b-b467-198c4afe1734', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have skimmed the whole report in ten minutes.","explanation":"The missing word is “skimmed”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"skimmed","id":"LW_A","is_correct":true},{"audio_text":"skim","id":"LW_B","is_correct":false},{"audio_text":"skimming","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ the whole report in ten minutes."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7095beaf-9588-5777-9b53-4325004e32b1', '228eb8b9-766a-530b-b467-198c4afe1734', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"idea","explanation":"The complete sentence is “Find the main idea first, details later.”.","hint_prefix":"id","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Find the main ___ first, details later."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4e83b6ff-c740-5f96-abf9-11a7752cf09e', '228eb8b9-766a-530b-b467-198c4afe1734', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"main idea","id":"V1","text":"main idea"},{"audio_text":"topic sentence","id":"V2","text":"topic sentence"},{"audio_text":"to skim","id":"V3","text":"to skim"},{"audio_text":"supporting detail","id":"V4","text":"supporting detail"},{"audio_text":"to come across","id":"V5","text":"to come across"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a2f678c4-d98e-591e-9d08-843501ec116f', '228eb8b9-766a-530b-b467-198c4afe1734', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Did you read the whole chapter?"}],"explanation":"“I skimmed it first — then I have read only the sections with the main ideas.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"I skimmed it first — then I have read only the sections with the main ideas."},{"id":"C_B","is_correct":false,"text":"I read it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The chapter is skimming me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('63f296af-9ac6-5135-abf2-60992c3ffff8', '228eb8b9-766a-530b-b467-198c4afe1734', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f25ae9fb-4318-5c88-9c72-dfe1c710ff3b', NULL, 'Как читать быстрее', 'Сравнить техники чтения и спланировать чтение на неделю.', '{"en":"How to Read Faster","ru":"Как читать быстрее"}'::jsonb, '{"en":"Compare reading techniques and plan your weekly reading.","ru":"Сравнить техники чтения и спланировать чтение на неделю."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('750e80bb-2a0c-513d-989e-71f028010b17', 'f25ae9fb-4318-5c88-9c72-dfe1c710ff3b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"scanning","right":"поиск по тексту (сканирование)"},{"id":"P2","left":"faster","right":"быстрее"},{"id":"P3","left":"to guess from context","right":"догадаться по контексту"},{"id":"P4","left":"subtitles","right":"подзаголовки"},{"id":"P5","left":"to slow down","right":"замедлиться"},{"id":"P6","left":"more carefully","right":"внимательнее"},{"id":"P7","left":"reading speed","right":"скорость чтения"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('44247c9d-8bd0-53ea-b937-a8ac81042819', 'f25ae9fb-4318-5c88-9c72-dfe1c710ff3b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Scanning for numbers is faster than reading every word.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Scanning for numbers is faster than reading every word."},{"id":"Q_B","is_correct":false,"text":"Scanning is more fast than reading."},{"id":"Q_C","is_correct":false,"text":"Scanning is fastest than reading."}],"question":"Which sentence compares two reading ways correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('caa92dcc-4be3-5cfc-b56e-c676c55298d4', 'f25ae9fb-4318-5c88-9c72-dfe1c710ff3b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"This week I am going to read one article a day.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"На этой неделе я собираюсь читать по одной статье в день.","target_language":"en","word_bank":["one","to","I","day.","going","am","a","did","read","week","This","article","yesterday","read"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9cbdb40a-6a83-50e2-9ec5-0c09e6be6415', 'f25ae9fb-4318-5c88-9c72-dfe1c710ff3b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"quicker","instruction":"Выберите подходящее слово.","options":["quicker","quickest","more quick"],"sentence_template":"Guessing from context is ___ than stopping at every word.","translation_hint":"Догадываться по контексту быстрее, чем останавливаться на каждом слове."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6e62b437-0348-5897-97ee-da7b94b2dcfa', 'f25ae9fb-4318-5c88-9c72-dfe1c710ff3b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","going","to","scan","the","text","for","the","dates","first."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["text","going","did","dates","scan","We","the","to","was","are","the","for","first."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('11258d66-3785-5e8e-b759-38340fd4267a', 'f25ae9fb-4318-5c88-9c72-dfe1c710ff3b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you read the subtitles first, you will know where to slow down and where to scan.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('46601750-9a37-5e69-90bb-23a602d01271', 'f25ae9fb-4318-5c88-9c72-dfe1c710ff3b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you read the subtitles first, you will know where to slow down and where to scan.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если сначала прочитать подзаголовки, будет понятно, где замедлиться, а где сканировать."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1a0d2e58-ef03-5fe2-a2a9-57d152e28ec3', 'f25ae9fb-4318-5c88-9c72-dfe1c710ff3b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"This article is six pages long — do I read it all?","translation":"Статья на шесть страниц — читать всё?","type":"dialogue"},{"character":"Voice 2","text":"Start with the headings — then read carefully only the relevant section.","translation":"Начни с подзаголовков — внимательно прочитай только нужный раздел.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Good — I am going to scan for my topic first."},{"is_correct":false,"text":"I scanned it yesterday tomorrow already."},{"is_correct":false,"text":"The pages are heading my topic."}],"text":"What does Voice 1 decide?","type":"choice"}],"title":"Reading a Long Text"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e20ee4c9-8d63-57ca-8a22-07ff468ef150', 'f25ae9fb-4318-5c88-9c72-dfe1c710ff3b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“scanning” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Looking quickly through a text for specific information"},{"id":"D_B","is_correct":false,"text":"Reading every word from top to bottom"},{"id":"D_C","is_correct":false,"text":"Translating the text word by word"}],"word":"scanning"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7b52abb-b2cb-535c-a683-d678976283ef', 'f25ae9fb-4318-5c88-9c72-dfe1c710ff3b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to scan for the key figure.","explanation":"The missing word is “scan”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"scan","id":"LW_A","is_correct":true},{"audio_text":"scanned","id":"LW_B","is_correct":false},{"audio_text":"scanning","id":"LW_C","is_correct":false}],"sentence_template":"I am going to ___ for the key figure."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2bb7a96a-da51-5d0f-9b0d-9889b9e3db72', 'f25ae9fb-4318-5c88-9c72-dfe1c710ff3b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"higher","explanation":"The complete sentence is “My reading speed is higher than last year.”.","hint_prefix":"hi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"My reading speed is ___ than last year."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7aab710d-9f86-5ddc-8c02-31e9ed041d88', 'f25ae9fb-4318-5c88-9c72-dfe1c710ff3b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"scanning","id":"V1","text":"scanning"},{"audio_text":"faster","id":"V2","text":"faster"},{"audio_text":"to guess from context","id":"V3","text":"to guess from context"},{"audio_text":"subtitles","id":"V4","text":"subtitles"},{"audio_text":"to slow down","id":"V5","text":"to slow down"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4ea44a8e-9cae-5b51-ac79-e3ff4a03f641', 'f25ae9fb-4318-5c88-9c72-dfe1c710ff3b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"I stop at every unknown word."}],"explanation":"“Try guessing from context — if the guess fails, you can check the word later.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Try guessing from context — if the guess fails, you can check the word later."},{"id":"C_B","is_correct":false,"text":"I guessed it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The words are stopping me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('63f296af-9ac6-5135-abf2-60992c3ffff8', 'f25ae9fb-4318-5c88-9c72-dfe1c710ff3b', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a528afd6-c45e-5dcd-96d5-c30ff61244c0', NULL, 'Если текст не понятен', 'Дать советы о чтении сложных текстов, используя should и первое условное.', '{"en":"If the Text Is Unclear","ru":"Если текст не понятен"}'::jsonb, '{"en":"Give advice on difficult texts using should and the first conditional.","ru":"Дать советы о чтении сложных текстов, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a75e0697-b8bc-5a81-a86a-5eadd43682ba', 'a528afd6-c45e-5dcd-96d5-c30ff61244c0', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to re-read","right":"перечитать"},{"id":"P2","left":"in other words","right":"другими словами"},{"id":"P3","left":"to paraphrase","right":"пересказать своими словами"},{"id":"P4","left":"difficult","right":"сложный"},{"id":"P5","left":"to look for","right":"искать"},{"id":"P6","left":"clue","right":"подсказка"},{"id":"P7","left":"to give up on","right":"сдаться на"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5ff9d9d3-6a1b-5800-abc3-1e1e3233a49b', 'a528afd6-c45e-5dcd-96d5-c30ff61244c0', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should paraphrase each paragraph in your own words.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should paraphrase each paragraph in your own words."},{"id":"Q_B","is_correct":false,"text":"You should to paraphrase it yesterday."},{"id":"Q_C","is_correct":false,"text":"You must paraphrasing paragraphs last text."}],"question":"Which sentence gives correct reading advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3e24e7d-2182-5758-aad2-c55007f60156', 'a528afd6-c45e-5dcd-96d5-c30ff61244c0', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you re-read a difficult paragraph slowly, the meaning often becomes clear.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если перечитать сложный абзац медленно, смысл часто становится ясен.","target_language":"en","word_bank":["slowly,","often","clear.","becomes","paragraph","did","If","difficult","the","meaning","you","reread","a","re-read","yesterday"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('051a0a83-6441-51bf-a4ad-b0c9dd617bc5', 'a528afd6-c45e-5dcd-96d5-c30ff61244c0', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"clues","instruction":"Выберите подходящее слово.","options":["clues","will clue","clued"],"sentence_template":"If a sentence is unclear, look for ___ in the next one.","translation_hint":"Если предложение неясно, ищи подсказки в следующем."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3acf2a3a-84c0-5d24-8d44-ae7a0ee51783', 'a528afd6-c45e-5dcd-96d5-c30ff61244c0', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","not","give","up","on","hard","texts","at","once."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["once.","up","at","mustn''t","went","give","should","hard","not","texts","You","on"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('57e6a00e-3c62-5ee5-bed1-ebc52f363be9', 'a528afd6-c45e-5dcd-96d5-c30ff61244c0', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you paraphrase a paragraph in one sentence, you will immediately see what you have not understood.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8bc1d2cd-be42-56df-801e-f2343321b161', 'a528afd6-c45e-5dcd-96d5-c30ff61244c0', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you paraphrase a paragraph in one sentence, you will immediately see what you have not understood.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если пересказать абзац одним предложением, сразу станет видно, что именно не понял."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4c6a0c2c-0057-5048-ad84-d08da1774612', 'a528afd6-c45e-5dcd-96d5-c30ff61244c0', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"I have read this paragraph three times and still do not get it.","translation":"Я трижды прочитал этот абзац и всё равно не понимаю.","type":"dialogue"},{"character":"Voice 2","text":"Try paraphrasing the first half aloud.","translation":"Попробуй пересказать первую половину вслух.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Ah — now I see that I misunderstood the word ''claim''."},{"is_correct":false,"text":"I saw it tomorrow yesterday."},{"is_correct":false,"text":"The paragraph is paraphrasing me thrice."}],"text":"What does Voice 1 discover?","type":"choice"}],"title":"The Impossible Paragraph"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6e0b9f06-30f3-5013-8f13-c17d0a4b0820', 'a528afd6-c45e-5dcd-96d5-c30ff61244c0', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“clue” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Something that helps you find an answer or meaning"},{"id":"D_B","is_correct":false,"text":"A question nobody can answer"},{"id":"D_C","is_correct":false,"text":"A word you have never seen in any text"}],"word":"clue"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c482512-cc67-5262-8c32-f595648ca2b1', 'a528afd6-c45e-5dcd-96d5-c30ff61244c0', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If the text stays unclear, re-read the main part.","explanation":"The missing word is “re-read”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"re-read","id":"LW_A","is_correct":true},{"audio_text":"will re-read","id":"LW_B","is_correct":false},{"audio_text":"re-readed","id":"LW_C","is_correct":false}],"sentence_template":"If the text stays unclear, ___ the main part."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3a9fd47-7d0d-5866-be97-c40a08325953', 'a528afd6-c45e-5dcd-96d5-c30ff61244c0', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"words","explanation":"The complete sentence is “Say it in other words .”.","hint_prefix":"wo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Say it in other ___ ."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('97bc365a-1cad-5997-8058-2079482fd4f3', 'a528afd6-c45e-5dcd-96d5-c30ff61244c0', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to re-read","id":"V1","text":"to re-read"},{"audio_text":"in other words","id":"V2","text":"in other words"},{"audio_text":"to paraphrase","id":"V3","text":"to paraphrase"},{"audio_text":"difficult","id":"V4","text":"difficult"},{"audio_text":"to look for","id":"V5","text":"to look for"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('35d08035-b4b0-5c01-b347-8715464bf311', 'a528afd6-c45e-5dcd-96d5-c30ff61244c0', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"This article is above my level."}],"explanation":"“Do not give up — if you find the main idea, the details will follow.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Do not give up — if you find the main idea, the details will follow."},{"id":"C_B","is_correct":false,"text":"I found it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The level is articling me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('63f296af-9ac6-5135-abf2-60992c3ffff8', 'a528afd6-c45e-5dcd-96d5-c30ff61244c0', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e7dfe143-dfa7-5892-8b8f-65e91dea7b93', 'en', 'main idea', 'главная мысль', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5ef3918f-bde7-5fac-94ff-aa5f4f9d3c41', 'en', 'topic sentence', 'тематическое предложение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eed16872-a7ff-5c24-89fd-19d25850cb76', 'en', 'to skim', 'просмотреть бегло', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('87bea47b-5f67-5721-bd2f-5744b309e4a8', 'en', 'supporting detail', 'подробность (подтверждающая)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f3b05c07-ef64-59ad-889a-5fa1706880f4', 'en', 'to come across', 'наткнуться на', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6408a2b2-e2d2-569d-8296-6c060ca593ae', 'en', 'heading', 'заголовок', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('478640e0-c4e8-5234-9e00-ca9b74dde93b', 'en', 'so far', 'до сих пор', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3fa53266-7a4f-5ff5-8a76-b45ea11b9d84', 'en', 'scanning', 'поиск по тексту (сканирование)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a4b43ee9-777a-5164-b53b-1e1787c7aa0e', 'en', 'faster', 'быстрее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bf1ff57a-75d4-5261-aa4f-c55bc45c8c2e', 'en', 'to guess from context', 'догадаться по контексту', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e0f89d7f-9462-54af-9419-668ea162dce6', 'en', 'subtitles', 'подзаголовки', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('57b24185-90a1-5c4f-b07a-7d24856a629f', 'en', 'to slow down', 'замедлиться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b49e562f-8208-5ee6-b44e-541b0f93c3e7', 'en', 'more carefully', 'внимательнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f8b5cfcb-39d3-5048-9b3c-260975dbc70a', 'en', 'reading speed', 'скорость чтения', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fdd4640c-df20-51f6-b2b4-b864280c927f', 'en', 'to re-read', 'перечитать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('966dd2ed-8671-5308-8de5-5e498509c71d', 'en', 'in other words', 'другими словами', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a9ebabed-e590-50b6-b7c9-62774f4406d1', 'en', 'to paraphrase', 'пересказать своими словами', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('907d61ad-8f55-5b6d-b220-8cc687f71bed', 'en', 'difficult', 'сложный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8c985283-5b39-5e81-a8ba-dc98a43fef41', 'en', 'to look for', 'искать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d4ced17b-c617-5234-862c-77548d58bbac', 'en', 'clue', 'подсказка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d3cc36b4-0931-5762-8616-46f9c0212d77', 'en', 'to give up on', 'сдаться на', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63f296af-9ac6-5135-abf2-60992c3ffff8', id, '228eb8b9-766a-530b-b467-198c4afe1734', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'main idea' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63f296af-9ac6-5135-abf2-60992c3ffff8', id, '228eb8b9-766a-530b-b467-198c4afe1734', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'topic sentence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63f296af-9ac6-5135-abf2-60992c3ffff8', id, '228eb8b9-766a-530b-b467-198c4afe1734', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to skim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63f296af-9ac6-5135-abf2-60992c3ffff8', id, '228eb8b9-766a-530b-b467-198c4afe1734', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'supporting detail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63f296af-9ac6-5135-abf2-60992c3ffff8', id, '228eb8b9-766a-530b-b467-198c4afe1734', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to come across' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63f296af-9ac6-5135-abf2-60992c3ffff8', id, '228eb8b9-766a-530b-b467-198c4afe1734', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'heading' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63f296af-9ac6-5135-abf2-60992c3ffff8', id, '228eb8b9-766a-530b-b467-198c4afe1734', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'so far' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63f296af-9ac6-5135-abf2-60992c3ffff8', id, 'f25ae9fb-4318-5c88-9c72-dfe1c710ff3b', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'scanning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63f296af-9ac6-5135-abf2-60992c3ffff8', id, 'f25ae9fb-4318-5c88-9c72-dfe1c710ff3b', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'faster' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63f296af-9ac6-5135-abf2-60992c3ffff8', id, 'f25ae9fb-4318-5c88-9c72-dfe1c710ff3b', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to guess from context' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63f296af-9ac6-5135-abf2-60992c3ffff8', id, 'f25ae9fb-4318-5c88-9c72-dfe1c710ff3b', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'subtitles' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63f296af-9ac6-5135-abf2-60992c3ffff8', id, 'f25ae9fb-4318-5c88-9c72-dfe1c710ff3b', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to slow down' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63f296af-9ac6-5135-abf2-60992c3ffff8', id, 'f25ae9fb-4318-5c88-9c72-dfe1c710ff3b', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'more carefully' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63f296af-9ac6-5135-abf2-60992c3ffff8', id, 'f25ae9fb-4318-5c88-9c72-dfe1c710ff3b', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'reading speed' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63f296af-9ac6-5135-abf2-60992c3ffff8', id, 'a528afd6-c45e-5dcd-96d5-c30ff61244c0', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to re-read' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63f296af-9ac6-5135-abf2-60992c3ffff8', id, 'a528afd6-c45e-5dcd-96d5-c30ff61244c0', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'in other words' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63f296af-9ac6-5135-abf2-60992c3ffff8', id, 'a528afd6-c45e-5dcd-96d5-c30ff61244c0', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to paraphrase' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63f296af-9ac6-5135-abf2-60992c3ffff8', id, 'a528afd6-c45e-5dcd-96d5-c30ff61244c0', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'difficult' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63f296af-9ac6-5135-abf2-60992c3ffff8', id, 'a528afd6-c45e-5dcd-96d5-c30ff61244c0', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to look for' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63f296af-9ac6-5135-abf2-60992c3ffff8', id, 'a528afd6-c45e-5dcd-96d5-c30ff61244c0', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'clue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '63f296af-9ac6-5135-abf2-60992c3ffff8', id, 'a528afd6-c45e-5dcd-96d5-c30ff61244c0', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to give up on' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
