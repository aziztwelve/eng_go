-- Track: A2_EXAM_READING_FOR_SPECIFIC_INFORMATION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('004053af-6d11-5f99-9988-4542f158c585', 'A2_EXAM_READING_FOR_SPECIFIC_INFORMATION', 'Чтение для поиска конкретной информации', 'Развивайте экзаменационные навыки уровня A2 по теме «Чтение для поиска конкретной информации».', '{"en":"Reading for Specific Information","ru":"Чтение для поиска конкретной информации"}'::jsonb, '{"en":"Develop A2 exam skills for reading for specific information.","ru":"Развивайте экзаменационные навыки уровня A2 по теме «Чтение для поиска конкретной информации»."}'::jsonb, 'en', 'A2', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('972496c6-8862-5380-bdfc-90e9729db3f3', NULL, 'Поиск деталей в тексте', 'Находить конкретную информацию, используя past simple и present perfect.', '{"en":"Hunting for Details","ru":"Поиск деталей в тексте"}'::jsonb, '{"en":"Find specific information using past simple and present perfect.","ru":"Находить конкретную информацию, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da77a965-295b-5e97-9b54-49ac1c7d1fe3', '972496c6-8862-5380-bdfc-90e9729db3f3', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"specific detail","right":"конкретная деталь"},{"id":"P2","left":"date / figure","right":"дата / цифра"},{"id":"P3","left":"to locate","right":"локализовать"},{"id":"P4","left":"proper noun","right":"имя собственное"},{"id":"P5","left":"to underline","right":"подчеркнуть"},{"id":"P6","left":"true / false / not stated","right":"верно / неверно / не указано"},{"id":"P7","left":"line","right":"строка"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8c228306-aa99-5871-add9-aa7bfc45f2d6', '972496c6-8862-5380-bdfc-90e9729db3f3', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The writer has mentioned the price only once.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The writer has mentioned the price only once."},{"id":"Q_B","is_correct":false,"text":"The writer has mentioned it yesterday once."},{"id":"Q_C","is_correct":false,"text":"The writer mention the price already once."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0601dc44-f1b8-5193-bc92-f5dba18a344f', '972496c6-8862-5380-bdfc-90e9729db3f3', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The writer mentioned the deadline in the third line.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Автор упомянул дедлайн в третьей строке.","target_language":"en","word_bank":["in","The","the","line.","mentioned","third","deadline","the","writer","tomorrow","mention","did"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('33eea607-e9bb-5262-bcea-302cae784045', '972496c6-8862-5380-bdfc-90e9729db3f3', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"proper","instruction":"Выберите подходящее слово.","options":["proper","properly","propers"],"sentence_template":"Names of people are ___ nouns — they are easy to find.","translation_hint":"Имена людей — имена собственные, их легко найти."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ccf749a6-4f3c-5622-9f88-6248c278778c', '972496c6-8862-5380-bdfc-90e9729db3f3', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","have","underlined","all","the","figures","in","the","text."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["the","figures","all","the","did","was","underlined","in","text.","I","have"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5f2f011e-0417-57de-9009-414c0b059553', '972496c6-8862-5380-bdfc-90e9729db3f3', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"For true-or-false tasks, the answer is ''not stated'' when the text simply does not mention the fact.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('823eab9a-e5c5-578f-aaf0-8107b587d5ed', '972496c6-8862-5380-bdfc-90e9729db3f3', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"For true-or-false tasks, the answer is ''not stated'' when the text simply does not mention the fact.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"В заданиях верно/неверно ответ «не указано», если текст просто не упоминает факт."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0db7eee3-5957-564f-9c30-3625e0944175', '972496c6-8862-5380-bdfc-90e9729db3f3', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"Statement five says the museum is free. Where is that?","translation":"В утверждении пять сказано, что музей бесплатный. Где это?","type":"dialogue"},{"character":"Voice 2","text":"I have scanned the text — free entry is mentioned, but for students only.","translation":"Я просмотрел текст — бесплатный вход упомянут, но только для студентов.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Then the statement is false in general."},{"is_correct":false,"text":"Then it is true for everyone."},{"is_correct":false,"text":"Then the museum is stating the students."}],"text":"What is the verdict?","type":"choice"}],"title":"The True/False Task"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4cbd1a40-8207-53e8-91c6-44556d07b063', '972496c6-8862-5380-bdfc-90e9729db3f3', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“proper noun” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A name of a person, place or organisation"},{"id":"D_B","is_correct":false,"text":"An action word in the past tense"},{"id":"D_C","is_correct":false,"text":"A number written in figures"}],"word":"proper noun"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8a3c3c7-9e27-562d-9c99-fb3c519977b9', '972496c6-8862-5380-bdfc-90e9729db3f3', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have underlined the key dates in blue.","explanation":"The missing word is “underlined”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"underlined","id":"LW_A","is_correct":true},{"audio_text":"underline","id":"LW_B","is_correct":false},{"audio_text":"underlining","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ the key dates in blue."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('704d30c7-9fe0-52ff-aebc-f437fd05a52e', '972496c6-8862-5380-bdfc-90e9729db3f3', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"line","explanation":"The complete sentence is “The price is in line four.”.","hint_prefix":"li","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The price is in ___ four."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3b3434cf-b0c8-5b35-9f34-14b3ca62e9b6', '972496c6-8862-5380-bdfc-90e9729db3f3', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"specific detail","id":"V1","text":"specific detail"},{"audio_text":"date / figure","id":"V2","text":"date / figure"},{"audio_text":"to locate","id":"V3","text":"to locate"},{"audio_text":"proper noun","id":"V4","text":"proper noun"},{"audio_text":"to underline","id":"V5","text":"to underline"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d266cc6a-2580-5898-baf0-218a31d87226', '972496c6-8862-5380-bdfc-90e9729db3f3', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"''Not stated'' or ''false'' — I never know."}],"explanation":"“Ask: does the text say the opposite? If not, and it is silent — if the text is silent, it is not stated.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Ask: does the text say the opposite? If not, and it is silent — if the text is silent, it is not stated."},{"id":"C_B","is_correct":false,"text":"I knew it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The statements are falsing me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('004053af-6d11-5f99-9988-4542f158c585', '972496c6-8862-5380-bdfc-90e9729db3f3', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b9e29a77-49a0-5a5b-a502-c36ba77b3e99', NULL, 'Быстрый поиск к следующей части', 'Сравнивать стратегии поиска и планировать тренировку.', '{"en":"Fast Search for the Next Part","ru":"Быстрый поиск к следующей части"}'::jsonb, '{"en":"Compare search strategies and plan practice.","ru":"Сравнивать стратегии поиска и планировать тренировку."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e8823eb-6131-5660-8c21-fee2f15f371b', 'b9e29a77-49a0-5a5b-a502-c36ba77b3e99', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"keyword from the question","right":"ключевое слово из вопроса"},{"id":"P2","left":"more focused","right":"сфокусированнее"},{"id":"P3","left":"synonym","right":"синоним"},{"id":"P4","left":"to paraphrase","right":"перефразировать"},{"id":"P5","left":"to scan the lines","right":"просканировать строки"},{"id":"P6","left":"question order","right":"порядок вопросов"},{"id":"P7","left":"usually","right":"обычно"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0651e8ab-ece6-56e3-a196-556db34f2ff5', 'b9e29a77-49a0-5a5b-a502-c36ba77b3e99', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Reading with a question in mind is more focused than reading first.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Reading with a question in mind is more focused than reading first."},{"id":"Q_B","is_correct":false,"text":"Reading with questions is focusser than first."},{"id":"Q_C","is_correct":false,"text":"Questions are most focused than reading."}],"question":"Which sentence compares two search ways correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9d2becf5-228b-5ef4-8060-3e0742cac4ca', 'b9e29a77-49a0-5a5b-a502-c36ba77b3e99', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I am going to look for synonyms rather than exact words.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я собираюсь искать синонимы, а не точные слова.","target_language":"en","word_bank":["to","exact","am","I","than","yesterday","look","rather","going","synonyms","looked","words.","for","did"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f789663f-520e-5b65-90a3-9b3bea781406', 'b9e29a77-49a0-5a5b-a502-c36ba77b3e99', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"usually","instruction":"Выберите подходящее слово.","options":["usually","usual","usuallys"],"sentence_template":"The questions ___ follow the order of the text.","translation_hint":"Вопросы обычно следуют порядку текста."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('617d4220-fc23-5d05-83be-836091f6dffc', 'b9e29a77-49a0-5a5b-a502-c36ba77b3e99', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","exam","paraphrases","the","text","in","the","questions."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["the","The","exam","was","paraphrases","did","in","questions.","text","the"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3975542-2a53-5726-9256-7f0c5d3b4c44', 'b9e29a77-49a0-5a5b-a502-c36ba77b3e99', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you take a keyword from the question and hunt its synonyms, your eyes will land on the answer line immediately.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c80929b6-2745-5498-ac40-1c9a7d979042', 'b9e29a77-49a0-5a5b-a502-c36ba77b3e99', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you take a keyword from the question and hunt its synonyms, your eyes will land on the answer line immediately.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если взять ключевое слово из вопроса и искать его синонимы, взгляд сразу попадёт на строку с ответом."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('984ad8e3-4405-5a9c-ad26-e6bc6f45f047', 'b9e29a77-49a0-5a5b-a502-c36ba77b3e99', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"The question says ''affordable'', but this word is not in the text at all!","translation":"В вопросе ''affordable'', но этого слова в тексте вообще нет!","type":"dialogue"},{"character":"Voice 2","text":"The text paraphrases it — look for ''cheap'' or ''low prices''.","translation":"Текст перефразирует — ищи ''cheap'' или ''low prices''.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes! Line six says ''lower prices than anywhere else''."},{"is_correct":false,"text":"No, line six says ''affordable'' twice."},{"is_correct":false,"text":"The question is affording the text."}],"text":"What does Voice 1 find?","type":"choice"}],"title":"The Paraphrased Answer"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('11039221-a005-58f1-affe-a51eaf6eab9d', 'b9e29a77-49a0-5a5b-a502-c36ba77b3e99', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“synonym” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A word with a similar meaning to another"},{"id":"D_B","is_correct":false,"text":"A word spelled the same but different"},{"id":"D_C","is_correct":false,"text":"The opposite word in meaning"}],"word":"synonym"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4956a855-2b93-5f99-ae53-b08775b5b160', 'b9e29a77-49a0-5a5b-a502-c36ba77b3e99', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to underline every keyword before scanning.","explanation":"The missing word is “underline”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"underline","id":"LW_A","is_correct":true},{"audio_text":"underlined","id":"LW_B","is_correct":false},{"audio_text":"underlining","id":"LW_C","is_correct":false}],"sentence_template":"I am going to ___ every keyword before scanning."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a7abbb5-5d79-5a80-8ae2-17547460eae6', 'b9e29a77-49a0-5a5b-a502-c36ba77b3e99', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"more focused","explanation":"The complete sentence is “Question-first reading is more focused .”.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Question-first reading is ___ ."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0d9a83ad-dbfa-5196-ad0a-cac6cac7d652', 'b9e29a77-49a0-5a5b-a502-c36ba77b3e99', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"keyword from the question","id":"V1","text":"keyword from the question"},{"audio_text":"more focused","id":"V2","text":"more focused"},{"audio_text":"synonym","id":"V3","text":"synonym"},{"audio_text":"to paraphrase","id":"V4","text":"to paraphrase"},{"audio_text":"to scan the lines","id":"V5","text":"to scan the lines"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b6e34321-ebb3-50fe-991c-f21c37e72d43', 'b9e29a77-49a0-5a5b-a502-c36ba77b3e99', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"How do you find answers so fast?"}],"explanation":"“Keywords and their synonyms — if you hunt both, the answer line will appear in seconds.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Keywords and their synonyms — if you hunt both, the answer line will appear in seconds."},{"id":"C_B","is_correct":false,"text":"I hunted it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The answers are keying me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('004053af-6d11-5f99-9988-4542f158c585', 'b9e29a77-49a0-5a5b-a502-c36ba77b3e99', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('bd01cd96-6866-5662-b566-49ffd228ff4e', NULL, 'Если детали путаются', 'Разобрать ошибки поиска, используя should и первое условное.', '{"en":"If the Details Get Mixed Up","ru":"Если детали путаются"}'::jsonb, '{"en":"Analyse search mistakes using should and the first conditional.","ru":"Разобрать ошибки поиска, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a86a8fbc-2646-5bad-bdfe-fb696cb7e1f7', 'bd01cd96-6866-5662-b566-49ffd228ff4e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to mix up","right":"перепутать"},{"id":"P2","left":"similar option","right":"похожий вариант"},{"id":"P3","left":"careless mistake","right":"невнимательная ошибка"},{"id":"P4","left":"to verify","right":"проверить"},{"id":"P5","left":"evidence line","right":"строка-доказательство"},{"id":"P6","left":"to mark","right":"отметить"},{"id":"P7","left":"rush","right":"спешка"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eda904cc-2ed3-564a-80e3-2f51d4eae5cf', 'bd01cd96-6866-5662-b566-49ffd228ff4e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should mark the line that proves your answer.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should mark the line that proves your answer."},{"id":"Q_B","is_correct":false,"text":"You should to mark it yesterday."},{"id":"Q_C","is_correct":false,"text":"You must marking lines last task."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bdb81ac0-4e9f-5eee-8833-495ff0b08015', 'bd01cd96-6866-5662-b566-49ffd228ff4e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you mix up similar options, you will lose easy points.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если перепутаешь похожие варианты, потеряешь верные баллы.","target_language":"en","word_bank":["mixed","options,","If","easy","you","you","mix","points.","did","up","similar","will","yesterday","lose"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fdf74717-d334-50cd-aeb0-b17b52bfabb8', 'bd01cd96-6866-5662-b566-49ffd228ff4e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"verify","instruction":"Выберите подходящее слово.","options":["verify","will verify","verified"],"sentence_template":"If you choose an option, ___ it in the text.","translation_hint":"Если выбрал вариант, проверь его по тексту."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('304ba71e-5189-5bcc-bb76-2aad65247f47', 'bd01cd96-6866-5662-b566-49ffd228ff4e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Rush","is","the","main","enemy","in","part","two."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["Rush","went","in","main","two.","enemy","is","the","part","mustn''t"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4d1de008-bf4e-5a3e-b3d8-42058a31bd03', 'bd01cd96-6866-5662-b566-49ffd228ff4e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you write the evidence line number next to each answer, checking will take one minute at the end.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9c8df91b-d9e4-5e5a-8f03-b43324601a02', 'bd01cd96-6866-5662-b566-49ffd228ff4e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you write the evidence line number next to each answer, checking will take one minute at the end.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если записывать номер строки-доказательства у каждого ответа, проверка займёт одну минуту в конце."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('af54f8a3-2156-5f76-804d-68c6a69d948e', 'bd01cd96-6866-5662-b566-49ffd228ff4e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"I have lost two points because the options were almost identical.","translation":"Я потерял два балла, потому что варианты были почти одинаковыми.","type":"dialogue"},{"character":"Voice 2","text":"Almost — so one word differs. Did you compare them word by word?","translation":"Почти — значит, различается одно слово. Ты сравнил их слово за словом?","type":"dialogue"},{"options":[{"is_correct":true,"text":"No — next time I will find the word that differs."},{"is_correct":false,"text":"No, I will compared them yesterday."},{"is_correct":false,"text":"The options are losing my points themselves."}],"text":"What is the lesson?","type":"choice"}],"title":"The Careless Point"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('38db5e48-c8ca-5bb3-b6e8-f1d17e4a27ea', 'bd01cd96-6866-5662-b566-49ffd228ff4e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“careless mistake” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"An error made by rushing, not by not knowing"},{"id":"D_B","is_correct":false,"text":"A mistake caused by an unknown grammar rule"},{"id":"D_C","is_correct":false,"text":"A question you left unanswered"}],"word":"careless mistake"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('266b19a9-70fa-5dc9-a43a-a8329189fb01', 'bd01cd96-6866-5662-b566-49ffd228ff4e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If two options look the same, compare them word by word.","explanation":"The missing word is “compare”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"compare","id":"LW_A","is_correct":true},{"audio_text":"will compare","id":"LW_B","is_correct":false},{"audio_text":"compared","id":"LW_C","is_correct":false}],"sentence_template":"If two options look the same, ___ them word by word."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4eebd85e-57b1-5adb-88d0-9c4a0f31e86f', 'bd01cd96-6866-5662-b566-49ffd228ff4e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"rush","explanation":"The complete sentence is “Do not rush — reread the line.”.","hint_prefix":"ru","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Do not ___ — reread the line."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b8bcc61-4822-51ab-bfa2-bef41c22772b', 'bd01cd96-6866-5662-b566-49ffd228ff4e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to mix up","id":"V1","text":"to mix up"},{"audio_text":"similar option","id":"V2","text":"similar option"},{"audio_text":"careless mistake","id":"V3","text":"careless mistake"},{"audio_text":"to verify","id":"V4","text":"to verify"},{"audio_text":"evidence line","id":"V5","text":"evidence line"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2543ac0a-a0d6-5941-badd-d1238a1366a7', 'bd01cd96-6866-5662-b566-49ffd228ff4e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"I keep confusing dates in the text."}],"explanation":"“Circle them — if every date has a mark, you will stop mixing them up.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Circle them — if every date has a mark, you will stop mixing them up."},{"id":"C_B","is_correct":false,"text":"I circled them yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The dates are confusing my circles."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('004053af-6d11-5f99-9988-4542f158c585', 'bd01cd96-6866-5662-b566-49ffd228ff4e', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d6a327d9-24d5-5a5a-a935-fa7a98777481', 'en', 'specific detail', 'конкретная деталь', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f2037b36-3832-5be6-9fd0-4d54a445b108', 'en', 'date / figure', 'дата / цифра', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ed2a739e-6b5a-5140-9692-8fcbba88cfd9', 'en', 'to locate', 'локализовать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6d826e38-abd3-5e44-9e26-1b83cc52b8ad', 'en', 'proper noun', 'имя собственное', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d1e23ee5-7053-5f4a-9b49-3f39c583fc94', 'en', 'to underline', 'подчеркнуть', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d58aad3d-e398-50a7-9a2f-8f2188e1cffd', 'en', 'true / false / not stated', 'верно / неверно / не указано', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c4b5e734-55c5-5d69-a97c-ce3efd2f78e5', 'en', 'line', 'строка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('05c91b0c-f8bb-5f41-bf1c-c98c9ba5c8af', 'en', 'keyword from the question', 'ключевое слово из вопроса', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b09dbde0-06a4-5406-ad84-c14014ced7c4', 'en', 'more focused', 'сфокусированнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('286ea26e-d520-5d22-b826-47a21c50fbb6', 'en', 'synonym', 'синоним', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a9ebabed-e590-50b6-b7c9-62774f4406d1', 'en', 'to paraphrase', 'перефразировать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e0201a3d-5f81-55a7-92ba-52d0490c6f2b', 'en', 'to scan the lines', 'просканировать строки', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9281cb33-f8a5-5fc1-b746-db71743f4ce9', 'en', 'question order', 'порядок вопросов', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3b152ac3-ded9-5980-870a-aff7b692f7d9', 'en', 'usually', 'обычно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3cf01e99-18d4-552f-afab-cc2b37274532', 'en', 'to mix up', 'перепутать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('50eb7d0c-6ef9-57be-9224-ef7ed5dac910', 'en', 'similar option', 'похожий вариант', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('91949133-a2d4-5d7c-962f-91fe7ccca353', 'en', 'careless mistake', 'невнимательная ошибка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ccb5065d-79dd-5106-aa9f-17f506c8b15a', 'en', 'to verify', 'проверить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ecc1f00-f35f-53b9-a41a-b11a53d6525a', 'en', 'evidence line', 'строка-доказательство', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('49eba5e2-2412-51c3-b65b-000187e9e106', 'en', 'to mark', 'отметить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1af24c02-91f2-5fa1-9068-30f0f8765824', 'en', 'rush', 'спешка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '004053af-6d11-5f99-9988-4542f158c585', id, '972496c6-8862-5380-bdfc-90e9729db3f3', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'specific detail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '004053af-6d11-5f99-9988-4542f158c585', id, '972496c6-8862-5380-bdfc-90e9729db3f3', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'date / figure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '004053af-6d11-5f99-9988-4542f158c585', id, '972496c6-8862-5380-bdfc-90e9729db3f3', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to locate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '004053af-6d11-5f99-9988-4542f158c585', id, '972496c6-8862-5380-bdfc-90e9729db3f3', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'proper noun' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '004053af-6d11-5f99-9988-4542f158c585', id, '972496c6-8862-5380-bdfc-90e9729db3f3', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to underline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '004053af-6d11-5f99-9988-4542f158c585', id, '972496c6-8862-5380-bdfc-90e9729db3f3', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'true / false / not stated' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '004053af-6d11-5f99-9988-4542f158c585', id, '972496c6-8862-5380-bdfc-90e9729db3f3', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'line' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '004053af-6d11-5f99-9988-4542f158c585', id, 'b9e29a77-49a0-5a5b-a502-c36ba77b3e99', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'keyword from the question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '004053af-6d11-5f99-9988-4542f158c585', id, 'b9e29a77-49a0-5a5b-a502-c36ba77b3e99', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'more focused' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '004053af-6d11-5f99-9988-4542f158c585', id, 'b9e29a77-49a0-5a5b-a502-c36ba77b3e99', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'synonym' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '004053af-6d11-5f99-9988-4542f158c585', id, 'b9e29a77-49a0-5a5b-a502-c36ba77b3e99', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to paraphrase' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '004053af-6d11-5f99-9988-4542f158c585', id, 'b9e29a77-49a0-5a5b-a502-c36ba77b3e99', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to scan the lines' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '004053af-6d11-5f99-9988-4542f158c585', id, 'b9e29a77-49a0-5a5b-a502-c36ba77b3e99', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'question order' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '004053af-6d11-5f99-9988-4542f158c585', id, 'b9e29a77-49a0-5a5b-a502-c36ba77b3e99', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'usually' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '004053af-6d11-5f99-9988-4542f158c585', id, 'bd01cd96-6866-5662-b566-49ffd228ff4e', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to mix up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '004053af-6d11-5f99-9988-4542f158c585', id, 'bd01cd96-6866-5662-b566-49ffd228ff4e', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'similar option' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '004053af-6d11-5f99-9988-4542f158c585', id, 'bd01cd96-6866-5662-b566-49ffd228ff4e', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'careless mistake' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '004053af-6d11-5f99-9988-4542f158c585', id, 'bd01cd96-6866-5662-b566-49ffd228ff4e', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to verify' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '004053af-6d11-5f99-9988-4542f158c585', id, 'bd01cd96-6866-5662-b566-49ffd228ff4e', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence line' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '004053af-6d11-5f99-9988-4542f158c585', id, 'bd01cd96-6866-5662-b566-49ffd228ff4e', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to mark' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '004053af-6d11-5f99-9988-4542f158c585', id, 'bd01cd96-6866-5662-b566-49ffd228ff4e', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'rush' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
