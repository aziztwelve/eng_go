-- Track: B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('40e38306-309f-5604-9bed-63998e216a00', 'B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION', 'Увлекательные рассказы и личная рефлексия', 'Развивайте свободную и точную устную речь уровня B2 по теме «Увлекательные рассказы и личная рефлексия»: аргументируйте, реагируйте на возражения и формулируйте взвешенные выводы.', '{"en":"Engaging Narratives and Personal Reflection","ru":"Увлекательные рассказы и личная рефлексия"}'::jsonb, '{"en":"Develop fluent, precise B2 spoken English for engaging narratives and personal reflection through argument, counterargument, and balanced conclusions.","ru":"Развивайте свободную и точную устную речь уровня B2 по теме «Увлекательные рассказы и личная рефлексия»: аргументируйте, реагируйте на возражения и формулируйте взвешенные выводы."}'::jsonb, 'en', 'B2', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a5176bd4-e9a2-5d12-a477-d6ce3ebe6c04', NULL, 'Ключевые понятия и позиция', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Building an Engaging Story","ru":"Ключевые понятия и позиция"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a6295000-9e3e-58fa-aff8-5b5c7eca34e9', 'a5176bd4-e9a2-5d12-a477-d6ce3ebe6c04', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L1_D01","left":"turning point","right":"поворотный момент"},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L1_D02","left":"underlying motive","right":"скрытый мотив"},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L1_D03","left":"in retrospect","right":"оглядываясь назад"},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L1_D04","left":"build suspense","right":"создавать напряжение"},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L1_D05","left":"vivid detail","right":"яркая деталь"},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L1_D06","left":"unreliable narrator","right":"ненадёжный рассказчик"},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L1_D07","left":"draw a lesson","right":"извлечь урок"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('424dd106-48a5-5189-8e99-bbc602bafaef', 'a5176bd4-e9a2-5d12-a477-d6ce3ebe6c04', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L1_D08","is_correct":true,"text":"The turning point came when I discovered that the apparent mistake had actually protected us from a far more serious problem."},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L1_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L1_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2fa25efc-0591-50a0-afce-03f2a208b9c8', 'a5176bd4-e9a2-5d12-a477-d6ce3ebe6c04', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The turning point came when I discovered that the apparent mistake had actually protected us from a far more serious problem.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Поворотный момент наступил, когда я обнаружил, что кажущаяся ошибка на самом деле уберегла нас от гораздо более серьёзной проблемы.","target_language":"en","word_bank":["The","turning","point","came","when","I","discovered","that","the","apparent","mistake","had","actually","protected","us","from","a","far","more","serious","problem","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('04d88fea-038b-5d14-a8cd-2e4c9715a3b9', 'a5176bd4-e9a2-5d12-a477-d6ce3ebe6c04', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"turning point","instruction":"Выберите подходящее слово.","options":["turning point","build suspense","unreliable narrator"],"sentence_template":"The ___ came when I discovered that the apparent mistake had actually protected us from a far more serious problem."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c210762f-8599-5873-bf08-44c860831e27', 'a5176bd4-e9a2-5d12-a477-d6ce3ebe6c04', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","turning","point","came","when","I","discovered","that","the","apparent","mistake","had","actually","protected","us","from","a","far","more","serious","problem","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","problem","serious","more","far","a","from","us","protected","actually","had","mistake","apparent","the","that","discovered","I","when","came","point","turning","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71d62362-9405-5944-b3a5-f619ea661cd1', 'a5176bd4-e9a2-5d12-a477-d6ce3ebe6c04', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The turning point came when I discovered that the apparent mistake had actually protected us from a far more serious problem. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('15338168-c03e-5a0a-ae50-f03d383c6740', 'a5176bd4-e9a2-5d12-a477-d6ce3ebe6c04', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The turning point came when I discovered that the apparent mistake had actually protected us from a far more serious problem. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Поворотный момент наступил, когда я обнаружил, что кажущаяся ошибка на самом деле уберегла нас от гораздо более серьёзной проблемы. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3b2fcce5-f50f-57ac-8bc6-a4749456ed04', 'a5176bd4-e9a2-5d12-a477-d6ce3ebe6c04', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"The turning point came when I discovered that the apparent mistake had actually protected us from a far more serious problem.","translation":"Поворотный момент наступил, когда я обнаружил, что кажущаяся ошибка на самом деле уберегла нас от гораздо более серьёзной проблемы.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Building an Engaging Story"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('27a0f5d6-99e9-5caa-a77b-b305e9478a4c', 'a5176bd4-e9a2-5d12-a477-d6ce3ebe6c04', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“turning point” means an event that causes a decisive change.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L1_D11","is_correct":true,"text":"an event that causes a decisive change"},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L1_D12","is_correct":false,"text":"the less obvious reason behind an action"},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L1_D13","is_correct":false,"text":"when considering a past event with later knowledge"}],"word":"turning point"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('19d391d4-4080-53cc-bb31-c4576e427121', 'a5176bd4-e9a2-5d12-a477-d6ce3ebe6c04', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The turning point came when I discovered that the apparent mistake had actually protected us from a far more serious problem.","explanation":"The missing B2 expression is “turning point”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"turning point","id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L1_D14","is_correct":true},{"audio_text":"in retrospect","id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L1_D15","is_correct":false},{"audio_text":"vivid detail","id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L1_D16","is_correct":false}],"sentence_template":"The ___ came when I discovered that the apparent mistake had actually protected us from a far more serious problem."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('002a7edf-17ea-56a0-9c4f-0d7bf4b8f31c', 'a5176bd4-e9a2-5d12-a477-d6ce3ebe6c04', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"turning point","explanation":"The complete argument uses “turning point” to express the intended meaning precisely.","hint_prefix":"turn","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ came when I discovered that the apparent mistake had actually protected us from a far more serious problem."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d469d15c-ee9b-58ed-ae1b-1ad73b7bcdb3', 'a5176bd4-e9a2-5d12-a477-d6ce3ebe6c04', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"turning point","id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L1_D17","text":"turning point"},{"audio_text":"underlying motive","id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L1_D18","text":"underlying motive"},{"audio_text":"in retrospect","id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L1_D19","text":"in retrospect"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d1e923e7-7a13-5a36-bdca-ccb47c2c46df', 'a5176bd4-e9a2-5d12-a477-d6ce3ebe6c04', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Building an Engaging Story”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L1_D20","is_correct":true,"text":"The turning point came when I discovered that the apparent mistake had actually protected us from a far more serious problem."},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L1_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L1_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('40e38306-309f-5604-9bed-63998e216a00', 'a5176bd4-e9a2-5d12-a477-d6ce3ebe6c04', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c2535941-2691-5324-8f92-25a917e96e8e', NULL, 'Развитие и оспаривание аргумента', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Emphasis and Perspective","ru":"Развитие и оспаривание аргумента"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9c2e5bdb-4b3e-5341-9fa8-8b20e9f646f8', 'c2535941-2691-5324-8f92-25a917e96e8e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L2_D01","left":"turning point","right":"поворотный момент"},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L2_D02","left":"underlying motive","right":"скрытый мотив"},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L2_D03","left":"in retrospect","right":"оглядываясь назад"},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L2_D04","left":"build suspense","right":"создавать напряжение"},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L2_D05","left":"vivid detail","right":"яркая деталь"},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L2_D06","left":"unreliable narrator","right":"ненадёжный рассказчик"},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L2_D07","left":"draw a lesson","right":"извлечь урок"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('303384eb-daf3-5490-9e34-25a6557581c6', 'c2535941-2691-5324-8f92-25a917e96e8e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L2_D08","is_correct":true,"text":"Understanding the underlying motive changed my interpretation of the entire conversation and made the ending far less predictable."},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L2_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L2_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d79dd546-41ac-51ae-b3ae-155b9e4c03ce', 'c2535941-2691-5324-8f92-25a917e96e8e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Understanding the underlying motive changed my interpretation of the entire conversation and made the ending far less predictable.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Понимание скрытого мотива изменило моё толкование всего разговора и сделало финал гораздо менее предсказуемым.","target_language":"en","word_bank":["Understanding","the","underlying","motive","changed","my","interpretation","of","the","entire","conversation","and","made","the","ending","far","less","predictable","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1bb579c8-2808-52a6-8f75-90661e6cf8a0', 'c2535941-2691-5324-8f92-25a917e96e8e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"underlying motive","instruction":"Выберите подходящее слово.","options":["underlying motive","vivid detail","draw a lesson"],"sentence_template":"Understanding the ___ changed my interpretation of the entire conversation and made the ending far less predictable."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('548ad364-c5ae-5e3e-ac1c-e553dcd03019', 'c2535941-2691-5324-8f92-25a917e96e8e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Understanding","the","underlying","motive","changed","my","interpretation","of","the","entire","conversation","and","made","the","ending","far","less","predictable","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","predictable","less","far","ending","the","made","and","conversation","entire","the","of","interpretation","my","changed","motive","underlying","the","Understanding"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b765b83-3907-5f9b-b611-7d046bfc74e6', 'c2535941-2691-5324-8f92-25a917e96e8e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Understanding the underlying motive changed my interpretation of the entire conversation and made the ending far less predictable. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('282ccc03-0c8b-571c-b5ae-23401afca920', 'c2535941-2691-5324-8f92-25a917e96e8e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Understanding the underlying motive changed my interpretation of the entire conversation and made the ending far less predictable. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Понимание скрытого мотива изменило моё толкование всего разговора и сделало финал гораздо менее предсказуемым. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f091bf99-8b14-545a-b47e-450777ef9701', 'c2535941-2691-5324-8f92-25a917e96e8e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Understanding the underlying motive changed my interpretation of the entire conversation and made the ending far less predictable.","translation":"Понимание скрытого мотива изменило моё толкование всего разговора и сделало финал гораздо менее предсказуемым.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Emphasis and Perspective"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('93bddeeb-7110-5c1d-898c-8e81ca837112', 'c2535941-2691-5324-8f92-25a917e96e8e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“underlying motive” means the less obvious reason behind an action.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L2_D11","is_correct":true,"text":"the less obvious reason behind an action"},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L2_D12","is_correct":false,"text":"when considering a past event with later knowledge"},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L2_D13","is_correct":false,"text":"increase uncertainty and anticipation in a story"}],"word":"underlying motive"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71f1cc4d-b86d-5ca3-b2f7-0d5eee729dae', 'c2535941-2691-5324-8f92-25a917e96e8e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Understanding the underlying motive changed my interpretation of the entire conversation and made the ending far less predictable.","explanation":"The missing B2 expression is “underlying motive”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"underlying motive","id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L2_D14","is_correct":true},{"audio_text":"build suspense","id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L2_D15","is_correct":false},{"audio_text":"unreliable narrator","id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L2_D16","is_correct":false}],"sentence_template":"Understanding the ___ changed my interpretation of the entire conversation and made the ending far less predictable."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a857b128-429e-5b11-af34-80f183ae1ac9', 'c2535941-2691-5324-8f92-25a917e96e8e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"underlying motive","explanation":"The complete argument uses “underlying motive” to express the intended meaning precisely.","hint_prefix":"unde","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Understanding the ___ changed my interpretation of the entire conversation and made the ending far less predictable."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b3f93ef-2c73-564e-a09d-86332000a1ae', 'c2535941-2691-5324-8f92-25a917e96e8e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"turning point","id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L2_D17","text":"turning point"},{"audio_text":"underlying motive","id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L2_D18","text":"underlying motive"},{"audio_text":"in retrospect","id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L2_D19","text":"in retrospect"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('269b60e3-aba1-5cc8-bb53-02f20a92fb1d', 'c2535941-2691-5324-8f92-25a917e96e8e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Emphasis and Perspective”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L2_D20","is_correct":true,"text":"Understanding the underlying motive changed my interpretation of the entire conversation and made the ending far less predictable."},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L2_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L2_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('40e38306-309f-5604-9bed-63998e216a00', 'c2535941-2691-5324-8f92-25a917e96e8e', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('d785b397-fca6-5a5f-ab1a-fdea550feaf0', NULL, 'Взвешенный вывод и взаимодействие', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Reflecting on Experience","ru":"Взвешенный вывод и взаимодействие"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('68f38e09-60ad-5a42-a7a9-914661742fe8', 'd785b397-fca6-5a5f-ab1a-fdea550feaf0', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L3_D01","left":"turning point","right":"поворотный момент"},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L3_D02","left":"underlying motive","right":"скрытый мотив"},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L3_D03","left":"in retrospect","right":"оглядываясь назад"},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L3_D04","left":"build suspense","right":"создавать напряжение"},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L3_D05","left":"vivid detail","right":"яркая деталь"},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L3_D06","left":"unreliable narrator","right":"ненадёжный рассказчик"},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L3_D07","left":"draw a lesson","right":"извлечь урок"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc63e74f-c420-582b-8c0d-568091946c6b', 'd785b397-fca6-5a5f-ab1a-fdea550feaf0', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L3_D08","is_correct":true,"text":"In retrospect, the experience taught me that uncertainty can be valuable, provided that we are willing to draw a lesson from it."},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L3_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L3_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('98f90f83-fa98-52b5-879a-c316031e7b99', 'd785b397-fca6-5a5f-ab1a-fdea550feaf0', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"In retrospect, the experience taught me that uncertainty can be valuable, provided that we are willing to draw a lesson from it.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Оглядываясь назад, я понимаю, что этот опыт научил меня ценить неопределённость при условии, что мы готовы извлечь из неё урок.","target_language":"en","word_bank":["In","retrospect",",","the","experience","taught","me","that","uncertainty","can","be","valuable",",","provided","that","we","are","willing","to","draw","a","lesson","from","it","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ae802ca-8892-5eb6-a68e-b556881d39cc', 'd785b397-fca6-5a5f-ab1a-fdea550feaf0', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"in retrospect","instruction":"Выберите подходящее слово.","options":["in retrospect","unreliable narrator","turning point"],"sentence_template":"___, the experience taught me that uncertainty can be valuable, provided that we are willing to draw a lesson from it."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('423af8d7-9b7a-5624-a4f3-0a38ec0f60ca', 'd785b397-fca6-5a5f-ab1a-fdea550feaf0', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["In","retrospect",",","the","experience","taught","me","that","uncertainty","can","be","valuable",",","provided","that","we","are","willing","to","draw","a","lesson","from","it","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","it","from","lesson","a","draw","to","willing","are","we","that","provided",",","valuable","be","can","uncertainty","that","me","taught","experience","the",",","retrospect","In"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('05636627-ae7b-5d32-bf9b-5289e7c3ac98', 'd785b397-fca6-5a5f-ab1a-fdea550feaf0', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"In retrospect, the experience taught me that uncertainty can be valuable, provided that we are willing to draw a lesson from it. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7608c6d3-df89-5b17-b0dd-dd90d8ae5a0a', 'd785b397-fca6-5a5f-ab1a-fdea550feaf0', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"In retrospect, the experience taught me that uncertainty can be valuable, provided that we are willing to draw a lesson from it. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Оглядываясь назад, я понимаю, что этот опыт научил меня ценить неопределённость при условии, что мы готовы извлечь из неё урок. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c65b712f-89b8-573a-b307-1e029c7ced57', 'd785b397-fca6-5a5f-ab1a-fdea550feaf0', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"In retrospect, the experience taught me that uncertainty can be valuable, provided that we are willing to draw a lesson from it.","translation":"Оглядываясь назад, я понимаю, что этот опыт научил меня ценить неопределённость при условии, что мы готовы извлечь из неё урок.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Reflecting on Experience"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c1280683-a796-56e6-a2bf-51e7f9550e5f', 'd785b397-fca6-5a5f-ab1a-fdea550feaf0', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“in retrospect” means when considering a past event with later knowledge.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L3_D11","is_correct":true,"text":"when considering a past event with later knowledge"},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L3_D12","is_correct":false,"text":"increase uncertainty and anticipation in a story"},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L3_D13","is_correct":false,"text":"a precise description that creates a strong mental image"}],"word":"in retrospect"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('47bdac2f-c5a9-5c0e-98af-b45662e07596', 'd785b397-fca6-5a5f-ab1a-fdea550feaf0', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"In retrospect, the experience taught me that uncertainty can be valuable, provided that we are willing to draw a lesson from it.","explanation":"The missing B2 expression is “in retrospect”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"in retrospect","id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L3_D14","is_correct":true},{"audio_text":"vivid detail","id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L3_D15","is_correct":false},{"audio_text":"draw a lesson","id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L3_D16","is_correct":false}],"sentence_template":"___, the experience taught me that uncertainty can be valuable, provided that we are willing to draw a lesson from it."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c260d927-239d-5814-9a1f-e905fdc24d1a', 'd785b397-fca6-5a5f-ab1a-fdea550feaf0', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"in retrospect","explanation":"The complete argument uses “in retrospect” to express the intended meaning precisely.","hint_prefix":"in r","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___, the experience taught me that uncertainty can be valuable, provided that we are willing to draw a lesson from it."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('57af3ab7-be76-5df8-9a2d-889819c271d0', 'd785b397-fca6-5a5f-ab1a-fdea550feaf0', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"turning point","id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L3_D17","text":"turning point"},{"audio_text":"underlying motive","id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L3_D18","text":"underlying motive"},{"audio_text":"in retrospect","id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L3_D19","text":"in retrospect"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5844a194-6036-5b24-a399-101d9bc0b678', 'd785b397-fca6-5a5f-ab1a-fdea550feaf0', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Reflecting on Experience”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L3_D20","is_correct":true,"text":"In retrospect, the experience taught me that uncertainty can be valuable, provided that we are willing to draw a lesson from it."},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L3_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_ENGAGING_NARRATIVES_AND_PERSONAL_REFLECTION_L3_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('40e38306-309f-5604-9bed-63998e216a00', 'd785b397-fca6-5a5f-ab1a-fdea550feaf0', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f7456b07-e9b2-596e-9936-0201d197a066', 'en', 'turning point', 'поворотный момент', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7fc3cea4-5ab6-5424-bf83-2659b66995ce', 'en', 'underlying motive', 'скрытый мотив', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dc27fbb5-d52c-5fcb-89e4-14123384259b', 'en', 'in retrospect', 'оглядываясь назад', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d624076e-a3e6-5615-9db0-d4e8c1a30865', 'en', 'build suspense', 'создавать напряжение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('14492d82-db30-537e-8961-8f8844105eee', 'en', 'vivid detail', 'яркая деталь', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('02b988eb-9001-509f-b190-26a677a0d401', 'en', 'unreliable narrator', 'ненадёжный рассказчик', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b49c71c0-e52b-56c4-ba2f-e37f602ee5b1', 'en', 'draw a lesson', 'извлечь урок', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f7456b07-e9b2-596e-9936-0201d197a066', 'en', 'turning point', 'поворотный момент', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7fc3cea4-5ab6-5424-bf83-2659b66995ce', 'en', 'underlying motive', 'скрытый мотив', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dc27fbb5-d52c-5fcb-89e4-14123384259b', 'en', 'in retrospect', 'оглядываясь назад', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d624076e-a3e6-5615-9db0-d4e8c1a30865', 'en', 'build suspense', 'создавать напряжение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('14492d82-db30-537e-8961-8f8844105eee', 'en', 'vivid detail', 'яркая деталь', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('02b988eb-9001-509f-b190-26a677a0d401', 'en', 'unreliable narrator', 'ненадёжный рассказчик', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b49c71c0-e52b-56c4-ba2f-e37f602ee5b1', 'en', 'draw a lesson', 'извлечь урок', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f7456b07-e9b2-596e-9936-0201d197a066', 'en', 'turning point', 'поворотный момент', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7fc3cea4-5ab6-5424-bf83-2659b66995ce', 'en', 'underlying motive', 'скрытый мотив', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dc27fbb5-d52c-5fcb-89e4-14123384259b', 'en', 'in retrospect', 'оглядываясь назад', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d624076e-a3e6-5615-9db0-d4e8c1a30865', 'en', 'build suspense', 'создавать напряжение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('14492d82-db30-537e-8961-8f8844105eee', 'en', 'vivid detail', 'яркая деталь', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('02b988eb-9001-509f-b190-26a677a0d401', 'en', 'unreliable narrator', 'ненадёжный рассказчик', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b49c71c0-e52b-56c4-ba2f-e37f602ee5b1', 'en', 'draw a lesson', 'извлечь урок', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e38306-309f-5604-9bed-63998e216a00', id, 'a5176bd4-e9a2-5d12-a477-d6ce3ebe6c04', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'turning point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e38306-309f-5604-9bed-63998e216a00', id, 'a5176bd4-e9a2-5d12-a477-d6ce3ebe6c04', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'underlying motive' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e38306-309f-5604-9bed-63998e216a00', id, 'a5176bd4-e9a2-5d12-a477-d6ce3ebe6c04', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'in retrospect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e38306-309f-5604-9bed-63998e216a00', id, 'a5176bd4-e9a2-5d12-a477-d6ce3ebe6c04', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'build suspense' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e38306-309f-5604-9bed-63998e216a00', id, 'a5176bd4-e9a2-5d12-a477-d6ce3ebe6c04', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'vivid detail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e38306-309f-5604-9bed-63998e216a00', id, 'a5176bd4-e9a2-5d12-a477-d6ce3ebe6c04', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'unreliable narrator' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e38306-309f-5604-9bed-63998e216a00', id, 'a5176bd4-e9a2-5d12-a477-d6ce3ebe6c04', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'draw a lesson' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e38306-309f-5604-9bed-63998e216a00', id, 'c2535941-2691-5324-8f92-25a917e96e8e', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'turning point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e38306-309f-5604-9bed-63998e216a00', id, 'c2535941-2691-5324-8f92-25a917e96e8e', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'underlying motive' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e38306-309f-5604-9bed-63998e216a00', id, 'c2535941-2691-5324-8f92-25a917e96e8e', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'in retrospect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e38306-309f-5604-9bed-63998e216a00', id, 'c2535941-2691-5324-8f92-25a917e96e8e', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'build suspense' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e38306-309f-5604-9bed-63998e216a00', id, 'c2535941-2691-5324-8f92-25a917e96e8e', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'vivid detail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e38306-309f-5604-9bed-63998e216a00', id, 'c2535941-2691-5324-8f92-25a917e96e8e', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'unreliable narrator' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e38306-309f-5604-9bed-63998e216a00', id, 'c2535941-2691-5324-8f92-25a917e96e8e', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'draw a lesson' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e38306-309f-5604-9bed-63998e216a00', id, 'd785b397-fca6-5a5f-ab1a-fdea550feaf0', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'turning point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e38306-309f-5604-9bed-63998e216a00', id, 'd785b397-fca6-5a5f-ab1a-fdea550feaf0', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'underlying motive' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e38306-309f-5604-9bed-63998e216a00', id, 'd785b397-fca6-5a5f-ab1a-fdea550feaf0', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'in retrospect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e38306-309f-5604-9bed-63998e216a00', id, 'd785b397-fca6-5a5f-ab1a-fdea550feaf0', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'build suspense' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e38306-309f-5604-9bed-63998e216a00', id, 'd785b397-fca6-5a5f-ab1a-fdea550feaf0', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'vivid detail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e38306-309f-5604-9bed-63998e216a00', id, 'd785b397-fca6-5a5f-ab1a-fdea550feaf0', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'unreliable narrator' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '40e38306-309f-5604-9bed-63998e216a00', id, 'd785b397-fca6-5a5f-ab1a-fdea550feaf0', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'draw a lesson' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
