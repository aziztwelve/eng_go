-- Track: B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('528d31fd-4793-575e-906b-7085965b11da', 'B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS', 'Идентичность, отношения и социальные ожидания', 'Развивайте свободную и точную устную речь уровня B2 по теме «Идентичность, отношения и социальные ожидания»: аргументируйте, реагируйте на возражения и формулируйте взвешенные выводы.', '{"en":"Identity, Relationships and Social Expectations","ru":"Идентичность, отношения и социальные ожидания"}'::jsonb, '{"en":"Develop fluent, precise B2 spoken English for identity, relationships and social expectations through argument, counterargument, and balanced conclusions.","ru":"Развивайте свободную и точную устную речь уровня B2 по теме «Идентичность, отношения и социальные ожидания»: аргументируйте, реагируйте на возражения и формулируйте взвешенные выводы."}'::jsonb, 'en', 'B2', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('25509e82-f699-571e-8899-732d18269e55', NULL, 'Ключевые понятия и позиция', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Identity and Self-Presentation","ru":"Ключевые понятия и позиция"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8b976f8-6cd9-57de-b502-2d8e8456d325', '25509e82-f699-571e-8899-732d18269e55', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L1_D01","left":"self-perception","right":"самовосприятие"},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L1_D02","left":"mutual respect","right":"взаимное уважение"},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L1_D03","left":"social convention","right":"общественная норма"},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L1_D04","left":"authentic","right":"искренний"},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L1_D05","left":"stereotype","right":"стереотип"},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L1_D06","left":"sense of belonging","right":"чувство принадлежности"},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L1_D07","left":"compromise","right":"компромисс"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c435b6b8-6cc8-59b7-93d9-6494bd28b6f0', '25509e82-f699-571e-8899-732d18269e55', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L1_D08","is_correct":true,"text":"Our self-perception is partly shaped by other people, yet defining ourselves entirely through their expectations can prevent us from being authentic."},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L1_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L1_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('59ccd59b-3df4-5eba-869f-e53234945814', '25509e82-f699-571e-8899-732d18269e55', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Our self-perception is partly shaped by other people, yet defining ourselves entirely through their expectations can prevent us from being authentic.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Наше самовосприятие частично формируется другими людьми, однако если мы полностью определяем себя через их ожидания, это может помешать нам быть искренними.","target_language":"en","word_bank":["Our","self-perception","is","partly","shaped","by","other","people",",","yet","defining","ourselves","entirely","through","their","expectations","can","prevent","us","from","being","authentic","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9f6831f3-d329-5efe-acf5-9e7aa731eec2', '25509e82-f699-571e-8899-732d18269e55', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"self-perception","instruction":"Выберите подходящее слово.","options":["self-perception","authentic","sense of belonging"],"sentence_template":"Our ___ is partly shaped by other people, yet defining ourselves entirely through their expectations can prevent us from being authentic."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fd314c28-2fee-58fa-bab3-7cd16aa76985', '25509e82-f699-571e-8899-732d18269e55', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Our","self-perception","is","partly","shaped","by","other","people",",","yet","defining","ourselves","entirely","through","their","expectations","can","prevent","us","from","being","authentic","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","authentic","being","from","us","prevent","can","expectations","their","through","entirely","ourselves","defining","yet",",","people","other","by","shaped","partly","is","self-perception","Our"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('37f254ff-bd83-549d-a366-d6836bc9ae4c', '25509e82-f699-571e-8899-732d18269e55', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Our self-perception is partly shaped by other people, yet defining ourselves entirely through their expectations can prevent us from being authentic. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('beac1ada-2390-583c-96cd-a75f5206e7ce', '25509e82-f699-571e-8899-732d18269e55', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Our self-perception is partly shaped by other people, yet defining ourselves entirely through their expectations can prevent us from being authentic. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Наше самовосприятие частично формируется другими людьми, однако если мы полностью определяем себя через их ожидания, это может помешать нам быть искренними. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6928537a-b947-5a1a-b356-4980fd03d6f7', '25509e82-f699-571e-8899-732d18269e55', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Our self-perception is partly shaped by other people, yet defining ourselves entirely through their expectations can prevent us from being authentic.","translation":"Наше самовосприятие частично формируется другими людьми, однако если мы полностью определяем себя через их ожидания, это может помешать нам быть искренними.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Identity and Self-Presentation"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c304b0c4-44df-5b9b-a031-1437ecbc2078', '25509e82-f699-571e-8899-732d18269e55', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“self-perception” means the way a person understands their own character and abilities.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L1_D11","is_correct":true,"text":"the way a person understands their own character and abilities"},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L1_D12","is_correct":false,"text":"shared recognition of each person’s value and boundaries"},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L1_D13","is_correct":false,"text":"a widely accepted way of behaving in society"}],"word":"self-perception"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c302029b-c79e-5992-b6be-e365d0de6942', '25509e82-f699-571e-8899-732d18269e55', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Our self-perception is partly shaped by other people, yet defining ourselves entirely through their expectations can prevent us from being authentic.","explanation":"The missing B2 expression is “self-perception”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"self-perception","id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L1_D14","is_correct":true},{"audio_text":"social convention","id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L1_D15","is_correct":false},{"audio_text":"stereotype","id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L1_D16","is_correct":false}],"sentence_template":"Our ___ is partly shaped by other people, yet defining ourselves entirely through their expectations can prevent us from being authentic."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('155e0389-2540-5b46-aa5f-e3c38549f8e8', '25509e82-f699-571e-8899-732d18269e55', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"self-perception","explanation":"The complete argument uses “self-perception” to express the intended meaning precisely.","hint_prefix":"self","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Our ___ is partly shaped by other people, yet defining ourselves entirely through their expectations can prevent us from being authentic."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ae46c82-7055-5dd7-8a59-8189f02f6a39', '25509e82-f699-571e-8899-732d18269e55', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"self-perception","id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L1_D17","text":"self-perception"},{"audio_text":"mutual respect","id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L1_D18","text":"mutual respect"},{"audio_text":"social convention","id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L1_D19","text":"social convention"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4f2a4004-bffc-5532-877d-dafbe3b98366', '25509e82-f699-571e-8899-732d18269e55', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Identity and Self-Presentation”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L1_D20","is_correct":true,"text":"Our self-perception is partly shaped by other people, yet defining ourselves entirely through their expectations can prevent us from being authentic."},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L1_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L1_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('528d31fd-4793-575e-906b-7085965b11da', '25509e82-f699-571e-8899-732d18269e55', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2ba242a9-c218-5e04-aa19-4a876f68df5f', NULL, 'Развитие и оспаривание аргумента', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Complex Relationships","ru":"Развитие и оспаривание аргумента"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7b392c8b-87b0-5732-ae1d-23c6dc51b3f6', '2ba242a9-c218-5e04-aa19-4a876f68df5f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L2_D01","left":"self-perception","right":"самовосприятие"},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L2_D02","left":"mutual respect","right":"взаимное уважение"},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L2_D03","left":"social convention","right":"общественная норма"},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L2_D04","left":"authentic","right":"искренний"},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L2_D05","left":"stereotype","right":"стереотип"},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L2_D06","left":"sense of belonging","right":"чувство принадлежности"},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L2_D07","left":"compromise","right":"компромисс"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5d88dec8-8fae-598c-bd2c-fb4bb1f10426', '2ba242a9-c218-5e04-aa19-4a876f68df5f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L2_D08","is_correct":true,"text":"Mutual respect does not require complete agreement; it involves acknowledging differences while maintaining clear personal boundaries."},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L2_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L2_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef2cd95c-9cec-5800-9ac4-8e9101682140', '2ba242a9-c218-5e04-aa19-4a876f68df5f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Mutual respect does not require complete agreement; it involves acknowledging differences while maintaining clear personal boundaries.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Взаимное уважение не требует полного согласия; оно предполагает признание различий при сохранении чётких личных границ.","target_language":"en","word_bank":["Mutual","respect","does","not","require","complete","agreement",";","it","involves","acknowledging","differences","while","maintaining","clear","personal","boundaries","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('024e863c-7177-540d-af98-16d7ac4aca8c', '2ba242a9-c218-5e04-aa19-4a876f68df5f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"mutual respect","instruction":"Выберите подходящее слово.","options":["mutual respect","stereotype","compromise"],"sentence_template":"___ does not require complete agreement; it involves acknowledging differences while maintaining clear personal boundaries."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('53b2a380-5dae-5b3a-9fb2-ee7f6630639b', '2ba242a9-c218-5e04-aa19-4a876f68df5f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Mutual","respect","does","not","require","complete","agreement",";","it","involves","acknowledging","differences","while","maintaining","clear","personal","boundaries","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","boundaries","personal","clear","maintaining","while","differences","acknowledging","involves","it",";","agreement","complete","require","not","does","respect","Mutual"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('20a1df1b-0418-52c4-b21c-b08219c173a6', '2ba242a9-c218-5e04-aa19-4a876f68df5f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Mutual respect does not require complete agreement; it involves acknowledging differences while maintaining clear personal boundaries. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8a6ffb92-d0f8-562b-a5b1-620d57a97ad9', '2ba242a9-c218-5e04-aa19-4a876f68df5f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Mutual respect does not require complete agreement; it involves acknowledging differences while maintaining clear personal boundaries. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Взаимное уважение не требует полного согласия; оно предполагает признание различий при сохранении чётких личных границ. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9dc45c5f-4c47-55a8-9bf9-18700356bafb', '2ba242a9-c218-5e04-aa19-4a876f68df5f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Mutual respect does not require complete agreement; it involves acknowledging differences while maintaining clear personal boundaries.","translation":"Взаимное уважение не требует полного согласия; оно предполагает признание различий при сохранении чётких личных границ.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Complex Relationships"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6868a09a-f13b-5665-8771-1ab6ce7d86e3', '2ba242a9-c218-5e04-aa19-4a876f68df5f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“mutual respect” means shared recognition of each person’s value and boundaries.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L2_D11","is_correct":true,"text":"shared recognition of each person’s value and boundaries"},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L2_D12","is_correct":false,"text":"a widely accepted way of behaving in society"},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L2_D13","is_correct":false,"text":"true to one’s own personality or values"}],"word":"mutual respect"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5536d947-75a4-5966-9542-570df95b925f', '2ba242a9-c218-5e04-aa19-4a876f68df5f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Mutual respect does not require complete agreement; it involves acknowledging differences while maintaining clear personal boundaries.","explanation":"The missing B2 expression is “mutual respect”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"mutual respect","id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L2_D14","is_correct":true},{"audio_text":"authentic","id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L2_D15","is_correct":false},{"audio_text":"sense of belonging","id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L2_D16","is_correct":false}],"sentence_template":"___ does not require complete agreement; it involves acknowledging differences while maintaining clear personal boundaries."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc6081c3-7564-5e25-9f9b-1073957cbf9c', '2ba242a9-c218-5e04-aa19-4a876f68df5f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"mutual respect","explanation":"The complete argument uses “mutual respect” to express the intended meaning precisely.","hint_prefix":"mutu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ does not require complete agreement; it involves acknowledging differences while maintaining clear personal boundaries."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('33809821-8929-5c30-879c-89ddef41f7f1', '2ba242a9-c218-5e04-aa19-4a876f68df5f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"self-perception","id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L2_D17","text":"self-perception"},{"audio_text":"mutual respect","id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L2_D18","text":"mutual respect"},{"audio_text":"social convention","id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L2_D19","text":"social convention"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('575e256f-6b16-5ba2-939e-eaa9ebbca627', '2ba242a9-c218-5e04-aa19-4a876f68df5f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Complex Relationships”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L2_D20","is_correct":true,"text":"Mutual respect does not require complete agreement; it involves acknowledging differences while maintaining clear personal boundaries."},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L2_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L2_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('528d31fd-4793-575e-906b-7085965b11da', '2ba242a9-c218-5e04-aa19-4a876f68df5f', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f4623276-cf21-5008-b0af-f7755a27480f', NULL, 'Взвешенный вывод и взаимодействие', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Social Expectations","ru":"Взвешенный вывод и взаимодействие"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16cb8c3a-a0f9-55a4-8480-05f347f5e76d', 'f4623276-cf21-5008-b0af-f7755a27480f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L3_D01","left":"self-perception","right":"самовосприятие"},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L3_D02","left":"mutual respect","right":"взаимное уважение"},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L3_D03","left":"social convention","right":"общественная норма"},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L3_D04","left":"authentic","right":"искренний"},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L3_D05","left":"stereotype","right":"стереотип"},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L3_D06","left":"sense of belonging","right":"чувство принадлежности"},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L3_D07","left":"compromise","right":"компромисс"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0231fd57-26c1-5a60-b7b1-85ad7f33a5e3', 'f4623276-cf21-5008-b0af-f7755a27480f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L3_D08","is_correct":true,"text":"A social convention may create stability, but it should be questioned when it reinforces an unfair stereotype or excludes certain people."},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L3_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L3_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('95ac56b9-7ad5-53f1-a365-b80e4f43a4d2', 'f4623276-cf21-5008-b0af-f7755a27480f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A social convention may create stability, but it should be questioned when it reinforces an unfair stereotype or excludes certain people.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Общественная норма может создавать стабильность, но её следует ставить под сомнение, когда она укрепляет несправедливый стереотип или исключает некоторых людей.","target_language":"en","word_bank":["A","social","convention","may","create","stability",",","but","it","should","be","questioned","when","it","reinforces","an","unfair","stereotype","or","excludes","certain","people","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('467562ee-a488-52ec-ba52-254f2241034b', 'f4623276-cf21-5008-b0af-f7755a27480f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"social convention","instruction":"Выберите подходящее слово.","options":["social convention","sense of belonging","self-perception"],"sentence_template":"A ___ may create stability, but it should be questioned when it reinforces an unfair stereotype or excludes certain people."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b1595001-3bec-5e09-8235-da074862b635', 'f4623276-cf21-5008-b0af-f7755a27480f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","social","convention","may","create","stability",",","but","it","should","be","questioned","when","it","reinforces","an","unfair","stereotype","or","excludes","certain","people","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","people","certain","excludes","or","stereotype","unfair","an","reinforces","it","when","questioned","be","should","it","but",",","stability","create","may","convention","social","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('88e89a72-f8d2-5010-b354-b7e76d1736b3', 'f4623276-cf21-5008-b0af-f7755a27480f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A social convention may create stability, but it should be questioned when it reinforces an unfair stereotype or excludes certain people. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('670289aa-f00d-528c-9179-2bba4c5dd97f', 'f4623276-cf21-5008-b0af-f7755a27480f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A social convention may create stability, but it should be questioned when it reinforces an unfair stereotype or excludes certain people. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Общественная норма может создавать стабильность, но её следует ставить под сомнение, когда она укрепляет несправедливый стереотип или исключает некоторых людей. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('32e68f99-707e-5e57-8780-42590820faae', 'f4623276-cf21-5008-b0af-f7755a27480f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"A social convention may create stability, but it should be questioned when it reinforces an unfair stereotype or excludes certain people.","translation":"Общественная норма может создавать стабильность, но её следует ставить под сомнение, когда она укрепляет несправедливый стереотип или исключает некоторых людей.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Social Expectations"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ab1eebba-ac3c-5adc-9009-1271046d0e9b', 'f4623276-cf21-5008-b0af-f7755a27480f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“social convention” means a widely accepted way of behaving in society.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L3_D11","is_correct":true,"text":"a widely accepted way of behaving in society"},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L3_D12","is_correct":false,"text":"true to one’s own personality or values"},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L3_D13","is_correct":false,"text":"an oversimplified belief about a group"}],"word":"social convention"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2aa0f3c4-8e8a-5679-9ad8-0a805389e3c6', 'f4623276-cf21-5008-b0af-f7755a27480f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A social convention may create stability, but it should be questioned when it reinforces an unfair stereotype or excludes certain people.","explanation":"The missing B2 expression is “social convention”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"social convention","id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L3_D14","is_correct":true},{"audio_text":"stereotype","id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L3_D15","is_correct":false},{"audio_text":"compromise","id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L3_D16","is_correct":false}],"sentence_template":"A ___ may create stability, but it should be questioned when it reinforces an unfair stereotype or excludes certain people."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c6059e04-fa20-588b-921e-6a5c7454e83b', 'f4623276-cf21-5008-b0af-f7755a27480f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"social convention","explanation":"The complete argument uses “social convention” to express the intended meaning precisely.","hint_prefix":"soci","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ may create stability, but it should be questioned when it reinforces an unfair stereotype or excludes certain people."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('893f28fa-7586-5455-ac3b-388dac32a254', 'f4623276-cf21-5008-b0af-f7755a27480f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"self-perception","id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L3_D17","text":"self-perception"},{"audio_text":"mutual respect","id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L3_D18","text":"mutual respect"},{"audio_text":"social convention","id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L3_D19","text":"social convention"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2bc7e3e7-1882-5fd7-ae6f-0dba804bbc13', 'f4623276-cf21-5008-b0af-f7755a27480f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Social Expectations”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L3_D20","is_correct":true,"text":"A social convention may create stability, but it should be questioned when it reinforces an unfair stereotype or excludes certain people."},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L3_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_IDENTITY_RELATIONSHIPS_AND_SOCIAL_EXPECTATIONS_L3_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('528d31fd-4793-575e-906b-7085965b11da', 'f4623276-cf21-5008-b0af-f7755a27480f', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bb12cbb0-668d-5cff-9ef2-12f8459feb03', 'en', 'self-perception', 'самовосприятие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c655e7ca-c365-5673-9c1c-f9b38098d51f', 'en', 'mutual respect', 'взаимное уважение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('78f4f470-4801-54c7-bf67-ccf0693756f1', 'en', 'social convention', 'общественная норма', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5545cdce-eef8-5113-aa36-399dec649fb4', 'en', 'authentic', 'искренний', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('54a003f2-11b6-5a46-b7fc-fe60a5ad7834', 'en', 'stereotype', 'стереотип', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('04b27eb9-7f2a-59bb-be98-f29ba2e1619c', 'en', 'sense of belonging', 'чувство принадлежности', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('35db5830-e5b4-560a-9d02-624f8ba64c82', 'en', 'compromise', 'компромисс', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bb12cbb0-668d-5cff-9ef2-12f8459feb03', 'en', 'self-perception', 'самовосприятие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c655e7ca-c365-5673-9c1c-f9b38098d51f', 'en', 'mutual respect', 'взаимное уважение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('78f4f470-4801-54c7-bf67-ccf0693756f1', 'en', 'social convention', 'общественная норма', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5545cdce-eef8-5113-aa36-399dec649fb4', 'en', 'authentic', 'искренний', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('54a003f2-11b6-5a46-b7fc-fe60a5ad7834', 'en', 'stereotype', 'стереотип', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('04b27eb9-7f2a-59bb-be98-f29ba2e1619c', 'en', 'sense of belonging', 'чувство принадлежности', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('35db5830-e5b4-560a-9d02-624f8ba64c82', 'en', 'compromise', 'компромисс', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bb12cbb0-668d-5cff-9ef2-12f8459feb03', 'en', 'self-perception', 'самовосприятие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c655e7ca-c365-5673-9c1c-f9b38098d51f', 'en', 'mutual respect', 'взаимное уважение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('78f4f470-4801-54c7-bf67-ccf0693756f1', 'en', 'social convention', 'общественная норма', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5545cdce-eef8-5113-aa36-399dec649fb4', 'en', 'authentic', 'искренний', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('54a003f2-11b6-5a46-b7fc-fe60a5ad7834', 'en', 'stereotype', 'стереотип', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('04b27eb9-7f2a-59bb-be98-f29ba2e1619c', 'en', 'sense of belonging', 'чувство принадлежности', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('35db5830-e5b4-560a-9d02-624f8ba64c82', 'en', 'compromise', 'компромисс', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '528d31fd-4793-575e-906b-7085965b11da', id, '25509e82-f699-571e-8899-732d18269e55', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'self-perception' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '528d31fd-4793-575e-906b-7085965b11da', id, '25509e82-f699-571e-8899-732d18269e55', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'mutual respect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '528d31fd-4793-575e-906b-7085965b11da', id, '25509e82-f699-571e-8899-732d18269e55', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'social convention' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '528d31fd-4793-575e-906b-7085965b11da', id, '25509e82-f699-571e-8899-732d18269e55', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'authentic' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '528d31fd-4793-575e-906b-7085965b11da', id, '25509e82-f699-571e-8899-732d18269e55', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'stereotype' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '528d31fd-4793-575e-906b-7085965b11da', id, '25509e82-f699-571e-8899-732d18269e55', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'sense of belonging' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '528d31fd-4793-575e-906b-7085965b11da', id, '25509e82-f699-571e-8899-732d18269e55', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'compromise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '528d31fd-4793-575e-906b-7085965b11da', id, '2ba242a9-c218-5e04-aa19-4a876f68df5f', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'self-perception' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '528d31fd-4793-575e-906b-7085965b11da', id, '2ba242a9-c218-5e04-aa19-4a876f68df5f', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'mutual respect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '528d31fd-4793-575e-906b-7085965b11da', id, '2ba242a9-c218-5e04-aa19-4a876f68df5f', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'social convention' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '528d31fd-4793-575e-906b-7085965b11da', id, '2ba242a9-c218-5e04-aa19-4a876f68df5f', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'authentic' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '528d31fd-4793-575e-906b-7085965b11da', id, '2ba242a9-c218-5e04-aa19-4a876f68df5f', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'stereotype' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '528d31fd-4793-575e-906b-7085965b11da', id, '2ba242a9-c218-5e04-aa19-4a876f68df5f', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'sense of belonging' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '528d31fd-4793-575e-906b-7085965b11da', id, '2ba242a9-c218-5e04-aa19-4a876f68df5f', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'compromise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '528d31fd-4793-575e-906b-7085965b11da', id, 'f4623276-cf21-5008-b0af-f7755a27480f', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'self-perception' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '528d31fd-4793-575e-906b-7085965b11da', id, 'f4623276-cf21-5008-b0af-f7755a27480f', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'mutual respect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '528d31fd-4793-575e-906b-7085965b11da', id, 'f4623276-cf21-5008-b0af-f7755a27480f', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'social convention' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '528d31fd-4793-575e-906b-7085965b11da', id, 'f4623276-cf21-5008-b0af-f7755a27480f', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'authentic' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '528d31fd-4793-575e-906b-7085965b11da', id, 'f4623276-cf21-5008-b0af-f7755a27480f', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'stereotype' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '528d31fd-4793-575e-906b-7085965b11da', id, 'f4623276-cf21-5008-b0af-f7755a27480f', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'sense of belonging' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '528d31fd-4793-575e-906b-7085965b11da', id, 'f4623276-cf21-5008-b0af-f7755a27480f', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'compromise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
