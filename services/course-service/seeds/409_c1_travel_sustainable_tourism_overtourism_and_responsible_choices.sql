-- Track: C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('354f20ec-4b06-564e-af47-ebe55ca15753', 'C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES', 'Устойчивый туризм, перегруженность и ответственный выбор', 'Освойте практический английский C1 по теме «Устойчивый туризм, перегруженность и ответственный выбор», оценивая воздействие поездок и принимая взвешенные решения.', '{"en":"Sustainable Tourism, Overtourism and Responsible Choices","ru":"Устойчивый туризм, перегруженность и ответственный выбор"}'::jsonb, '{"en":"Master practical C1 English for sustainable tourism, overtourism and responsible choices by assessing travel impact and making well-reasoned decisions.","ru":"Освойте практический английский C1 по теме «Устойчивый туризм, перегруженность и ответственный выбор», оценивая воздействие поездок и принимая взвешенные решения."}'::jsonb, 'en', 'C1', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7467252b-d199-5a43-92cd-641a95d73883', NULL, 'Практический контекст и ключевые понятия', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Assessing Overtourism Pressure","ru":"Практический контекст и ключевые понятия"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e62b91c-654a-5b1b-b4ac-55eaf48f4330', '7467252b-d199-5a43-92cd-641a95d73883', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L1_D01","left":"overtourism","right":"перегруженность направления туристами"},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L1_D02","left":"carrying capacity","right":"пропускная способность"},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L1_D03","left":"visitor footprint","right":"след от посещений"},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L1_D04","left":"low season","right":"низкий сезон"},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L1_D05","left":"dispersal strategy","right":"стратегия рассредоточения потоков"},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L1_D06","left":"heritage designation","right":"статус объекта наследия"},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L1_D07","left":"carbon-intensive journey","right":"углеродоёмкая поездка"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('986edd94-71ce-5c94-8393-c7c5b3332ce4', '7467252b-d199-5a43-92cd-641a95d73883', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L1_D08","is_correct":true,"text":"Overtourism pushes the destination beyond its carrying capacity, so the visitor footprint should be eased through low-season travel and a thoughtful dispersal strategy."},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L1_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L1_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c9b5e722-f563-5c62-9175-b67196dbde00', '7467252b-d199-5a43-92cd-641a95d73883', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Overtourism pushes the destination beyond its carrying capacity, so the visitor footprint should be eased through low-season travel and a thoughtful dispersal strategy.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Перегруженность туристами выводит направление за пределы пропускной способности, поэтому след от посещений следует снижать за счёт поездок в низкий сезон и продуманной стратегии рассредоточения.","target_language":"en","word_bank":["Overtourism","pushes","the","destination","beyond","its","carrying","capacity,","so","the","visitor","footprint","should","be","eased","through","low-season","travel","and","a","thoughtful","dispersal","strategy","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7bcc55e-3ceb-51c4-9474-e0b403e5ad4d', '7467252b-d199-5a43-92cd-641a95d73883', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"carrying capacity","instruction":"Выберите подходящее слово.","options":["carrying capacity","heritage designation","visitor footprint"],"sentence_template":"Overtourism pushes the destination beyond its ___, so the visitor footprint should be eased through low-season travel and a thoughtful dispersal strategy."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c2703127-ef8d-5215-a5aa-d15c219ae19c', '7467252b-d199-5a43-92cd-641a95d73883', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Overtourism","pushes","the","destination","beyond","its","carrying","capacity,","so","the","visitor","footprint","should","be","eased","through","low-season","travel","and","a","thoughtful","dispersal","strategy","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["beyond","footprint","the","strategy","eased","the",".","should","be","through","destination","dispersal","a","so","visitor","carrying","and","travel","its","low-season","capacity,","pushes","Overtourism","thoughtful"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4bb79bbb-e599-50c5-a35f-23b31f8db12c', '7467252b-d199-5a43-92cd-641a95d73883', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Overtourism pushes the destination beyond its carrying capacity, so the visitor footprint should be eased through low-season travel and a thoughtful dispersal strategy. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('29b855fe-f91b-5b1f-ac78-4cb4e4dd03fa', '7467252b-d199-5a43-92cd-641a95d73883', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Overtourism pushes the destination beyond its carrying capacity, so the visitor footprint should be eased through low-season travel and a thoughtful dispersal strategy. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Перегруженность туристами выводит направление за пределы пропускной способности, поэтому след от посещений следует снижать за счёт поездок в низкий сезон и продуманной стратегии рассредоточения. Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первоначальное решение неудовлетворительно, объясните почему и попросите соразмерную альтернативу, не переходя к конфронтации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16796a70-040c-5434-a9d8-b7bc8203d755', '7467252b-d199-5a43-92cd-641a95d73883', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"Overtourism pushes the destination beyond its carrying capacity, so the visitor footprint should be eased through low-season travel and a thoughtful dispersal strategy.","translation":"Перегруженность туристами выводит направление за пределы пропускной способности, поэтому след от посещений следует снижать за счёт поездок в низкий сезон и продуманной стратегии рассредоточения.","type":"dialogue"},{"character":"Tourism officer","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Assessing Overtourism Pressure"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('43534afc-9feb-5d1b-a04c-22ca847c6687', '7467252b-d199-5a43-92cd-641a95d73883', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“overtourism” means more visitors than a destination can absorb without harm.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L1_D11","is_correct":true,"text":"more visitors than a destination can absorb without harm"},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L1_D12","is_correct":false,"text":"the maximum volume of visitors a place can support sustainably"},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L1_D13","is_correct":false,"text":"an approach that spreads visitors across sites and seasons"}],"word":"overtourism"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b855e9df-a68a-5c83-a598-aa5487195de0', '7467252b-d199-5a43-92cd-641a95d73883', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Overtourism pushes the destination beyond its carrying capacity, so the visitor footprint should be eased through low-season travel and a thoughtful dispersal strategy.","explanation":"The missing phrase is “carrying capacity”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"carrying capacity","id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L1_D14","is_correct":true},{"audio_text":"heritage designation","id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L1_D15","is_correct":false},{"audio_text":"visitor footprint","id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L1_D16","is_correct":false}],"sentence_template":"Overtourism pushes the destination beyond its ___, so the visitor footprint should be eased through low-season travel and a thoughtful dispersal strategy."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('81523859-e75d-573c-9fe4-aaf6339e9900', '7467252b-d199-5a43-92cd-641a95d73883', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"carrying capacity","explanation":"The complete statement uses “carrying capacity” accurately.","hint_prefix":"carr","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Overtourism pushes the destination beyond its ___, so the visitor footprint should be eased through low-season travel and a thoughtful dispersal strategy."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc361400-e672-52a7-89ab-6acccea50c21', '7467252b-d199-5a43-92cd-641a95d73883', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"overtourism","id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L1_D17","text":"overtourism"},{"audio_text":"carrying capacity","id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L1_D18","text":"carrying capacity"},{"audio_text":"visitor footprint","id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L1_D19","text":"visitor footprint"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e2fd0b01-e726-547f-b6f8-82d47151f660', '7467252b-d199-5a43-92cd-641a95d73883', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Assessing Overtourism Pressure”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L1_D20","is_correct":true,"text":"Overtourism pushes the destination beyond its carrying capacity, so the visitor footprint should be eased through low-season travel and a thoughtful dispersal strategy."},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L1_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L1_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('354f20ec-4b06-564e-af47-ebe55ca15753', '7467252b-d199-5a43-92cd-641a95d73883', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('de14933a-5c04-5b24-85a1-d161e1d65ce3', NULL, 'Сложное взаимодействие и решение проблемы', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Distinguishing Genuine Sustainability from Greenwashing","ru":"Сложное взаимодействие и решение проблемы"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('52956e02-da76-5b3e-8fca-22db26d6ffc9', 'de14933a-5c04-5b24-85a1-d161e1d65ce3', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L2_D01","left":"greenwashing","right":"ложная экологичность (гринвошинг)"},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L2_D02","left":"verifiable claim","right":"проверяемое утверждение"},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L2_D03","left":"certified operator","right":"сертифицированный оператор"},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L2_D04","left":"accreditation scheme","right":"схема аккредитации"},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L2_D05","left":"community-based tourism","right":"туризм на базе местных сообществ"},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L2_D06","left":"lower-impact alternative","right":"альтернатива с меньшим воздействием"},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L2_D07","left":"off-the-beaten-path stay","right":"размещение вдали от туристических троп"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d6903f4f-6bc7-56c0-a078-abba39d2e9e0', 'de14933a-5c04-5b24-85a1-d161e1d65ce3', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L2_D08","is_correct":true,"text":"Greenwashing relies on vague impressions, so scrutinise the accreditation scheme and insist on a verifiable claim before booking community-based tourism."},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L2_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L2_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b3bfd918-b4f5-5e44-a9a8-5075b1504324', 'de14933a-5c04-5b24-85a1-d161e1d65ce3', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Greenwashing relies on vague impressions, so scrutinise the accreditation scheme and insist on a verifiable claim before booking community-based tourism.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Гринвошинг опирается на расплывчатые впечатления, поэтому изучите схему аккредитации и настаивайте на проверяемом утверждении, прежде чем бронировать туризм на базе местных сообществ.","target_language":"en","word_bank":["Greenwashing","relies","on","vague","impressions,","so","scrutinise","the","accreditation","scheme","and","insist","on","a","verifiable","claim","before","booking","community-based","tourism","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('84fb8ed1-1368-5a9c-bf96-ccc880447abf', 'de14933a-5c04-5b24-85a1-d161e1d65ce3', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"accreditation scheme","instruction":"Выберите подходящее слово.","options":["accreditation scheme","verifiable claim","lower-impact alternative"],"sentence_template":"Greenwashing relies on vague impressions, so scrutinise the ___ and insist on a verifiable claim before booking community-based tourism."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('714d87ab-438d-5e66-8ade-316344002da8', 'de14933a-5c04-5b24-85a1-d161e1d65ce3', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Greenwashing","relies","on","vague","impressions,","so","scrutinise","the","accreditation","scheme","and","insist","on","a","verifiable","claim","before","booking","community-based","tourism","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["booking","scheme","claim","vague","community-based","tourism","verifiable","scrutinise","on","insist",".","so","on","and","relies","impressions,","accreditation","Greenwashing","the","before","a"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('20e180eb-8523-564f-b93d-3b65b21856cf', 'de14933a-5c04-5b24-85a1-d161e1d65ce3', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Greenwashing relies on vague impressions, so scrutinise the accreditation scheme and insist on a verifiable claim before booking community-based tourism. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('958468e0-e457-582a-8533-6d369ab1b7d4', 'de14933a-5c04-5b24-85a1-d161e1d65ce3', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Greenwashing relies on vague impressions, so scrutinise the accreditation scheme and insist on a verifiable claim before booking community-based tourism. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Гринвошинг опирается на расплывчатые впечатления, поэтому изучите схему аккредитации и настаивайте на проверяемом утверждении, прежде чем бронировать туризм на базе местных сообществ. Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первоначальное решение неудовлетворительно, объясните почему и попросите соразмерную альтернативу, не переходя к конфронтации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('844f8c6d-56d6-5a9a-8802-5c19b10e8048', 'de14933a-5c04-5b24-85a1-d161e1d65ce3', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"Greenwashing relies on vague impressions, so scrutinise the accreditation scheme and insist on a verifiable claim before booking community-based tourism.","translation":"Гринвошинг опирается на расплывчатые впечатления, поэтому изучите схему аккредитации и настаивайте на проверяемом утверждении, прежде чем бронировать туризм на базе местных сообществ.","type":"dialogue"},{"character":"Tourism officer","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Distinguishing Genuine Sustainability from Greenwashing"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('88194772-1ec3-56a8-953a-ddc89f88acf6', 'de14933a-5c04-5b24-85a1-d161e1d65ce3', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“greenwashing” means misleading claims that exaggerate environmental commitment.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L2_D11","is_correct":true,"text":"misleading claims that exaggerate environmental commitment"},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L2_D12","is_correct":false,"text":"an independent standard an operator has been assessed against"},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L2_D13","is_correct":false,"text":"tourism owned and run by local residents"}],"word":"greenwashing"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('85804a46-9efa-5756-b410-d25888a67dec', 'de14933a-5c04-5b24-85a1-d161e1d65ce3', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Greenwashing relies on vague impressions, so scrutinise the accreditation scheme and insist on a verifiable claim before booking community-based tourism.","explanation":"The missing phrase is “accreditation scheme”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"accreditation scheme","id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L2_D14","is_correct":true},{"audio_text":"verifiable claim","id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L2_D15","is_correct":false},{"audio_text":"lower-impact alternative","id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L2_D16","is_correct":false}],"sentence_template":"Greenwashing relies on vague impressions, so scrutinise the ___ and insist on a verifiable claim before booking community-based tourism."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('108421eb-f13f-5858-ac53-32fa43adde88', 'de14933a-5c04-5b24-85a1-d161e1d65ce3', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"accreditation scheme","explanation":"The complete statement uses “accreditation scheme” accurately.","hint_prefix":"accr","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Greenwashing relies on vague impressions, so scrutinise the ___ and insist on a verifiable claim before booking community-based tourism."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('756de681-011b-5df0-946c-e95e7571df49', 'de14933a-5c04-5b24-85a1-d161e1d65ce3', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"greenwashing","id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L2_D17","text":"greenwashing"},{"audio_text":"verifiable claim","id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L2_D18","text":"verifiable claim"},{"audio_text":"certified operator","id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L2_D19","text":"certified operator"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f8e3a73-fb5e-5c45-afc4-2986aff35b45', 'de14933a-5c04-5b24-85a1-d161e1d65ce3', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Distinguishing Genuine Sustainability from Greenwashing”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L2_D20","is_correct":true,"text":"Greenwashing relies on vague impressions, so scrutinise the accreditation scheme and insist on a verifiable claim before booking community-based tourism."},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L2_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L2_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('354f20ec-4b06-564e-af47-ebe55ca15753', 'de14933a-5c04-5b24-85a1-d161e1d65ce3', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('da3c2dcc-6c16-5d30-8d91-4e1b33b4bd5c', NULL, 'Ответственное действие и последующие шаги', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Ensuring Revenue Reaches Local Communities","ru":"Ответственное действие и последующие шаги"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6f16153c-c029-587b-bc51-69e23f961e73', 'da3c2dcc-6c16-5d30-8d91-4e1b33b4bd5c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L3_D01","left":"local supply chain","right":"местная цепочка поставок"},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L3_D02","left":"fair share of revenue","right":"справедливая доля дохода"},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L3_D03","left":"cultural commodification","right":"коммерциализация культуры"},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L3_D04","left":"regenerative travel","right":"регенеративный туризм"},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L3_D05","left":"stakeholder consultation","right":"консультация заинтересованных сторон"},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L3_D06","left":"environmental levy","right":"экологический сбор"},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L3_D07","left":"long-term stewardship","right":"долговременное ответственное управление"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('df263b95-5696-5bef-8a95-740147f7ce15', 'da3c2dcc-6c16-5d30-8d91-4e1b33b4bd5c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L3_D08","is_correct":true,"text":"Responsible choices keep a fair share of revenue within the local supply chain and resist cultural commodification through genuine stakeholder consultation."},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L3_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L3_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0103f82-55e1-5632-b353-4c66d0a7081f', 'da3c2dcc-6c16-5d30-8d91-4e1b33b4bd5c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Responsible choices keep a fair share of revenue within the local supply chain and resist cultural commodification through genuine stakeholder consultation.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Ответственный выбор сохраняет справедливую долю дохода внутри местной цепочки поставок и противостоит коммерциализации культуры благодаря подлинной консультации заинтересованных сторон.","target_language":"en","word_bank":["Responsible","choices","keep","a","fair","share","of","revenue","within","the","local","supply","chain","and","resist","cultural","commodification","through","genuine","stakeholder","consultation","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d000edd7-7698-52b3-8c32-bd6bd47c6048', 'da3c2dcc-6c16-5d30-8d91-4e1b33b4bd5c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"local supply chain","instruction":"Выберите подходящее слово.","options":["local supply chain","cultural commodification","environmental levy"],"sentence_template":"Responsible choices keep a fair share of revenue within the ___ and resist cultural commodification through genuine stakeholder consultation."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ab538911-b59d-52c8-a068-71f7ce68c2ed', 'da3c2dcc-6c16-5d30-8d91-4e1b33b4bd5c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Responsible","choices","keep","a","fair","share","of","revenue","within","the","local","supply","chain","and","resist","cultural","commodification","through","genuine","stakeholder","consultation","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["consultation","resist","chain","a","through","share","within","and","keep","local","cultural","choices","commodification","of",".","the","fair","Responsible","stakeholder","supply","genuine","revenue"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e253249-9556-547b-9052-a73062304e9f', 'da3c2dcc-6c16-5d30-8d91-4e1b33b4bd5c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Responsible choices keep a fair share of revenue within the local supply chain and resist cultural commodification through genuine stakeholder consultation. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6bfa18e8-b1d3-5562-a3cc-e8939255a318', 'da3c2dcc-6c16-5d30-8d91-4e1b33b4bd5c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Responsible choices keep a fair share of revenue within the local supply chain and resist cultural commodification through genuine stakeholder consultation. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Ответственный выбор сохраняет справедливую долю дохода внутри местной цепочки поставок и противостоит коммерциализации культуры благодаря подлинной консультации заинтересованных сторон. Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первоначальное решение неудовлетворительно, объясните почему и попросите соразмерную альтернативу, не переходя к конфронтации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('92893384-2ff1-5221-8647-789e7b800f43', 'da3c2dcc-6c16-5d30-8d91-4e1b33b4bd5c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"Responsible choices keep a fair share of revenue within the local supply chain and resist cultural commodification through genuine stakeholder consultation.","translation":"Ответственный выбор сохраняет справедливую долю дохода внутри местной цепочки поставок и противостоит коммерциализации культуры благодаря подлинной консультации заинтересованных сторон.","type":"dialogue"},{"character":"Tourism officer","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Ensuring Revenue Reaches Local Communities"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('817e0688-99cb-5fcd-9543-82fff7a5a509', 'da3c2dcc-6c16-5d30-8d91-4e1b33b4bd5c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“cultural commodification” means packaging local traditions as products for visitors.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L3_D11","is_correct":true,"text":"packaging local traditions as products for visitors"},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L3_D12","is_correct":false,"text":"tourism that leaves a place better than it found it"},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L3_D13","is_correct":false,"text":"a charge funding conservation and local infrastructure"}],"word":"cultural commodification"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('416be73f-60c0-5d65-b660-1ca20cf54385', 'da3c2dcc-6c16-5d30-8d91-4e1b33b4bd5c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Responsible choices keep a fair share of revenue within the local supply chain and resist cultural commodification through genuine stakeholder consultation.","explanation":"The missing phrase is “local supply chain”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"local supply chain","id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L3_D14","is_correct":true},{"audio_text":"cultural commodification","id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L3_D15","is_correct":false},{"audio_text":"environmental levy","id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L3_D16","is_correct":false}],"sentence_template":"Responsible choices keep a fair share of revenue within the ___ and resist cultural commodification through genuine stakeholder consultation."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a8070c0b-52e2-56f9-a156-044394a30272', 'da3c2dcc-6c16-5d30-8d91-4e1b33b4bd5c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"local supply chain","explanation":"The complete statement uses “local supply chain” accurately.","hint_prefix":"loca","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Responsible choices keep a fair share of revenue within the ___ and resist cultural commodification through genuine stakeholder consultation."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a6886533-9234-5eda-888e-cbe87c3bc89b', 'da3c2dcc-6c16-5d30-8d91-4e1b33b4bd5c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"local supply chain","id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L3_D17","text":"local supply chain"},{"audio_text":"fair share of revenue","id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L3_D18","text":"fair share of revenue"},{"audio_text":"cultural commodification","id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L3_D19","text":"cultural commodification"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('26d52fbb-9fdd-5e4d-9fae-61be3a51718a', 'da3c2dcc-6c16-5d30-8d91-4e1b33b4bd5c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Ensuring Revenue Reaches Local Communities”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L3_D20","is_correct":true,"text":"Responsible choices keep a fair share of revenue within the local supply chain and resist cultural commodification through genuine stakeholder consultation."},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L3_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_SUSTAINABLE_TOURISM_OVERTOURISM_AND_RESPONSIBLE_CHOICES_L3_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('354f20ec-4b06-564e-af47-ebe55ca15753', 'da3c2dcc-6c16-5d30-8d91-4e1b33b4bd5c', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3403113b-11a2-5f8d-a1e7-10378dbc9253', 'en', 'overtourism', 'перегруженность направления туристами', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('abb6e4c4-a2ce-57c5-88b5-138be07cdd4e', 'en', 'carrying capacity', 'пропускная способность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('923a5b3a-2ce2-53c1-ad50-d8068df0ba9a', 'en', 'visitor footprint', 'след от посещений', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bb1f4794-fed9-565c-8bd4-3658fb28f63c', 'en', 'low season', 'низкий сезон', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2fb4fddd-d8b9-50c9-ae72-61707dd0262c', 'en', 'dispersal strategy', 'стратегия рассредоточения потоков', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5d6ee16-d792-5f6f-839d-638d923b65de', 'en', 'heritage designation', 'статус объекта наследия', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1a801409-7fb4-5691-ad6d-8f5e39c3da23', 'en', 'carbon-intensive journey', 'углеродоёмкая поездка', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('283b8d2a-82f9-5acc-94c2-17e16a00fe7a', 'en', 'greenwashing', 'ложная экологичность (гринвошинг)', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('35077dd3-259a-535a-a55a-4d45328fba4e', 'en', 'verifiable claim', 'проверяемое утверждение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d5c2d97e-a698-536e-ae3b-a14dceb415b7', 'en', 'certified operator', 'сертифицированный оператор', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a9b654ff-75de-51ef-b494-60b88375c834', 'en', 'accreditation scheme', 'схема аккредитации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('57903627-0070-5faf-b9fb-f4605d207720', 'en', 'community-based tourism', 'туризм на базе местных сообществ', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2bf08ecf-91ab-59e0-a68b-13860062c50d', 'en', 'lower-impact alternative', 'альтернатива с меньшим воздействием', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d2b0e845-c624-5eb0-9c19-5b4693183264', 'en', 'off-the-beaten-path stay', 'размещение вдали от туристических троп', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6d1e19e9-33c7-5e19-9fbc-7f8ad1e506db', 'en', 'local supply chain', 'местная цепочка поставок', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d5fc881f-ac74-5294-a1ea-e449edbe7821', 'en', 'fair share of revenue', 'справедливая доля дохода', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('753e912a-b22c-5200-978f-9a58aefa5584', 'en', 'cultural commodification', 'коммерциализация культуры', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('99ffe050-6442-559f-b63f-721d6ecf24ed', 'en', 'regenerative travel', 'регенеративный туризм', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('de93a9f0-c5b3-5279-b005-bee5c1c0f911', 'en', 'stakeholder consultation', 'консультация заинтересованных сторон', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7a154c84-8da2-5118-9ab6-958905eda163', 'en', 'environmental levy', 'экологический сбор', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('55bc0eee-0b49-5369-a233-06a95c7d8a51', 'en', 'long-term stewardship', 'долговременное ответственное управление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '354f20ec-4b06-564e-af47-ebe55ca15753', id, '7467252b-d199-5a43-92cd-641a95d73883', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'overtourism' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '354f20ec-4b06-564e-af47-ebe55ca15753', id, '7467252b-d199-5a43-92cd-641a95d73883', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'carrying capacity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '354f20ec-4b06-564e-af47-ebe55ca15753', id, '7467252b-d199-5a43-92cd-641a95d73883', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'visitor footprint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '354f20ec-4b06-564e-af47-ebe55ca15753', id, '7467252b-d199-5a43-92cd-641a95d73883', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'low season' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '354f20ec-4b06-564e-af47-ebe55ca15753', id, '7467252b-d199-5a43-92cd-641a95d73883', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'dispersal strategy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '354f20ec-4b06-564e-af47-ebe55ca15753', id, '7467252b-d199-5a43-92cd-641a95d73883', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'heritage designation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '354f20ec-4b06-564e-af47-ebe55ca15753', id, '7467252b-d199-5a43-92cd-641a95d73883', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'carbon-intensive journey' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '354f20ec-4b06-564e-af47-ebe55ca15753', id, 'de14933a-5c04-5b24-85a1-d161e1d65ce3', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'greenwashing' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '354f20ec-4b06-564e-af47-ebe55ca15753', id, 'de14933a-5c04-5b24-85a1-d161e1d65ce3', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'verifiable claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '354f20ec-4b06-564e-af47-ebe55ca15753', id, 'de14933a-5c04-5b24-85a1-d161e1d65ce3', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'certified operator' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '354f20ec-4b06-564e-af47-ebe55ca15753', id, 'de14933a-5c04-5b24-85a1-d161e1d65ce3', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'accreditation scheme' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '354f20ec-4b06-564e-af47-ebe55ca15753', id, 'de14933a-5c04-5b24-85a1-d161e1d65ce3', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'community-based tourism' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '354f20ec-4b06-564e-af47-ebe55ca15753', id, 'de14933a-5c04-5b24-85a1-d161e1d65ce3', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'lower-impact alternative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '354f20ec-4b06-564e-af47-ebe55ca15753', id, 'de14933a-5c04-5b24-85a1-d161e1d65ce3', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'off-the-beaten-path stay' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '354f20ec-4b06-564e-af47-ebe55ca15753', id, 'da3c2dcc-6c16-5d30-8d91-4e1b33b4bd5c', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'local supply chain' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '354f20ec-4b06-564e-af47-ebe55ca15753', id, 'da3c2dcc-6c16-5d30-8d91-4e1b33b4bd5c', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'fair share of revenue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '354f20ec-4b06-564e-af47-ebe55ca15753', id, 'da3c2dcc-6c16-5d30-8d91-4e1b33b4bd5c', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'cultural commodification' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '354f20ec-4b06-564e-af47-ebe55ca15753', id, 'da3c2dcc-6c16-5d30-8d91-4e1b33b4bd5c', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'regenerative travel' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '354f20ec-4b06-564e-af47-ebe55ca15753', id, 'da3c2dcc-6c16-5d30-8d91-4e1b33b4bd5c', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'stakeholder consultation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '354f20ec-4b06-564e-af47-ebe55ca15753', id, 'da3c2dcc-6c16-5d30-8d91-4e1b33b4bd5c', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'environmental levy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '354f20ec-4b06-564e-af47-ebe55ca15753', id, 'da3c2dcc-6c16-5d30-8d91-4e1b33b4bd5c', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'long-term stewardship' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
