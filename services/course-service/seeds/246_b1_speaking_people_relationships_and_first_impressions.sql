-- Track: B1_SPEAKING_PEOPLE_RELATIONSHIPS_AND_FIRST_IMPRESSIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('d03f67df-4a75-5dfa-a366-8e34f1560eea', 'B1_SPEAKING_PEOPLE_RELATIONSHIPS_AND_FIRST_IMPRESSIONS', 'Люди, отношения и первые впечатления', 'Развивайте разговорный английский уровня B1 по теме «Люди, отношения и первые впечатления».', '{"en":"People, Relationships and First Impressions","ru":"Люди, отношения и первые впечатления"}'::jsonb, '{"en":"Develop B1 spoken English for people, relationships and first impressions.","ru":"Развивайте разговорный английский уровня B1 по теме «Люди, отношения и первые впечатления»."}'::jsonb, 'en', 'B1', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e6a718b7-2217-53b9-8235-e5c7c51947ff', NULL, 'Разговорная практика 1', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"First Impressions","ru":"Разговорная практика 1"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('03f2ee9f-0fed-5fa1-b436-9f00c1f8ce05', 'e6a718b7-2217-53b9-8235-e5c7c51947ff', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SDP_2","left":"mother","right":"мама"},{"id":"A2SDP_3","left":"father","right":"папа"},{"id":"A2SDP_4","left":"sister","right":"сестра"},{"id":"A2SDP_5","left":"brother","right":"брат"},{"id":"A2SDP_6","left":"parents","right":"родители"},{"id":"A2SDP_7","left":"family","right":"семья"},{"id":"A2SDP_8","left":"This is my mother","right":"Это моя мама"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da9d9cf9-fd66-5b0e-ae4d-b32b3b2d4a4b', 'e6a718b7-2217-53b9-8235-e5c7c51947ff', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"“Parents” means your mother and father.","instruction":"Выберите правильный ответ.","options":[{"id":"A2SDP_10","is_correct":true,"text":"Parents"},{"id":"A2SDP_11","is_correct":false,"text":"Sister"},{"id":"A2SDP_12","is_correct":false,"text":"Friend"}],"question":"Which word means your mother and father together?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f479cd10-0c27-5e95-83df-045783a93617', 'e6a718b7-2217-53b9-8235-e5c7c51947ff', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"This is my brother.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Это мой брат.","target_language":"en","word_bank":["brother.","my","is","This"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('424b51b3-f65b-57e3-a592-92a963ecd882', 'e6a718b7-2217-53b9-8235-e5c7c51947ff', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"sister","instruction":"Выберите подходящее слово.","options":["sister","morning","coffee"],"sentence_template":"This is my ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3415ceb0-2abb-5d41-82c9-8e6d10e276d5', 'e6a718b7-2217-53b9-8235-e5c7c51947ff', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["This","is","my","father."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["my","is","This","father."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e865150f-fce7-5228-8325-ac2a7990cfa7', 'e6a718b7-2217-53b9-8235-e5c7c51947ff', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"This is my mother and this is my father.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('45351a0f-2752-5022-8ae0-003edb597f0a', 'e6a718b7-2217-53b9-8235-e5c7c51947ff', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Hello. This is my family. I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Здравствуйте. Это моя семья. Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0d75895f-a607-5f0a-9cfb-7a155c6a39d2', 'e6a718b7-2217-53b9-8235-e5c7c51947ff', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Nina","text":"This is my family.","translation":"Это моя семья.","type":"dialogue"},{"character":"Ben","text":"Who is this?","translation":"Кто это?","type":"dialogue"},{"options":[{"is_correct":true,"text":"This is my sister."},{"is_correct":false,"text":"I get up at seven."}],"text":"What can Nina say?","type":"choice"}],"title":"A Family Photo"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('308ef51e-0927-5124-af0f-38414363f400', 'e6a718b7-2217-53b9-8235-e5c7c51947ff', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"A brother is a boy or man who has the same parents as you.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SDP_20","is_correct":true,"text":"A boy or man with the same parents as you"},{"id":"A2SDP_21","is_correct":false,"text":"Your mother and father together"},{"id":"A2SDP_22","is_correct":false,"text":"A person you study with"}],"word":"brother"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0d7ffd41-96b3-5fe8-a787-9b446311a686', 'e6a718b7-2217-53b9-8235-e5c7c51947ff', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"This is my mother.","explanation":"The missing family word is “mother.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"mother","id":"A2SDP_24","is_correct":true},{"audio_text":"evening","id":"A2SDP_25","is_correct":false},{"audio_text":"tennis","id":"A2SDP_26","is_correct":false}],"sentence_template":"This is my ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5cb3c8d-ed11-534e-9d63-053fe55d2ffd', 'e6a718b7-2217-53b9-8235-e5c7c51947ff', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"father","explanation":"The complete sentence is “This is my father.”","hint_prefix":"fa","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"This is my ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4e170b06-8e4e-5081-ad25-0266acdb834a', 'e6a718b7-2217-53b9-8235-e5c7c51947ff', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each speaking phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"mother","id":"A2SDP_29","text":"mother"},{"audio_text":"brother","id":"A2SDP_30","text":"brother"},{"audio_text":"family","id":"A2SDP_31","text":"family"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eca74af2-a7bf-51df-a624-4276149d1f80', 'e6a718b7-2217-53b9-8235-e5c7c51947ff', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Oleg","text":"Who is this in the photo?"}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SDP_33","is_correct":true,"text":"This is my sister."},{"id":"A2SDP_34","is_correct":false,"text":"I like soup."},{"id":"A2SDP_35","is_correct":false,"text":"It is eight o’clock."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d03f67df-4a75-5dfa-a366-8e34f1560eea', 'e6a718b7-2217-53b9-8235-e5c7c51947ff', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2d4f91c3-38e8-5a14-9653-016d6b447abf', NULL, 'Разговорная практика 2', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Personal Qualities","ru":"Разговорная практика 2"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('15535b58-aada-5e9f-bf55-6409eaf081a7', '2d4f91c3-38e8-5a14-9653-016d6b447abf', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SDP_37","left":"husband","right":"муж"},{"id":"A2SDP_38","left":"wife","right":"жена"},{"id":"A2SDP_39","left":"son","right":"сын"},{"id":"A2SDP_40","left":"daughter","right":"дочь"},{"id":"A2SDP_41","left":"grandmother","right":"бабушка"},{"id":"A2SDP_42","left":"grandfather","right":"дедушка"},{"id":"A2SDP_43","left":"I have two sisters","right":"У меня две сестры"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c7266643-1bba-5c2e-bfc2-bc3fffc268a1', '2d4f91c3-38e8-5a14-9653-016d6b447abf', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"Use “I have” to say who is in your family.","instruction":"Выберите правильный ответ.","options":[{"id":"A2SDP_45","is_correct":true,"text":"I have two sisters."},{"id":"A2SDP_46","is_correct":false,"text":"I am two sisters."},{"id":"A2SDP_47","is_correct":false,"text":"I like two sisters."}],"question":"Which sentence says there are two sisters in your family?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b6b49e53-b759-5ef0-a1f5-d2b3bf454429', '2d4f91c3-38e8-5a14-9653-016d6b447abf', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I have a son.","instruction":"Соберите перевод.","source_language":"ru","source_text":"У меня есть сын.","target_language":"en","word_bank":["son.","a","have","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f4cb2adf-0270-570a-8898-a7e313fd4805', '2d4f91c3-38e8-5a14-9653-016d6b447abf', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"kind","instruction":"Выберите подходящее слово.","options":["kind","breakfast","swim"],"sentence_template":"My grandmother is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('34749d6e-a683-5f27-a180-a5e4d001658b', '2d4f91c3-38e8-5a14-9653-016d6b447abf', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","have","one","daughter."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["one","have","I","daughter."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f242ca0c-7ed9-5b65-b00f-2f812efbebac', '2d4f91c3-38e8-5a14-9653-016d6b447abf', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I have one brother and two sisters.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b5f5aa7-ff44-53e5-815f-a0d354383511', '2d4f91c3-38e8-5a14-9653-016d6b447abf', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"My grandfather is kind and funny. I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Мой дедушка добрый и весёлый. Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e2ce1905-7be1-5326-9b29-c1d56646656d', '2d4f91c3-38e8-5a14-9653-016d6b447abf', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Sara","text":"Do you have any brothers or sisters?","translation":"У тебя есть братья или сёстры?","type":"dialogue"},{"character":"Max","text":"Yes. I have two brothers.","translation":"Да. У меня два брата.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I have one sister."},{"is_correct":false,"text":"I go to bed at ten."}],"text":"What can Sara say next?","type":"choice"}],"title":"A Big Family"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e08d5d61-74c0-54e7-9267-c21ffaf2bbc1', '2d4f91c3-38e8-5a14-9653-016d6b447abf', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"A daughter is a female child.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SDP_55","is_correct":true,"text":"A female child"},{"id":"A2SDP_56","is_correct":false,"text":"Your father’s father"},{"id":"A2SDP_57","is_correct":false,"text":"A married man"}],"word":"daughter"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e170809d-5154-58c5-b440-d436735b29e1', '2d4f91c3-38e8-5a14-9653-016d6b447abf', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have one son.","explanation":"The missing family word is “son.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"son","id":"A2SDP_59","is_correct":true},{"audio_text":"lunch","id":"A2SDP_60","is_correct":false},{"audio_text":"music","id":"A2SDP_61","is_correct":false}],"sentence_template":"I have one ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7b26e569-7471-50a4-bb85-1f6e898f57e7', '2d4f91c3-38e8-5a14-9653-016d6b447abf', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"kind","explanation":"The complete sentence is “My grandmother is kind.”","hint_prefix":"ki","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"My grandmother is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('140277b7-764e-53d2-8cad-2e9ba8f75a7c', '2d4f91c3-38e8-5a14-9653-016d6b447abf', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each speaking phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"grandmother","id":"A2SDP_64","text":"grandmother"},{"audio_text":"daughter","id":"A2SDP_65","text":"daughter"},{"audio_text":"two sisters","id":"A2SDP_66","text":"two sisters"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd0a91d1-30c1-5945-8101-eb7174ddb252', '2d4f91c3-38e8-5a14-9653-016d6b447abf', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Mira","text":"Do you have any brothers or sisters?"}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SDP_68","is_correct":true,"text":"Yes. I have one brother."},{"id":"A2SDP_69","is_correct":false,"text":"Yes. I drink tea at seven."},{"id":"A2SDP_70","is_correct":false,"text":"Yes. I can see a chair."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d03f67df-4a75-5dfa-a366-8e34f1560eea', '2d4f91c3-38e8-5a14-9653-016d6b447abf', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('93c808ee-784d-5e9a-a9a5-c22e1b3b0ef9', NULL, 'Разговорная практика 3', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Relationships and Changes","ru":"Разговорная практика 3"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e73a50c7-1e29-56a8-87a1-5c7ce6738774', '93c808ee-784d-5e9a-a9a5-c22e1b3b0ef9', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SDP_72","left":"friend","right":"друг"},{"id":"A2SDP_73","left":"best friend","right":"лучший друг"},{"id":"A2SDP_74","left":"nice","right":"приятный"},{"id":"A2SDP_75","left":"kind","right":"добрый"},{"id":"A2SDP_76","left":"funny","right":"весёлый"},{"id":"A2SDP_77","left":"helpful","right":"готовый помочь"},{"id":"A2SDP_78","left":"We are friends","right":"Мы друзья"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b74160b4-8c2a-50d0-bbc9-ccd1cd835426', '93c808ee-784d-5e9a-a9a5-c22e1b3b0ef9', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"A helpful person is ready to help others.","instruction":"Выберите правильный ответ.","options":[{"id":"A2SDP_80","is_correct":true,"text":"Helpful"},{"id":"A2SDP_81","is_correct":false,"text":"Morning"},{"id":"A2SDP_82","is_correct":false,"text":"Hungry"}],"question":"Which word describes a person who helps other people?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b1c36555-d947-52d2-9edb-1196ac3f6878', '93c808ee-784d-5e9a-a9a5-c22e1b3b0ef9', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Anna is my friend.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Анна — моя подруга.","target_language":"en","word_bank":["friend.","my","is","Anna"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ee8beb22-445c-5612-a5e7-982cd815ec0e', '93c808ee-784d-5e9a-a9a5-c22e1b3b0ef9', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"funny","instruction":"Выберите подходящее слово.","options":["funny","ticket","sleep"],"sentence_template":"My friend is very ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('177a0bb4-a433-5d64-a890-0f3842fdcb8c', '93c808ee-784d-5e9a-a9a5-c22e1b3b0ef9', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","good","friends."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["are","friends.","We","good"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e80a79d5-5a31-582f-8f03-e03334087d8a', '93c808ee-784d-5e9a-a9a5-c22e1b3b0ef9', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"This is my friend Alex. He is very kind.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b82c7c34-4d2a-54f1-933e-33a7a919e9f3', '93c808ee-784d-5e9a-a9a5-c22e1b3b0ef9', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Maya is my best friend. She is nice and funny. I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Майя — моя лучшая подруга. Она приятная и весёлая. Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a8e4af2c-dfd9-5d7b-a161-e78c2c9ede9a', '93c808ee-784d-5e9a-a9a5-c22e1b3b0ef9', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Ivan","text":"Hello, Lena. This is my friend Tom.","translation":"Привет, Лена. Это мой друг Том.","type":"dialogue"},{"character":"Lena","text":"Nice to meet you, Tom.","translation":"Приятно познакомиться, Том.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Nice to meet you too."},{"is_correct":false,"text":"I have breakfast at home."}],"text":"What can Tom say?","type":"choice"}],"title":"Meeting a Friend"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0dbb6ead-cfa2-5bf5-808a-afa903f7fca4', '93c808ee-784d-5e9a-a9a5-c22e1b3b0ef9', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"A friend is a person you know and like.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SDP_90","is_correct":true,"text":"A person you know and like"},{"id":"A2SDP_91","is_correct":false,"text":"A person’s mother or father"},{"id":"A2SDP_92","is_correct":false,"text":"The first meal of the day"}],"word":"friend"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('899e7b6c-043c-516c-b107-d35e7fc1cd10', '93c808ee-784d-5e9a-a9a5-c22e1b3b0ef9', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We are good friends.","explanation":"The missing word is “friends.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"friends","id":"A2SDP_94","is_correct":true},{"audio_text":"parents","id":"A2SDP_95","is_correct":false},{"audio_text":"mornings","id":"A2SDP_96","is_correct":false}],"sentence_template":"We are good ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0d1411f-92e3-5b2c-99a4-ed6389de759b', '93c808ee-784d-5e9a-a9a5-c22e1b3b0ef9', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"helpful","explanation":"The complete sentence is “My friend is helpful.”","hint_prefix":"he","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"My friend is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4696eb30-8a73-57bd-a1d7-391269802e7f', '93c808ee-784d-5e9a-a9a5-c22e1b3b0ef9', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each speaking phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"friend","id":"A2SDP_99","text":"friend"},{"audio_text":"best friend","id":"A2SDP_100","text":"best friend"},{"audio_text":"nice and funny","id":"A2SDP_101","text":"nice and funny"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cfc36423-c3e3-591a-bc50-54817d1845b9', '93c808ee-784d-5e9a-a9a5-c22e1b3b0ef9', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Kate","text":"Who is Tom?"}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SDP_103","is_correct":true,"text":"He is my best friend."},{"id":"A2SDP_104","is_correct":false,"text":"He is breakfast at seven."},{"id":"A2SDP_105","is_correct":false,"text":"He likes at home."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d03f67df-4a75-5dfa-a366-8e34f1560eea', '93c808ee-784d-5e9a-a9a5-c22e1b3b0ef9', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ab339f41-320c-5eb1-9b26-1832eb3d8272', 'en', 'mother', 'мама', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a5af4b89-a1d1-5906-ab2b-fe678f16429a', 'en', 'father', 'папа', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e6916daf-478b-5060-8bc2-63090e01ae36', 'en', 'sister', 'сестра', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8a5b6189-e084-599b-944b-1cbbbc7374f4', 'en', 'brother', 'брат', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c4bf0470-d40e-560d-bdd8-891f18721b7f', 'en', 'parents', 'родители', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('794e29c5-321e-5516-b895-58f53c78766e', 'en', 'family', 'семья', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a024acd7-f536-546b-80c8-b1a98236a46d', 'en', 'This is my mother', 'Это моя мама', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b80e1174-7260-5afa-a946-d3e11082610c', 'en', 'husband', 'муж', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('84cbdce5-e882-50d1-b66d-d63bd7f52cb0', 'en', 'wife', 'жена', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fc307bd8-d6dc-5f36-a6d1-02567859b0ee', 'en', 'son', 'сын', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6205cd95-c9f9-569d-a57c-8f7bb2a0bbae', 'en', 'daughter', 'дочь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4543fd3e-34fa-5736-b55e-a65342024ca1', 'en', 'grandmother', 'бабушка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('011b5fe6-d92c-5bf4-a761-799b3bf41f0e', 'en', 'grandfather', 'дедушка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cfa8bf85-2c1c-552f-8910-8f36620df3f2', 'en', 'I have two sisters', 'У меня две сестры', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cd75c44-4f87-5783-9614-619d962ba6c5', 'en', 'friend', 'друг', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2310f9aa-e05b-5350-9da0-99178d1aea23', 'en', 'best friend', 'лучший друг', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8be5897f-4d6b-5dba-85af-f7a695f032c8', 'en', 'nice', 'приятный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1199fc89-df54-5bdf-a4e3-1fcbd8ce8b38', 'en', 'kind', 'добрый', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8c6e8d34-fdf5-529a-a08b-9ad0f4afaf06', 'en', 'funny', 'весёлый', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a06893fb-76ca-54b9-8e06-9ab6e7ceb5fe', 'en', 'helpful', 'готовый помочь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('97fbbbd6-183e-507f-93f5-fd86c84fa2bc', 'en', 'We are friends', 'Мы друзья', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd03f67df-4a75-5dfa-a366-8e34f1560eea', id, 'e6a718b7-2217-53b9-8235-e5c7c51947ff', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'mother' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd03f67df-4a75-5dfa-a366-8e34f1560eea', id, 'e6a718b7-2217-53b9-8235-e5c7c51947ff', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'father' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd03f67df-4a75-5dfa-a366-8e34f1560eea', id, 'e6a718b7-2217-53b9-8235-e5c7c51947ff', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'sister' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd03f67df-4a75-5dfa-a366-8e34f1560eea', id, 'e6a718b7-2217-53b9-8235-e5c7c51947ff', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'brother' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd03f67df-4a75-5dfa-a366-8e34f1560eea', id, 'e6a718b7-2217-53b9-8235-e5c7c51947ff', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'parents' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd03f67df-4a75-5dfa-a366-8e34f1560eea', id, 'e6a718b7-2217-53b9-8235-e5c7c51947ff', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'family' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd03f67df-4a75-5dfa-a366-8e34f1560eea', id, 'e6a718b7-2217-53b9-8235-e5c7c51947ff', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'This is my mother' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd03f67df-4a75-5dfa-a366-8e34f1560eea', id, '2d4f91c3-38e8-5a14-9653-016d6b447abf', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'husband' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd03f67df-4a75-5dfa-a366-8e34f1560eea', id, '2d4f91c3-38e8-5a14-9653-016d6b447abf', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'wife' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd03f67df-4a75-5dfa-a366-8e34f1560eea', id, '2d4f91c3-38e8-5a14-9653-016d6b447abf', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'son' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd03f67df-4a75-5dfa-a366-8e34f1560eea', id, '2d4f91c3-38e8-5a14-9653-016d6b447abf', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'daughter' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd03f67df-4a75-5dfa-a366-8e34f1560eea', id, '2d4f91c3-38e8-5a14-9653-016d6b447abf', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'grandmother' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd03f67df-4a75-5dfa-a366-8e34f1560eea', id, '2d4f91c3-38e8-5a14-9653-016d6b447abf', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'grandfather' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd03f67df-4a75-5dfa-a366-8e34f1560eea', id, '2d4f91c3-38e8-5a14-9653-016d6b447abf', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'I have two sisters' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd03f67df-4a75-5dfa-a366-8e34f1560eea', id, '93c808ee-784d-5e9a-a9a5-c22e1b3b0ef9', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'friend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd03f67df-4a75-5dfa-a366-8e34f1560eea', id, '93c808ee-784d-5e9a-a9a5-c22e1b3b0ef9', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'best friend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd03f67df-4a75-5dfa-a366-8e34f1560eea', id, '93c808ee-784d-5e9a-a9a5-c22e1b3b0ef9', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'nice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd03f67df-4a75-5dfa-a366-8e34f1560eea', id, '93c808ee-784d-5e9a-a9a5-c22e1b3b0ef9', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'kind' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd03f67df-4a75-5dfa-a366-8e34f1560eea', id, '93c808ee-784d-5e9a-a9a5-c22e1b3b0ef9', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'funny' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd03f67df-4a75-5dfa-a366-8e34f1560eea', id, '93c808ee-784d-5e9a-a9a5-c22e1b3b0ef9', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'helpful' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd03f67df-4a75-5dfa-a366-8e34f1560eea', id, '93c808ee-784d-5e9a-a9a5-c22e1b3b0ef9', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'We are friends' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
