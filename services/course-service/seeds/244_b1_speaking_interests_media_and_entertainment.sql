-- Track: B1_SPEAKING_INTERESTS_MEDIA_AND_ENTERTAINMENT. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('50ae828b-ff90-55a4-9209-24145e007af5', 'B1_SPEAKING_INTERESTS_MEDIA_AND_ENTERTAINMENT', 'Интересы, медиа и развлечения', 'Развивайте разговорный английский уровня B1 по теме «Интересы, медиа и развлечения».', '{"en":"Interests, Media and Entertainment","ru":"Интересы, медиа и развлечения"}'::jsonb, '{"en":"Develop B1 spoken English for interests, media and entertainment.","ru":"Развивайте разговорный английский уровня B1 по теме «Интересы, медиа и развлечения»."}'::jsonb, 'en', 'B1', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('fb456b4e-d183-5d0c-babb-18b5dd59feca', NULL, 'Разговорная практика 1', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Interests and Skills","ru":"Разговорная практика 1"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e84404aa-efd5-50e3-b2fa-6269ec40879d', 'fb456b4e-d183-5d0c-babb-18b5dd59feca', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SHAFT_2","left":"bread","right":"хлеб"},{"id":"A2SHAFT_3","left":"rice","right":"рис"},{"id":"A2SHAFT_4","left":"apples","right":"яблоки"},{"id":"A2SHAFT_5","left":"chicken","right":"курица"},{"id":"A2SHAFT_6","left":"water","right":"вода"},{"id":"A2SHAFT_7","left":"tea","right":"чай"},{"id":"A2SHAFT_8","left":"I like coffee","right":"Мне нравится кофе"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a8cef9e4-c6d4-5c5b-93a8-784a9186b4b6', 'fb456b4e-d183-5d0c-babb-18b5dd59feca', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"Use “I like” to express a positive preference.","instruction":"Выберите правильный ответ.","options":[{"id":"A2SHAFT_10","is_correct":true,"text":"I like apples."},{"id":"A2SHAFT_11","is_correct":false,"text":"I am apples."},{"id":"A2SHAFT_12","is_correct":false,"text":"I can apples."}],"question":"Which sentence expresses a positive preference?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e8684d4-1f54-5dc9-abe6-cd5dd7e26929', 'fb456b4e-d183-5d0c-babb-18b5dd59feca', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I like tea.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мне нравится чай.","target_language":"en","word_bank":["tea.","like","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2c49f8f-ae68-5905-a052-b91e0a97d857', 'fb456b4e-d183-5d0c-babb-18b5dd59feca', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"coffee","instruction":"Выберите подходящее слово.","options":["coffee","sister","morning"],"sentence_template":"I do not like ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ad4f9368-3fb3-51c2-a44f-df334634d463', 'fb456b4e-d183-5d0c-babb-18b5dd59feca', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","like","apples."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["like","I","apples."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5305b646-5bf3-5d60-bbaf-85d02bea4968', 'fb456b4e-d183-5d0c-babb-18b5dd59feca', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I like bread and chicken.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e4a6102b-1b54-5467-9398-008e94138bc1', 'fb456b4e-d183-5d0c-babb-18b5dd59feca', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I like tea, but I do not like coffee. I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Мне нравится чай, но мне не нравится кофе. Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a11d2e1-63f7-5268-87b3-85aa2e960f01', 'fb456b4e-d183-5d0c-babb-18b5dd59feca', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Pavel","text":"Do you like rice?","translation":"Тебе нравится рис?","type":"dialogue"},{"character":"Amy","text":"Yes, I do. I like rice.","translation":"Да. Мне нравится рис.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Do you like chicken?"},{"is_correct":false,"text":"What time do you get up?"}],"text":"What can Pavel ask next?","type":"choice"}],"title":"At Lunch"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f679bc76-5c99-51e8-94d0-a11c8bc1088d', 'fb456b4e-d183-5d0c-babb-18b5dd59feca', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"Bread is food made from flour and baked.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SHAFT_20","is_correct":true,"text":"Food made from flour and baked"},{"id":"A2SHAFT_21","is_correct":false,"text":"A hot drink made with leaves"},{"id":"A2SHAFT_22","is_correct":false,"text":"A red or green fruit"}],"word":"bread"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a09d241c-61bf-5ad9-8514-3d6d9bcfbd87', 'fb456b4e-d183-5d0c-babb-18b5dd59feca', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I like apples.","explanation":"The missing food word is “apples.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"apples","id":"A2SHAFT_24","is_correct":true},{"audio_text":"parents","id":"A2SHAFT_25","is_correct":false},{"audio_text":"evening","id":"A2SHAFT_26","is_correct":false}],"sentence_template":"I like ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bce6182b-c8fa-5efe-914c-0f27f32957ed', 'fb456b4e-d183-5d0c-babb-18b5dd59feca', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"water","explanation":"The complete sentence is “I like water.”","hint_prefix":"wa","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I like ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('991d589e-98eb-5b05-97f0-a635c15313ff', 'fb456b4e-d183-5d0c-babb-18b5dd59feca', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each speaking phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"bread","id":"A2SHAFT_29","text":"bread"},{"audio_text":"tea","id":"A2SHAFT_30","text":"tea"},{"audio_text":"I like apples","id":"A2SHAFT_31","text":"I like apples"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ee372cbf-f446-52f8-9631-be658d71a7bf', 'fb456b4e-d183-5d0c-babb-18b5dd59feca', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Sofia","text":"Do you like coffee?"}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SHAFT_33","is_correct":true,"text":"No, I don’t. I like tea."},{"id":"A2SHAFT_34","is_correct":false,"text":"No, I am a sister."},{"id":"A2SHAFT_35","is_correct":false,"text":"No, I get up at seven."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('50ae828b-ff90-55a4-9209-24145e007af5', 'fb456b4e-d183-5d0c-babb-18b5dd59feca', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('80d81711-30d7-5a9c-8528-f4e70a05ebc1', NULL, 'Разговорная практика 2', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Films Books and Music","ru":"Разговорная практика 2"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a8c93289-46e3-5ade-8707-7b4184dee372', '80d81711-30d7-5a9c-8528-f4e70a05ebc1', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SHAFT_37","left":"reading","right":"чтение"},{"id":"A2SHAFT_38","left":"music","right":"музыка"},{"id":"A2SHAFT_39","left":"football","right":"футбол"},{"id":"A2SHAFT_40","left":"swimming","right":"плавание"},{"id":"A2SHAFT_41","left":"cooking","right":"готовка"},{"id":"A2SHAFT_42","left":"drawing","right":"рисование"},{"id":"A2SHAFT_43","left":"I like dancing","right":"Мне нравятся танцы"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('765c23fc-4c1f-5a4a-a4a7-ad59d5717f5b', '80d81711-30d7-5a9c-8528-f4e70a05ebc1', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"Drawing means making pictures with a pencil, pen, or other tool.","instruction":"Выберите правильный ответ.","options":[{"id":"A2SHAFT_45","is_correct":true,"text":"Drawing"},{"id":"A2SHAFT_46","is_correct":false,"text":"Swimming"},{"id":"A2SHAFT_47","is_correct":false,"text":"Cooking"}],"question":"Which activity uses a pencil or pen to make pictures?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('83547543-0f75-5165-8cce-719243eec349', '80d81711-30d7-5a9c-8528-f4e70a05ebc1', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I like reading.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мне нравится читать.","target_language":"en","word_bank":["reading.","like","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa30aa40-001e-5ee4-b9e8-390442e25c38', '80d81711-30d7-5a9c-8528-f4e70a05ebc1', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"music","instruction":"Выберите подходящее слово.","options":["music","breakfast","mother"],"sentence_template":"She likes ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('029d46b2-4e34-5ac0-9254-e13d43497245', '80d81711-30d7-5a9c-8528-f4e70a05ebc1', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","like","playing","football."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["football.","playing","like","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fe214ef1-2d73-5fe1-b39e-a954a29f1e70', '80d81711-30d7-5a9c-8528-f4e70a05ebc1', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"My friend likes music and dancing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('808a7bad-5836-5977-a565-939cf1150d4c', '80d81711-30d7-5a9c-8528-f4e70a05ebc1', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I like reading, but I do not like cooking. I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Мне нравится читать, но мне не нравится готовить. Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('87c7edf8-d41a-56d2-a4c5-a083fda860c0', '80d81711-30d7-5a9c-8528-f4e70a05ebc1', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Ben","text":"What do you like doing after class?","translation":"Что тебе нравится делать после занятий?","type":"dialogue"},{"character":"Eva","text":"I like swimming.","translation":"Мне нравится плавать.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I like swimming too."},{"is_correct":false,"text":"My father goes to work."}],"text":"What can Ben say?","type":"choice"}],"title":"After Class"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('72526e4e-a1e8-5f0b-9e5c-b8363a5aa9c7', '80d81711-30d7-5a9c-8528-f4e70a05ebc1', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"Cooking means preparing food to eat.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SHAFT_55","is_correct":true,"text":"Preparing food to eat"},{"id":"A2SHAFT_56","is_correct":false,"text":"Moving through water"},{"id":"A2SHAFT_57","is_correct":false,"text":"Making pictures"}],"word":"cooking"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('616636d3-5b97-5333-b087-fbacfe211ec6', '80d81711-30d7-5a9c-8528-f4e70a05ebc1', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"She likes music.","explanation":"The missing hobby word is “music.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"music","id":"A2SHAFT_59","is_correct":true},{"audio_text":"lunch","id":"A2SHAFT_60","is_correct":false},{"audio_text":"brother","id":"A2SHAFT_61","is_correct":false}],"sentence_template":"She likes ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ba18412b-80b3-56ca-a594-702f18b4df38', '80d81711-30d7-5a9c-8528-f4e70a05ebc1', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"drawing","explanation":"The complete sentence is “I like drawing.”","hint_prefix":"dr","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I like ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fbdb271b-fdb2-51da-a34f-8c1409414c3f', '80d81711-30d7-5a9c-8528-f4e70a05ebc1', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each speaking phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"reading","id":"A2SHAFT_64","text":"reading"},{"audio_text":"swimming","id":"A2SHAFT_65","text":"swimming"},{"audio_text":"playing football","id":"A2SHAFT_66","text":"playing football"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('563aa093-488a-589b-972c-028f36ef108e', '80d81711-30d7-5a9c-8528-f4e70a05ebc1', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Dan","text":"What do you like doing after school?"}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SHAFT_68","is_correct":true,"text":"I like playing football."},{"id":"A2SHAFT_69","is_correct":false,"text":"I have breakfast at seven."},{"id":"A2SHAFT_70","is_correct":false,"text":"This is my grandmother."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('50ae828b-ff90-55a4-9209-24145e007af5', '80d81711-30d7-5a9c-8528-f4e70a05ebc1', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7e9a24cc-0f01-5d23-8831-e5e98149cd9e', NULL, 'Разговорная практика 3', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Recommendations and Reviews","ru":"Разговорная практика 3"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1934544d-3a27-59e2-bc9a-71de47a0bc37', '7e9a24cc-0f01-5d23-8831-e5e98149cd9e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SHAFT_72","left":"Do you like it?","right":"Тебе это нравится?"},{"id":"A2SHAFT_73","left":"Yes, I do","right":"Да"},{"id":"A2SHAFT_74","left":"No, I don''t","right":"Нет"},{"id":"A2SHAFT_75","left":"favorite","right":"любимый"},{"id":"A2SHAFT_76","left":"What is your favorite food?","right":"Какая твоя любимая еда?"},{"id":"A2SHAFT_77","left":"Me too","right":"Мне тоже"},{"id":"A2SHAFT_78","left":"I prefer tea","right":"Я предпочитаю чай"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('31d68108-76d9-5503-a5c4-a29716c76f09', '7e9a24cc-0f01-5d23-8831-e5e98149cd9e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"“Yes, I do” is a natural short answer to a question with “Do you like...?”","instruction":"Выберите правильный ответ.","options":[{"id":"A2SHAFT_80","is_correct":true,"text":"Yes, I do."},{"id":"A2SHAFT_81","is_correct":false,"text":"Yes, I am."},{"id":"A2SHAFT_82","is_correct":false,"text":"Yes, I can music."}],"question":"What is a natural short answer to “Do you like music?”"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e89bd9ed-1598-5ec0-9539-3d96bedb4caf', '7e9a24cc-0f01-5d23-8831-e5e98149cd9e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"What is your favorite food?","instruction":"Соберите перевод.","source_language":"ru","source_text":"Какая твоя любимая еда?","target_language":"en","word_bank":["food?","favorite","your","is","What"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('443f25f3-7a19-5fe1-8b2f-f8a7964de9be', '7e9a24cc-0f01-5d23-8831-e5e98149cd9e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"like","instruction":"Выберите подходящее слово.","options":["like","bed","family"],"sentence_template":"Do you ___ football?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7be80aa2-f8b2-5025-9d33-a9134a0bcc4c', '7e9a24cc-0f01-5d23-8831-e5e98149cd9e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","like","music.","Me","too."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["too.","Me","music.","like","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e188902e-5ea1-522b-af60-97755c98d63f', '7e9a24cc-0f01-5d23-8831-e5e98149cd9e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Do you like cooking? Yes, I do.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('be401c88-abd3-5117-90ae-78c4ddf846ec', '7e9a24cc-0f01-5d23-8831-e5e98149cd9e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"What is your favorite drink? I prefer tea. I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Какой твой любимый напиток? Я предпочитаю чай. Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ba1c7c04-1ea2-5d38-8da3-63c247d30648', '7e9a24cc-0f01-5d23-8831-e5e98149cd9e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Lena","text":"What is your favorite food?","translation":"Какая твоя любимая еда?","type":"dialogue"},{"character":"Mark","text":"My favorite food is pizza.","translation":"Моя любимая еда — пицца.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I like pizza too."},{"is_correct":false,"text":"I go to bed at ten."}],"text":"What can Lena say?","type":"choice"}],"title":"Finding a Favorite"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b6a046d-c3ff-547c-95d1-fc6b2c345fad', '7e9a24cc-0f01-5d23-8831-e5e98149cd9e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"Your favorite is the one you like more than the others.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SHAFT_90","is_correct":true,"text":"The one you like more than the others"},{"id":"A2SHAFT_91","is_correct":false,"text":"Something you do every morning"},{"id":"A2SHAFT_92","is_correct":false,"text":"A member of your family"}],"word":"favorite"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3dac3622-240e-5b89-8490-c9dc431d02e7', '7e9a24cc-0f01-5d23-8831-e5e98149cd9e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Do you like music?","explanation":"The missing word is “like.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"like","id":"A2SHAFT_94","is_correct":true},{"audio_text":"have","id":"A2SHAFT_95","is_correct":false},{"audio_text":"get","id":"A2SHAFT_96","is_correct":false}],"sentence_template":"Do you ___ music?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bdac499a-e613-5dd3-b936-63f27c1c1018', '7e9a24cc-0f01-5d23-8831-e5e98149cd9e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"favorite","explanation":"The complete sentence is “My favorite food is pizza.”","hint_prefix":"fa","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"My ___ food is pizza."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5308b0b-03ea-5eba-8fe6-77d249e91993', '7e9a24cc-0f01-5d23-8831-e5e98149cd9e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each speaking phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"Do you like it?","id":"A2SHAFT_99","text":"Do you like it?"},{"audio_text":"Yes, I do","id":"A2SHAFT_100","text":"Yes, I do"},{"audio_text":"Me too","id":"A2SHAFT_101","text":"Me too"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('adafc16b-7635-5450-a1da-e0857054cc24', '7e9a24cc-0f01-5d23-8831-e5e98149cd9e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Marta","text":"What is your favorite drink?"}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SHAFT_103","is_correct":true,"text":"My favorite drink is tea."},{"id":"A2SHAFT_104","is_correct":false,"text":"I get dressed at eight."},{"id":"A2SHAFT_105","is_correct":false,"text":"He is my best friend."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('50ae828b-ff90-55a4-9209-24145e007af5', '7e9a24cc-0f01-5d23-8831-e5e98149cd9e', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e2b1214f-98ab-513a-82e7-2d559842ccbb', 'en', 'bread', 'хлеб', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('97e58ed1-c8b4-5216-a98c-10e49e0ea69a', 'en', 'rice', 'рис', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d95570c3-1e10-5b2b-946e-0f9d3ab6d63d', 'en', 'apples', 'яблоки', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f66a087d-f2d7-5482-a289-682b108dbdfc', 'en', 'chicken', 'курица', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8fda92cb-44de-5dbd-a2b6-b8741952b655', 'en', 'water', 'вода', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('79118c55-945c-56d9-9329-0cf06fb939b8', 'en', 'tea', 'чай', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ed7ab66d-73b3-5d00-ad72-632f0345a608', 'en', 'I like coffee', 'Мне нравится кофе', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('caf4f7ae-3641-5c9d-94c3-8a43dbf92fbf', 'en', 'reading', 'чтение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('99e8f107-7345-5964-a5cb-60a50d4dbebd', 'en', 'music', 'музыка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6360c956-5ffa-5fdf-ac4d-576cae97c348', 'en', 'football', 'футбол', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('58fc5a0e-a1e2-546f-9d1a-9c9c3e56daf3', 'en', 'swimming', 'плавание', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1ef46cc1-5e7d-5f03-921b-163a40cef04a', 'en', 'cooking', 'готовка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5238a0dd-eb6b-58e0-b50c-2a31af03e20f', 'en', 'drawing', 'рисование', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('88e6022c-8068-5bab-b3fb-28b41c93db78', 'en', 'I like dancing', 'Мне нравятся танцы', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e75502af-fded-5d29-83b9-fac1196591e8', 'en', 'Do you like it?', 'Тебе это нравится?', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8b61eaa0-cae9-55ae-a83f-1ccaa104cf56', 'en', 'Yes, I do', 'Да', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('37833c8f-cc69-528a-b669-f2680234ba88', 'en', 'No, I don''t', 'Нет', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3da2c5c5-91f8-533c-8fde-65cf69af6f00', 'en', 'favorite', 'любимый', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fdddab3a-f101-51f6-b65c-f69fb16beded', 'en', 'What is your favorite food?', 'Какая твоя любимая еда?', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ea337238-ff90-57de-a473-94e7f34c1731', 'en', 'Me too', 'Мне тоже', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3dcf6309-2b72-5248-ba6f-7d11a2b5a621', 'en', 'I prefer tea', 'Я предпочитаю чай', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '50ae828b-ff90-55a4-9209-24145e007af5', id, 'fb456b4e-d183-5d0c-babb-18b5dd59feca', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'bread' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '50ae828b-ff90-55a4-9209-24145e007af5', id, 'fb456b4e-d183-5d0c-babb-18b5dd59feca', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'rice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '50ae828b-ff90-55a4-9209-24145e007af5', id, 'fb456b4e-d183-5d0c-babb-18b5dd59feca', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'apples' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '50ae828b-ff90-55a4-9209-24145e007af5', id, 'fb456b4e-d183-5d0c-babb-18b5dd59feca', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'chicken' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '50ae828b-ff90-55a4-9209-24145e007af5', id, 'fb456b4e-d183-5d0c-babb-18b5dd59feca', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'water' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '50ae828b-ff90-55a4-9209-24145e007af5', id, 'fb456b4e-d183-5d0c-babb-18b5dd59feca', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'tea' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '50ae828b-ff90-55a4-9209-24145e007af5', id, 'fb456b4e-d183-5d0c-babb-18b5dd59feca', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'I like coffee' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '50ae828b-ff90-55a4-9209-24145e007af5', id, '80d81711-30d7-5a9c-8528-f4e70a05ebc1', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'reading' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '50ae828b-ff90-55a4-9209-24145e007af5', id, '80d81711-30d7-5a9c-8528-f4e70a05ebc1', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'music' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '50ae828b-ff90-55a4-9209-24145e007af5', id, '80d81711-30d7-5a9c-8528-f4e70a05ebc1', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'football' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '50ae828b-ff90-55a4-9209-24145e007af5', id, '80d81711-30d7-5a9c-8528-f4e70a05ebc1', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'swimming' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '50ae828b-ff90-55a4-9209-24145e007af5', id, '80d81711-30d7-5a9c-8528-f4e70a05ebc1', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'cooking' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '50ae828b-ff90-55a4-9209-24145e007af5', id, '80d81711-30d7-5a9c-8528-f4e70a05ebc1', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'drawing' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '50ae828b-ff90-55a4-9209-24145e007af5', id, '80d81711-30d7-5a9c-8528-f4e70a05ebc1', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'I like dancing' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '50ae828b-ff90-55a4-9209-24145e007af5', id, '7e9a24cc-0f01-5d23-8831-e5e98149cd9e', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'Do you like it?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '50ae828b-ff90-55a4-9209-24145e007af5', id, '7e9a24cc-0f01-5d23-8831-e5e98149cd9e', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'Yes, I do' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '50ae828b-ff90-55a4-9209-24145e007af5', id, '7e9a24cc-0f01-5d23-8831-e5e98149cd9e', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'No, I don''t' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '50ae828b-ff90-55a4-9209-24145e007af5', id, '7e9a24cc-0f01-5d23-8831-e5e98149cd9e', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'favorite' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '50ae828b-ff90-55a4-9209-24145e007af5', id, '7e9a24cc-0f01-5d23-8831-e5e98149cd9e', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'What is your favorite food?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '50ae828b-ff90-55a4-9209-24145e007af5', id, '7e9a24cc-0f01-5d23-8831-e5e98149cd9e', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'Me too' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '50ae828b-ff90-55a4-9209-24145e007af5', id, '7e9a24cc-0f01-5d23-8831-e5e98149cd9e', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'I prefer tea' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
