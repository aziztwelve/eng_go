-- Track: A2_EXAM_READING_FOR_MAIN_IDEAS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('ff2da819-fad5-55d1-8473-b7a222419842', 'A2_EXAM_READING_FOR_MAIN_IDEAS', 'Чтение для понимания основной мысли', 'Развивайте экзаменационные навыки уровня A2 по теме «Чтение для понимания основной мысли».', '{"en":"Reading for Main Ideas","ru":"Чтение для понимания основной мысли"}'::jsonb, '{"en":"Develop A2 exam skills for reading for main ideas.","ru":"Развивайте экзаменационные навыки уровня A2 по теме «Чтение для понимания основной мысли»."}'::jsonb, 'en', 'A2', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('6eeedf88-1831-52dc-b209-b46ab2159e70', NULL, 'Главное в тексте', 'Находить главную мысль, используя past simple и present perfect.', '{"en":"The Gist of the Text","ru":"Главное в тексте"}'::jsonb, '{"en":"Find main ideas using past simple and present perfect.","ru":"Находить главную мысль, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c299b336-4d4f-524c-9ac8-6b09d2fa6a66', '6eeedf88-1831-52dc-b209-b46ab2159e70', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"gist","right":"суть"},{"id":"P2","left":"to skim","right":"просмотреть бегло"},{"id":"P3","left":"heading","right":"заголовок"},{"id":"P4","left":"first paragraph","right":"первый абзац"},{"id":"P5","left":"to summarise","right":"резюмировать"},{"id":"P6","left":"distractor","right":"отвлекающий вариант"},{"id":"P7","left":"to match headings","right":"сопоставить заголовки"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b81b96d0-1c46-58df-9d68-7bba25cea4a7', '6eeedf88-1831-52dc-b209-b46ab2159e70', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The author has written three books on the topic so far.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The author has written three books on the topic so far."},{"id":"Q_B","is_correct":false,"text":"The author has written three books last year."},{"id":"Q_C","is_correct":false,"text":"The author writes three books already so far."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2bbaf964-8c7e-5b9a-a005-eb238c18d635', '6eeedf88-1831-52dc-b209-b46ab2159e70', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The text said that the city had renovated the embankment.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"В тексте говорилось, что город отремонтировал набережную.","target_language":"en","word_bank":["the","text","tomorrow","did","The","said","said","embankment.","renovated","the","had","that","city"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3ce29888-500f-58ef-8add-587fc6c53f7d', '6eeedf88-1831-52dc-b209-b46ab2159e70', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"first","instruction":"Выберите подходящее слово.","options":["first","one","firstly"],"sentence_template":"The ___ paragraph usually contains the main idea.","translation_hint":"Первый абзац обычно содержит главную мысль."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5fa78658-e79b-5c04-9890-69d5b35df31a', '6eeedf88-1831-52dc-b209-b46ab2159e70', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","have","matched","five","of","the","seven","headings","already."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["of","did","have","was","seven","five","I","the","matched","headings","already."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2858932b-253a-5623-97b6-6dd1fef7fb32', '6eeedf88-1831-52dc-b209-b46ab2159e70', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A distractor repeats the words of the text, but the correct heading summarises the whole paragraph.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('20ca3c6c-e2a7-5ad4-a0c3-5fceb8188fce', '6eeedf88-1831-52dc-b209-b46ab2159e70', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A distractor repeats the words of the text, but the correct heading summarises the whole paragraph.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Отвлекающий вариант повторяет слова текста, а верный заголовок резюмирует весь абзац."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3b7e243c-99e3-5358-a80c-5c8b3496cff3', '6eeedf88-1831-52dc-b209-b46ab2159e70', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"Two headings fit paragraph three equally well...","translation":"К абзацу три одинаково подходят два заголовка...","type":"dialogue"},{"character":"Voice 2","text":"One of them just repeats a word. Which one summarises the whole idea?","translation":"Один просто повторяет слово. Какой резюмирует всю мысль?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Choose the one that covers everything, not just one sentence."},{"is_correct":false,"text":"Choose the one with more words from the text."},{"is_correct":false,"text":"The paragraph is heading two fit."}],"text":"What is the strategy?","type":"choice"}],"title":"The Matching Task"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0d9cd748-5c6a-5786-b2ab-3f63f16456ad', '6eeedf88-1831-52dc-b209-b46ab2159e70', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“distractor” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A wrong option that looks almost right"},{"id":"D_B","is_correct":false,"text":"The correct answer that is easy to miss"},{"id":"D_C","is_correct":false,"text":"A question you have skipped"}],"word":"distractor"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2094332e-9f5f-5e1f-b6b3-8c6cc276dde6', '6eeedf88-1831-52dc-b209-b46ab2159e70', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have skimmed the text in three minutes.","explanation":"The missing word is “skimmed”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"skimmed","id":"LW_A","is_correct":true},{"audio_text":"skim","id":"LW_B","is_correct":false},{"audio_text":"skimming","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ the text in three minutes."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c798567e-ab78-5d09-b96d-09be49707f93', '6eeedf88-1831-52dc-b209-b46ab2159e70', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"gist","explanation":"The complete sentence is “Find the gist of each paragraph.”.","hint_prefix":"gi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Find the ___ of each paragraph."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90e4daae-e153-564b-b1ad-232b3a5e3f69', '6eeedf88-1831-52dc-b209-b46ab2159e70', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"gist","id":"V1","text":"gist"},{"audio_text":"to skim","id":"V2","text":"to skim"},{"audio_text":"heading","id":"V3","text":"heading"},{"audio_text":"first paragraph","id":"V4","text":"first paragraph"},{"audio_text":"to summarise","id":"V5","text":"to summarise"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5730283f-1a46-5ccf-8d2d-a218cf1513cc', '6eeedf88-1831-52dc-b209-b46ab2159e70', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"I chose the option with the same words as the text."}],"explanation":"“That is the trap — if words match exactly, it is usually a distractor.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"That is the trap — if words match exactly, it is usually a distractor."},{"id":"C_B","is_correct":false,"text":"I trapped it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The words are distractoring me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ff2da819-fad5-55d1-8473-b7a222419842', '6eeedf88-1831-52dc-b209-b46ab2159e70', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b6721933-8306-597d-9143-4e583d34c235', NULL, 'Читаем быстрее к экзамену', 'Сравнить техники чтения и спланировать практику.', '{"en":"Reading Faster for the Exam","ru":"Читаем быстрее к экзамену"}'::jsonb, '{"en":"Compare reading techniques and plan practice.","ru":"Сравнить техники чтения и спланировать практику."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c4511cdc-a091-5e32-823e-929ed94a1175', 'b6721933-8306-597d-9143-4e583d34c235', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"reading speed","right":"скорость чтения"},{"id":"P2","left":"faster","right":"быстрее"},{"id":"P3","left":"to scan for","right":"искать (сканированием)"},{"id":"P4","left":"key information","right":"ключевая информация"},{"id":"P5","left":"to time yourself","right":"засечь время"},{"id":"P6","left":"gradually","right":"постепенно"},{"id":"P7","left":"more texts","right":"больше текстов"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e0762fc4-71b2-5563-8875-387560de697e', 'b6721933-8306-597d-9143-4e583d34c235', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “My reading is faster than it was in September.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"My reading is faster than it was in September."},{"id":"Q_B","is_correct":false,"text":"My reading is more fast than September."},{"id":"Q_C","is_correct":false,"text":"My reading is fastest than it was."}],"question":"Which sentence compares two reading speeds correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('77254272-3019-558f-b6b1-7f203840273c', 'b6721933-8306-597d-9143-4e583d34c235', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I am going to time myself on every text this week.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я собираюсь засекать время на каждом тексте этой недели.","target_language":"en","word_bank":["going","time","week.","did","myself","every","to","yesterday","text","timed","I","this","am","on"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('62538538-0a47-5f66-8627-96e3ad6b2d78', 'b6721933-8306-597d-9143-4e583d34c235', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"quicker","instruction":"Выберите подходящее слово.","options":["quicker","quickest","more quick"],"sentence_template":"Scanning for names and numbers is ___ than reading everything.","translation_hint":"Искать имена и цифры быстрее, чем читать всё."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2cdcd2e-d7c4-551e-86cc-4a48a0f815bd', 'b6721933-8306-597d-9143-4e583d34c235', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","going","to","do","more","texts","per","week."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["texts","per","week.","going","We","did","to","do","are","more","was"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a8638f0b-14ba-516f-bdc8-04af4b1363de', 'b6721933-8306-597d-9143-4e583d34c235', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you time yourself on every practice text, your reading speed will grow gradually but noticeably.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5f1a0f26-bdbb-5a1a-94a1-7749fd49e0b5', 'b6721933-8306-597d-9143-4e583d34c235', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you time yourself on every practice text, your reading speed will grow gradually but noticeably.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если засекать время на каждом тренировочном тексте, скорость чтения будет расти постепенно, но заметно."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a141ed64-9f97-5398-9a64-d7552c1df412', 'b6721933-8306-597d-9143-4e583d34c235', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"Nine hundred words in the exam, and only twenty minutes!","translation":"Девятьсот слов на экзамене, а времени всего двадцать минут!","type":"dialogue"},{"character":"Voice 2","text":"Do not read everything — scan for the questions'' key information.","translation":"Не читай всё — ищи ключевую информацию по вопросам.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I am going to practise timed scanning every evening."},{"is_correct":false,"text":"I practised it yesterday tomorrow already."},{"is_correct":false,"text":"The words are scanning my minutes."}],"text":"What does Voice 1 plan?","type":"choice"}],"title":"The Timed Practice"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71a456d2-fde3-5fff-bb94-472923f146b6', 'b6721933-8306-597d-9143-4e583d34c235', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to time yourself” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To measure how long you take to do something"},{"id":"D_B","is_correct":false,"text":"To plan your day with a timetable"},{"id":"D_C","is_correct":false,"text":"To arrive at the exam centre early"}],"word":"to time yourself"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8f154dff-4779-5a89-9272-f9314cd64a6c', 'b6721933-8306-597d-9143-4e583d34c235', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to time myself with a timer.","explanation":"The missing word is “time”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"time","id":"LW_A","is_correct":true},{"audio_text":"timed","id":"LW_B","is_correct":false},{"audio_text":"timing","id":"LW_C","is_correct":false}],"sentence_template":"I am going to ___ myself with a timer."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a34bfae-88c1-526d-9f5e-2e5bdadacf44', 'b6721933-8306-597d-9143-4e583d34c235', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"faster","explanation":"The complete sentence is “Practice makes reading faster .”.","hint_prefix":"fa","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Practice makes reading ___ ."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd629701-d9a1-5418-b163-6d3615f5247b', 'b6721933-8306-597d-9143-4e583d34c235', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"reading speed","id":"V1","text":"reading speed"},{"audio_text":"faster","id":"V2","text":"faster"},{"audio_text":"to scan for","id":"V3","text":"to scan for"},{"audio_text":"key information","id":"V4","text":"key information"},{"audio_text":"to time yourself","id":"V5","text":"to time yourself"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb116f60-a23b-5620-8b1c-70aecca38206', 'b6721933-8306-597d-9143-4e583d34c235', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"I never finish the reading section."}],"explanation":"“Start with the questions, not the text — if you know what to look for, you will skip half the words.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Start with the questions, not the text — if you know what to look for, you will skip half the words."},{"id":"C_B","is_correct":false,"text":"I finished it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The section is reading me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ff2da819-fad5-55d1-8473-b7a222419842', 'b6721933-8306-597d-9143-4e583d34c235', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ea1855b5-b5b0-50e0-84af-a0caa6e5f71e', NULL, 'Если текст сложный', 'Разобрать стратегии сложных текстов, используя should и первое условное.', '{"en":"If the Text Is Difficult","ru":"Если текст сложный"}'::jsonb, '{"en":"Analyse difficult-text strategies using should and the first conditional.","ru":"Разобрать стратегии сложных текстов, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('136ae7e8-763b-5b9b-ac66-d9e2213e161d', 'ea1855b5-b5b0-50e0-84af-a0caa6e5f71e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"unknown word","right":"незнакомое слово"},{"id":"P2","left":"to skip it","right":"пропустить его"},{"id":"P3","left":"context clue","right":"контекстуальная подсказка"},{"id":"P4","left":"to slow down","right":"замедлиться"},{"id":"P5","left":"key sentence","right":"ключевое предложение"},{"id":"P6","left":"topic sentence","right":"тематическое предложение"},{"id":"P7","left":"calm","right":"спокойный"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('362d716d-3d58-53e6-b307-4341bba500c5', 'ea1855b5-b5b0-50e0-84af-a0caa6e5f71e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should skip unknown words that are not in the questions.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should skip unknown words that are not in the questions."},{"id":"Q_B","is_correct":false,"text":"You should to skip them yesterday."},{"id":"Q_C","is_correct":false,"text":"You must skipping words last text."}],"question":"Which sentence gives correct reading advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a3d3d03a-2230-5662-a329-54d7b9d18129', 'ea1855b5-b5b0-50e0-84af-a0caa6e5f71e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If an unknown word is not in the questions, you can skip it without loss.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если незнакомое слово не в вопросах, его можно пропустить без потерь.","target_language":"en","word_bank":["word","not","If","was","without","yesterday","skip","an","you","unknown","is","the","it","did","loss.","in","questions,","can"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4d0c4501-df73-5d25-8689-38d78d6e608e', 'ea1855b5-b5b0-50e0-84af-a0caa6e5f71e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"second","instruction":"Выберите подходящее слово.","options":["second","will second","seconded"],"sentence_template":"If the first sentence is hard, read the ___ one for support.","translation_hint":"Если первое предложение сложное, прочитай второе для опоры."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('92fb7af3-b53c-5d23-aafb-617d6d186329', 'ea1855b5-b5b0-50e0-84af-a0caa6e5f71e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","stay","calm","with","hard","texts."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["You","mustn''t","texts.","calm","stay","went","with","hard","should"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b961a91c-58cf-524d-8c01-93e5ca5e2c4f', 'ea1855b5-b5b0-50e0-84af-a0caa6e5f71e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If the topic sentence is unclear, the examples after it will usually explain the idea in simpler words.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cfc237c2-587b-588c-bd06-842633be3202', 'ea1855b5-b5b0-50e0-84af-a0caa6e5f71e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If the topic sentence is unclear, the examples after it will usually explain the idea in simpler words.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если тематическое предложение неясно, примеры после него обычно объясняют мысль более простыми словами."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('44db39db-53ce-5bfb-b0d6-9e8588cb619c', 'ea1855b5-b5b0-50e0-84af-a0caa6e5f71e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"The first text is full of words I have never seen.","translation":"Первый текст полон слов, которых я никогда не видел.","type":"dialogue"},{"character":"Voice 2","text":"Are those words in the questions?","translation":"Эти слова есть в вопросах?","type":"dialogue"},{"options":[{"is_correct":true,"text":"No... so I can skip them and hunt for the topic sentences instead."},{"is_correct":false,"text":"No, so I must learning them tonight."},{"is_correct":false,"text":"The questions are full of my words."}],"text":"What does Voice 1 realise?","type":"choice"}],"title":"The Scary Article"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e3e73319-b577-5568-b843-0002df1701a6', 'ea1855b5-b5b0-50e0-84af-a0caa6e5f71e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“context clue” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Information around a word that helps guess its meaning"},{"id":"D_B","is_correct":false,"text":"A dictionary entry for the word"},{"id":"D_C","is_correct":false,"text":"The translation printed under the text"}],"word":"context clue"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eae1f7ad-9a3e-5d86-82e7-76e6fd1790c5', 'ea1855b5-b5b0-50e0-84af-a0caa6e5f71e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If a word is not in the questions, skip it.","explanation":"The missing word is “skip”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"skip","id":"LW_A","is_correct":true},{"audio_text":"will skip","id":"LW_B","is_correct":false},{"audio_text":"skipped","id":"LW_C","is_correct":false}],"sentence_template":"If a word is not in the questions, ___ it."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8257b491-367c-5ecf-afca-638eaefa9036', 'ea1855b5-b5b0-50e0-84af-a0caa6e5f71e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"topic","explanation":"The complete sentence is “Find the topic sentence of the paragraph.”.","hint_prefix":"to","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Find the ___ sentence of the paragraph."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('53cc14a2-6115-50cf-bd1f-e2966cc002df', 'ea1855b5-b5b0-50e0-84af-a0caa6e5f71e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"unknown word","id":"V1","text":"unknown word"},{"audio_text":"to skip it","id":"V2","text":"to skip it"},{"audio_text":"context clue","id":"V3","text":"context clue"},{"audio_text":"to slow down","id":"V4","text":"to slow down"},{"audio_text":"key sentence","id":"V5","text":"key sentence"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e33c0bd0-10c6-5114-8fb0-222604292e03', 'ea1855b5-b5b0-50e0-84af-a0caa6e5f71e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"This text looks impossible."}],"explanation":"“Stay calm — if you find the topic sentences, half the answers will come from them alone.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Stay calm — if you find the topic sentences, half the answers will come from them alone."},{"id":"C_B","is_correct":false,"text":"I calmed yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The text is impossibling me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ff2da819-fad5-55d1-8473-b7a222419842', 'ea1855b5-b5b0-50e0-84af-a0caa6e5f71e', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('392994a1-4319-522b-863b-8dbe2678f770', 'en', 'gist', 'суть', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eed16872-a7ff-5c24-89fd-19d25850cb76', 'en', 'to skim', 'просмотреть бегло', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6408a2b2-e2d2-569d-8296-6c060ca593ae', 'en', 'heading', 'заголовок', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2e9b4281-e0bb-5c50-93d5-a0935663fe64', 'en', 'first paragraph', 'первый абзац', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6d7379ba-7980-5053-80b5-40b49501e9d9', 'en', 'to summarise', 'резюмировать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cafb8bb-dd4d-5f25-95e1-aa1fc46aca56', 'en', 'distractor', 'отвлекающий вариант', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2b91ba06-12e5-5c5c-92d3-659e62fd7712', 'en', 'to match headings', 'сопоставить заголовки', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f8b5cfcb-39d3-5048-9b3c-260975dbc70a', 'en', 'reading speed', 'скорость чтения', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a4b43ee9-777a-5164-b53b-1e1787c7aa0e', 'en', 'faster', 'быстрее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('75a15e1b-89cb-5bcf-a422-e66c5ee1cb9f', 'en', 'to scan for', 'искать (сканированием)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('93ade28a-08d8-5a80-bacb-2ecdab975741', 'en', 'key information', 'ключевая информация', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4263b1ad-71cb-5bae-a63b-c21c4c972ed9', 'en', 'to time yourself', 'засечь время', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3a2a631c-2116-54a9-ad7e-595424748c15', 'en', 'gradually', 'постепенно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aab82f4c-11ca-5de1-b352-bd73eebc1b55', 'en', 'more texts', 'больше текстов', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('155455b2-5df7-5e46-a72b-ab682fba9c52', 'en', 'unknown word', 'незнакомое слово', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('97f8ed4b-6aff-5723-b8de-88114e23837d', 'en', 'to skip it', 'пропустить его', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7f58d15a-ece7-5dd3-9d93-963e5002ec57', 'en', 'context clue', 'контекстуальная подсказка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('57b24185-90a1-5c4f-b07a-7d24856a629f', 'en', 'to slow down', 'замедлиться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f0025ee3-0e58-5d56-8c43-82bd8e7c982a', 'en', 'key sentence', 'ключевое предложение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5ef3918f-bde7-5fac-94ff-aa5f4f9d3c41', 'en', 'topic sentence', 'тематическое предложение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7db7b0b8-6d59-556e-a323-a487fd6e5a05', 'en', 'calm', 'спокойный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ff2da819-fad5-55d1-8473-b7a222419842', id, '6eeedf88-1831-52dc-b209-b46ab2159e70', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'gist' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ff2da819-fad5-55d1-8473-b7a222419842', id, '6eeedf88-1831-52dc-b209-b46ab2159e70', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to skim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ff2da819-fad5-55d1-8473-b7a222419842', id, '6eeedf88-1831-52dc-b209-b46ab2159e70', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'heading' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ff2da819-fad5-55d1-8473-b7a222419842', id, '6eeedf88-1831-52dc-b209-b46ab2159e70', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'first paragraph' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ff2da819-fad5-55d1-8473-b7a222419842', id, '6eeedf88-1831-52dc-b209-b46ab2159e70', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to summarise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ff2da819-fad5-55d1-8473-b7a222419842', id, '6eeedf88-1831-52dc-b209-b46ab2159e70', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'distractor' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ff2da819-fad5-55d1-8473-b7a222419842', id, '6eeedf88-1831-52dc-b209-b46ab2159e70', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'to match headings' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ff2da819-fad5-55d1-8473-b7a222419842', id, 'b6721933-8306-597d-9143-4e583d34c235', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'reading speed' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ff2da819-fad5-55d1-8473-b7a222419842', id, 'b6721933-8306-597d-9143-4e583d34c235', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'faster' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ff2da819-fad5-55d1-8473-b7a222419842', id, 'b6721933-8306-597d-9143-4e583d34c235', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to scan for' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ff2da819-fad5-55d1-8473-b7a222419842', id, 'b6721933-8306-597d-9143-4e583d34c235', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'key information' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ff2da819-fad5-55d1-8473-b7a222419842', id, 'b6721933-8306-597d-9143-4e583d34c235', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to time yourself' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ff2da819-fad5-55d1-8473-b7a222419842', id, 'b6721933-8306-597d-9143-4e583d34c235', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'gradually' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ff2da819-fad5-55d1-8473-b7a222419842', id, 'b6721933-8306-597d-9143-4e583d34c235', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'more texts' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ff2da819-fad5-55d1-8473-b7a222419842', id, 'ea1855b5-b5b0-50e0-84af-a0caa6e5f71e', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'unknown word' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ff2da819-fad5-55d1-8473-b7a222419842', id, 'ea1855b5-b5b0-50e0-84af-a0caa6e5f71e', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to skip it' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ff2da819-fad5-55d1-8473-b7a222419842', id, 'ea1855b5-b5b0-50e0-84af-a0caa6e5f71e', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'context clue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ff2da819-fad5-55d1-8473-b7a222419842', id, 'ea1855b5-b5b0-50e0-84af-a0caa6e5f71e', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to slow down' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ff2da819-fad5-55d1-8473-b7a222419842', id, 'ea1855b5-b5b0-50e0-84af-a0caa6e5f71e', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'key sentence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ff2da819-fad5-55d1-8473-b7a222419842', id, 'ea1855b5-b5b0-50e0-84af-a0caa6e5f71e', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'topic sentence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ff2da819-fad5-55d1-8473-b7a222419842', id, 'ea1855b5-b5b0-50e0-84af-a0caa6e5f71e', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'calm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
