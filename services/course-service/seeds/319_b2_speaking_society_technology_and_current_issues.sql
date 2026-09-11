-- Track: B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('e251de9a-3878-5cfd-8470-392553ab1abf', 'B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES', 'Общество, технологии и актуальные вопросы', 'Развивайте свободную и точную устную речь уровня B2 по теме «Общество, технологии и актуальные вопросы»: аргументируйте, реагируйте на возражения и формулируйте взвешенные выводы.', '{"en":"Society, Technology and Current Issues","ru":"Общество, технологии и актуальные вопросы"}'::jsonb, '{"en":"Develop fluent, precise B2 spoken English for society, technology and current issues through argument, counterargument, and balanced conclusions.","ru":"Развивайте свободную и точную устную речь уровня B2 по теме «Общество, технологии и актуальные вопросы»: аргументируйте, реагируйте на возражения и формулируйте взвешенные выводы."}'::jsonb, 'en', 'B2', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0adbc2bb-2677-5f98-acc0-ce2c94f35595', NULL, 'Ключевые понятия и позиция', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Technology and Society","ru":"Ключевые понятия и позиция"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e1649e62-1cbc-56e3-a8dd-db1efa46befa', '0adbc2bb-2677-5f98-acc0-ce2c94f35595', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L1_D01","left":"digital divide","right":"цифровое неравенство"},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L1_D02","left":"algorithmic bias","right":"алгоритмическая предвзятость"},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L1_D03","left":"data privacy","right":"конфиденциальность данных"},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L1_D04","left":"regulatory framework","right":"нормативная база"},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L1_D05","left":"technological literacy","right":"технологическая грамотность"},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L1_D06","left":"public interest","right":"общественный интерес"},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L1_D07","left":"far-reaching consequence","right":"далеко идущее последствие"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d501e52-6074-55cd-8a02-fe8691775869', '0adbc2bb-2677-5f98-acc0-ce2c94f35595', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L1_D08","is_correct":true,"text":"The digital divide is not merely about owning a device; it also involves reliable access, relevant skills, and meaningful opportunities."},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L1_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L1_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc6d6001-e773-5a89-a3f3-b4f8c238bbd5', '0adbc2bb-2677-5f98-acc0-ce2c94f35595', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The digital divide is not merely about owning a device; it also involves reliable access, relevant skills, and meaningful opportunities.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Цифровое неравенство связано не только с наличием устройства; оно также включает надёжный доступ, необходимые навыки и реальные возможности.","target_language":"en","word_bank":["The","digital","divide","is","not","merely","about","owning","a","device",";","it","also","involves","reliable","access",",","relevant","skills",",","and","meaningful","opportunities","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5cedfe44-11a7-529a-8262-ed9f8fcde69c', '0adbc2bb-2677-5f98-acc0-ce2c94f35595', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"digital divide","instruction":"Выберите подходящее слово.","options":["digital divide","regulatory framework","public interest"],"sentence_template":"The ___ is not merely about owning a device; it also involves reliable access, relevant skills, and meaningful opportunities."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('453c2d1d-b5c7-5698-aefc-952530b1f8d8', '0adbc2bb-2677-5f98-acc0-ce2c94f35595', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","digital","divide","is","not","merely","about","owning","a","device",";","it","also","involves","reliable","access",",","relevant","skills",",","and","meaningful","opportunities","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","opportunities","meaningful","and",",","skills","relevant",",","access","reliable","involves","also","it",";","device","a","owning","about","merely","not","is","divide","digital","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5514f8e4-34a2-5d29-bf2a-14fb7fbebe35', '0adbc2bb-2677-5f98-acc0-ce2c94f35595', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The digital divide is not merely about owning a device; it also involves reliable access, relevant skills, and meaningful opportunities. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('652ac3fe-2be2-5b45-8942-d81763d3c0ca', '0adbc2bb-2677-5f98-acc0-ce2c94f35595', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The digital divide is not merely about owning a device; it also involves reliable access, relevant skills, and meaningful opportunities. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Цифровое неравенство связано не только с наличием устройства; оно также включает надёжный доступ, необходимые навыки и реальные возможности. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('51ee798d-cf92-5c99-807e-27509bbaea89', '0adbc2bb-2677-5f98-acc0-ce2c94f35595', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"The digital divide is not merely about owning a device; it also involves reliable access, relevant skills, and meaningful opportunities.","translation":"Цифровое неравенство связано не только с наличием устройства; оно также включает надёжный доступ, необходимые навыки и реальные возможности.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Technology and Society"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('473890de-ed90-51c7-9e2d-38e1a5cf572d', '0adbc2bb-2677-5f98-acc0-ce2c94f35595', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“digital divide” means the gap between people with and without effective access to technology.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L1_D11","is_correct":true,"text":"the gap between people with and without effective access to technology"},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L1_D12","is_correct":false,"text":"systematic unfairness produced by automated systems"},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L1_D13","is_correct":false,"text":"the protection and control of personal information"}],"word":"digital divide"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0620a3ff-a5cd-56ea-86ba-e94bd6c2644f', '0adbc2bb-2677-5f98-acc0-ce2c94f35595', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The digital divide is not merely about owning a device; it also involves reliable access, relevant skills, and meaningful opportunities.","explanation":"The missing B2 expression is “digital divide”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"digital divide","id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L1_D14","is_correct":true},{"audio_text":"data privacy","id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L1_D15","is_correct":false},{"audio_text":"technological literacy","id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L1_D16","is_correct":false}],"sentence_template":"The ___ is not merely about owning a device; it also involves reliable access, relevant skills, and meaningful opportunities."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('29409ec2-bf63-5026-8761-e944d05c765e', '0adbc2bb-2677-5f98-acc0-ce2c94f35595', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"digital divide","explanation":"The complete argument uses “digital divide” to express the intended meaning precisely.","hint_prefix":"digi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ is not merely about owning a device; it also involves reliable access, relevant skills, and meaningful opportunities."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2061beef-0884-563d-ba37-8f01d1c0db19', '0adbc2bb-2677-5f98-acc0-ce2c94f35595', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"digital divide","id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L1_D17","text":"digital divide"},{"audio_text":"algorithmic bias","id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L1_D18","text":"algorithmic bias"},{"audio_text":"data privacy","id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L1_D19","text":"data privacy"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('26b52690-6ec3-5537-908a-4d311051689a', '0adbc2bb-2677-5f98-acc0-ce2c94f35595', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Technology and Society”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L1_D20","is_correct":true,"text":"The digital divide is not merely about owning a device; it also involves reliable access, relevant skills, and meaningful opportunities."},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L1_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L1_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e251de9a-3878-5cfd-8470-392553ab1abf', '0adbc2bb-2677-5f98-acc0-ce2c94f35595', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('6aaeed06-dad9-5ddb-a2c5-e0af487396c7', NULL, 'Развитие и оспаривание аргумента', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Debating Current Issues","ru":"Развитие и оспаривание аргумента"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0fc6d4bf-2adc-5a98-b171-f11c2409d609', '6aaeed06-dad9-5ddb-a2c5-e0af487396c7', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L2_D01","left":"digital divide","right":"цифровое неравенство"},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L2_D02","left":"algorithmic bias","right":"алгоритмическая предвзятость"},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L2_D03","left":"data privacy","right":"конфиденциальность данных"},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L2_D04","left":"regulatory framework","right":"нормативная база"},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L2_D05","left":"technological literacy","right":"технологическая грамотность"},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L2_D06","left":"public interest","right":"общественный интерес"},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L2_D07","left":"far-reaching consequence","right":"далеко идущее последствие"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e4563ea0-2c3a-519d-8d43-9f008f51bcf0', '6aaeed06-dad9-5ddb-a2c5-e0af487396c7', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L2_D08","is_correct":true,"text":"Algorithmic bias can reproduce existing inequalities unless automated decisions are independently examined and open to challenge."},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L2_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L2_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fcb1abb1-366a-5f0d-82a6-ca483bf182ff', '6aaeed06-dad9-5ddb-a2c5-e0af487396c7', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Algorithmic bias can reproduce existing inequalities unless automated decisions are independently examined and open to challenge.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Алгоритмическая предвзятость может воспроизводить существующее неравенство, если автоматизированные решения не проверяются независимо и не могут быть оспорены.","target_language":"en","word_bank":["Algorithmic","bias","can","reproduce","existing","inequalities","unless","automated","decisions","are","independently","examined","and","open","to","challenge","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e70db74-1315-5e83-9d31-0aae63b89bc4', '6aaeed06-dad9-5ddb-a2c5-e0af487396c7', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"algorithmic bias","instruction":"Выберите подходящее слово.","options":["algorithmic bias","technological literacy","far-reaching consequence"],"sentence_template":"___ can reproduce existing inequalities unless automated decisions are independently examined and open to challenge."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('24dccb6d-67ae-594f-9f76-21f22713a7f3', '6aaeed06-dad9-5ddb-a2c5-e0af487396c7', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Algorithmic","bias","can","reproduce","existing","inequalities","unless","automated","decisions","are","independently","examined","and","open","to","challenge","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","challenge","to","open","and","examined","independently","are","decisions","automated","unless","inequalities","existing","reproduce","can","bias","Algorithmic"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('01efcaa3-1e00-56d8-b6ef-c2a7cc03f695', '6aaeed06-dad9-5ddb-a2c5-e0af487396c7', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Algorithmic bias can reproduce existing inequalities unless automated decisions are independently examined and open to challenge. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3477d992-8f79-5d81-ac0c-0705cb53bb15', '6aaeed06-dad9-5ddb-a2c5-e0af487396c7', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Algorithmic bias can reproduce existing inequalities unless automated decisions are independently examined and open to challenge. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Алгоритмическая предвзятость может воспроизводить существующее неравенство, если автоматизированные решения не проверяются независимо и не могут быть оспорены. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('87322fa2-da88-5077-933e-9dc903488ccd', '6aaeed06-dad9-5ddb-a2c5-e0af487396c7', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Algorithmic bias can reproduce existing inequalities unless automated decisions are independently examined and open to challenge.","translation":"Алгоритмическая предвзятость может воспроизводить существующее неравенство, если автоматизированные решения не проверяются независимо и не могут быть оспорены.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Debating Current Issues"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c26eed89-32eb-5ab6-b572-49586b53de80', '6aaeed06-dad9-5ddb-a2c5-e0af487396c7', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“algorithmic bias” means systematic unfairness produced by automated systems.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L2_D11","is_correct":true,"text":"systematic unfairness produced by automated systems"},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L2_D12","is_correct":false,"text":"the protection and control of personal information"},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L2_D13","is_correct":false,"text":"a system of rules governing an activity"}],"word":"algorithmic bias"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b057e4e4-1b43-584e-8700-b49c32f9201d', '6aaeed06-dad9-5ddb-a2c5-e0af487396c7', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Algorithmic bias can reproduce existing inequalities unless automated decisions are independently examined and open to challenge.","explanation":"The missing B2 expression is “algorithmic bias”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"algorithmic bias","id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L2_D14","is_correct":true},{"audio_text":"regulatory framework","id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L2_D15","is_correct":false},{"audio_text":"public interest","id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L2_D16","is_correct":false}],"sentence_template":"___ can reproduce existing inequalities unless automated decisions are independently examined and open to challenge."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3efaea2c-1ff3-57bd-b191-d39a38d6cffe', '6aaeed06-dad9-5ddb-a2c5-e0af487396c7', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"algorithmic bias","explanation":"The complete argument uses “algorithmic bias” to express the intended meaning precisely.","hint_prefix":"algo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ can reproduce existing inequalities unless automated decisions are independently examined and open to challenge."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a426408-e33d-5e6e-8fb7-f88062647dbc', '6aaeed06-dad9-5ddb-a2c5-e0af487396c7', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"digital divide","id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L2_D17","text":"digital divide"},{"audio_text":"algorithmic bias","id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L2_D18","text":"algorithmic bias"},{"audio_text":"data privacy","id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L2_D19","text":"data privacy"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb8a2e06-9f66-5777-8271-b1867b3c5696', '6aaeed06-dad9-5ddb-a2c5-e0af487396c7', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Debating Current Issues”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L2_D20","is_correct":true,"text":"Algorithmic bias can reproduce existing inequalities unless automated decisions are independently examined and open to challenge."},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L2_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L2_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e251de9a-3878-5cfd-8470-392553ab1abf', '6aaeed06-dad9-5ddb-a2c5-e0af487396c7', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c6f530c3-13c7-5db8-9e94-265b9634f08e', NULL, 'Взвешенный вывод и взаимодействие', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Reaching a Nuanced View","ru":"Взвешенный вывод и взаимодействие"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ff4df59-a103-558c-b720-325e386e78a8', 'c6f530c3-13c7-5db8-9e94-265b9634f08e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L3_D01","left":"digital divide","right":"цифровое неравенство"},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L3_D02","left":"algorithmic bias","right":"алгоритмическая предвзятость"},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L3_D03","left":"data privacy","right":"конфиденциальность данных"},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L3_D04","left":"regulatory framework","right":"нормативная база"},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L3_D05","left":"technological literacy","right":"технологическая грамотность"},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L3_D06","left":"public interest","right":"общественный интерес"},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L3_D07","left":"far-reaching consequence","right":"далеко идущее последствие"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9aec774d-3dbc-5c21-a3e7-b8a791308be8', 'c6f530c3-13c7-5db8-9e94-265b9634f08e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L3_D08","is_correct":true,"text":"Protecting data privacy requires a regulatory framework that serves the public interest without preventing responsible innovation."},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L3_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L3_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7bafbb2b-56de-58aa-a7ce-12f8865fca8e', 'c6f530c3-13c7-5db8-9e94-265b9634f08e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Protecting data privacy requires a regulatory framework that serves the public interest without preventing responsible innovation.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Защита конфиденциальности данных требует нормативной базы, которая служит общественным интересам, не препятствуя ответственным инновациям.","target_language":"en","word_bank":["Protecting","data","privacy","requires","a","regulatory","framework","that","serves","the","public","interest","without","preventing","responsible","innovation","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a8d86a4-b6fa-563c-8243-d5b2b8d6b750', 'c6f530c3-13c7-5db8-9e94-265b9634f08e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"data privacy","instruction":"Выберите подходящее слово.","options":["data privacy","public interest","digital divide"],"sentence_template":"Protecting ___ requires a regulatory framework that serves the public interest without preventing responsible innovation."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('69448276-512f-5b6f-854d-46a1f9cd7832', 'c6f530c3-13c7-5db8-9e94-265b9634f08e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Protecting","data","privacy","requires","a","regulatory","framework","that","serves","the","public","interest","without","preventing","responsible","innovation","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","innovation","responsible","preventing","without","interest","public","the","serves","that","framework","regulatory","a","requires","privacy","data","Protecting"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('595a7276-f8b6-5d1c-9ef9-ab21c9aa0ac1', 'c6f530c3-13c7-5db8-9e94-265b9634f08e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Protecting data privacy requires a regulatory framework that serves the public interest without preventing responsible innovation. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('afc0acc3-30f4-556d-8bb7-140b13252f03', 'c6f530c3-13c7-5db8-9e94-265b9634f08e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Protecting data privacy requires a regulatory framework that serves the public interest without preventing responsible innovation. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Защита конфиденциальности данных требует нормативной базы, которая служит общественным интересам, не препятствуя ответственным инновациям. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2bf3845e-81af-5a9d-8111-5b67fcee0bf3', 'c6f530c3-13c7-5db8-9e94-265b9634f08e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Protecting data privacy requires a regulatory framework that serves the public interest without preventing responsible innovation.","translation":"Защита конфиденциальности данных требует нормативной базы, которая служит общественным интересам, не препятствуя ответственным инновациям.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Reaching a Nuanced View"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e13a07d-7841-5389-8790-e03591a803ab', 'c6f530c3-13c7-5db8-9e94-265b9634f08e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“data privacy” means the protection and control of personal information.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L3_D11","is_correct":true,"text":"the protection and control of personal information"},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L3_D12","is_correct":false,"text":"a system of rules governing an activity"},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L3_D13","is_correct":false,"text":"the ability to understand and use technology effectively"}],"word":"data privacy"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('99ae414c-1331-5b13-8d5a-949a3945353b', 'c6f530c3-13c7-5db8-9e94-265b9634f08e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Protecting data privacy requires a regulatory framework that serves the public interest without preventing responsible innovation.","explanation":"The missing B2 expression is “data privacy”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"data privacy","id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L3_D14","is_correct":true},{"audio_text":"technological literacy","id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L3_D15","is_correct":false},{"audio_text":"far-reaching consequence","id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L3_D16","is_correct":false}],"sentence_template":"Protecting ___ requires a regulatory framework that serves the public interest without preventing responsible innovation."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('163fb8a1-008a-598e-8745-8128d2a6ce18', 'c6f530c3-13c7-5db8-9e94-265b9634f08e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"data privacy","explanation":"The complete argument uses “data privacy” to express the intended meaning precisely.","hint_prefix":"data","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Protecting ___ requires a regulatory framework that serves the public interest without preventing responsible innovation."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('53b26b92-6afb-5815-a51d-d283007c8636', 'c6f530c3-13c7-5db8-9e94-265b9634f08e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"digital divide","id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L3_D17","text":"digital divide"},{"audio_text":"algorithmic bias","id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L3_D18","text":"algorithmic bias"},{"audio_text":"data privacy","id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L3_D19","text":"data privacy"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4615dcbc-863f-586d-8d77-910af11d49ac', 'c6f530c3-13c7-5db8-9e94-265b9634f08e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Reaching a Nuanced View”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L3_D20","is_correct":true,"text":"Protecting data privacy requires a regulatory framework that serves the public interest without preventing responsible innovation."},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L3_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_SOCIETY_TECHNOLOGY_AND_CURRENT_ISSUES_L3_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e251de9a-3878-5cfd-8470-392553ab1abf', 'c6f530c3-13c7-5db8-9e94-265b9634f08e', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d53efd01-8950-5604-84ab-041d97ba2132', 'en', 'digital divide', 'цифровое неравенство', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a9aceeea-1445-5b0b-bd70-f04dc2c85e11', 'en', 'algorithmic bias', 'алгоритмическая предвзятость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5b288e63-288b-54ed-8f47-e02bc4933251', 'en', 'data privacy', 'конфиденциальность данных', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fe6d3266-febc-5e33-90e0-8ce623de23ff', 'en', 'regulatory framework', 'нормативная база', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f3055985-f984-528e-96d6-8f73ca5c56af', 'en', 'technological literacy', 'технологическая грамотность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('38cc8cc6-1625-51d7-a540-db9eaf20cd48', 'en', 'public interest', 'общественный интерес', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2477568f-0e11-59ce-8f0f-edcbe057e8ac', 'en', 'far-reaching consequence', 'далеко идущее последствие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d53efd01-8950-5604-84ab-041d97ba2132', 'en', 'digital divide', 'цифровое неравенство', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a9aceeea-1445-5b0b-bd70-f04dc2c85e11', 'en', 'algorithmic bias', 'алгоритмическая предвзятость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5b288e63-288b-54ed-8f47-e02bc4933251', 'en', 'data privacy', 'конфиденциальность данных', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fe6d3266-febc-5e33-90e0-8ce623de23ff', 'en', 'regulatory framework', 'нормативная база', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f3055985-f984-528e-96d6-8f73ca5c56af', 'en', 'technological literacy', 'технологическая грамотность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('38cc8cc6-1625-51d7-a540-db9eaf20cd48', 'en', 'public interest', 'общественный интерес', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2477568f-0e11-59ce-8f0f-edcbe057e8ac', 'en', 'far-reaching consequence', 'далеко идущее последствие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d53efd01-8950-5604-84ab-041d97ba2132', 'en', 'digital divide', 'цифровое неравенство', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a9aceeea-1445-5b0b-bd70-f04dc2c85e11', 'en', 'algorithmic bias', 'алгоритмическая предвзятость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5b288e63-288b-54ed-8f47-e02bc4933251', 'en', 'data privacy', 'конфиденциальность данных', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fe6d3266-febc-5e33-90e0-8ce623de23ff', 'en', 'regulatory framework', 'нормативная база', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f3055985-f984-528e-96d6-8f73ca5c56af', 'en', 'technological literacy', 'технологическая грамотность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('38cc8cc6-1625-51d7-a540-db9eaf20cd48', 'en', 'public interest', 'общественный интерес', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2477568f-0e11-59ce-8f0f-edcbe057e8ac', 'en', 'far-reaching consequence', 'далеко идущее последствие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e251de9a-3878-5cfd-8470-392553ab1abf', id, '0adbc2bb-2677-5f98-acc0-ce2c94f35595', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'digital divide' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e251de9a-3878-5cfd-8470-392553ab1abf', id, '0adbc2bb-2677-5f98-acc0-ce2c94f35595', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'algorithmic bias' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e251de9a-3878-5cfd-8470-392553ab1abf', id, '0adbc2bb-2677-5f98-acc0-ce2c94f35595', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'data privacy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e251de9a-3878-5cfd-8470-392553ab1abf', id, '0adbc2bb-2677-5f98-acc0-ce2c94f35595', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'regulatory framework' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e251de9a-3878-5cfd-8470-392553ab1abf', id, '0adbc2bb-2677-5f98-acc0-ce2c94f35595', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'technological literacy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e251de9a-3878-5cfd-8470-392553ab1abf', id, '0adbc2bb-2677-5f98-acc0-ce2c94f35595', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'public interest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e251de9a-3878-5cfd-8470-392553ab1abf', id, '0adbc2bb-2677-5f98-acc0-ce2c94f35595', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'far-reaching consequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e251de9a-3878-5cfd-8470-392553ab1abf', id, '6aaeed06-dad9-5ddb-a2c5-e0af487396c7', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'digital divide' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e251de9a-3878-5cfd-8470-392553ab1abf', id, '6aaeed06-dad9-5ddb-a2c5-e0af487396c7', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'algorithmic bias' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e251de9a-3878-5cfd-8470-392553ab1abf', id, '6aaeed06-dad9-5ddb-a2c5-e0af487396c7', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'data privacy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e251de9a-3878-5cfd-8470-392553ab1abf', id, '6aaeed06-dad9-5ddb-a2c5-e0af487396c7', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'regulatory framework' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e251de9a-3878-5cfd-8470-392553ab1abf', id, '6aaeed06-dad9-5ddb-a2c5-e0af487396c7', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'technological literacy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e251de9a-3878-5cfd-8470-392553ab1abf', id, '6aaeed06-dad9-5ddb-a2c5-e0af487396c7', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'public interest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e251de9a-3878-5cfd-8470-392553ab1abf', id, '6aaeed06-dad9-5ddb-a2c5-e0af487396c7', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'far-reaching consequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e251de9a-3878-5cfd-8470-392553ab1abf', id, 'c6f530c3-13c7-5db8-9e94-265b9634f08e', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'digital divide' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e251de9a-3878-5cfd-8470-392553ab1abf', id, 'c6f530c3-13c7-5db8-9e94-265b9634f08e', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'algorithmic bias' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e251de9a-3878-5cfd-8470-392553ab1abf', id, 'c6f530c3-13c7-5db8-9e94-265b9634f08e', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'data privacy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e251de9a-3878-5cfd-8470-392553ab1abf', id, 'c6f530c3-13c7-5db8-9e94-265b9634f08e', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'regulatory framework' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e251de9a-3878-5cfd-8470-392553ab1abf', id, 'c6f530c3-13c7-5db8-9e94-265b9634f08e', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'technological literacy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e251de9a-3878-5cfd-8470-392553ab1abf', id, 'c6f530c3-13c7-5db8-9e94-265b9634f08e', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'public interest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e251de9a-3878-5cfd-8470-392553ab1abf', id, 'c6f530c3-13c7-5db8-9e94-265b9634f08e', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'far-reaching consequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
