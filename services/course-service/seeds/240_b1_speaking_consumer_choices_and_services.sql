-- Track: B1_SPEAKING_CONSUMER_CHOICES_AND_SERVICES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('c701a48d-6f55-5a2a-a06c-33fa1cd07fff', 'B1_SPEAKING_CONSUMER_CHOICES_AND_SERVICES', 'Потребительский выбор и услуги', 'Развивайте разговорный английский уровня B1 по теме «Потребительский выбор и услуги».', '{"en":"Consumer Choices and Services","ru":"Потребительский выбор и услуги"}'::jsonb, '{"en":"Develop B1 spoken English for consumer choices and services.","ru":"Развивайте разговорный английский уровня B1 по теме «Потребительский выбор и услуги»."}'::jsonb, 'en', 'B1', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('3949fc20-2803-5b2a-b606-270fdc94aae9', NULL, 'Разговорная практика 1', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Comparing Products","ru":"Разговорная практика 1"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b338432-1c8b-5138-846b-f40ca42708fa', '3949fc20-2803-5b2a-b606-270fdc94aae9', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SSC_2","left":"shirt","right":"рубашка"},{"id":"A2SSC_3","left":"shoes","right":"туфли"},{"id":"A2SSC_4","left":"bag","right":"сумка"},{"id":"A2SSC_5","left":"red","right":"красный"},{"id":"A2SSC_6","left":"blue","right":"синий"},{"id":"A2SSC_7","left":"small","right":"маленький"},{"id":"A2SSC_8","left":"large","right":"большой"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('53aeed2a-55b2-5a9a-a7f1-07c6976b4a8d', '3949fc20-2803-5b2a-b606-270fdc94aae9', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The speaker asks for the blue shirt.","instruction":"Выберите правильный ответ.","options":[{"id":"A2SSC_10","is_correct":true,"text":"Blue"},{"id":"A2SSC_11","is_correct":false,"text":"Red"},{"id":"A2SSC_12","is_correct":false,"text":"Black"}],"question":"What color is the shirt in “I would like the blue shirt”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7e797fb-5179-5f99-96f3-85ba6a597b35', '3949fc20-2803-5b2a-b606-270fdc94aae9', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I need a large bag.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мне нужна большая сумка.","target_language":"en","word_bank":["bag.","large","a","need","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78bf78d9-657c-59e7-ac0e-2b377c3aa359', '3949fc20-2803-5b2a-b606-270fdc94aae9', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"blue","instruction":"Выберите подходящее слово.","options":["blue","twelve","Monday"],"sentence_template":"Do you have this shirt in ___?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d376346-5d3d-5ceb-a523-805aba0a7597', '3949fc20-2803-5b2a-b606-270fdc94aae9', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","need","small","shoes."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["small","shoes.","need","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1446c9d2-c863-5d20-882f-a24cd75709ec', '3949fc20-2803-5b2a-b606-270fdc94aae9', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"This red shirt is a small size.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7ae0e19b-f667-5f03-a2e9-256415f3b366', '3949fc20-2803-5b2a-b606-270fdc94aae9', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Do you have these shoes in a large size? I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"У вас есть эти туфли большого размера? Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a487ad1d-06ec-5ce2-bbcc-35c5c7137224', '3949fc20-2803-5b2a-b606-270fdc94aae9', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Customer","text":"Do you have this shirt in blue?","translation":"У вас есть эта рубашка синего цвета?","type":"dialogue"},{"character":"Assistant","text":"Yes. What size do you need?","translation":"Да. Какой размер вам нужен?","type":"dialogue"},{"options":[{"is_correct":true,"text":"A small size, please."},{"is_correct":false,"text":"At three o’clock."}],"text":"What can the customer say?","type":"choice"}],"title":"Choosing a Shirt"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8cbe687e-22d4-5a55-bc2f-b5f73ec462b6', '3949fc20-2803-5b2a-b606-270fdc94aae9', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"Size shows how big or small something is.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SSC_20","is_correct":true,"text":"A measure showing how big or small something is"},{"id":"A2SSC_21","is_correct":false,"text":"The color of an item"},{"id":"A2SSC_22","is_correct":false,"text":"The money paid for an item"}],"word":"size"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3617c21b-bb5c-5011-94bd-5c45a7b2767b', '3949fc20-2803-5b2a-b606-270fdc94aae9', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I need a large bag.","explanation":"The missing size is “large.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"large","id":"A2SSC_24","is_correct":true},{"audio_text":"library","id":"A2SSC_25","is_correct":false},{"audio_text":"lunch","id":"A2SSC_26","is_correct":false}],"sentence_template":"I need a ___ bag."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9954aa9f-1d15-554a-903e-5ad68fed9088', '3949fc20-2803-5b2a-b606-270fdc94aae9', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"blue","explanation":"The complete sentence is “The shirt is blue.”","hint_prefix":"bl","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The shirt is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9ec2083d-c738-53f8-b165-14315b8ff301', '3949fc20-2803-5b2a-b606-270fdc94aae9', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each audio phrase with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"red shirt","id":"A2SSC_29","text":"red shirt"},{"audio_text":"small size","id":"A2SSC_30","text":"small size"},{"audio_text":"large shoes","id":"A2SSC_31","text":"large shoes"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('531e576c-1e84-55f6-a808-db28706eb88f', '3949fc20-2803-5b2a-b606-270fdc94aae9', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Assistant","text":"What size do you need?"}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SSC_33","is_correct":true,"text":"A small size, please."},{"id":"A2SSC_34","is_correct":false,"text":"It is fifty dollars."},{"id":"A2SSC_35","is_correct":false,"text":"Turn left at the bank."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c701a48d-6f55-5a2a-a06c-33fa1cd07fff', '3949fc20-2803-5b2a-b606-270fdc94aae9', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('cf4f0a95-092d-5264-9db7-835c47e95f59', NULL, 'Разговорная практика 2', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Customer Experiences","ru":"Разговорная практика 2"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4bc6560f-adeb-552a-8f95-9bf318df3294', 'cf4f0a95-092d-5264-9db7-835c47e95f59', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SSC_37","left":"price","right":"цена"},{"id":"A2SSC_38","left":"dollar","right":"доллар"},{"id":"A2SSC_39","left":"cent","right":"цент"},{"id":"A2SSC_40","left":"ten dollars","right":"десять долларов"},{"id":"A2SSC_41","left":"twenty dollars","right":"двадцать долларов"},{"id":"A2SSC_42","left":"fifty cents","right":"пятьдесят центов"},{"id":"A2SSC_43","left":"How much is it?","right":"Сколько это стоит?"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('321031cf-dbb3-5b94-971a-58a886b774f2', 'cf4f0a95-092d-5264-9db7-835c47e95f59', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The bag costs twenty dollars.","instruction":"Выберите правильный ответ.","options":[{"id":"A2SSC_45","is_correct":true,"text":"Twenty dollars"},{"id":"A2SSC_46","is_correct":false,"text":"Ten dollars"},{"id":"A2SSC_47","is_correct":false,"text":"Fifty dollars"}],"question":"What price do you hear in “The bag is twenty dollars”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c9c05b47-f402-517b-8ee6-25b4ff9e1c1a', 'cf4f0a95-092d-5264-9db7-835c47e95f59', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"It is ten dollars.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Это стоит десять долларов.","target_language":"en","word_bank":["dollars.","ten","is","It"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3b69db9a-3c70-515c-a5bd-257b2af155d4', 'cf4f0a95-092d-5264-9db7-835c47e95f59', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"dollars","instruction":"Выберите подходящее слово.","options":["dollars","streets","lessons"],"sentence_template":"The coffee is two ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('659d0bfd-1ab8-5b93-8770-2c2b2eb084d0', 'cf4f0a95-092d-5264-9db7-835c47e95f59', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["How","much","is","it?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["it?","is","much","How"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4bc16a1c-465e-5d39-8eac-e18b5e1b477a', 'cf4f0a95-092d-5264-9db7-835c47e95f59', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The shirt is fifteen dollars and fifty cents.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a5bd382d-b2c8-5cad-9478-76ae0b8c97be', 'cf4f0a95-092d-5264-9db7-835c47e95f59', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"These shoes are twenty-five dollars. I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Эти туфли стоят двадцать пять долларов. Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c415e765-d3c8-5f11-81cc-a8f42ea6a97f', 'cf4f0a95-092d-5264-9db7-835c47e95f59', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Customer","text":"How much is this bag?","translation":"Сколько стоит эта сумка?","type":"dialogue"},{"character":"Assistant","text":"It is twenty dollars.","translation":"Она стоит двадцать долларов.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Twenty dollars."},{"is_correct":false,"text":"Twelve dollars."}],"text":"Which price did the assistant say?","type":"choice"}],"title":"Checking a Price"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c085d5b0-8eac-520d-9303-cf2a6c3c9db5', 'cf4f0a95-092d-5264-9db7-835c47e95f59', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"A price is the money needed to buy something.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SSC_55","is_correct":true,"text":"The amount of money needed to buy something"},{"id":"A2SSC_56","is_correct":false,"text":"The size of a product"},{"id":"A2SSC_57","is_correct":false,"text":"The color of a product"}],"word":"price"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9be52c62-42ef-5792-9c2a-45f3ebd27989', 'cf4f0a95-092d-5264-9db7-835c47e95f59', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The bag is twenty dollars.","explanation":"The missing money word is “dollars.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"dollars","id":"A2SSC_59","is_correct":true},{"audio_text":"pages","id":"A2SSC_60","is_correct":false},{"audio_text":"teachers","id":"A2SSC_61","is_correct":false}],"sentence_template":"The bag is twenty ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6e4f00c7-a645-5e7c-8426-34eead71936f', 'cf4f0a95-092d-5264-9db7-835c47e95f59', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"much","explanation":"The complete question is “How much is it?”","hint_prefix":"mu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"How ___ is it?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4244c6f1-7169-5899-b183-629c24c00999', 'cf4f0a95-092d-5264-9db7-835c47e95f59', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each audio phrase with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"ten dollars","id":"A2SSC_64","text":"ten dollars"},{"audio_text":"twenty dollars","id":"A2SSC_65","text":"twenty dollars"},{"audio_text":"fifty cents","id":"A2SSC_66","text":"fifty cents"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('838dcc28-47d7-57bd-a29b-e3af4f8a1913', 'cf4f0a95-092d-5264-9db7-835c47e95f59', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Shop Assistant","text":"The shirt is fifteen dollars."}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SSC_68","is_correct":true,"text":"Okay. I will take it."},{"id":"A2SSC_69","is_correct":false,"text":"It is on Friday."},{"id":"A2SSC_70","is_correct":false,"text":"I am twenty years old."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c701a48d-6f55-5a2a-a06c-33fa1cd07fff', 'cf4f0a95-092d-5264-9db7-835c47e95f59', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0c5b3abc-6a7f-580d-b7b5-3f3b6e494aff', NULL, 'Разговорная практика 3', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Complaints and Solutions","ru":"Разговорная практика 3"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('94f81c1d-b411-5dfb-9f51-86ea8275268f', '0c5b3abc-6a7f-580d-b7b5-3f3b6e494aff', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SSC_72","left":"checkout","right":"касса"},{"id":"A2SSC_73","left":"cash","right":"наличные"},{"id":"A2SSC_74","left":"card","right":"карта"},{"id":"A2SSC_75","left":"receipt","right":"чек"},{"id":"A2SSC_76","left":"change","right":"сдача"},{"id":"A2SSC_77","left":"pay","right":"платить"},{"id":"A2SSC_78","left":"Can I pay by card?","right":"Можно оплатить картой?"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c76cca30-afcd-5a44-b148-4bf2679f2dfb', '0c5b3abc-6a7f-580d-b7b5-3f3b6e494aff', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The speaker asks to pay by card.","instruction":"Выберите правильный ответ.","options":[{"id":"A2SSC_80","is_correct":true,"text":"By card"},{"id":"A2SSC_81","is_correct":false,"text":"In cash"},{"id":"A2SSC_82","is_correct":false,"text":"With change"}],"question":"How does the speaker want to pay in “Can I pay by card?”"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2e998b37-2212-5084-be6b-fd465d42dafa', '0c5b3abc-6a7f-580d-b7b5-3f3b6e494aff', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Can I pay in cash?","instruction":"Соберите перевод.","source_language":"ru","source_text":"Можно оплатить наличными?","target_language":"en","word_bank":["cash?","in","pay","I","Can"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4ac611d7-68f2-56ef-922a-6755ea8cea15', '0c5b3abc-6a7f-580d-b7b5-3f3b6e494aff', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"receipt","instruction":"Выберите подходящее слово.","options":["receipt","January","station"],"sentence_template":"Here is your ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d653628c-c623-5070-959d-1383f58e2756', '0c5b3abc-6a7f-580d-b7b5-3f3b6e494aff', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","will","pay","by","card."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["by","pay","card.","will","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd23e62d-5f14-5e8c-a3f4-20316b0167a6', '0c5b3abc-6a7f-580d-b7b5-3f3b6e494aff', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Your total is eighteen dollars.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2227468d-d837-5c21-91b3-8584a648dca7', '0c5b3abc-6a7f-580d-b7b5-3f3b6e494aff', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Can I pay by card, please? I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Можно оплатить картой, пожалуйста? Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('874c16a6-d03e-5293-bd7a-e3d149386a63', '0c5b3abc-6a7f-580d-b7b5-3f3b6e494aff', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Cashier","text":"Your total is thirty dollars.","translation":"Итого тридцать долларов.","type":"dialogue"},{"character":"Customer","text":"Can I pay by card?","translation":"Можно оплатить картой?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes, of course."},{"is_correct":false,"text":"The bus stop is opposite."}],"text":"What can the cashier say?","type":"choice"}],"title":"Paying for Shoes"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('66b9fa88-c4c8-5914-acd6-d6f35dbe9ce3', '0c5b3abc-6a7f-580d-b7b5-3f3b6e494aff', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"A receipt shows a completed purchase.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SSC_90","is_correct":true,"text":"A paper showing what you bought and paid"},{"id":"A2SSC_91","is_correct":false,"text":"Money returned after paying too much"},{"id":"A2SSC_92","is_correct":false,"text":"A place where you choose clothes"}],"word":"receipt"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('df09fbe4-cf27-590a-88ed-58105b67b4c8', '0c5b3abc-6a7f-580d-b7b5-3f3b6e494aff', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Here is your receipt.","explanation":"The missing checkout word is “receipt.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"receipt","id":"A2SSC_94","is_correct":true},{"audio_text":"routine","id":"A2SSC_95","is_correct":false},{"audio_text":"ruler","id":"A2SSC_96","is_correct":false}],"sentence_template":"Here is your ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ac5154b-e113-5a93-a922-f625c718a980', '0c5b3abc-6a7f-580d-b7b5-3f3b6e494aff', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"card","explanation":"The complete sentence is “I will pay by card.”","hint_prefix":"ca","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I will pay by ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dca18d6e-137c-5014-b006-869400415067', '0c5b3abc-6a7f-580d-b7b5-3f3b6e494aff', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each audio phrase with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"pay by card","id":"A2SSC_99","text":"pay by card"},{"audio_text":"pay in cash","id":"A2SSC_100","text":"pay in cash"},{"audio_text":"your receipt","id":"A2SSC_101","text":"your receipt"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('43fef2b6-42bd-5f27-acbc-03f5ec326c9f', '0c5b3abc-6a7f-580d-b7b5-3f3b6e494aff', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Cashier","text":"Would you like a receipt?"}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SSC_103","is_correct":true,"text":"Yes, please."},{"id":"A2SSC_104","is_correct":false,"text":"It is half past six."},{"id":"A2SSC_105","is_correct":false,"text":"My last name is Green."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c701a48d-6f55-5a2a-a06c-33fa1cd07fff', '0c5b3abc-6a7f-580d-b7b5-3f3b6e494aff', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('366f6c58-3001-583b-8d90-6f6c118e421d', 'en', 'shirt', 'рубашка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('50e128b8-8ea1-5a50-b87d-b19dc3fb18ac', 'en', 'shoes', 'туфли', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('68621952-6b9d-5e32-a025-7eef4afdd621', 'en', 'bag', 'сумка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e9dc8a73-bd61-5159-869c-a088422b3ad9', 'en', 'red', 'красный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e2507616-ec1d-575c-b3ab-f6ff14d0dea8', 'en', 'blue', 'синий', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3f905eed-a6d9-5d4e-9e8e-32065cb8f178', 'en', 'small', 'маленький', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9bc4320f-90eb-5968-a3c8-cb6a2e0279c9', 'en', 'large', 'большой', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('310c3d46-489c-5625-8277-15295f6aabf0', 'en', 'price', 'цена', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4ace1a76-88e1-5840-b0c4-7b6ffbcd22a6', 'en', 'dollar', 'доллар', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fc7053ba-f483-55d6-8312-5919aae8c526', 'en', 'cent', 'цент', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('71d0084c-b0d3-5a4e-84b7-364dabd454aa', 'en', 'ten dollars', 'десять долларов', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('52691f2d-a439-5d3b-a903-8ad0288298d7', 'en', 'twenty dollars', 'двадцать долларов', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5107c58b-74bf-5f55-8b26-8486ca9803c6', 'en', 'fifty cents', 'пятьдесят центов', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cbd1250e-28e3-5303-8da6-6932d8afee8d', 'en', 'How much is it?', 'Сколько это стоит?', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('08750dc0-a523-5302-af1c-0556e5c1b821', 'en', 'checkout', 'касса', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5c7193f5-e486-5df8-a5cc-a05102b20d02', 'en', 'cash', 'наличные', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('078b172d-8324-5a0f-9f66-65c282d485c1', 'en', 'card', 'карта', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('975a1a75-48ca-58e3-b77e-58fbe6c26542', 'en', 'receipt', 'чек', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('29edec5a-8470-5156-93fd-8c23d8cb4246', 'en', 'change', 'сдача', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1819abe7-8db8-5189-a37d-3b3266e4a3fb', 'en', 'pay', 'платить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('57791701-61bb-5146-b822-16ee4b46e286', 'en', 'Can I pay by card?', 'Можно оплатить картой?', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c701a48d-6f55-5a2a-a06c-33fa1cd07fff', id, '3949fc20-2803-5b2a-b606-270fdc94aae9', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'shirt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c701a48d-6f55-5a2a-a06c-33fa1cd07fff', id, '3949fc20-2803-5b2a-b606-270fdc94aae9', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'shoes' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c701a48d-6f55-5a2a-a06c-33fa1cd07fff', id, '3949fc20-2803-5b2a-b606-270fdc94aae9', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'bag' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c701a48d-6f55-5a2a-a06c-33fa1cd07fff', id, '3949fc20-2803-5b2a-b606-270fdc94aae9', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'red' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c701a48d-6f55-5a2a-a06c-33fa1cd07fff', id, '3949fc20-2803-5b2a-b606-270fdc94aae9', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'blue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c701a48d-6f55-5a2a-a06c-33fa1cd07fff', id, '3949fc20-2803-5b2a-b606-270fdc94aae9', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'small' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c701a48d-6f55-5a2a-a06c-33fa1cd07fff', id, '3949fc20-2803-5b2a-b606-270fdc94aae9', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'large' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c701a48d-6f55-5a2a-a06c-33fa1cd07fff', id, 'cf4f0a95-092d-5264-9db7-835c47e95f59', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'price' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c701a48d-6f55-5a2a-a06c-33fa1cd07fff', id, 'cf4f0a95-092d-5264-9db7-835c47e95f59', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'dollar' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c701a48d-6f55-5a2a-a06c-33fa1cd07fff', id, 'cf4f0a95-092d-5264-9db7-835c47e95f59', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'cent' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c701a48d-6f55-5a2a-a06c-33fa1cd07fff', id, 'cf4f0a95-092d-5264-9db7-835c47e95f59', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'ten dollars' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c701a48d-6f55-5a2a-a06c-33fa1cd07fff', id, 'cf4f0a95-092d-5264-9db7-835c47e95f59', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'twenty dollars' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c701a48d-6f55-5a2a-a06c-33fa1cd07fff', id, 'cf4f0a95-092d-5264-9db7-835c47e95f59', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'fifty cents' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c701a48d-6f55-5a2a-a06c-33fa1cd07fff', id, 'cf4f0a95-092d-5264-9db7-835c47e95f59', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'How much is it?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c701a48d-6f55-5a2a-a06c-33fa1cd07fff', id, '0c5b3abc-6a7f-580d-b7b5-3f3b6e494aff', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'checkout' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c701a48d-6f55-5a2a-a06c-33fa1cd07fff', id, '0c5b3abc-6a7f-580d-b7b5-3f3b6e494aff', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'cash' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c701a48d-6f55-5a2a-a06c-33fa1cd07fff', id, '0c5b3abc-6a7f-580d-b7b5-3f3b6e494aff', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'card' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c701a48d-6f55-5a2a-a06c-33fa1cd07fff', id, '0c5b3abc-6a7f-580d-b7b5-3f3b6e494aff', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'receipt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c701a48d-6f55-5a2a-a06c-33fa1cd07fff', id, '0c5b3abc-6a7f-580d-b7b5-3f3b6e494aff', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'change' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c701a48d-6f55-5a2a-a06c-33fa1cd07fff', id, '0c5b3abc-6a7f-580d-b7b5-3f3b6e494aff', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'pay' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c701a48d-6f55-5a2a-a06c-33fa1cd07fff', id, '0c5b3abc-6a7f-580d-b7b5-3f3b6e494aff', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'Can I pay by card?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
