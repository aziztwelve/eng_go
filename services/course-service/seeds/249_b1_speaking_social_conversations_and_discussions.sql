-- Track: B1_SPEAKING_SOCIAL_CONVERSATIONS_AND_DISCUSSIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('a0ecb3c6-73fb-5e1c-8253-a6f69a250cbf', 'B1_SPEAKING_SOCIAL_CONVERSATIONS_AND_DISCUSSIONS', 'Социальные беседы и обсуждения', 'Развивайте разговорный английский уровня B1 по теме «Социальные беседы и обсуждения».', '{"en":"Social Conversations and Discussions","ru":"Социальные беседы и обсуждения"}'::jsonb, '{"en":"Develop B1 spoken English for social conversations and discussions.","ru":"Развивайте разговорный английский уровня B1 по теме «Социальные беседы и обсуждения»."}'::jsonb, 'en', 'B1', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a3aa94a5-0cf8-5a56-8280-0b823382fe93', NULL, 'Разговорная практика 1', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Starting a Discussion","ru":"Разговорная практика 1"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3ec6d20d-b1f7-5d8b-8c9e-644855f2f366', 'a3aa94a5-0cf8-5a56-8280-0b823382fe93', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SFL_2","left":"mother","right":"мама"},{"id":"A2SFL_3","left":"father","right":"папа"},{"id":"A2SFL_4","left":"sister","right":"сестра"},{"id":"A2SFL_5","left":"brother","right":"брат"},{"id":"A2SFL_6","left":"parents","right":"родители"},{"id":"A2SFL_7","left":"family","right":"семья"},{"id":"A2SFL_8","left":"This is my mother","right":"Это моя мама"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('32262de3-9f48-5565-97ae-1daae6d4a005', 'a3aa94a5-0cf8-5a56-8280-0b823382fe93', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"“Parents” means your mother and father.","instruction":"Выберите правильный ответ.","options":[{"id":"A2SFL_10","is_correct":true,"text":"Parents"},{"id":"A2SFL_11","is_correct":false,"text":"Sister"},{"id":"A2SFL_12","is_correct":false,"text":"Friend"}],"question":"Which word means your mother and father together?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc6716b3-8287-5a75-b910-6b03f20184ab', 'a3aa94a5-0cf8-5a56-8280-0b823382fe93', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"This is my brother.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Это мой брат.","target_language":"en","word_bank":["brother.","my","is","This"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5399ae6f-789c-5fde-90fc-28a25bb3057b', 'a3aa94a5-0cf8-5a56-8280-0b823382fe93', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"sister","instruction":"Выберите подходящее слово.","options":["sister","morning","coffee"],"sentence_template":"This is my ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('14e605fe-8c6d-5f30-b5f1-2030b49dd8ee', 'a3aa94a5-0cf8-5a56-8280-0b823382fe93', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["This","is","my","father."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["my","is","This","father."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4fb94cd6-470e-5b8f-ae4a-dffba3724a2f', 'a3aa94a5-0cf8-5a56-8280-0b823382fe93', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"This is my mother and this is my father.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0e5429e-c3ad-55db-943e-43e47944d562', 'a3aa94a5-0cf8-5a56-8280-0b823382fe93', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Hello. This is my family. I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Здравствуйте. Это моя семья. Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e6e5050-c721-50b0-ba13-d85192b68ac4', 'a3aa94a5-0cf8-5a56-8280-0b823382fe93', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Nina","text":"This is my family.","translation":"Это моя семья.","type":"dialogue"},{"character":"Ben","text":"Who is this?","translation":"Кто это?","type":"dialogue"},{"options":[{"is_correct":true,"text":"This is my sister."},{"is_correct":false,"text":"I get up at seven."}],"text":"What can Nina say?","type":"choice"}],"title":"A Family Photo"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('403c04da-6355-580f-9c5d-946a487ffaf8', 'a3aa94a5-0cf8-5a56-8280-0b823382fe93', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"A brother is a boy or man who has the same parents as you.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SFL_20","is_correct":true,"text":"A boy or man with the same parents as you"},{"id":"A2SFL_21","is_correct":false,"text":"Your mother and father together"},{"id":"A2SFL_22","is_correct":false,"text":"A person you study with"}],"word":"brother"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f860349c-b21c-5e9d-a4a0-206b4f3f612d', 'a3aa94a5-0cf8-5a56-8280-0b823382fe93', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"This is my mother.","explanation":"The missing family word is “mother.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"mother","id":"A2SFL_24","is_correct":true},{"audio_text":"evening","id":"A2SFL_25","is_correct":false},{"audio_text":"tennis","id":"A2SFL_26","is_correct":false}],"sentence_template":"This is my ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('347850a7-6052-5f88-8237-23d6da3ed08c', 'a3aa94a5-0cf8-5a56-8280-0b823382fe93', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"father","explanation":"The complete sentence is “This is my father.”","hint_prefix":"fa","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"This is my ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e4cd16a4-dea5-533e-b9c3-b82618646d37', 'a3aa94a5-0cf8-5a56-8280-0b823382fe93', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each speaking phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"mother","id":"A2SFL_29","text":"mother"},{"audio_text":"brother","id":"A2SFL_30","text":"brother"},{"audio_text":"family","id":"A2SFL_31","text":"family"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3d558434-6e53-5d37-96cf-cdb35a016f68', 'a3aa94a5-0cf8-5a56-8280-0b823382fe93', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Oleg","text":"Who is this in the photo?"}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SFL_33","is_correct":true,"text":"This is my sister."},{"id":"A2SFL_34","is_correct":false,"text":"I like soup."},{"id":"A2SFL_35","is_correct":false,"text":"It is eight o’clock."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a0ecb3c6-73fb-5e1c-8253-a6f69a250cbf', 'a3aa94a5-0cf8-5a56-8280-0b823382fe93', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('19af2292-bd8c-55eb-8bd0-80333e42573b', NULL, 'Разговорная практика 2', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Keeping Ideas Connected","ru":"Разговорная практика 2"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d68cb4b-440a-549e-8af0-e46b73b064f5', '19af2292-bd8c-55eb-8bd0-80333e42573b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SFL_37","left":"husband","right":"муж"},{"id":"A2SFL_38","left":"wife","right":"жена"},{"id":"A2SFL_39","left":"son","right":"сын"},{"id":"A2SFL_40","left":"daughter","right":"дочь"},{"id":"A2SFL_41","left":"grandmother","right":"бабушка"},{"id":"A2SFL_42","left":"grandfather","right":"дедушка"},{"id":"A2SFL_43","left":"I have two sisters","right":"У меня две сестры"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9d5829c7-3c01-5e1d-924c-3abed68d52b8', '19af2292-bd8c-55eb-8bd0-80333e42573b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"Use “I have” to say who is in your family.","instruction":"Выберите правильный ответ.","options":[{"id":"A2SFL_45","is_correct":true,"text":"I have two sisters."},{"id":"A2SFL_46","is_correct":false,"text":"I am two sisters."},{"id":"A2SFL_47","is_correct":false,"text":"I like two sisters."}],"question":"Which sentence says there are two sisters in your family?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b9b45d74-14de-56b1-b5a2-368e07cc14c0', '19af2292-bd8c-55eb-8bd0-80333e42573b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I have a son.","instruction":"Соберите перевод.","source_language":"ru","source_text":"У меня есть сын.","target_language":"en","word_bank":["son.","a","have","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8484612e-830a-5c7b-b89f-13b2378c8b5f', '19af2292-bd8c-55eb-8bd0-80333e42573b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"kind","instruction":"Выберите подходящее слово.","options":["kind","breakfast","swim"],"sentence_template":"My grandmother is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('49e7b0d4-f061-504e-91f9-f191e555aefc', '19af2292-bd8c-55eb-8bd0-80333e42573b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","have","one","daughter."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["one","have","I","daughter."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a15c91d3-299a-545a-9332-b80c048642f5', '19af2292-bd8c-55eb-8bd0-80333e42573b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I have one brother and two sisters.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc552fe6-ad6a-57e5-a033-f4af6ede826b', '19af2292-bd8c-55eb-8bd0-80333e42573b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"My grandfather is kind and funny. I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Мой дедушка добрый и весёлый. Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('32592c6c-5bf3-5aea-837a-bbcaabecd8f4', '19af2292-bd8c-55eb-8bd0-80333e42573b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Sara","text":"Do you have any brothers or sisters?","translation":"У тебя есть братья или сёстры?","type":"dialogue"},{"character":"Max","text":"Yes. I have two brothers.","translation":"Да. У меня два брата.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I have one sister."},{"is_correct":false,"text":"I go to bed at ten."}],"text":"What can Sara say next?","type":"choice"}],"title":"A Big Family"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7e0da4e-3335-5f4c-b886-bce85ed363ef', '19af2292-bd8c-55eb-8bd0-80333e42573b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"A daughter is a female child.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SFL_55","is_correct":true,"text":"A female child"},{"id":"A2SFL_56","is_correct":false,"text":"Your father’s father"},{"id":"A2SFL_57","is_correct":false,"text":"A married man"}],"word":"daughter"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5bb53a9-953a-516e-ae81-ba33e4af5c1f', '19af2292-bd8c-55eb-8bd0-80333e42573b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have one son.","explanation":"The missing family word is “son.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"son","id":"A2SFL_59","is_correct":true},{"audio_text":"lunch","id":"A2SFL_60","is_correct":false},{"audio_text":"music","id":"A2SFL_61","is_correct":false}],"sentence_template":"I have one ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aac9ca66-a6d4-5ac5-a40a-6a8f0b82af7a', '19af2292-bd8c-55eb-8bd0-80333e42573b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"kind","explanation":"The complete sentence is “My grandmother is kind.”","hint_prefix":"ki","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"My grandmother is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('04ce53fe-63c7-5383-8371-81b95c6df760', '19af2292-bd8c-55eb-8bd0-80333e42573b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each speaking phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"grandmother","id":"A2SFL_64","text":"grandmother"},{"audio_text":"daughter","id":"A2SFL_65","text":"daughter"},{"audio_text":"two sisters","id":"A2SFL_66","text":"two sisters"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08739f26-6f91-59a1-ac38-2cc907ed601a', '19af2292-bd8c-55eb-8bd0-80333e42573b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Mira","text":"Do you have any brothers or sisters?"}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SFL_68","is_correct":true,"text":"Yes. I have one brother."},{"id":"A2SFL_69","is_correct":false,"text":"Yes. I drink tea at seven."},{"id":"A2SFL_70","is_correct":false,"text":"Yes. I can see a chair."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a0ecb3c6-73fb-5e1c-8253-a6f69a250cbf', '19af2292-bd8c-55eb-8bd0-80333e42573b', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('83378498-baa4-5600-b583-e7bf912dd776', NULL, 'Разговорная практика 3', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Reaching a Conclusion","ru":"Разговорная практика 3"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa7fd45a-2534-5746-b6fc-1c36781072c2', '83378498-baa4-5600-b583-e7bf912dd776', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SFL_72","left":"friend","right":"друг"},{"id":"A2SFL_73","left":"best friend","right":"лучший друг"},{"id":"A2SFL_74","left":"nice","right":"приятный"},{"id":"A2SFL_75","left":"kind","right":"добрый"},{"id":"A2SFL_76","left":"funny","right":"весёлый"},{"id":"A2SFL_77","left":"helpful","right":"готовый помочь"},{"id":"A2SFL_78","left":"We are friends","right":"Мы друзья"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3f4239a3-ceda-5ae4-8226-e26105940142', '83378498-baa4-5600-b583-e7bf912dd776', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"A helpful person is ready to help others.","instruction":"Выберите правильный ответ.","options":[{"id":"A2SFL_80","is_correct":true,"text":"Helpful"},{"id":"A2SFL_81","is_correct":false,"text":"Morning"},{"id":"A2SFL_82","is_correct":false,"text":"Hungry"}],"question":"Which word describes a person who helps other people?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8aaaa32c-c640-5549-9aaa-345fd9a6d245', '83378498-baa4-5600-b583-e7bf912dd776', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Anna is my friend.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Анна — моя подруга.","target_language":"en","word_bank":["friend.","my","is","Anna"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2c4b18c1-2359-5876-abf0-86eb02b7d423', '83378498-baa4-5600-b583-e7bf912dd776', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"funny","instruction":"Выберите подходящее слово.","options":["funny","ticket","sleep"],"sentence_template":"My friend is very ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb1a5fab-a09b-5518-809b-498ee53a94f5', '83378498-baa4-5600-b583-e7bf912dd776', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","good","friends."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["are","friends.","We","good"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa971489-6215-5af2-b0fc-f2f502ce2a16', '83378498-baa4-5600-b583-e7bf912dd776', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"This is my friend Alex. He is very kind.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e2301f4-b241-5ab7-91c1-4f45932d3caf', '83378498-baa4-5600-b583-e7bf912dd776', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Maya is my best friend. She is nice and funny. I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Майя — моя лучшая подруга. Она приятная и весёлая. Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('537ff325-238a-5211-b93a-1c1dc7b8917b', '83378498-baa4-5600-b583-e7bf912dd776', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Ivan","text":"Hello, Lena. This is my friend Tom.","translation":"Привет, Лена. Это мой друг Том.","type":"dialogue"},{"character":"Lena","text":"Nice to meet you, Tom.","translation":"Приятно познакомиться, Том.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Nice to meet you too."},{"is_correct":false,"text":"I have breakfast at home."}],"text":"What can Tom say?","type":"choice"}],"title":"Meeting a Friend"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4f26c7dc-0585-50a7-94f5-bce47cfbc451', '83378498-baa4-5600-b583-e7bf912dd776', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"A friend is a person you know and like.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SFL_90","is_correct":true,"text":"A person you know and like"},{"id":"A2SFL_91","is_correct":false,"text":"A person’s mother or father"},{"id":"A2SFL_92","is_correct":false,"text":"The first meal of the day"}],"word":"friend"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d5e3d77-4818-5407-81ae-2ce1bccaf19f', '83378498-baa4-5600-b583-e7bf912dd776', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We are good friends.","explanation":"The missing word is “friends.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"friends","id":"A2SFL_94","is_correct":true},{"audio_text":"parents","id":"A2SFL_95","is_correct":false},{"audio_text":"mornings","id":"A2SFL_96","is_correct":false}],"sentence_template":"We are good ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d1db3be2-02bd-5bd7-b082-3445ed80128a', '83378498-baa4-5600-b583-e7bf912dd776', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"helpful","explanation":"The complete sentence is “My friend is helpful.”","hint_prefix":"he","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"My friend is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('32e358a0-9488-50f4-91ff-31f2a785ce36', '83378498-baa4-5600-b583-e7bf912dd776', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each speaking phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"friend","id":"A2SFL_99","text":"friend"},{"audio_text":"best friend","id":"A2SFL_100","text":"best friend"},{"audio_text":"nice and funny","id":"A2SFL_101","text":"nice and funny"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eafa7c77-b44c-56ca-8a49-e00f7f526aaf', '83378498-baa4-5600-b583-e7bf912dd776', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Kate","text":"Who is Tom?"}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SFL_103","is_correct":true,"text":"He is my best friend."},{"id":"A2SFL_104","is_correct":false,"text":"He is breakfast at seven."},{"id":"A2SFL_105","is_correct":false,"text":"He likes at home."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a0ecb3c6-73fb-5e1c-8253-a6f69a250cbf', '83378498-baa4-5600-b583-e7bf912dd776', 2)
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
SELECT 'a0ecb3c6-73fb-5e1c-8253-a6f69a250cbf', id, 'a3aa94a5-0cf8-5a56-8280-0b823382fe93', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'mother' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0ecb3c6-73fb-5e1c-8253-a6f69a250cbf', id, 'a3aa94a5-0cf8-5a56-8280-0b823382fe93', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'father' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0ecb3c6-73fb-5e1c-8253-a6f69a250cbf', id, 'a3aa94a5-0cf8-5a56-8280-0b823382fe93', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'sister' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0ecb3c6-73fb-5e1c-8253-a6f69a250cbf', id, 'a3aa94a5-0cf8-5a56-8280-0b823382fe93', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'brother' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0ecb3c6-73fb-5e1c-8253-a6f69a250cbf', id, 'a3aa94a5-0cf8-5a56-8280-0b823382fe93', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'parents' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0ecb3c6-73fb-5e1c-8253-a6f69a250cbf', id, 'a3aa94a5-0cf8-5a56-8280-0b823382fe93', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'family' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0ecb3c6-73fb-5e1c-8253-a6f69a250cbf', id, 'a3aa94a5-0cf8-5a56-8280-0b823382fe93', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'This is my mother' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0ecb3c6-73fb-5e1c-8253-a6f69a250cbf', id, '19af2292-bd8c-55eb-8bd0-80333e42573b', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'husband' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0ecb3c6-73fb-5e1c-8253-a6f69a250cbf', id, '19af2292-bd8c-55eb-8bd0-80333e42573b', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'wife' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0ecb3c6-73fb-5e1c-8253-a6f69a250cbf', id, '19af2292-bd8c-55eb-8bd0-80333e42573b', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'son' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0ecb3c6-73fb-5e1c-8253-a6f69a250cbf', id, '19af2292-bd8c-55eb-8bd0-80333e42573b', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'daughter' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0ecb3c6-73fb-5e1c-8253-a6f69a250cbf', id, '19af2292-bd8c-55eb-8bd0-80333e42573b', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'grandmother' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0ecb3c6-73fb-5e1c-8253-a6f69a250cbf', id, '19af2292-bd8c-55eb-8bd0-80333e42573b', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'grandfather' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0ecb3c6-73fb-5e1c-8253-a6f69a250cbf', id, '19af2292-bd8c-55eb-8bd0-80333e42573b', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'I have two sisters' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0ecb3c6-73fb-5e1c-8253-a6f69a250cbf', id, '83378498-baa4-5600-b583-e7bf912dd776', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'friend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0ecb3c6-73fb-5e1c-8253-a6f69a250cbf', id, '83378498-baa4-5600-b583-e7bf912dd776', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'best friend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0ecb3c6-73fb-5e1c-8253-a6f69a250cbf', id, '83378498-baa4-5600-b583-e7bf912dd776', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'nice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0ecb3c6-73fb-5e1c-8253-a6f69a250cbf', id, '83378498-baa4-5600-b583-e7bf912dd776', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'kind' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0ecb3c6-73fb-5e1c-8253-a6f69a250cbf', id, '83378498-baa4-5600-b583-e7bf912dd776', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'funny' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0ecb3c6-73fb-5e1c-8253-a6f69a250cbf', id, '83378498-baa4-5600-b583-e7bf912dd776', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'helpful' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0ecb3c6-73fb-5e1c-8253-a6f69a250cbf', id, '83378498-baa4-5600-b583-e7bf912dd776', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'We are friends' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
