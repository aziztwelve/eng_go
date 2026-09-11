-- Track: A2_STUDY_DICTIONARIES_AND_ONLINE_RESOURCES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('6b5ef275-b673-5b40-b75e-f6545a35e4ce', 'A2_STUDY_DICTIONARIES_AND_ONLINE_RESOURCES', 'Словари и онлайн-ресурсы', 'Развивайте учебные навыки уровня A2 по теме «Словари и онлайн-ресурсы».', '{"en":"Dictionaries and Online Resources","ru":"Словари и онлайн-ресурсы"}'::jsonb, '{"en":"Develop A2 study skills for dictionaries and online resources.","ru":"Развивайте учебные навыки уровня A2 по теме «Словари и онлайн-ресурсы»."}'::jsonb, 'en', 'A2', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('79402088-3722-5f44-b31e-34d17fed5cba', NULL, 'Как я искал слово', 'Рассказать о работе со словарями, используя past simple и present perfect.', '{"en":"How I Looked Up a Word","ru":"Как я искал слово"}'::jsonb, '{"en":"Talk about using dictionaries using past simple and present perfect.","ru":"Рассказать о работе со словарями, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc9b3e96-99b6-5901-bd22-c82b5473e662', '79402088-3722-5f44-b31e-34d17fed5cba', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to look up","right":"посмотреть (в словаре)"},{"id":"P2","left":"definition","right":"определение"},{"id":"P3","left":"example sentence","right":"пример употребления"},{"id":"P4","left":"pronunciation","right":"произношение"},{"id":"P5","left":"bilingual dictionary","right":"двуязычный словарь"},{"id":"P6","left":"to add to favourites","right":"добавить в избранное"},{"id":"P7","left":"offline mode","right":"офлайн-режим"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d3aecae-e65b-5d28-8a6d-556d21e489a0', '79402088-3722-5f44-b31e-34d17fed5cba', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I have added twenty words to my favourites this week.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I have added twenty words to my favourites this week."},{"id":"Q_B","is_correct":false,"text":"I have added twenty words last week."},{"id":"Q_C","is_correct":false,"text":"I add twenty words already this week."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('810db47a-b1bc-5cdd-b6e6-cd827817fcee', '79402088-3722-5f44-b31e-34d17fed5cba', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I looked up the definition and have saved the example sentences to my favourites.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я посмотрел определение и сохранил примеры употребления в избранное.","target_language":"en","word_bank":["saved","look","have","example","definition","the","my","I","tomorrow","looked","and","to","up","favourites.","did","sentences","the"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ed4a6fdd-afd3-5f61-99f0-ad21fe8b1f1e', '79402088-3722-5f44-b31e-34d17fed5cba', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"worked","instruction":"Выберите подходящее слово.","options":["worked","has work","working"],"sentence_template":"Yesterday the app ___ without internet, in offline mode.","translation_hint":"Вчера приложение работало без интернета, в офлайн-режиме."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('379a249b-95cc-5472-88ec-d19851b2041b', '79402088-3722-5f44-b31e-34d17fed5cba', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["She","has","checked","the","pronunciation","of","all","new","words."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["new","words.","pronunciation","of","the","was","has","She","checked","did","all"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d1ede9a0-ca4e-5b64-bcb9-aad076983469', '79402088-3722-5f44-b31e-34d17fed5cba', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The dictionary has shown three different meanings, so I have read the example sentences to choose the right one.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ab0b91f-fded-528d-a6a6-eb37866a7e9e', '79402088-3722-5f44-b31e-34d17fed5cba', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The dictionary has shown three different meanings, so I have read the example sentences to choose the right one.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Словарь показал три разных значения, поэтому я прочитал примеры, чтобы выбрать верное."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71bd6f91-cc9b-5ec4-b344-cac14c7aa571', '79402088-3722-5f44-b31e-34d17fed5cba', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"What does ''address'' mean here — a place or a speech?","translation":"Что значит ''address'' здесь — место или речь?","type":"dialogue"},{"character":"Voice 2","text":"Let me check... The dictionary has two definitions for it.","translation":"Сейчас проверю... В словаре два определения.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Read the example sentences — they show which meaning fits."},{"is_correct":false,"text":"Read the examples tomorrow yesterday."},{"is_correct":false,"text":"Is the word meaning the dictionary?"}],"text":"What does Voice 2 advise?","type":"choice"}],"title":"The Confusing Word"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('015e5aa8-57e5-5af4-87ba-24b7804031d5', '79402088-3722-5f44-b31e-34d17fed5cba', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“definition” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"The explanation of what a word means"},{"id":"D_B","is_correct":false,"text":"The translation of a word into your language"},{"id":"D_C","is_correct":false,"text":"The part of speech of a word"}],"word":"definition"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3bffe7ea-957c-5249-b0b5-167dcddc886d', '79402088-3722-5f44-b31e-34d17fed5cba', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have looked up five words today.","explanation":"The missing word is “looked”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"looked","id":"LW_A","is_correct":true},{"audio_text":"look","id":"LW_B","is_correct":false},{"audio_text":"looking","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ up five words today."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a422f1a9-d6e1-504d-9951-88a204b55475', '79402088-3722-5f44-b31e-34d17fed5cba', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"pronunciation","explanation":"The complete sentence is “Check the pronunciation in the audio dictionary.”.","hint_prefix":"pro","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Check the ___ in the audio dictionary."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b803ef6e-d239-5896-8347-6ac5e4a6a672', '79402088-3722-5f44-b31e-34d17fed5cba', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to look up","id":"V1","text":"to look up"},{"audio_text":"definition","id":"V2","text":"definition"},{"audio_text":"example sentence","id":"V3","text":"example sentence"},{"audio_text":"pronunciation","id":"V4","text":"pronunciation"},{"audio_text":"bilingual dictionary","id":"V5","text":"bilingual dictionary"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('58402474-3b1e-50ef-b55e-ca0f1d9148d9', '79402088-3722-5f44-b31e-34d17fed5cba', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Paper dictionary or an app?"}],"explanation":"“The app — I have used it daily for a year, and the offline mode always works.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"The app — I have used it daily for a year, and the offline mode always works."},{"id":"C_B","is_correct":false,"text":"I used it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The dictionary is apping me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6b5ef275-b673-5b40-b75e-f6545a35e4ce', '79402088-3722-5f44-b31e-34d17fed5cba', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0629b80e-19b6-57e2-9374-218c98d73463', NULL, 'Выбираем инструменты', 'Сравнить учебные ресурсы и спланировать работу с ними.', '{"en":"Choosing the Tools","ru":"Выбираем инструменты"}'::jsonb, '{"en":"Compare study resources and plan how to use them.","ru":"Сравнить учебные ресурсы и спланировать работу с ними."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5887e928-0ad4-51b2-b0c2-75147a3f8c73', '0629b80e-19b6-57e2-9374-218c98d73463', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"flashcard app","right":"приложение с карточками"},{"id":"P2","left":"more convenient","right":"удобнее"},{"id":"P3","left":"audio course","right":"аудиокурс"},{"id":"P4","left":"grammar reference","right":"грамматический справочник"},{"id":"P5","left":"to subscribe to a channel","right":"подписаться на канал"},{"id":"P6","left":"ad-free","right":"без рекламы"},{"id":"P7","left":"database","right":"база данных"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e3c5a1f-987f-5cae-b62e-16c70436bfe3', '0629b80e-19b6-57e2-9374-218c98d73463', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “A flashcard app is more convenient than paper cards on a bus.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"A flashcard app is more convenient than paper cards on a bus."},{"id":"Q_B","is_correct":false,"text":"An app is convenienter than paper."},{"id":"Q_C","is_correct":false,"text":"An app is most convenient than cards."}],"question":"Which sentence compares two resources correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f664c37f-fb87-5376-b030-0df55da67776', '0629b80e-19b6-57e2-9374-218c98d73463', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I am going to subscribe to a grammar channel — it has a full reference there.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я собираюсь подписаться на канал про грамматику — там есть справочник.","target_language":"en","word_bank":["a","reference","has","to","to","grammar","channel","I","did","going","there.","subscribed","subscribe","am","—","it","full","a","yesterday"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('32e96cd3-c4bb-583f-b941-f62b7607c30a', '0629b80e-19b6-57e2-9374-218c98d73463', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"less","instruction":"Выберите подходящее слово.","options":["less","least","little"],"sentence_template":"The ad-free version is ___ distracting.","translation_hint":"Версия без рекламы меньше отвлекает."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6cdacce1-4f1a-5cfb-8214-50aaa0fb8d9a', '0629b80e-19b6-57e2-9374-218c98d73463', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","going","to","use","the","university","database","for","the","paper."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["We","database","paper.","are","the","to","did","the","use","going","was","university","for"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cbcfe178-a016-53ac-83ec-f907c06869c2', '0629b80e-19b6-57e2-9374-218c98d73463', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you use one app for new words and one for grammar, you will not get lost between ten tools.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('97f4898f-4bd9-5d8d-bc26-54762837538e', '0629b80e-19b6-57e2-9374-218c98d73463', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you use one app for new words and one for grammar, you will not get lost between ten tools.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если пользоваться одним приложением для новых слов и одним для грамматики, не запутаешься между десятью инструментами."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8f393202-86bf-534e-8ea1-5132f9a55a0b', '0629b80e-19b6-57e2-9374-218c98d73463', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"I have installed six study apps this month.","translation":"В этом месяце я установил шесть учебных приложений.","type":"dialogue"},{"character":"Voice 2","text":"Six? Do you actually open them all?","translation":"Шесть? Ты правда открываешь их все?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Keep two — the ones you open daily without reminders."},{"is_correct":false,"text":"Keep them all yesterday tomorrow."},{"is_correct":false,"text":"The apps are installing you daily."}],"text":"What does Voice 2 advise?","type":"choice"}],"title":"Too Many Apps"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('23d892de-aa0a-5e52-85f3-3c9f9ff7e2f4', '0629b80e-19b6-57e2-9374-218c98d73463', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“grammar reference” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A book or page that explains grammar rules"},{"id":"D_B","is_correct":false,"text":"A novel you read for pleasure"},{"id":"D_C","is_correct":false,"text":"A dictionary with word translations"}],"word":"grammar reference"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e037bf9b-94d4-5b3d-8aa1-6fd8609fa987', '0629b80e-19b6-57e2-9374-218c98d73463', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to subscribe to the new channel.","explanation":"The missing word is “subscribe”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"subscribe","id":"LW_A","is_correct":true},{"audio_text":"subscribed","id":"LW_B","is_correct":false},{"audio_text":"subscribing","id":"LW_C","is_correct":false}],"sentence_template":"I am going to ___ to the new channel."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18943fc0-4cd6-5123-bd85-643b3f712d8f', '0629b80e-19b6-57e2-9374-218c98d73463', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"better","explanation":"The complete sentence is “The audio course is better for listening than videos.”.","hint_prefix":"be","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The audio course is ___ for listening than videos."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b812908c-fa95-5d9e-9d2e-c8bc1bf381a5', '0629b80e-19b6-57e2-9374-218c98d73463', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"flashcard app","id":"V1","text":"flashcard app"},{"audio_text":"more convenient","id":"V2","text":"more convenient"},{"audio_text":"audio course","id":"V3","text":"audio course"},{"audio_text":"grammar reference","id":"V4","text":"grammar reference"},{"audio_text":"to subscribe to a channel","id":"V5","text":"to subscribe to a channel"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08323d02-6540-5b00-a4d9-de77f7b66469', '0629b80e-19b6-57e2-9374-218c98d73463', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Which dictionary should I install?"}],"explanation":"“The blue one — if you use the offline mode, it works even in the metro.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"The blue one — if you use the offline mode, it works even in the metro."},{"id":"C_B","is_correct":false,"text":"I installed it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The dictionary is installing me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6b5ef275-b673-5b40-b75e-f6545a35e4ce', '0629b80e-19b6-57e2-9374-218c98d73463', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9955739b-83b9-55b8-974e-cbb7d0be843e', NULL, 'Если ресурс не помогает', 'Дать советы о выборе ресурсов, используя should и первое условное.', '{"en":"If the Resource Does Not Help","ru":"Если ресурс не помогает"}'::jsonb, '{"en":"Give resource-choice advice using should and the first conditional.","ru":"Дать советы о выборе ресурсов, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f2afe90-2a52-540d-bbf8-dbb6a5e8c10d', '9955739b-83b9-55b8-974e-cbb7d0be843e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to waste time on","right":"тратить время на"},{"id":"P2","left":"useless","right":"бесполезный"},{"id":"P3","left":"to check the source","right":"проверить источник"},{"id":"P4","left":"reliable","right":"надёжный"},{"id":"P5","left":"outdated","right":"устаревший"},{"id":"P6","left":"to switch to","right":"переключиться на"},{"id":"P7","left":"review","right":"отзыв"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8138b91f-e63b-5cb8-b23f-35b7ee3354b0', '9955739b-83b9-55b8-974e-cbb7d0be843e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should check whether the source is up to date.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should check whether the source is up to date."},{"id":"Q_B","is_correct":false,"text":"You should to check it yesterday."},{"id":"Q_C","is_correct":false,"text":"You must checking sources last time."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('69627850-5905-5a48-96b8-2c7e2913d122', '9955739b-83b9-55b8-974e-cbb7d0be843e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If the resource is outdated, you will learn incorrect rules.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если ресурс устарел, ты выучишь неправильные правила.","target_language":"en","word_bank":["If","incorrect","you","did","resource","outdated,","is","learn","the","was","rules.","will","yesterday"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1556283b-22b5-5bac-9e9e-4b9f38a9cc62', '9955739b-83b9-55b8-974e-cbb7d0be843e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"switch","instruction":"Выберите подходящее слово.","options":["switch","will switch","switched"],"sentence_template":"If an explanation confuses you, ___ to another source.","translation_hint":"Если объяснение запутывает, переключись на другой источник."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('93c68cf6-9f93-598c-8681-ea8d26b8b1fd', '9955739b-83b9-55b8-974e-cbb7d0be843e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","read","the","reviews","before","paying."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["You","the","should","before","went","read","reviews","paying.","mustn''t"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b039c52-9397-5277-bf7a-52bf223faf9e', '9955739b-83b9-55b8-974e-cbb7d0be843e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If a video has no examples, you should find a different one — real sentences make rules clear.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16c9b2c7-8a4e-56e8-b770-3a46f8295075', '9955739b-83b9-55b8-974e-cbb7d0be843e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If a video has no examples, you should find a different one — real sentences make rules clear.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если в видео нет примеров, стоит найти другое — реальные предложения делают правила понятными."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc742862-aed5-5ec1-aaaa-10b5563d70b7', '9955739b-83b9-55b8-974e-cbb7d0be843e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"This grammar page has explained the rule in a very strange way.","translation":"Эта страница объяснила правило очень странно.","type":"dialogue"},{"character":"Voice 2","text":"Is it a reliable site? When was it updated?","translation":"Это надёжный сайт? Когда его обновляли?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Last updated in 2015 — I should find something newer."},{"is_correct":false,"text":"It updated tomorrow yesterday."},{"is_correct":false,"text":"The rule is confusing the site itself."}],"text":"What does Voice 1 discover?","type":"choice"}],"title":"The Confusing Explanation"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9693274d-df0e-5e76-a8d8-bed66a53a467', '9955739b-83b9-55b8-974e-cbb7d0be843e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“outdated” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Old and no longer correct"},{"id":"D_B","is_correct":false,"text":"Fresh and checked this year"},{"id":"D_C","is_correct":false,"text":"Written specially for your textbook"}],"word":"outdated"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('855487f6-8881-562c-b08c-1fe95f684b2d', '9955739b-83b9-55b8-974e-cbb7d0be843e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If the reviews are bad, switch to another app.","explanation":"The missing word is “switch”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"switch","id":"LW_A","is_correct":true},{"audio_text":"will switch","id":"LW_B","is_correct":false},{"audio_text":"switched","id":"LW_C","is_correct":false}],"sentence_template":"If the reviews are bad, ___ to another app."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a76ebb8d-73f6-50ec-8b79-e02e2534d88d', '9955739b-83b9-55b8-974e-cbb7d0be843e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"waste","explanation":"The complete sentence is “Do not waste time on useless drills.”.","hint_prefix":"wa","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Do not ___ time on useless drills."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('30748215-1359-520c-a0f6-09a5fb683ea6', '9955739b-83b9-55b8-974e-cbb7d0be843e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to waste time on","id":"V1","text":"to waste time on"},{"audio_text":"useless","id":"V2","text":"useless"},{"audio_text":"to check the source","id":"V3","text":"to check the source"},{"audio_text":"reliable","id":"V4","text":"reliable"},{"audio_text":"outdated","id":"V5","text":"outdated"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8a4aad17-f572-524c-ba38-be23775a2d2b', '9955739b-83b9-55b8-974e-cbb7d0be843e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"This course promises fluent English in a month."}],"explanation":"“Be careful — if a promise sounds magical, the course is usually useless.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Be careful — if a promise sounds magical, the course is usually useless."},{"id":"C_B","is_correct":false,"text":"I bought it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The month is fluenting me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6b5ef275-b673-5b40-b75e-f6545a35e4ce', '9955739b-83b9-55b8-974e-cbb7d0be843e', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0ed949c-3d7a-5b9a-a210-5741cea0d60b', 'en', 'to look up', 'посмотреть (в словаре)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('90801f4e-d5e3-5db8-b218-1afb16a14763', 'en', 'definition', 'определение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ba2f9a12-ea11-5c7c-9e80-b545e130c59c', 'en', 'example sentence', 'пример употребления', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('07a87e05-7912-5d74-9680-f1cf849e449d', 'en', 'pronunciation', 'произношение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d44f4a43-5001-506a-b887-9d97257d56e0', 'en', 'bilingual dictionary', 'двуязычный словарь', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f922ab3d-38b8-5d6a-9dbb-a7ba608f517c', 'en', 'to add to favourites', 'добавить в избранное', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fb17e343-d7cf-5030-8d10-50417333b9bf', 'en', 'offline mode', 'офлайн-режим', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('810f7d59-5b70-51e5-af67-ba868310d7b6', 'en', 'flashcard app', 'приложение с карточками', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d7bac6b-efc5-5994-a19a-98b6367b75f7', 'en', 'more convenient', 'удобнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5dcc45a8-edb1-5763-8761-8a26e6db322e', 'en', 'audio course', 'аудиокурс', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2a1548e7-bd08-5123-9fc5-936c5d1de0b7', 'en', 'grammar reference', 'грамматический справочник', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3d646b1d-de73-574f-80e0-f2bc654e6b29', 'en', 'to subscribe to a channel', 'подписаться на канал', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('df330073-3951-5db1-92ee-602e725112d4', 'en', 'ad-free', 'без рекламы', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('57b53fec-a3c6-55d1-aeee-5bd6f0522ffd', 'en', 'database', 'база данных', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fa227974-f2a7-5b86-bf94-260291b1de9b', 'en', 'to waste time on', 'тратить время на', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e31c5330-cb6c-54fb-9f06-0e95146ff49c', 'en', 'useless', 'бесполезный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b9cd58e3-52cf-57f5-b30e-5ea5ee316898', 'en', 'to check the source', 'проверить источник', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ec0c06cd-69c7-556d-b9d8-5e725183415a', 'en', 'reliable', 'надёжный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9c818781-a2e2-5cfe-9465-41f9daae23b2', 'en', 'outdated', 'устаревший', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1f9bca27-0391-5b8b-a634-daf6abffe507', 'en', 'to switch to', 'переключиться на', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d24d23d-005c-50bd-88d4-197138ab6d8e', 'en', 'review', 'отзыв', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6b5ef275-b673-5b40-b75e-f6545a35e4ce', id, '79402088-3722-5f44-b31e-34d17fed5cba', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'to look up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6b5ef275-b673-5b40-b75e-f6545a35e4ce', id, '79402088-3722-5f44-b31e-34d17fed5cba', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'definition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6b5ef275-b673-5b40-b75e-f6545a35e4ce', id, '79402088-3722-5f44-b31e-34d17fed5cba', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'example sentence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6b5ef275-b673-5b40-b75e-f6545a35e4ce', id, '79402088-3722-5f44-b31e-34d17fed5cba', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'pronunciation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6b5ef275-b673-5b40-b75e-f6545a35e4ce', id, '79402088-3722-5f44-b31e-34d17fed5cba', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'bilingual dictionary' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6b5ef275-b673-5b40-b75e-f6545a35e4ce', id, '79402088-3722-5f44-b31e-34d17fed5cba', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'to add to favourites' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6b5ef275-b673-5b40-b75e-f6545a35e4ce', id, '79402088-3722-5f44-b31e-34d17fed5cba', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'offline mode' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6b5ef275-b673-5b40-b75e-f6545a35e4ce', id, '0629b80e-19b6-57e2-9374-218c98d73463', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'flashcard app' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6b5ef275-b673-5b40-b75e-f6545a35e4ce', id, '0629b80e-19b6-57e2-9374-218c98d73463', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'more convenient' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6b5ef275-b673-5b40-b75e-f6545a35e4ce', id, '0629b80e-19b6-57e2-9374-218c98d73463', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'audio course' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6b5ef275-b673-5b40-b75e-f6545a35e4ce', id, '0629b80e-19b6-57e2-9374-218c98d73463', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'grammar reference' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6b5ef275-b673-5b40-b75e-f6545a35e4ce', id, '0629b80e-19b6-57e2-9374-218c98d73463', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to subscribe to a channel' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6b5ef275-b673-5b40-b75e-f6545a35e4ce', id, '0629b80e-19b6-57e2-9374-218c98d73463', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'ad-free' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6b5ef275-b673-5b40-b75e-f6545a35e4ce', id, '0629b80e-19b6-57e2-9374-218c98d73463', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'database' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6b5ef275-b673-5b40-b75e-f6545a35e4ce', id, '9955739b-83b9-55b8-974e-cbb7d0be843e', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to waste time on' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6b5ef275-b673-5b40-b75e-f6545a35e4ce', id, '9955739b-83b9-55b8-974e-cbb7d0be843e', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'useless' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6b5ef275-b673-5b40-b75e-f6545a35e4ce', id, '9955739b-83b9-55b8-974e-cbb7d0be843e', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to check the source' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6b5ef275-b673-5b40-b75e-f6545a35e4ce', id, '9955739b-83b9-55b8-974e-cbb7d0be843e', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'reliable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6b5ef275-b673-5b40-b75e-f6545a35e4ce', id, '9955739b-83b9-55b8-974e-cbb7d0be843e', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'outdated' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6b5ef275-b673-5b40-b75e-f6545a35e4ce', id, '9955739b-83b9-55b8-974e-cbb7d0be843e', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to switch to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6b5ef275-b673-5b40-b75e-f6545a35e4ce', id, '9955739b-83b9-55b8-974e-cbb7d0be843e', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'review' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
