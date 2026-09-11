-- Track: B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('b853ce35-ee3c-56a1-80d3-e0afae9bf24e', 'B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM', 'Наследие, экскурсии, доступность и этичный туризм', 'Развивайте уверенное общение уровня B2 в сложных поездках по теме «Наследие, экскурсии, доступность и этичный туризм», оценивая варианты, права, риски и культурный контекст.', '{"en":"Heritage Tours, Access and Ethical Tourism","ru":"Наследие, экскурсии, доступность и этичный туризм"}'::jsonb, '{"en":"Develop confident B2 communication for heritage tours, access and ethical tourism by evaluating options, rights, risks, and cultural context.","ru":"Развивайте уверенное общение уровня B2 в сложных поездках по теме «Наследие, экскурсии, доступность и этичный туризм», оценивая варианты, права, риски и культурный контекст."}'::jsonb, 'en', 'B2', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7edfcbae-b14f-5e49-b816-d4cfb5bca5f9', NULL, 'Ситуация и ключевые понятия', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Evaluating a Cultural Experience","ru":"Ситуация и ключевые понятия"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa0a219d-f17b-50b6-b32c-ee038ca09e04', '7edfcbae-b14f-5e49-b816-d4cfb5bca5f9', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L1_D01","left":"cultural heritage","right":"культурное наследие"},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L1_D02","left":"historical interpretation","right":"историческая интерпретация"},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L1_D03","left":"community-led tourism","right":"туризм под руководством местного сообщества"},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L1_D04","left":"visitor capacity","right":"допустимое число посетителей"},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L1_D05","left":"accessibility provision","right":"меры доступности"},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L1_D06","left":"authentic representation","right":"достоверное представление"},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L1_D07","left":"ethical operator","right":"этичный туроператор"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d942ea50-e818-5f2c-978e-a27b6c34bfde', '7edfcbae-b14f-5e49-b816-d4cfb5bca5f9', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L1_D08","is_correct":true,"text":"Cultural heritage should be interpreted as a living and contested history rather than reduced to a simple tourist attraction."},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L1_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L1_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('195e6762-75c4-5f18-b01a-6ed7fad598fa', '7edfcbae-b14f-5e49-b816-d4cfb5bca5f9', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Cultural heritage should be interpreted as a living and contested history rather than reduced to a simple tourist attraction.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Культурное наследие следует интерпретировать как живую и спорную историю, а не сводить к простой туристической достопримечательности.","target_language":"en","word_bank":["Cultural","heritage","should","be","interpreted","as","a","living","and","contested","history","rather","than","reduced","to","a","simple","tourist","attraction","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('192bbb8f-d979-5387-973b-e57cdc278799', '7edfcbae-b14f-5e49-b816-d4cfb5bca5f9', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"cultural heritage","instruction":"Выберите подходящее слово.","options":["cultural heritage","visitor capacity","authentic representation"],"sentence_template":"___ should be interpreted as a living and contested history rather than reduced to a simple tourist attraction."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65327d61-e37e-542a-9427-c52849c2c033', '7edfcbae-b14f-5e49-b816-d4cfb5bca5f9', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Cultural","heritage","should","be","interpreted","as","a","living","and","contested","history","rather","than","reduced","to","a","simple","tourist","attraction","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","attraction","tourist","simple","a","to","reduced","than","rather","history","contested","and","living","a","as","interpreted","be","should","heritage","Cultural"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b22c92b-603a-568b-9e0c-033be964eae0', '7edfcbae-b14f-5e49-b816-d4cfb5bca5f9', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Cultural heritage should be interpreted as a living and contested history rather than reduced to a simple tourist attraction. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7b77483-6468-5668-82cf-ffa543162648', '7edfcbae-b14f-5e49-b816-d4cfb5bca5f9', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Cultural heritage should be interpreted as a living and contested history rather than reduced to a simple tourist attraction. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Культурное наследие следует интерпретировать как живую и спорную историю, а не сводить к простой туристической достопримечательности. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f2ffe2f7-a92e-5f23-bc95-46d3ac3871c6', '7edfcbae-b14f-5e49-b816-d4cfb5bca5f9', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"Cultural heritage should be interpreted as a living and contested history rather than reduced to a simple tourist attraction.","translation":"Культурное наследие следует интерпретировать как живую и спорную историю, а не сводить к простой туристической достопримечательности.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Evaluating a Cultural Experience"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fdb9c3d1-ddf6-5e14-9425-c1cccfc9fa0d', '7edfcbae-b14f-5e49-b816-d4cfb5bca5f9', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“cultural heritage” means traditions and places inherited from the past.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L1_D11","is_correct":true,"text":"traditions and places inherited from the past"},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L1_D12","is_correct":false,"text":"an explanation of the meaning of past events"},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L1_D13","is_correct":false,"text":"tourism designed and managed by local residents"}],"word":"cultural heritage"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0c512c7d-d4c3-5eae-9a1c-be2b0fad190c', '7edfcbae-b14f-5e49-b816-d4cfb5bca5f9', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Cultural heritage should be interpreted as a living and contested history rather than reduced to a simple tourist attraction.","explanation":"The missing travel expression is “cultural heritage”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"cultural heritage","id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L1_D14","is_correct":true},{"audio_text":"community-led tourism","id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L1_D15","is_correct":false},{"audio_text":"accessibility provision","id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L1_D16","is_correct":false}],"sentence_template":"___ should be interpreted as a living and contested history rather than reduced to a simple tourist attraction."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('93852700-ce4a-5db9-904a-69529a82eb8a', '7edfcbae-b14f-5e49-b816-d4cfb5bca5f9', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"cultural heritage","explanation":"The complete travel statement uses “cultural heritage” precisely.","hint_prefix":"cult","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ should be interpreted as a living and contested history rather than reduced to a simple tourist attraction."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b16478b4-3711-560c-9e0e-b4249a7a7719', '7edfcbae-b14f-5e49-b816-d4cfb5bca5f9', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"cultural heritage","id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L1_D17","text":"cultural heritage"},{"audio_text":"historical interpretation","id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L1_D18","text":"historical interpretation"},{"audio_text":"community-led tourism","id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L1_D19","text":"community-led tourism"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('940af126-6f3c-59bb-9704-e1675b4bd3e8', '7edfcbae-b14f-5e49-b816-d4cfb5bca5f9', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Evaluating a Cultural Experience”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L1_D20","is_correct":true,"text":"Cultural heritage should be interpreted as a living and contested history rather than reduced to a simple tourist attraction."},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L1_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L1_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b853ce35-ee3c-56a1-80d3-e0afae9bf24e', '7edfcbae-b14f-5e49-b816-d4cfb5bca5f9', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('df0c3b1e-74ba-5b3a-99b3-d06349edd3eb', NULL, 'Переговоры и решение проблемы', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Discussing Access and Interpretation","ru":"Переговоры и решение проблемы"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('24d214b9-50d0-5e59-a11c-ef3d9ac74e71', 'df0c3b1e-74ba-5b3a-99b3-d06349edd3eb', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L2_D01","left":"cultural heritage","right":"культурное наследие"},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L2_D02","left":"historical interpretation","right":"историческая интерпретация"},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L2_D03","left":"community-led tourism","right":"туризм под руководством местного сообщества"},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L2_D04","left":"visitor capacity","right":"допустимое число посетителей"},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L2_D05","left":"accessibility provision","right":"меры доступности"},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L2_D06","left":"authentic representation","right":"достоверное представление"},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L2_D07","left":"ethical operator","right":"этичный туроператор"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e872550e-7576-5c20-b219-332ed9bdb025', 'df0c3b1e-74ba-5b3a-99b3-d06349edd3eb', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L2_D08","is_correct":true,"text":"Community-led tourism can produce more authentic representation while ensuring that a fairer share of revenue remains locally."},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L2_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L2_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('54675a11-5779-5508-8d03-22f4b1c5a3ae', 'df0c3b1e-74ba-5b3a-99b3-d06349edd3eb', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Community-led tourism can produce more authentic representation while ensuring that a fairer share of revenue remains locally.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Туризм под руководством местного сообщества может обеспечить более достоверное представление и сохранить большую долю дохода на местном уровне.","target_language":"en","word_bank":["Community-led","tourism","can","produce","more","authentic","representation","while","ensuring","that","a","fairer","share","of","revenue","remains","locally","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dfb973d5-eccb-5537-8639-4e1d318ed1c9', 'df0c3b1e-74ba-5b3a-99b3-d06349edd3eb', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"historical interpretation","instruction":"Выберите подходящее слово.","options":["historical interpretation","accessibility provision","ethical operator"],"sentence_template":"Community-led tourism can produce more authentic representation while ensuring that a fairer share of revenue remains locally."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('108e6dff-30ee-549d-8676-e9c6201a729d', 'df0c3b1e-74ba-5b3a-99b3-d06349edd3eb', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Community-led","tourism","can","produce","more","authentic","representation","while","ensuring","that","a","fairer","share","of","revenue","remains","locally","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","locally","remains","revenue","of","share","fairer","a","that","ensuring","while","representation","authentic","more","produce","can","tourism","Community-led"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d1ba33b4-bca2-51ff-aba7-36b3ae464070', 'df0c3b1e-74ba-5b3a-99b3-d06349edd3eb', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Community-led tourism can produce more authentic representation while ensuring that a fairer share of revenue remains locally. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0c17901b-a8e5-566b-818a-b2d9494390ea', 'df0c3b1e-74ba-5b3a-99b3-d06349edd3eb', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Community-led tourism can produce more authentic representation while ensuring that a fairer share of revenue remains locally. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Туризм под руководством местного сообщества может обеспечить более достоверное представление и сохранить большую долю дохода на местном уровне. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cb2bc5f3-3f3e-5779-9309-ac1507c2811e', 'df0c3b1e-74ba-5b3a-99b3-d06349edd3eb', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"Community-led tourism can produce more authentic representation while ensuring that a fairer share of revenue remains locally.","translation":"Туризм под руководством местного сообщества может обеспечить более достоверное представление и сохранить большую долю дохода на местном уровне.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Discussing Access and Interpretation"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e7dec55-3b73-5bbb-ab9c-c51451e2d4c1', 'df0c3b1e-74ba-5b3a-99b3-d06349edd3eb', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“historical interpretation” means an explanation of the meaning of past events.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L2_D11","is_correct":true,"text":"an explanation of the meaning of past events"},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L2_D12","is_correct":false,"text":"tourism designed and managed by local residents"},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L2_D13","is_correct":false,"text":"the number a site can receive sustainably"}],"word":"historical interpretation"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ea9640e6-7f1e-5cff-9e1f-5d7911100de2', 'df0c3b1e-74ba-5b3a-99b3-d06349edd3eb', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Community-led tourism can produce more authentic representation while ensuring that a fairer share of revenue remains locally.","explanation":"The missing travel expression is “historical interpretation”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"historical interpretation","id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L2_D14","is_correct":true},{"audio_text":"visitor capacity","id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L2_D15","is_correct":false},{"audio_text":"authentic representation","id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L2_D16","is_correct":false}],"sentence_template":"Community-led tourism can produce more authentic representation while ensuring that a fairer share of revenue remains locally."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('11d28c6b-9011-5f0d-a175-9e668b799f0d', 'df0c3b1e-74ba-5b3a-99b3-d06349edd3eb', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"historical interpretation","explanation":"The complete travel statement uses “historical interpretation” precisely.","hint_prefix":"hist","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Community-led tourism can produce more authentic representation while ensuring that a fairer share of revenue remains locally."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('224b6b94-2a5a-5b6a-924f-2ac3678ac7eb', 'df0c3b1e-74ba-5b3a-99b3-d06349edd3eb', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"cultural heritage","id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L2_D17","text":"cultural heritage"},{"audio_text":"historical interpretation","id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L2_D18","text":"historical interpretation"},{"audio_text":"community-led tourism","id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L2_D19","text":"community-led tourism"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('77d8a25b-fdc2-5379-87df-39d13736afd3', 'df0c3b1e-74ba-5b3a-99b3-d06349edd3eb', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Discussing Access and Interpretation”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L2_D20","is_correct":true,"text":"Community-led tourism can produce more authentic representation while ensuring that a fairer share of revenue remains locally."},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L2_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L2_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b853ce35-ee3c-56a1-80d3-e0afae9bf24e', 'df0c3b1e-74ba-5b3a-99b3-d06349edd3eb', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0495e13c-9c56-5b6a-ad8e-d69c5040acad', NULL, 'Взвешенное действие и вывод', 'Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение.', '{"en":"Choosing an Ethical Tour","ru":"Взвешенное действие и вывод"}'::jsonb, '{"en":"Handle a complex B2 travel situation confidently by clarifying conditions, advocating a position diplomatically, and agreeing a practical solution.","ru":"Уверенно решать сложную ситуацию путешествия уровня B2, уточняя условия, дипломатично отстаивая позицию и согласовывая практическое решение."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('61963282-09e5-5464-b068-56dd85064772', '0495e13c-9c56-5b6a-ad8e-d69c5040acad', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L3_D01","left":"cultural heritage","right":"культурное наследие"},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L3_D02","left":"historical interpretation","right":"историческая интерпретация"},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L3_D03","left":"community-led tourism","right":"туризм под руководством местного сообщества"},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L3_D04","left":"visitor capacity","right":"допустимое число посетителей"},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L3_D05","left":"accessibility provision","right":"меры доступности"},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L3_D06","left":"authentic representation","right":"достоверное представление"},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L3_D07","left":"ethical operator","right":"этичный туроператор"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0d9345f1-0a1a-58a1-bef3-c7b87b51c88d', '0495e13c-9c56-5b6a-ad8e-d69c5040acad', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 travel language and considers conditions, rights, consequences, and practical action.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L3_D08","is_correct":true,"text":"An ethical operator respects visitor capacity, publishes accessibility provisions clearly, and avoids activities that exploit residents or wildlife."},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L3_D09","is_correct":false,"text":"The conditions and consequences are irrelevant, so the first available option should be accepted immediately."},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L3_D10","is_correct":false,"text":"There is no need to retain evidence or clarify who is responsible for the problem."}],"question":"Which response handles the travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('01ea177e-9013-5598-811d-d8a11784f64c', '0495e13c-9c56-5b6a-ad8e-d69c5040acad', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"An ethical operator respects visitor capacity, publishes accessibility provisions clearly, and avoids activities that exploit residents or wildlife.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Этичный туроператор соблюдает допустимое число посетителей, ясно публикует меры доступности и избегает деятельности, эксплуатирующей жителей или животных.","target_language":"en","word_bank":["An","ethical","operator","respects","visitor","capacity",",","publishes","accessibility","provisions","clearly",",","and","avoids","activities","that","exploit","residents","or","wildlife","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('531e3fba-2b77-52a2-84da-8484afea336e', '0495e13c-9c56-5b6a-ad8e-d69c5040acad', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"community-led tourism","instruction":"Выберите подходящее слово.","options":["community-led tourism","authentic representation","cultural heritage"],"sentence_template":"An ethical operator respects visitor capacity, publishes accessibility provisions clearly, and avoids activities that exploit residents or wildlife."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('352018ee-d367-5d3d-a5a1-3b5fdba39d61', '0495e13c-9c56-5b6a-ad8e-d69c5040acad', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["An","ethical","operator","respects","visitor","capacity",",","publishes","accessibility","provisions","clearly",",","and","avoids","activities","that","exploit","residents","or","wildlife","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","wildlife","or","residents","exploit","that","activities","avoids","and",",","clearly","provisions","accessibility","publishes",",","capacity","visitor","respects","operator","ethical","An"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d65df339-9f49-5ee4-a6bb-cb5eb0a3f181', '0495e13c-9c56-5b6a-ad8e-d69c5040acad', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"An ethical operator respects visitor capacity, publishes accessibility provisions clearly, and avoids activities that exploit residents or wildlife. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7fdf869-5886-521c-ad25-72797f42cc9b', '0495e13c-9c56-5b6a-ad8e-d69c5040acad', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"An ethical operator respects visitor capacity, publishes accessibility provisions clearly, and avoids activities that exploit residents or wildlife. Before accepting the proposed solution, confirm the conditions, likely consequences, and any evidence that should be retained. Although the alternative may be less convenient, it could provide greater certainty and reduce the risk of further disruption.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Этичный туроператор соблюдает допустимое число посетителей, ясно публикует меры доступности и избегает деятельности, эксплуатирующей жителей или животных. Прежде чем принимать предложенное решение, подтвердите условия, вероятные последствия и доказательства, которые следует сохранить. Хотя альтернатива может быть менее удобной, она способна обеспечить большую определённость и снизить риск дальнейшего сбоя."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc522ada-0c0c-5fec-aa77-29d255d01106', '0495e13c-9c56-5b6a-ad8e-d69c5040acad', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"An ethical operator respects visitor capacity, publishes accessibility provisions clearly, and avoids activities that exploit residents or wildlife.","translation":"Этичный туроператор соблюдает допустимое число посетителей, ясно публикует меры доступности и избегает деятельности, эксплуатирующей жителей или животных.","type":"dialogue"},{"character":"Agent","text":"Which condition or practical consequence matters most before you accept that option?","translation":"Какое условие или практическое последствие наиболее важно перед принятием этого варианта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would clarify the conditions, compare the consequences, and request written confirmation of the agreed solution."},{"is_correct":false,"text":"I would accept immediately without checking the terms or keeping any record."}],"text":"Which reply moves the situation toward resolution?","type":"choice"}],"title":"Choosing an Ethical Tour"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('01b6c6a2-f4ea-5364-b763-a2ad4af86e85', '0495e13c-9c56-5b6a-ad8e-d69c5040acad', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“community-led tourism” means tourism designed and managed by local residents.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L3_D11","is_correct":true,"text":"tourism designed and managed by local residents"},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L3_D12","is_correct":false,"text":"the number a site can receive sustainably"},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L3_D13","is_correct":false,"text":"support enabling people with disabilities to participate"}],"word":"community-led tourism"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f14f4dbc-f0f5-5d36-82d6-1cf439125000', '0495e13c-9c56-5b6a-ad8e-d69c5040acad', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"An ethical operator respects visitor capacity, publishes accessibility provisions clearly, and avoids activities that exploit residents or wildlife.","explanation":"The missing travel expression is “community-led tourism”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"community-led tourism","id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L3_D14","is_correct":true},{"audio_text":"accessibility provision","id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L3_D15","is_correct":false},{"audio_text":"ethical operator","id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L3_D16","is_correct":false}],"sentence_template":"An ethical operator respects visitor capacity, publishes accessibility provisions clearly, and avoids activities that exploit residents or wildlife."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d70acf9-835e-540f-b14d-6d0564352307', '0495e13c-9c56-5b6a-ad8e-d69c5040acad', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"community-led tourism","explanation":"The complete travel statement uses “community-led tourism” precisely.","hint_prefix":"comm","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"An ethical operator respects visitor capacity, publishes accessibility provisions clearly, and avoids activities that exploit residents or wildlife."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d66e7d03-25f9-5122-b8ab-bd2f0bbba750', '0495e13c-9c56-5b6a-ad8e-d69c5040acad', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"cultural heritage","id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L3_D17","text":"cultural heritage"},{"audio_text":"historical interpretation","id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L3_D18","text":"historical interpretation"},{"audio_text":"community-led tourism","id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L3_D19","text":"community-led tourism"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2ce0e55-3fda-5a85-a4bb-88af9a95b80a', '0495e13c-9c56-5b6a-ad8e-d69c5040acad', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"What would you do in “Choosing an Ethical Tour”?"}],"explanation":"The correct response gives a developed, realistic B2 travel solution using precise language, qualification, and justified action.","instruction":"Ответьте.","options":[{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L3_D20","is_correct":true,"text":"An ethical operator respects visitor capacity, publishes accessibility provisions clearly, and avoids activities that exploit residents or wildlife."},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L3_D21","is_correct":false,"text":"I would ignore the conditions, available evidence, and possible consequences."},{"id":"B2_TRAVEL_HERITAGE_TOURS_ACCESS_AND_ETHICAL_TOURISM_L3_D22","is_correct":false,"text":"I would avoid clarifying the problem and assume that someone else will resolve it."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b853ce35-ee3c-56a1-80d3-e0afae9bf24e', '0495e13c-9c56-5b6a-ad8e-d69c5040acad', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('573eca50-cddc-5a95-8e4f-04c94850b510', 'en', 'cultural heritage', 'культурное наследие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4a87d246-d2eb-5dbc-89d5-de01e59e1aad', 'en', 'historical interpretation', 'историческая интерпретация', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e38b93eb-11c8-5151-90a4-5cd588ab8047', 'en', 'community-led tourism', 'туризм под руководством местного сообщества', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3edac833-12d5-5c7c-bde0-6f540dee8f3f', 'en', 'visitor capacity', 'допустимое число посетителей', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4350ed5d-fe40-5205-a156-12213e0cba95', 'en', 'accessibility provision', 'меры доступности', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f4557a45-4cf8-5865-ab9b-5a9a52e684c1', 'en', 'authentic representation', 'достоверное представление', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6a248125-097a-5868-a64c-008d5371dbfc', 'en', 'ethical operator', 'этичный туроператор', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('573eca50-cddc-5a95-8e4f-04c94850b510', 'en', 'cultural heritage', 'культурное наследие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4a87d246-d2eb-5dbc-89d5-de01e59e1aad', 'en', 'historical interpretation', 'историческая интерпретация', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e38b93eb-11c8-5151-90a4-5cd588ab8047', 'en', 'community-led tourism', 'туризм под руководством местного сообщества', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3edac833-12d5-5c7c-bde0-6f540dee8f3f', 'en', 'visitor capacity', 'допустимое число посетителей', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4350ed5d-fe40-5205-a156-12213e0cba95', 'en', 'accessibility provision', 'меры доступности', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f4557a45-4cf8-5865-ab9b-5a9a52e684c1', 'en', 'authentic representation', 'достоверное представление', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6a248125-097a-5868-a64c-008d5371dbfc', 'en', 'ethical operator', 'этичный туроператор', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('573eca50-cddc-5a95-8e4f-04c94850b510', 'en', 'cultural heritage', 'культурное наследие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4a87d246-d2eb-5dbc-89d5-de01e59e1aad', 'en', 'historical interpretation', 'историческая интерпретация', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e38b93eb-11c8-5151-90a4-5cd588ab8047', 'en', 'community-led tourism', 'туризм под руководством местного сообщества', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3edac833-12d5-5c7c-bde0-6f540dee8f3f', 'en', 'visitor capacity', 'допустимое число посетителей', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4350ed5d-fe40-5205-a156-12213e0cba95', 'en', 'accessibility provision', 'меры доступности', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f4557a45-4cf8-5865-ab9b-5a9a52e684c1', 'en', 'authentic representation', 'достоверное представление', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6a248125-097a-5868-a64c-008d5371dbfc', 'en', 'ethical operator', 'этичный туроператор', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b853ce35-ee3c-56a1-80d3-e0afae9bf24e', id, '7edfcbae-b14f-5e49-b816-d4cfb5bca5f9', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'cultural heritage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b853ce35-ee3c-56a1-80d3-e0afae9bf24e', id, '7edfcbae-b14f-5e49-b816-d4cfb5bca5f9', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'historical interpretation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b853ce35-ee3c-56a1-80d3-e0afae9bf24e', id, '7edfcbae-b14f-5e49-b816-d4cfb5bca5f9', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'community-led tourism' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b853ce35-ee3c-56a1-80d3-e0afae9bf24e', id, '7edfcbae-b14f-5e49-b816-d4cfb5bca5f9', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'visitor capacity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b853ce35-ee3c-56a1-80d3-e0afae9bf24e', id, '7edfcbae-b14f-5e49-b816-d4cfb5bca5f9', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'accessibility provision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b853ce35-ee3c-56a1-80d3-e0afae9bf24e', id, '7edfcbae-b14f-5e49-b816-d4cfb5bca5f9', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'authentic representation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b853ce35-ee3c-56a1-80d3-e0afae9bf24e', id, '7edfcbae-b14f-5e49-b816-d4cfb5bca5f9', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'ethical operator' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b853ce35-ee3c-56a1-80d3-e0afae9bf24e', id, 'df0c3b1e-74ba-5b3a-99b3-d06349edd3eb', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'cultural heritage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b853ce35-ee3c-56a1-80d3-e0afae9bf24e', id, 'df0c3b1e-74ba-5b3a-99b3-d06349edd3eb', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'historical interpretation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b853ce35-ee3c-56a1-80d3-e0afae9bf24e', id, 'df0c3b1e-74ba-5b3a-99b3-d06349edd3eb', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'community-led tourism' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b853ce35-ee3c-56a1-80d3-e0afae9bf24e', id, 'df0c3b1e-74ba-5b3a-99b3-d06349edd3eb', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'visitor capacity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b853ce35-ee3c-56a1-80d3-e0afae9bf24e', id, 'df0c3b1e-74ba-5b3a-99b3-d06349edd3eb', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'accessibility provision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b853ce35-ee3c-56a1-80d3-e0afae9bf24e', id, 'df0c3b1e-74ba-5b3a-99b3-d06349edd3eb', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'authentic representation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b853ce35-ee3c-56a1-80d3-e0afae9bf24e', id, 'df0c3b1e-74ba-5b3a-99b3-d06349edd3eb', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'ethical operator' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b853ce35-ee3c-56a1-80d3-e0afae9bf24e', id, '0495e13c-9c56-5b6a-ad8e-d69c5040acad', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'cultural heritage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b853ce35-ee3c-56a1-80d3-e0afae9bf24e', id, '0495e13c-9c56-5b6a-ad8e-d69c5040acad', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'historical interpretation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b853ce35-ee3c-56a1-80d3-e0afae9bf24e', id, '0495e13c-9c56-5b6a-ad8e-d69c5040acad', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'community-led tourism' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b853ce35-ee3c-56a1-80d3-e0afae9bf24e', id, '0495e13c-9c56-5b6a-ad8e-d69c5040acad', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'visitor capacity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b853ce35-ee3c-56a1-80d3-e0afae9bf24e', id, '0495e13c-9c56-5b6a-ad8e-d69c5040acad', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'accessibility provision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b853ce35-ee3c-56a1-80d3-e0afae9bf24e', id, '0495e13c-9c56-5b6a-ad8e-d69c5040acad', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'authentic representation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b853ce35-ee3c-56a1-80d3-e0afae9bf24e', id, '0495e13c-9c56-5b6a-ad8e-d69c5040acad', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'ethical operator' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
