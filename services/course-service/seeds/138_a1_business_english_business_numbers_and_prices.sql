-- Track: A1_BUSINESS_ENGLISH_BUSINESS_NUMBERS_AND_PRICES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('a0e454a2-125e-58c7-b124-95f6dea26733', 'A1_BUSINESS_ENGLISH_BUSINESS_NUMBERS_AND_PRICES', 'Деловые числа и цены', 'Научитесь понимать количества, цены, скидки и простые итоговые суммы.', '{"en":"Business Numbers and Prices","ru":"Деловые числа и цены"}'::jsonb, '{"en":"Learn to understand quantities, prices, discounts, and simple totals.","ru":"Научитесь понимать количества, цены, скидки и простые итоговые суммы."}'::jsonb, 'en', 'A1', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ad4aaad3-b1b5-543d-8a72-4859074a01c9', NULL, 'Количество', 'Научиться использовать простые деловые фразы по теме «Количество».', '{"en":"Quantities","ru":"Количество"}'::jsonb, '{"en":"Learn to use simple business phrases for quantities.","ru":"Научиться использовать простые деловые фразы по теме «Количество»."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ba03494-cb28-58a7-838f-3438a39d1a3f', 'ad4aaad3-b1b5-543d-8a72-4859074a01c9', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BEBNAP_L1_MP_P1","left":"one","right":"один"},{"id":"BEBNAP_L1_MP_P2","left":"ten","right":"десять"},{"id":"BEBNAP_L1_MP_P3","left":"twenty","right":"двадцать"},{"id":"BEBNAP_L1_MP_P4","left":"hundred","right":"сто"},{"id":"BEBNAP_L1_MP_P5","left":"item","right":"товар"},{"id":"BEBNAP_L1_MP_P6","left":"quantity","right":"количество"},{"id":"BEBNAP_L1_MP_P7","left":"How many?","right":"Сколько?"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9531ea67-26f3-5864-8bad-692eb4538db3', 'ad4aaad3-b1b5-543d-8a72-4859074a01c9', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “one.”","instruction":"Выберите правильный ответ.","options":[{"id":"BEBNAP_L1_Q_A","is_correct":true,"text":"one"},{"id":"BEBNAP_L1_Q_B","is_correct":false,"text":"ten"},{"id":"BEBNAP_L1_Q_C","is_correct":false,"text":"twenty"}],"question":"Which phrase is connected with “one”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d38fcd57-9aa9-5e11-ac1d-0db880cc9281', 'ad4aaad3-b1b5-543d-8a72-4859074a01c9', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We need twenty items.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Нам нужно двадцать товаров.","target_language":"en","word_bank":["items.","twenty","need","We"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fea8773e-d424-564c-bfd5-2f47223581ae', 'ad4aaad3-b1b5-543d-8a72-4859074a01c9', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"hundred","instruction":"Выберите подходящее слово.","options":["hundred","meeting","email"],"sentence_template":"The quantity is one ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1805a249-6d50-5658-a74b-ddf18372b9a0', 'ad4aaad3-b1b5-543d-8a72-4859074a01c9', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","quantity","is","one","hundred."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["hundred.","one","is","quantity","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('232e7c11-b5e4-502c-837d-66d801c0fc26', 'ad4aaad3-b1b5-543d-8a72-4859074a01c9', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The customer needs one hundred blue folders.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ba519b59-8c04-5b65-9b38-21921f30cfa3', 'ad4aaad3-b1b5-543d-8a72-4859074a01c9', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We need twenty items.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Нам нужно двадцать товаров."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('79de950f-1547-5947-b50c-ea85b10ea66b', 'ad4aaad3-b1b5-543d-8a72-4859074a01c9', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Salesperson","text":"How many boxes do you need?","translation":"Деловой вопрос.","type":"dialogue"},{"character":"You","text":"We need twenty boxes.","translation":"Деловой ответ.","type":"dialogue"},{"options":[{"is_correct":true,"text":"We need twenty boxes."},{"is_correct":false,"text":"I do not know this place."}],"text":"What is the natural response?","type":"choice"}],"title":"Quantities"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('557f8536-1dbe-5d67-a5bb-a4e42cc68f9a', 'ad4aaad3-b1b5-543d-8a72-4859074a01c9', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“quantity” means the number or amount of something.","instruction":"Выберите значение.","language":"en","options":[{"id":"BEBNAP_L1_D_A","is_correct":true,"text":"The number or amount of something"},{"id":"BEBNAP_L1_D_B","is_correct":false,"text":"A day of the week"},{"id":"BEBNAP_L1_D_C","is_correct":false,"text":"A type of food"}],"word":"quantity"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08520961-f90b-53a8-b5db-d5b8b9162187', 'ad4aaad3-b1b5-543d-8a72-4859074a01c9', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The quantity is one hundred.","explanation":"The missing word is “hundred.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"hundred","id":"BEBNAP_L1_LW_A","is_correct":true},{"audio_text":"meeting","id":"BEBNAP_L1_LW_B","is_correct":false},{"audio_text":"email","id":"BEBNAP_L1_LW_C","is_correct":false}],"sentence_template":"The quantity is one ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f0739955-5e55-5c17-a935-21c6bb469470', 'ad4aaad3-b1b5-543d-8a72-4859074a01c9', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"hundred","explanation":"The complete sentence is “The quantity is one hundred.”","hint_prefix":"hu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The quantity is one ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('04cc5f72-a42e-5a41-a984-6dad63f25279', 'ad4aaad3-b1b5-543d-8a72-4859074a01c9', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each business phrase with the same written phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"one","id":"BEBNAP_L1_VM_P1","text":"one"},{"audio_text":"ten","id":"BEBNAP_L1_VM_P2","text":"ten"},{"audio_text":"twenty","id":"BEBNAP_L1_VM_P3","text":"twenty"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4bb839f8-7ac0-5d8f-9239-9d3115054c8b', 'ad4aaad3-b1b5-543d-8a72-4859074a01c9', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Salesperson","text":"How many boxes do you need?"}],"explanation":"The first option is the natural business response.","instruction":"Ответьте.","options":[{"id":"BEBNAP_L1_C_A","is_correct":true,"text":"We need twenty boxes."},{"id":"BEBNAP_L1_C_B","is_correct":false,"text":"It is a sunny day."},{"id":"BEBNAP_L1_C_C","is_correct":false,"text":"My family is at home."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a0e454a2-125e-58c7-b124-95f6dea26733', 'ad4aaad3-b1b5-543d-8a72-4859074a01c9', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5074e582-7ab8-5acc-a3d1-d032f1d43948', NULL, 'Цены', 'Научиться использовать простые деловые фразы по теме «Цены».', '{"en":"Prices","ru":"Цены"}'::jsonb, '{"en":"Learn to use simple business phrases for prices.","ru":"Научиться использовать простые деловые фразы по теме «Цены»."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08b11b66-638f-57b4-b89a-9b2871fdf95a', '5074e582-7ab8-5acc-a3d1-d032f1d43948', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BEBNAP_L2_MP_P1","left":"price","right":"цена"},{"id":"BEBNAP_L2_MP_P2","left":"cost","right":"стоить"},{"id":"BEBNAP_L2_MP_P3","left":"dollar","right":"доллар"},{"id":"BEBNAP_L2_MP_P4","left":"cent","right":"цент"},{"id":"BEBNAP_L2_MP_P5","left":"each","right":"каждый"},{"id":"BEBNAP_L2_MP_P6","left":"total","right":"итого"},{"id":"BEBNAP_L2_MP_P7","left":"How much?","right":"Сколько стоит?"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e57ce4e-2d2f-572c-a715-cbfdb5def9bc', '5074e582-7ab8-5acc-a3d1-d032f1d43948', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “price.”","instruction":"Выберите правильный ответ.","options":[{"id":"BEBNAP_L2_Q_A","is_correct":true,"text":"price"},{"id":"BEBNAP_L2_Q_B","is_correct":false,"text":"cost"},{"id":"BEBNAP_L2_Q_C","is_correct":false,"text":"dollar"}],"question":"Which phrase is connected with “price”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f4319530-217e-548f-9edb-9bf7e57a11ae', '5074e582-7ab8-5acc-a3d1-d032f1d43948', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Each pen costs two dollars.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Каждая ручка стоит два доллара.","target_language":"en","word_bank":["dollars.","two","costs","pen","Each"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('849b56bb-c252-5fd0-ae88-ba690440d4f4', '5074e582-7ab8-5acc-a3d1-d032f1d43948', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"dollars","instruction":"Выберите подходящее слово.","options":["dollars","folders","calls"],"sentence_template":"The total is fifty ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2884f1b-f392-5641-8057-63e869b7a94c', '5074e582-7ab8-5acc-a3d1-d032f1d43948', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","total","is","fifty","dollars."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["dollars.","fifty","is","total","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3f98bd11-4138-5286-8391-2fdc72838e6b', '5074e582-7ab8-5acc-a3d1-d032f1d43948', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Each box costs ten dollars. The total is fifty dollars.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c69a5caa-492d-5487-9c94-1349d5d57ad4', '5074e582-7ab8-5acc-a3d1-d032f1d43948', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Each pen costs two dollars.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Каждая ручка стоит два доллара."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('852516af-ac85-512e-ab5f-3eae28edc767', '5074e582-7ab8-5acc-a3d1-d032f1d43948', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Customer","text":"How much is each item?","translation":"Деловой вопрос.","type":"dialogue"},{"character":"You","text":"Each item is five dollars.","translation":"Деловой ответ.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Each item is five dollars."},{"is_correct":false,"text":"I do not know this place."}],"text":"What is the natural response?","type":"choice"}],"title":"Prices"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4134e299-a923-512f-91d2-5aacda090ce9', '5074e582-7ab8-5acc-a3d1-d032f1d43948', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“price” means the amount of money needed to buy something.","instruction":"Выберите значение.","language":"en","options":[{"id":"BEBNAP_L2_D_A","is_correct":true,"text":"The amount of money needed to buy something"},{"id":"BEBNAP_L2_D_B","is_correct":false,"text":"A day of the week"},{"id":"BEBNAP_L2_D_C","is_correct":false,"text":"A type of food"}],"word":"price"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c56d149-e629-5d47-9721-7ddffca1e5b5', '5074e582-7ab8-5acc-a3d1-d032f1d43948', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The total is fifty dollars.","explanation":"The missing word is “dollars.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"dollars","id":"BEBNAP_L2_LW_A","is_correct":true},{"audio_text":"folders","id":"BEBNAP_L2_LW_B","is_correct":false},{"audio_text":"calls","id":"BEBNAP_L2_LW_C","is_correct":false}],"sentence_template":"The total is fifty ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('340e0823-f136-51c0-a3f3-343cfba75c8a', '5074e582-7ab8-5acc-a3d1-d032f1d43948', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"dollars","explanation":"The complete sentence is “The total is fifty dollars.”","hint_prefix":"do","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The total is fifty ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('076fcf65-3309-5345-8ac4-aeea31eb9baa', '5074e582-7ab8-5acc-a3d1-d032f1d43948', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each business phrase with the same written phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"price","id":"BEBNAP_L2_VM_P1","text":"price"},{"audio_text":"cost","id":"BEBNAP_L2_VM_P2","text":"cost"},{"audio_text":"dollar","id":"BEBNAP_L2_VM_P3","text":"dollar"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('750151f9-9937-5edb-aa1c-a06ab871db66', '5074e582-7ab8-5acc-a3d1-d032f1d43948', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Customer","text":"How much is each item?"}],"explanation":"The first option is the natural business response.","instruction":"Ответьте.","options":[{"id":"BEBNAP_L2_C_A","is_correct":true,"text":"Each item is five dollars."},{"id":"BEBNAP_L2_C_B","is_correct":false,"text":"It is a sunny day."},{"id":"BEBNAP_L2_C_C","is_correct":false,"text":"My family is at home."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a0e454a2-125e-58c7-b124-95f6dea26733', '5074e582-7ab8-5acc-a3d1-d032f1d43948', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a300189f-8769-5ff6-8e48-74becbf4d242', NULL, 'Скидки и итог', 'Научиться использовать простые деловые фразы по теме «Скидки и итог».', '{"en":"Discounts and Totals","ru":"Скидки и итог"}'::jsonb, '{"en":"Learn to use simple business phrases for discounts and totals.","ru":"Научиться использовать простые деловые фразы по теме «Скидки и итог»."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c0344002-6fc6-5bfb-be50-1e4924e3f5e7', 'a300189f-8769-5ff6-8e48-74becbf4d242', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BEBNAP_L3_MP_P1","left":"discount","right":"скидка"},{"id":"BEBNAP_L3_MP_P2","left":"sale","right":"распродажа"},{"id":"BEBNAP_L3_MP_P3","left":"total","right":"итого"},{"id":"BEBNAP_L3_MP_P4","left":"cheap","right":"дешёвый"},{"id":"BEBNAP_L3_MP_P5","left":"expensive","right":"дорогой"},{"id":"BEBNAP_L3_MP_P6","left":"ten percent","right":"десять процентов"},{"id":"BEBNAP_L3_MP_P7","left":"special price","right":"специальная цена"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08e5a9f6-7e74-540f-8592-23521abe78bd', 'a300189f-8769-5ff6-8e48-74becbf4d242', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “discount.”","instruction":"Выберите правильный ответ.","options":[{"id":"BEBNAP_L3_Q_A","is_correct":true,"text":"discount"},{"id":"BEBNAP_L3_Q_B","is_correct":false,"text":"sale"},{"id":"BEBNAP_L3_Q_C","is_correct":false,"text":"total"}],"question":"Which phrase is connected with “discount”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ccbdd5a2-058c-51a2-bbb4-17b1cb27b42a', 'a300189f-8769-5ff6-8e48-74becbf4d242', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We have a ten percent discount.","instruction":"Соберите перевод.","source_language":"ru","source_text":"У нас скидка десять процентов.","target_language":"en","word_bank":["discount.","percent","ten","a","have","We"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3b411c01-3557-512a-86aa-66de0f82b7dd', 'a300189f-8769-5ff6-8e48-74becbf4d242', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"total","instruction":"Выберите подходящее слово.","options":["total","driver","kitchen"],"sentence_template":"This is the final ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('93ca2127-fa7c-587b-b4e5-0eff4d5525d2', 'a300189f-8769-5ff6-8e48-74becbf4d242', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["This","is","the","final","total."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["total.","final","the","is","This"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('22a66bb8-89e8-583a-9bab-b24b8857507d', 'a300189f-8769-5ff6-8e48-74becbf4d242', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The special price is eighty dollars after the discount.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6a9498af-78ad-57c0-8c4b-1fec64138461', 'a300189f-8769-5ff6-8e48-74becbf4d242', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We have a ten percent discount.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"У нас скидка десять процентов."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7df27362-c411-5217-b23c-7aebecef38ac', 'a300189f-8769-5ff6-8e48-74becbf4d242', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Customer","text":"Is there a discount?","translation":"Деловой вопрос.","type":"dialogue"},{"character":"You","text":"Yes. The discount is ten percent.","translation":"Деловой ответ.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The discount is ten percent."},{"is_correct":false,"text":"I do not know this place."}],"text":"What is the natural response?","type":"choice"}],"title":"Discounts and Totals"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5f5f927-69cb-52f5-9d47-16115e9cae17', 'a300189f-8769-5ff6-8e48-74becbf4d242', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“discount” means a reduction in the usual price.","instruction":"Выберите значение.","language":"en","options":[{"id":"BEBNAP_L3_D_A","is_correct":true,"text":"A reduction in the usual price"},{"id":"BEBNAP_L3_D_B","is_correct":false,"text":"A day of the week"},{"id":"BEBNAP_L3_D_C","is_correct":false,"text":"A type of food"}],"word":"discount"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f77170e-ca94-5adb-af3b-f832da15ae0d', 'a300189f-8769-5ff6-8e48-74becbf4d242', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"This is the final total.","explanation":"The missing word is “total.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"total","id":"BEBNAP_L3_LW_A","is_correct":true},{"audio_text":"driver","id":"BEBNAP_L3_LW_B","is_correct":false},{"audio_text":"kitchen","id":"BEBNAP_L3_LW_C","is_correct":false}],"sentence_template":"This is the final ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e503eab8-bd30-5adf-9171-93f37120baa6', 'a300189f-8769-5ff6-8e48-74becbf4d242', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"total","explanation":"The complete sentence is “This is the final total.”","hint_prefix":"to","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"This is the final ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4f3847f5-c3c0-52d8-9404-de0c0b0fc4f4', 'a300189f-8769-5ff6-8e48-74becbf4d242', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each business phrase with the same written phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"discount","id":"BEBNAP_L3_VM_P1","text":"discount"},{"audio_text":"sale","id":"BEBNAP_L3_VM_P2","text":"sale"},{"audio_text":"total","id":"BEBNAP_L3_VM_P3","text":"total"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4ef3ecc5-66e9-54ea-933c-efa5781fed76', 'a300189f-8769-5ff6-8e48-74becbf4d242', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Customer","text":"Is there a discount?"}],"explanation":"The first option is the natural business response.","instruction":"Ответьте.","options":[{"id":"BEBNAP_L3_C_A","is_correct":true,"text":"Yes. The discount is ten percent."},{"id":"BEBNAP_L3_C_B","is_correct":false,"text":"It is a sunny day."},{"id":"BEBNAP_L3_C_C","is_correct":false,"text":"My family is at home."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a0e454a2-125e-58c7-b124-95f6dea26733', 'a300189f-8769-5ff6-8e48-74becbf4d242', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('30d5758b-f35a-575b-a5a2-0c1f2037909a', 'en', 'one', 'один', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ca4dd2bb-58a8-5fbe-8636-76ef4b00f58d', 'en', 'ten', 'десять', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0874bb50-bf18-5aa5-ae57-0692884ba84a', 'en', 'twenty', 'двадцать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1ae90966-53b9-5d61-af90-548d33069a65', 'en', 'hundred', 'сто', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8f5d75dc-643f-55c9-a0f0-5dbe7407d293', 'en', 'item', 'товар', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c4867a29-e293-5d5d-95cf-06004ca67ebc', 'en', 'quantity', 'количество', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9ac31622-e90f-5b6a-a66e-4f40755797ef', 'en', 'How many?', 'Сколько?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('310c3d46-489c-5625-8277-15295f6aabf0', 'en', 'price', 'цена', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('05b494fe-cdbf-51db-a4dd-facc3396f805', 'en', 'cost', 'стоить', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4ace1a76-88e1-5840-b0c4-7b6ffbcd22a6', 'en', 'dollar', 'доллар', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fc7053ba-f483-55d6-8312-5919aae8c526', 'en', 'cent', 'цент', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('10aad6cb-782b-5f93-b726-7efaecd327eb', 'en', 'each', 'каждый', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a8a75f95-c635-5087-9abf-58d4da38a289', 'en', 'total', 'итого', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c6da9228-3c6c-5fd5-8a3f-bad0552efc19', 'en', 'How much?', 'Сколько стоит?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9a8474a4-2ce5-580f-8eb2-7959cdfc4e60', 'en', 'discount', 'скидка', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eb5ec671-1c0f-5459-b139-9734c5d0b15c', 'en', 'sale', 'распродажа', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a8a75f95-c635-5087-9abf-58d4da38a289', 'en', 'total', 'итого', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5550e868-90ba-565b-8087-4d2c3334fd9e', 'en', 'cheap', 'дешёвый', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('19a72870-962d-52ab-b690-6bf36061182a', 'en', 'expensive', 'дорогой', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f4912c8a-378e-57f6-83c6-d11bb1cae28d', 'en', 'ten percent', 'десять процентов', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('872894cf-0ee0-5bd1-893c-1021933e6b40', 'en', 'special price', 'специальная цена', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0e454a2-125e-58c7-b124-95f6dea26733', id, 'ad4aaad3-b1b5-543d-8a72-4859074a01c9', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'one' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0e454a2-125e-58c7-b124-95f6dea26733', id, 'ad4aaad3-b1b5-543d-8a72-4859074a01c9', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'ten' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0e454a2-125e-58c7-b124-95f6dea26733', id, 'ad4aaad3-b1b5-543d-8a72-4859074a01c9', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'twenty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0e454a2-125e-58c7-b124-95f6dea26733', id, 'ad4aaad3-b1b5-543d-8a72-4859074a01c9', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'hundred' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0e454a2-125e-58c7-b124-95f6dea26733', id, 'ad4aaad3-b1b5-543d-8a72-4859074a01c9', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'item' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0e454a2-125e-58c7-b124-95f6dea26733', id, 'ad4aaad3-b1b5-543d-8a72-4859074a01c9', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'quantity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0e454a2-125e-58c7-b124-95f6dea26733', id, 'ad4aaad3-b1b5-543d-8a72-4859074a01c9', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'How many?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0e454a2-125e-58c7-b124-95f6dea26733', id, '5074e582-7ab8-5acc-a3d1-d032f1d43948', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'price' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0e454a2-125e-58c7-b124-95f6dea26733', id, '5074e582-7ab8-5acc-a3d1-d032f1d43948', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'cost' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0e454a2-125e-58c7-b124-95f6dea26733', id, '5074e582-7ab8-5acc-a3d1-d032f1d43948', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'dollar' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0e454a2-125e-58c7-b124-95f6dea26733', id, '5074e582-7ab8-5acc-a3d1-d032f1d43948', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'cent' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0e454a2-125e-58c7-b124-95f6dea26733', id, '5074e582-7ab8-5acc-a3d1-d032f1d43948', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'each' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0e454a2-125e-58c7-b124-95f6dea26733', id, '5074e582-7ab8-5acc-a3d1-d032f1d43948', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'total' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0e454a2-125e-58c7-b124-95f6dea26733', id, '5074e582-7ab8-5acc-a3d1-d032f1d43948', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'How much?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0e454a2-125e-58c7-b124-95f6dea26733', id, 'a300189f-8769-5ff6-8e48-74becbf4d242', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'discount' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0e454a2-125e-58c7-b124-95f6dea26733', id, 'a300189f-8769-5ff6-8e48-74becbf4d242', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'sale' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0e454a2-125e-58c7-b124-95f6dea26733', id, 'a300189f-8769-5ff6-8e48-74becbf4d242', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'total' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0e454a2-125e-58c7-b124-95f6dea26733', id, 'a300189f-8769-5ff6-8e48-74becbf4d242', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'cheap' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0e454a2-125e-58c7-b124-95f6dea26733', id, 'a300189f-8769-5ff6-8e48-74becbf4d242', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'expensive' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0e454a2-125e-58c7-b124-95f6dea26733', id, 'a300189f-8769-5ff6-8e48-74becbf4d242', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'ten percent' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a0e454a2-125e-58c7-b124-95f6dea26733', id, 'a300189f-8769-5ff6-8e48-74becbf4d242', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'special price' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
