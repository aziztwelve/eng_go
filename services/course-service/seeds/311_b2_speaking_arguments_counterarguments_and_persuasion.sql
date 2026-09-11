-- Track: B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('bd3d7ad0-a771-51ae-844c-fcc10f75cc0a', 'B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION', 'Аргументы, контраргументы и убеждение', 'Развивайте свободную и точную устную речь уровня B2 по теме «Аргументы, контраргументы и убеждение»: аргументируйте, реагируйте на возражения и формулируйте взвешенные выводы.', '{"en":"Arguments, Counterarguments and Persuasion","ru":"Аргументы, контраргументы и убеждение"}'::jsonb, '{"en":"Develop fluent, precise B2 spoken English for arguments, counterarguments and persuasion through argument, counterargument, and balanced conclusions.","ru":"Развивайте свободную и точную устную речь уровня B2 по теме «Аргументы, контраргументы и убеждение»: аргументируйте, реагируйте на возражения и формулируйте взвешенные выводы."}'::jsonb, 'en', 'B2', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('594af6f7-ec1e-5e37-822f-b98ab3a9cfd0', NULL, 'Ключевые понятия и позиция', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Building an Argument","ru":"Ключевые понятия и позиция"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd37dd51-2b8a-515d-9d4e-4b2c9875c2fd', '594af6f7-ec1e-5e37-822f-b98ab3a9cfd0', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L1_D01","left":"central claim","right":"основной тезис"},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L1_D02","left":"compelling evidence","right":"веские доказательства"},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L1_D03","left":"counterargument","right":"контраргумент"},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L1_D04","left":"qualify a statement","right":"уточнить утверждение"},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L1_D05","left":"underlying assumption","right":"скрытое предположение"},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L1_D06","left":"logical flaw","right":"логическая ошибка"},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L1_D07","left":"concede a point","right":"признать довод"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('70d9f1dc-57bc-5fbd-acc0-3fc9a482e1c9', '594af6f7-ec1e-5e37-822f-b98ab3a9cfd0', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L1_D08","is_correct":true,"text":"A central claim becomes persuasive only when compelling evidence supports it and the connection between the two is clearly explained."},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L1_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L1_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6dc29cca-3af5-5d0e-80ec-bb07ead847af', '594af6f7-ec1e-5e37-822f-b98ab3a9cfd0', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A central claim becomes persuasive only when compelling evidence supports it and the connection between the two is clearly explained.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Основной тезис становится убедительным лишь тогда, когда его подкрепляют веские доказательства и связь между ними ясно объяснена.","target_language":"en","word_bank":["A","central","claim","becomes","persuasive","only","when","compelling","evidence","supports","it","and","the","connection","between","the","two","is","clearly","explained","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d82799ea-a31d-5d32-917b-18dc42ece25f', '594af6f7-ec1e-5e37-822f-b98ab3a9cfd0', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"central claim","instruction":"Выберите подходящее слово.","options":["central claim","qualify a statement","logical flaw"],"sentence_template":"A ___ becomes persuasive only when compelling evidence supports it and the connection between the two is clearly explained."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5e78a18-9f5f-525c-9e63-daa4b806e7db', '594af6f7-ec1e-5e37-822f-b98ab3a9cfd0', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","central","claim","becomes","persuasive","only","when","compelling","evidence","supports","it","and","the","connection","between","the","two","is","clearly","explained","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","explained","clearly","is","two","the","between","connection","the","and","it","supports","evidence","compelling","when","only","persuasive","becomes","claim","central","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf80a920-eedb-590f-97ef-94f8d3ffe1f0', '594af6f7-ec1e-5e37-822f-b98ab3a9cfd0', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A central claim becomes persuasive only when compelling evidence supports it and the connection between the two is clearly explained. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c31911a7-d0c1-548b-adb2-dbb33e41387c', '594af6f7-ec1e-5e37-822f-b98ab3a9cfd0', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A central claim becomes persuasive only when compelling evidence supports it and the connection between the two is clearly explained. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Основной тезис становится убедительным лишь тогда, когда его подкрепляют веские доказательства и связь между ними ясно объяснена. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a786b5ca-876c-5343-89dc-9e8f51e148d9', '594af6f7-ec1e-5e37-822f-b98ab3a9cfd0', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"A central claim becomes persuasive only when compelling evidence supports it and the connection between the two is clearly explained.","translation":"Основной тезис становится убедительным лишь тогда, когда его подкрепляют веские доказательства и связь между ними ясно объяснена.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Building an Argument"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d83179ef-a5b1-52b7-a200-41fe02adf1c3', '594af6f7-ec1e-5e37-822f-b98ab3a9cfd0', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“central claim” means the main proposition an argument seeks to establish.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L1_D11","is_correct":true,"text":"the main proposition an argument seeks to establish"},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L1_D12","is_correct":false,"text":"information that strongly supports a conclusion"},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L1_D13","is_correct":false,"text":"a reason opposing a stated position"}],"word":"central claim"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f581070e-6f0d-569a-8069-315e3069cda7', '594af6f7-ec1e-5e37-822f-b98ab3a9cfd0', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A central claim becomes persuasive only when compelling evidence supports it and the connection between the two is clearly explained.","explanation":"The missing B2 expression is “central claim”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"central claim","id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L1_D14","is_correct":true},{"audio_text":"counterargument","id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L1_D15","is_correct":false},{"audio_text":"underlying assumption","id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L1_D16","is_correct":false}],"sentence_template":"A ___ becomes persuasive only when compelling evidence supports it and the connection between the two is clearly explained."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('017382e7-62c1-53af-b330-08794f077b3d', '594af6f7-ec1e-5e37-822f-b98ab3a9cfd0', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"central claim","explanation":"The complete argument uses “central claim” to express the intended meaning precisely.","hint_prefix":"cent","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ becomes persuasive only when compelling evidence supports it and the connection between the two is clearly explained."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c6a6359f-a6ca-5d97-847d-78f8b7ecc0f1', '594af6f7-ec1e-5e37-822f-b98ab3a9cfd0', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"central claim","id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L1_D17","text":"central claim"},{"audio_text":"compelling evidence","id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L1_D18","text":"compelling evidence"},{"audio_text":"counterargument","id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L1_D19","text":"counterargument"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c0fcbb95-2d87-5682-b32d-4825236aa697', '594af6f7-ec1e-5e37-822f-b98ab3a9cfd0', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Building an Argument”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L1_D20","is_correct":true,"text":"A central claim becomes persuasive only when compelling evidence supports it and the connection between the two is clearly explained."},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L1_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L1_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('bd3d7ad0-a771-51ae-844c-fcc10f75cc0a', '594af6f7-ec1e-5e37-822f-b98ab3a9cfd0', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b5476aba-002f-5682-b9ff-095c3d5a956b', NULL, 'Развитие и оспаривание аргумента', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Responding to Counterarguments","ru":"Развитие и оспаривание аргумента"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('15c58f95-16bb-57d3-9ed7-864f938fb5c8', 'b5476aba-002f-5682-b9ff-095c3d5a956b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L2_D01","left":"central claim","right":"основной тезис"},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L2_D02","left":"compelling evidence","right":"веские доказательства"},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L2_D03","left":"counterargument","right":"контраргумент"},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L2_D04","left":"qualify a statement","right":"уточнить утверждение"},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L2_D05","left":"underlying assumption","right":"скрытое предположение"},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L2_D06","left":"logical flaw","right":"логическая ошибка"},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L2_D07","left":"concede a point","right":"признать довод"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b60f08c-3ae5-5c54-84bf-fc1345a1dc44', 'b5476aba-002f-5682-b9ff-095c3d5a956b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L2_D08","is_correct":true,"text":"A strong counterargument should challenge an underlying assumption rather than simply repeat the opposite opinion more confidently."},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L2_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L2_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b6a6793-a0f8-5820-8692-0224aec1d80f', 'b5476aba-002f-5682-b9ff-095c3d5a956b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A strong counterargument should challenge an underlying assumption rather than simply repeat the opposite opinion more confidently.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Сильный контраргумент должен оспаривать скрытое предположение, а не просто увереннее повторять противоположное мнение.","target_language":"en","word_bank":["A","strong","counterargument","should","challenge","an","underlying","assumption","rather","than","simply","repeat","the","opposite","opinion","more","confidently","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3051100-16f0-5916-836d-1077301bd25c', 'b5476aba-002f-5682-b9ff-095c3d5a956b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"compelling evidence","instruction":"Выберите подходящее слово.","options":["compelling evidence","underlying assumption","concede a point"],"sentence_template":"A strong counterargument should challenge an underlying assumption rather than simply repeat the opposite opinion more confidently."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('137a4acd-2903-522b-9873-5ead0d8feabf', 'b5476aba-002f-5682-b9ff-095c3d5a956b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","strong","counterargument","should","challenge","an","underlying","assumption","rather","than","simply","repeat","the","opposite","opinion","more","confidently","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","confidently","more","opinion","opposite","the","repeat","simply","than","rather","assumption","underlying","an","challenge","should","counterargument","strong","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('de94772e-90ec-584d-919a-dd710c5fa25f', 'b5476aba-002f-5682-b9ff-095c3d5a956b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A strong counterargument should challenge an underlying assumption rather than simply repeat the opposite opinion more confidently. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b5054e79-fabd-5c5f-907b-a1900146f2fa', 'b5476aba-002f-5682-b9ff-095c3d5a956b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A strong counterargument should challenge an underlying assumption rather than simply repeat the opposite opinion more confidently. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Сильный контраргумент должен оспаривать скрытое предположение, а не просто увереннее повторять противоположное мнение. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ada4cbd-4ac2-556f-bdb6-646fe600990d', 'b5476aba-002f-5682-b9ff-095c3d5a956b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"A strong counterargument should challenge an underlying assumption rather than simply repeat the opposite opinion more confidently.","translation":"Сильный контраргумент должен оспаривать скрытое предположение, а не просто увереннее повторять противоположное мнение.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Responding to Counterarguments"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('60b75e38-6dc1-5b33-8db6-e35c2a9adedb', 'b5476aba-002f-5682-b9ff-095c3d5a956b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“compelling evidence” means information that strongly supports a conclusion.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L2_D11","is_correct":true,"text":"information that strongly supports a conclusion"},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L2_D12","is_correct":false,"text":"a reason opposing a stated position"},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L2_D13","is_correct":false,"text":"limit a claim to make it more accurate"}],"word":"compelling evidence"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2646b208-d153-5489-84af-174dd234f743', 'b5476aba-002f-5682-b9ff-095c3d5a956b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A strong counterargument should challenge an underlying assumption rather than simply repeat the opposite opinion more confidently.","explanation":"The missing B2 expression is “compelling evidence”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"compelling evidence","id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L2_D14","is_correct":true},{"audio_text":"qualify a statement","id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L2_D15","is_correct":false},{"audio_text":"logical flaw","id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L2_D16","is_correct":false}],"sentence_template":"A strong counterargument should challenge an underlying assumption rather than simply repeat the opposite opinion more confidently."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('006217d1-36a3-5919-8714-c0f2df4a52f8', 'b5476aba-002f-5682-b9ff-095c3d5a956b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"compelling evidence","explanation":"The complete argument uses “compelling evidence” to express the intended meaning precisely.","hint_prefix":"comp","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A strong counterargument should challenge an underlying assumption rather than simply repeat the opposite opinion more confidently."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e5fb4099-4088-5a8c-9aba-7dab40a1a80e', 'b5476aba-002f-5682-b9ff-095c3d5a956b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"central claim","id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L2_D17","text":"central claim"},{"audio_text":"compelling evidence","id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L2_D18","text":"compelling evidence"},{"audio_text":"counterargument","id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L2_D19","text":"counterargument"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9bdd9dbf-d0ee-5882-a552-176c80059c41', 'b5476aba-002f-5682-b9ff-095c3d5a956b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Responding to Counterarguments”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L2_D20","is_correct":true,"text":"A strong counterargument should challenge an underlying assumption rather than simply repeat the opposite opinion more confidently."},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L2_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L2_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('bd3d7ad0-a771-51ae-844c-fcc10f75cc0a', 'b5476aba-002f-5682-b9ff-095c3d5a956b', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('1737a108-ac00-5994-bf97-d16d1e53a834', NULL, 'Взвешенный вывод и взаимодействие', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Persuasive Conclusions","ru":"Взвешенный вывод и взаимодействие"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5fb661ce-0e68-538b-bb0d-32cd4032a6a3', '1737a108-ac00-5994-bf97-d16d1e53a834', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L3_D01","left":"central claim","right":"основной тезис"},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L3_D02","left":"compelling evidence","right":"веские доказательства"},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L3_D03","left":"counterargument","right":"контраргумент"},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L3_D04","left":"qualify a statement","right":"уточнить утверждение"},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L3_D05","left":"underlying assumption","right":"скрытое предположение"},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L3_D06","left":"logical flaw","right":"логическая ошибка"},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L3_D07","left":"concede a point","right":"признать довод"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7c43e25f-23ad-57e0-94f2-a23bb10cf658', '1737a108-ac00-5994-bf97-d16d1e53a834', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L3_D08","is_correct":true,"text":"Conceding a point can strengthen your position because it shows fairness before you qualify a statement or identify its limitations."},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L3_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L3_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac379b82-92a3-5462-bf44-229c58090379', '1737a108-ac00-5994-bf97-d16d1e53a834', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Conceding a point can strengthen your position because it shows fairness before you qualify a statement or identify its limitations.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Признание довода может укрепить вашу позицию, поскольку демонстрирует объективность перед уточнением утверждения или выявлением его ограничений.","target_language":"en","word_bank":["Conceding","a","point","can","strengthen","your","position","because","it","shows","fairness","before","you","qualify","a","statement","or","identify","its","limitations","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dee85e35-d65d-5e3a-ab9e-c8970b355b0d', '1737a108-ac00-5994-bf97-d16d1e53a834', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"counterargument","instruction":"Выберите подходящее слово.","options":["counterargument","logical flaw","central claim"],"sentence_template":"Conceding a point can strengthen your position because it shows fairness before you qualify a statement or identify its limitations."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b842f7d-aa09-558c-a91b-780fb245b3cd', '1737a108-ac00-5994-bf97-d16d1e53a834', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Conceding","a","point","can","strengthen","your","position","because","it","shows","fairness","before","you","qualify","a","statement","or","identify","its","limitations","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","limitations","its","identify","or","statement","a","qualify","you","before","fairness","shows","it","because","position","your","strengthen","can","point","a","Conceding"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('906e7941-9448-591e-97c2-3522cb59e4de', '1737a108-ac00-5994-bf97-d16d1e53a834', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Conceding a point can strengthen your position because it shows fairness before you qualify a statement or identify its limitations. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c6482a04-1bc2-5f31-bda1-812dca24904f', '1737a108-ac00-5994-bf97-d16d1e53a834', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Conceding a point can strengthen your position because it shows fairness before you qualify a statement or identify its limitations. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Признание довода может укрепить вашу позицию, поскольку демонстрирует объективность перед уточнением утверждения или выявлением его ограничений. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a24502fd-3efa-5c31-bbb7-de1f0b3e4a5d', '1737a108-ac00-5994-bf97-d16d1e53a834', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Conceding a point can strengthen your position because it shows fairness before you qualify a statement or identify its limitations.","translation":"Признание довода может укрепить вашу позицию, поскольку демонстрирует объективность перед уточнением утверждения или выявлением его ограничений.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Persuasive Conclusions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2f121280-74b5-5b04-a2c7-93c29bf776f2', '1737a108-ac00-5994-bf97-d16d1e53a834', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“counterargument” means a reason opposing a stated position.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L3_D11","is_correct":true,"text":"a reason opposing a stated position"},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L3_D12","is_correct":false,"text":"limit a claim to make it more accurate"},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L3_D13","is_correct":false,"text":"an unstated belief on which reasoning depends"}],"word":"counterargument"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('134fa628-389d-5f85-82ae-8fb89f9b6af4', '1737a108-ac00-5994-bf97-d16d1e53a834', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Conceding a point can strengthen your position because it shows fairness before you qualify a statement or identify its limitations.","explanation":"The missing B2 expression is “counterargument”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"counterargument","id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L3_D14","is_correct":true},{"audio_text":"underlying assumption","id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L3_D15","is_correct":false},{"audio_text":"concede a point","id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L3_D16","is_correct":false}],"sentence_template":"Conceding a point can strengthen your position because it shows fairness before you qualify a statement or identify its limitations."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ecf6e9d4-c1e0-5208-a8e9-44d6eb9305b2', '1737a108-ac00-5994-bf97-d16d1e53a834', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"counterargument","explanation":"The complete argument uses “counterargument” to express the intended meaning precisely.","hint_prefix":"coun","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Conceding a point can strengthen your position because it shows fairness before you qualify a statement or identify its limitations."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('216a99cc-d5eb-5847-8a57-3813a1248508', '1737a108-ac00-5994-bf97-d16d1e53a834', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"central claim","id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L3_D17","text":"central claim"},{"audio_text":"compelling evidence","id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L3_D18","text":"compelling evidence"},{"audio_text":"counterargument","id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L3_D19","text":"counterargument"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd3eeef3-0a36-57dd-8656-3429db88efd3', '1737a108-ac00-5994-bf97-d16d1e53a834', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Persuasive Conclusions”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L3_D20","is_correct":true,"text":"Conceding a point can strengthen your position because it shows fairness before you qualify a statement or identify its limitations."},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L3_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_ARGUMENTS_COUNTERARGUMENTS_AND_PERSUASION_L3_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('bd3d7ad0-a771-51ae-844c-fcc10f75cc0a', '1737a108-ac00-5994-bf97-d16d1e53a834', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c2e93ed1-e528-54eb-a24a-4376c425dfa7', 'en', 'central claim', 'основной тезис', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5eff7dbf-7a9c-52ef-92a8-207824a7eba1', 'en', 'compelling evidence', 'веские доказательства', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('904e4477-c9ac-5518-b1c5-10fac8b3a05d', 'en', 'counterargument', 'контраргумент', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5b755aee-5894-514c-b12e-f3e26160cc64', 'en', 'qualify a statement', 'уточнить утверждение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ec871ee-94be-5636-a202-2f088ecbdaa0', 'en', 'underlying assumption', 'скрытое предположение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('288374f1-4b7f-5851-9592-6fa6e777bea8', 'en', 'logical flaw', 'логическая ошибка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bc0776c3-9295-5011-b4b4-db832e238e56', 'en', 'concede a point', 'признать довод', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c2e93ed1-e528-54eb-a24a-4376c425dfa7', 'en', 'central claim', 'основной тезис', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5eff7dbf-7a9c-52ef-92a8-207824a7eba1', 'en', 'compelling evidence', 'веские доказательства', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('904e4477-c9ac-5518-b1c5-10fac8b3a05d', 'en', 'counterargument', 'контраргумент', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5b755aee-5894-514c-b12e-f3e26160cc64', 'en', 'qualify a statement', 'уточнить утверждение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ec871ee-94be-5636-a202-2f088ecbdaa0', 'en', 'underlying assumption', 'скрытое предположение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('288374f1-4b7f-5851-9592-6fa6e777bea8', 'en', 'logical flaw', 'логическая ошибка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bc0776c3-9295-5011-b4b4-db832e238e56', 'en', 'concede a point', 'признать довод', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c2e93ed1-e528-54eb-a24a-4376c425dfa7', 'en', 'central claim', 'основной тезис', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5eff7dbf-7a9c-52ef-92a8-207824a7eba1', 'en', 'compelling evidence', 'веские доказательства', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('904e4477-c9ac-5518-b1c5-10fac8b3a05d', 'en', 'counterargument', 'контраргумент', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5b755aee-5894-514c-b12e-f3e26160cc64', 'en', 'qualify a statement', 'уточнить утверждение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ec871ee-94be-5636-a202-2f088ecbdaa0', 'en', 'underlying assumption', 'скрытое предположение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('288374f1-4b7f-5851-9592-6fa6e777bea8', 'en', 'logical flaw', 'логическая ошибка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bc0776c3-9295-5011-b4b4-db832e238e56', 'en', 'concede a point', 'признать довод', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bd3d7ad0-a771-51ae-844c-fcc10f75cc0a', id, '594af6f7-ec1e-5e37-822f-b98ab3a9cfd0', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'central claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bd3d7ad0-a771-51ae-844c-fcc10f75cc0a', id, '594af6f7-ec1e-5e37-822f-b98ab3a9cfd0', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'compelling evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bd3d7ad0-a771-51ae-844c-fcc10f75cc0a', id, '594af6f7-ec1e-5e37-822f-b98ab3a9cfd0', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'counterargument' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bd3d7ad0-a771-51ae-844c-fcc10f75cc0a', id, '594af6f7-ec1e-5e37-822f-b98ab3a9cfd0', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualify a statement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bd3d7ad0-a771-51ae-844c-fcc10f75cc0a', id, '594af6f7-ec1e-5e37-822f-b98ab3a9cfd0', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'underlying assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bd3d7ad0-a771-51ae-844c-fcc10f75cc0a', id, '594af6f7-ec1e-5e37-822f-b98ab3a9cfd0', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'logical flaw' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bd3d7ad0-a771-51ae-844c-fcc10f75cc0a', id, '594af6f7-ec1e-5e37-822f-b98ab3a9cfd0', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'concede a point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bd3d7ad0-a771-51ae-844c-fcc10f75cc0a', id, 'b5476aba-002f-5682-b9ff-095c3d5a956b', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'central claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bd3d7ad0-a771-51ae-844c-fcc10f75cc0a', id, 'b5476aba-002f-5682-b9ff-095c3d5a956b', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'compelling evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bd3d7ad0-a771-51ae-844c-fcc10f75cc0a', id, 'b5476aba-002f-5682-b9ff-095c3d5a956b', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'counterargument' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bd3d7ad0-a771-51ae-844c-fcc10f75cc0a', id, 'b5476aba-002f-5682-b9ff-095c3d5a956b', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualify a statement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bd3d7ad0-a771-51ae-844c-fcc10f75cc0a', id, 'b5476aba-002f-5682-b9ff-095c3d5a956b', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'underlying assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bd3d7ad0-a771-51ae-844c-fcc10f75cc0a', id, 'b5476aba-002f-5682-b9ff-095c3d5a956b', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'logical flaw' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bd3d7ad0-a771-51ae-844c-fcc10f75cc0a', id, 'b5476aba-002f-5682-b9ff-095c3d5a956b', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'concede a point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bd3d7ad0-a771-51ae-844c-fcc10f75cc0a', id, '1737a108-ac00-5994-bf97-d16d1e53a834', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'central claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bd3d7ad0-a771-51ae-844c-fcc10f75cc0a', id, '1737a108-ac00-5994-bf97-d16d1e53a834', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'compelling evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bd3d7ad0-a771-51ae-844c-fcc10f75cc0a', id, '1737a108-ac00-5994-bf97-d16d1e53a834', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'counterargument' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bd3d7ad0-a771-51ae-844c-fcc10f75cc0a', id, '1737a108-ac00-5994-bf97-d16d1e53a834', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualify a statement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bd3d7ad0-a771-51ae-844c-fcc10f75cc0a', id, '1737a108-ac00-5994-bf97-d16d1e53a834', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'underlying assumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bd3d7ad0-a771-51ae-844c-fcc10f75cc0a', id, '1737a108-ac00-5994-bf97-d16d1e53a834', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'logical flaw' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bd3d7ad0-a771-51ae-844c-fcc10f75cc0a', id, '1737a108-ac00-5994-bf97-d16d1e53a834', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'concede a point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
