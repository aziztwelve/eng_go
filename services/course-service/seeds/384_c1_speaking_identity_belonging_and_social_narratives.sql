-- Track: C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('ad7d7e24-361a-545f-b7d0-b3f757dcc01e', 'C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES', 'Идентичность, принадлежность и социальные нарративы', 'Развивайте свободную и нюансированную устную речь уровня C1 по теме «Идентичность, принадлежность и социальные нарративы», управляя абстрактными аргументами, импликациями и регистром.', '{"en":"Identity, Belonging and Social Narratives","ru":"Идентичность, принадлежность и социальные нарративы"}'::jsonb, '{"en":"Develop fluent, nuanced C1 spoken English for identity, belonging and social narratives by controlling abstract argument, implication, and register.","ru":"Развивайте свободную и нюансированную устную речь уровня C1 по теме «Идентичность, принадлежность и социальные нарративы», управляя абстрактными аргументами, импликациями и регистром."}'::jsonb, 'en', 'C1', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b85bb20a-7602-5e21-acbc-275c0ac2f7cb', NULL, 'Концептуальная точность и позиция', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Identity as a Social Construction","ru":"Концептуальная точность и позиция"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c2fa6bee-046b-5bc1-8c9a-4c9256d7ac1a', 'b85bb20a-7602-5e21-acbc-275c0ac2f7cb', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L1_D01","left":"social construction","right":"социальная конструкция"},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L1_D02","left":"intersectional identity","right":"интерсекциональная идентичность"},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L1_D03","left":"sense of belonging","right":"чувство принадлежности"},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L1_D04","left":"othering","right":"создание образа чужого"},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L1_D05","left":"dominant narrative","right":"доминирующий нарратив"},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L1_D06","left":"self-definition","right":"самоопределение"},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L1_D07","left":"reclaim a narrative","right":"переосмыслить нарратив"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('56795340-3f89-50da-a88e-6e6e2978e54e', 'b85bb20a-7602-5e21-acbc-275c0ac2f7cb', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L1_D08","is_correct":true,"text":"Identity is partly a social construction, yet that observation need not deny individual agency or the legitimacy of self-definition."},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L1_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L1_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('00b5f666-41d2-5c94-a878-9c1426c8015d', 'b85bb20a-7602-5e21-acbc-275c0ac2f7cb', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Identity is partly a social construction, yet that observation need not deny individual agency or the legitimacy of self-definition.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Идентичность отчасти является социальной конструкцией, однако это наблюдение не отрицает ни личной свободы, ни права на самоопределение.","target_language":"en","word_bank":["Identity","is","partly","a","social","construction",",","yet","that","observation","need","not","deny","individual","agency","or","the","legitimacy","of","self-definition","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9cd0a88-5dec-5040-abbc-bae41e945e02', 'b85bb20a-7602-5e21-acbc-275c0ac2f7cb', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"social construction","instruction":"Выберите подходящее слово.","options":["social construction","othering","self-definition"],"sentence_template":"Identity is partly a ___, yet that observation need not deny individual agency or the legitimacy of self-definition."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('27c17463-5dd8-5b0c-be13-65d6ef0d5069', 'b85bb20a-7602-5e21-acbc-275c0ac2f7cb', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Identity","is","partly","a","social","construction",",","yet","that","observation","need","not","deny","individual","agency","or","the","legitimacy","of","self-definition","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","self-definition","of","legitimacy","the","or","agency","individual","deny","not","need","observation","that","yet",",","construction","social","a","partly","is","Identity"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ebfd34b6-a4fa-5fa8-abe4-cdf1d08179d5', 'b85bb20a-7602-5e21-acbc-275c0ac2f7cb', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Identity is partly a social construction, yet that observation need not deny individual agency or the legitimacy of self-definition. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b10b01be-beea-5017-b361-a6791bacf6c5', 'b85bb20a-7602-5e21-acbc-275c0ac2f7cb', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Identity is partly a social construction, yet that observation need not deny individual agency or the legitimacy of self-definition. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Идентичность отчасти является социальной конструкцией, однако это наблюдение не отрицает ни личной свободы, ни права на самоопределение. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c34b2f0-331a-5e4d-aaff-635bc1495b57', 'b85bb20a-7602-5e21-acbc-275c0ac2f7cb', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Identity is partly a social construction, yet that observation need not deny individual agency or the legitimacy of self-definition.","translation":"Идентичность отчасти является социальной конструкцией, однако это наблюдение не отрицает ни личной свободы, ни права на самоопределение.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Identity as a Social Construction"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e8f387b-97b6-5cdb-9619-d961ad6f56f8', 'b85bb20a-7602-5e21-acbc-275c0ac2f7cb', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“social construction” means an idea shaped and maintained through social practice.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L1_D11","is_correct":true,"text":"an idea shaped and maintained through social practice"},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L1_D12","is_correct":false,"text":"identity formed through overlapping social categories"},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L1_D13","is_correct":false,"text":"the experience of being accepted within a group"}],"word":"social construction"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('53273ed6-f94d-55ab-9c5e-1ade83b8bc30', 'b85bb20a-7602-5e21-acbc-275c0ac2f7cb', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Identity is partly a social construction, yet that observation need not deny individual agency or the legitimacy of self-definition.","explanation":"The missing C1 expression is “social construction”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"social construction","id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L1_D14","is_correct":true},{"audio_text":"sense of belonging","id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L1_D15","is_correct":false},{"audio_text":"dominant narrative","id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L1_D16","is_correct":false}],"sentence_template":"Identity is partly a ___, yet that observation need not deny individual agency or the legitimacy of self-definition."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('131abdb6-863d-56f7-ae1d-9c107613a602', 'b85bb20a-7602-5e21-acbc-275c0ac2f7cb', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"social construction","explanation":"The complete argument uses “social construction” with conceptual precision.","hint_prefix":"soci","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Identity is partly a ___, yet that observation need not deny individual agency or the legitimacy of self-definition."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bef171ea-26fe-5139-b6e1-aadcf8d951ce', 'b85bb20a-7602-5e21-acbc-275c0ac2f7cb', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"social construction","id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L1_D17","text":"social construction"},{"audio_text":"intersectional identity","id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L1_D18","text":"intersectional identity"},{"audio_text":"sense of belonging","id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L1_D19","text":"sense of belonging"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21f7ad4f-8761-58b4-a745-fc43e21ba363', 'b85bb20a-7602-5e21-acbc-275c0ac2f7cb', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Identity as a Social Construction”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L1_D20","is_correct":true,"text":"Identity is partly a social construction, yet that observation need not deny individual agency or the legitimacy of self-definition."},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L1_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L1_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ad7d7e24-361a-545f-b7d0-b3f757dcc01e', 'b85bb20a-7602-5e21-acbc-275c0ac2f7cb', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b630b466-66b6-55a6-ba42-c982b06d42c8', NULL, 'Критический анализ и взаимодействие', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Belonging and Exclusion","ru":"Критический анализ и взаимодействие"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c65ff9a1-25b5-5a16-9170-55d4ec306ba5', 'b630b466-66b6-55a6-ba42-c982b06d42c8', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L2_D01","left":"social construction","right":"социальная конструкция"},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L2_D02","left":"intersectional identity","right":"интерсекциональная идентичность"},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L2_D03","left":"sense of belonging","right":"чувство принадлежности"},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L2_D04","left":"othering","right":"создание образа чужого"},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L2_D05","left":"dominant narrative","right":"доминирующий нарратив"},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L2_D06","left":"self-definition","right":"самоопределение"},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L2_D07","left":"reclaim a narrative","right":"переосмыслить нарратив"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d930f033-7047-5ea3-ab6c-875f8fd826a9', 'b630b466-66b6-55a6-ba42-c982b06d42c8', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L2_D08","is_correct":true,"text":"A sense of belonging can be deeply sustaining, though it becomes exclusionary when cohesion depends on the othering of outsiders."},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L2_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L2_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0021773a-aa52-5d8b-870f-29e8e0f0fdca', 'b630b466-66b6-55a6-ba42-c982b06d42c8', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A sense of belonging can be deeply sustaining, though it becomes exclusionary when cohesion depends on the othering of outsiders.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Чувство принадлежности может давать глубокую поддержку, но становится исключающим, когда сплочённость зависит от создания образа чужого.","target_language":"en","word_bank":["A","sense","of","belonging","can","be","deeply","sustaining",",","though","it","becomes","exclusionary","when","cohesion","depends","on","the","othering","of","outsiders","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('321b6f7e-b130-52a8-85c9-fce1875d7991', 'b630b466-66b6-55a6-ba42-c982b06d42c8', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"intersectional identity","instruction":"Выберите подходящее слово.","options":["intersectional identity","dominant narrative","reclaim a narrative"],"sentence_template":"A sense of belonging can be deeply sustaining, though it becomes exclusionary when cohesion depends on the othering of outsiders."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90b58710-585a-598c-85d8-bc42a2e7aca7', 'b630b466-66b6-55a6-ba42-c982b06d42c8', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","sense","of","belonging","can","be","deeply","sustaining",",","though","it","becomes","exclusionary","when","cohesion","depends","on","the","othering","of","outsiders","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","outsiders","of","othering","the","on","depends","cohesion","when","exclusionary","becomes","it","though",",","sustaining","deeply","be","can","belonging","of","sense","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0fa33e87-d4fe-559a-9e16-6bd16313107a', 'b630b466-66b6-55a6-ba42-c982b06d42c8', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A sense of belonging can be deeply sustaining, though it becomes exclusionary when cohesion depends on the othering of outsiders. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0d023cf1-653a-5be9-be27-3995ce9f5ebc', 'b630b466-66b6-55a6-ba42-c982b06d42c8', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A sense of belonging can be deeply sustaining, though it becomes exclusionary when cohesion depends on the othering of outsiders. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Чувство принадлежности может давать глубокую поддержку, но становится исключающим, когда сплочённость зависит от создания образа чужого. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('de9bd5fc-3095-5d9c-9d81-5474f9e9eee3', 'b630b466-66b6-55a6-ba42-c982b06d42c8', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"A sense of belonging can be deeply sustaining, though it becomes exclusionary when cohesion depends on the othering of outsiders.","translation":"Чувство принадлежности может давать глубокую поддержку, но становится исключающим, когда сплочённость зависит от создания образа чужого.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Belonging and Exclusion"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c0bd8c20-d8e2-53ad-b6fa-014bac3a4e29', 'b630b466-66b6-55a6-ba42-c982b06d42c8', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“intersectional identity” means identity formed through overlapping social categories.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L2_D11","is_correct":true,"text":"identity formed through overlapping social categories"},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L2_D12","is_correct":false,"text":"the experience of being accepted within a group"},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L2_D13","is_correct":false,"text":"presenting a group as fundamentally different or inferior"}],"word":"intersectional identity"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eaf17c55-614f-5298-94bf-c5802eacc412', 'b630b466-66b6-55a6-ba42-c982b06d42c8', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A sense of belonging can be deeply sustaining, though it becomes exclusionary when cohesion depends on the othering of outsiders.","explanation":"The missing C1 expression is “intersectional identity”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"intersectional identity","id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L2_D14","is_correct":true},{"audio_text":"othering","id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L2_D15","is_correct":false},{"audio_text":"self-definition","id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L2_D16","is_correct":false}],"sentence_template":"A sense of belonging can be deeply sustaining, though it becomes exclusionary when cohesion depends on the othering of outsiders."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('af63bc82-6c23-55a6-b67c-32fadcc54157', 'b630b466-66b6-55a6-ba42-c982b06d42c8', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"intersectional identity","explanation":"The complete argument uses “intersectional identity” with conceptual precision.","hint_prefix":"inte","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A sense of belonging can be deeply sustaining, though it becomes exclusionary when cohesion depends on the othering of outsiders."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('22dab795-17a9-5469-b399-b1e9531a720b', 'b630b466-66b6-55a6-ba42-c982b06d42c8', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"social construction","id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L2_D17","text":"social construction"},{"audio_text":"intersectional identity","id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L2_D18","text":"intersectional identity"},{"audio_text":"sense of belonging","id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L2_D19","text":"sense of belonging"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fbde8f9e-a9f9-572f-939d-06f9149e0438', 'b630b466-66b6-55a6-ba42-c982b06d42c8', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Belonging and Exclusion”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L2_D20","is_correct":true,"text":"A sense of belonging can be deeply sustaining, though it becomes exclusionary when cohesion depends on the othering of outsiders."},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L2_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L2_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ad7d7e24-361a-545f-b7d0-b3f757dcc01e', 'b630b466-66b6-55a6-ba42-c982b06d42c8', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('6db3f5d9-f1fc-54bc-a3ca-2a7c8912ff5a', NULL, 'Нюансированный вывод и свободная речь', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Reframing Social Narratives","ru":"Нюансированный вывод и свободная речь"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('245c3322-a440-5b3a-af4c-eaba5feaba6a', '6db3f5d9-f1fc-54bc-a3ca-2a7c8912ff5a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L3_D01","left":"social construction","right":"социальная конструкция"},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L3_D02","left":"intersectional identity","right":"интерсекциональная идентичность"},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L3_D03","left":"sense of belonging","right":"чувство принадлежности"},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L3_D04","left":"othering","right":"создание образа чужого"},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L3_D05","left":"dominant narrative","right":"доминирующий нарратив"},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L3_D06","left":"self-definition","right":"самоопределение"},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L3_D07","left":"reclaim a narrative","right":"переосмыслить нарратив"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bfa7542a-4600-525f-9b7d-c1dca686c623', '6db3f5d9-f1fc-54bc-a3ca-2a7c8912ff5a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L3_D08","is_correct":true,"text":"Reclaiming a dominant narrative entails more than reversing its judgement; it requires exposing whose experience was treated as universal and whose was omitted."},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L3_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L3_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('534344b8-625f-5392-951c-48c12224a0a3', '6db3f5d9-f1fc-54bc-a3ca-2a7c8912ff5a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Reclaiming a dominant narrative entails more than reversing its judgement; it requires exposing whose experience was treated as universal and whose was omitted.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Переосмысление доминирующего нарратива означает не просто изменение оценки, а выявление того, чей опыт считался универсальным, а чей был исключён.","target_language":"en","word_bank":["Reclaiming","a","dominant","narrative","entails","more","than","reversing","its","judgement",";","it","requires","exposing","whose","experience","was","treated","as","universal","and","whose","was","omitted","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2e60191a-dbff-5f2d-be4c-166df399601e', '6db3f5d9-f1fc-54bc-a3ca-2a7c8912ff5a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"sense of belonging","instruction":"Выберите подходящее слово.","options":["sense of belonging","self-definition","social construction"],"sentence_template":"Reclaiming a dominant narrative entails more than reversing its judgement; it requires exposing whose experience was treated as universal and whose was omitted."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('555393c8-bc72-582d-90b7-ce0e0f0f38ee', '6db3f5d9-f1fc-54bc-a3ca-2a7c8912ff5a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Reclaiming","a","dominant","narrative","entails","more","than","reversing","its","judgement",";","it","requires","exposing","whose","experience","was","treated","as","universal","and","whose","was","omitted","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","omitted","was","whose","and","universal","as","treated","was","experience","whose","exposing","requires","it",";","judgement","its","reversing","than","more","entails","narrative","dominant","a","Reclaiming"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3208e21d-7646-5498-ba38-869bcb2907b8', '6db3f5d9-f1fc-54bc-a3ca-2a7c8912ff5a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Reclaiming a dominant narrative entails more than reversing its judgement; it requires exposing whose experience was treated as universal and whose was omitted. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a225126-c6aa-565a-bb29-ef128210f13a', '6db3f5d9-f1fc-54bc-a3ca-2a7c8912ff5a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Reclaiming a dominant narrative entails more than reversing its judgement; it requires exposing whose experience was treated as universal and whose was omitted. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Переосмысление доминирующего нарратива означает не просто изменение оценки, а выявление того, чей опыт считался универсальным, а чей был исключён. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d052b110-9f86-50c1-87c5-c55262849de1', '6db3f5d9-f1fc-54bc-a3ca-2a7c8912ff5a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Reclaiming a dominant narrative entails more than reversing its judgement; it requires exposing whose experience was treated as universal and whose was omitted.","translation":"Переосмысление доминирующего нарратива означает не просто изменение оценки, а выявление того, чей опыт считался универсальным, а чей был исключён.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Reframing Social Narratives"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('585bc3d8-b4b6-5e70-9fd9-3c03571b00cd', '6db3f5d9-f1fc-54bc-a3ca-2a7c8912ff5a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“sense of belonging” means the experience of being accepted within a group.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L3_D11","is_correct":true,"text":"the experience of being accepted within a group"},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L3_D12","is_correct":false,"text":"presenting a group as fundamentally different or inferior"},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L3_D13","is_correct":false,"text":"a widely accepted account that shapes interpretation"}],"word":"sense of belonging"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5bd4b400-ab7a-5882-a882-1280e96501df', '6db3f5d9-f1fc-54bc-a3ca-2a7c8912ff5a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Reclaiming a dominant narrative entails more than reversing its judgement; it requires exposing whose experience was treated as universal and whose was omitted.","explanation":"The missing C1 expression is “sense of belonging”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"sense of belonging","id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L3_D14","is_correct":true},{"audio_text":"dominant narrative","id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L3_D15","is_correct":false},{"audio_text":"reclaim a narrative","id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L3_D16","is_correct":false}],"sentence_template":"Reclaiming a dominant narrative entails more than reversing its judgement; it requires exposing whose experience was treated as universal and whose was omitted."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3644db7f-f67c-5343-a559-293e6a4f59c4', '6db3f5d9-f1fc-54bc-a3ca-2a7c8912ff5a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"sense of belonging","explanation":"The complete argument uses “sense of belonging” with conceptual precision.","hint_prefix":"sens","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Reclaiming a dominant narrative entails more than reversing its judgement; it requires exposing whose experience was treated as universal and whose was omitted."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fcd2240f-73cb-522a-8614-e9c7ad25017b', '6db3f5d9-f1fc-54bc-a3ca-2a7c8912ff5a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"social construction","id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L3_D17","text":"social construction"},{"audio_text":"intersectional identity","id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L3_D18","text":"intersectional identity"},{"audio_text":"sense of belonging","id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L3_D19","text":"sense of belonging"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a74ad67-b496-541d-9975-6f833e16c1e1', '6db3f5d9-f1fc-54bc-a3ca-2a7c8912ff5a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Reframing Social Narratives”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L3_D20","is_correct":true,"text":"Reclaiming a dominant narrative entails more than reversing its judgement; it requires exposing whose experience was treated as universal and whose was omitted."},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L3_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_IDENTITY_BELONGING_AND_SOCIAL_NARRATIVES_L3_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ad7d7e24-361a-545f-b7d0-b3f757dcc01e', '6db3f5d9-f1fc-54bc-a3ca-2a7c8912ff5a', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('73d7bd65-8a82-506f-9514-3c01298ae6c4', 'en', 'social construction', 'социальная конструкция', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('86c1eb33-c124-5aa1-998e-c8fe11a35de9', 'en', 'intersectional identity', 'интерсекциональная идентичность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('04b27eb9-7f2a-59bb-be98-f29ba2e1619c', 'en', 'sense of belonging', 'чувство принадлежности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('27a8c8b7-7387-598a-8ae4-27ed03f245ee', 'en', 'othering', 'создание образа чужого', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f058f0c4-7621-53e9-bd2c-1745494e2f87', 'en', 'dominant narrative', 'доминирующий нарратив', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d33d4cba-9000-5390-8b70-6956741afd0b', 'en', 'self-definition', 'самоопределение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('821a7a78-7e10-5365-8f1a-5b2b7396121c', 'en', 'reclaim a narrative', 'переосмыслить нарратив', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('73d7bd65-8a82-506f-9514-3c01298ae6c4', 'en', 'social construction', 'социальная конструкция', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('86c1eb33-c124-5aa1-998e-c8fe11a35de9', 'en', 'intersectional identity', 'интерсекциональная идентичность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('04b27eb9-7f2a-59bb-be98-f29ba2e1619c', 'en', 'sense of belonging', 'чувство принадлежности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('27a8c8b7-7387-598a-8ae4-27ed03f245ee', 'en', 'othering', 'создание образа чужого', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f058f0c4-7621-53e9-bd2c-1745494e2f87', 'en', 'dominant narrative', 'доминирующий нарратив', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d33d4cba-9000-5390-8b70-6956741afd0b', 'en', 'self-definition', 'самоопределение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('821a7a78-7e10-5365-8f1a-5b2b7396121c', 'en', 'reclaim a narrative', 'переосмыслить нарратив', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('73d7bd65-8a82-506f-9514-3c01298ae6c4', 'en', 'social construction', 'социальная конструкция', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('86c1eb33-c124-5aa1-998e-c8fe11a35de9', 'en', 'intersectional identity', 'интерсекциональная идентичность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('04b27eb9-7f2a-59bb-be98-f29ba2e1619c', 'en', 'sense of belonging', 'чувство принадлежности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('27a8c8b7-7387-598a-8ae4-27ed03f245ee', 'en', 'othering', 'создание образа чужого', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f058f0c4-7621-53e9-bd2c-1745494e2f87', 'en', 'dominant narrative', 'доминирующий нарратив', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d33d4cba-9000-5390-8b70-6956741afd0b', 'en', 'self-definition', 'самоопределение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('821a7a78-7e10-5365-8f1a-5b2b7396121c', 'en', 'reclaim a narrative', 'переосмыслить нарратив', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ad7d7e24-361a-545f-b7d0-b3f757dcc01e', id, 'b85bb20a-7602-5e21-acbc-275c0ac2f7cb', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'social construction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ad7d7e24-361a-545f-b7d0-b3f757dcc01e', id, 'b85bb20a-7602-5e21-acbc-275c0ac2f7cb', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'intersectional identity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ad7d7e24-361a-545f-b7d0-b3f757dcc01e', id, 'b85bb20a-7602-5e21-acbc-275c0ac2f7cb', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'sense of belonging' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ad7d7e24-361a-545f-b7d0-b3f757dcc01e', id, 'b85bb20a-7602-5e21-acbc-275c0ac2f7cb', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'othering' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ad7d7e24-361a-545f-b7d0-b3f757dcc01e', id, 'b85bb20a-7602-5e21-acbc-275c0ac2f7cb', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'dominant narrative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ad7d7e24-361a-545f-b7d0-b3f757dcc01e', id, 'b85bb20a-7602-5e21-acbc-275c0ac2f7cb', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'self-definition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ad7d7e24-361a-545f-b7d0-b3f757dcc01e', id, 'b85bb20a-7602-5e21-acbc-275c0ac2f7cb', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'reclaim a narrative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ad7d7e24-361a-545f-b7d0-b3f757dcc01e', id, 'b630b466-66b6-55a6-ba42-c982b06d42c8', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'social construction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ad7d7e24-361a-545f-b7d0-b3f757dcc01e', id, 'b630b466-66b6-55a6-ba42-c982b06d42c8', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'intersectional identity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ad7d7e24-361a-545f-b7d0-b3f757dcc01e', id, 'b630b466-66b6-55a6-ba42-c982b06d42c8', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'sense of belonging' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ad7d7e24-361a-545f-b7d0-b3f757dcc01e', id, 'b630b466-66b6-55a6-ba42-c982b06d42c8', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'othering' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ad7d7e24-361a-545f-b7d0-b3f757dcc01e', id, 'b630b466-66b6-55a6-ba42-c982b06d42c8', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'dominant narrative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ad7d7e24-361a-545f-b7d0-b3f757dcc01e', id, 'b630b466-66b6-55a6-ba42-c982b06d42c8', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'self-definition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ad7d7e24-361a-545f-b7d0-b3f757dcc01e', id, 'b630b466-66b6-55a6-ba42-c982b06d42c8', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'reclaim a narrative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ad7d7e24-361a-545f-b7d0-b3f757dcc01e', id, '6db3f5d9-f1fc-54bc-a3ca-2a7c8912ff5a', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'social construction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ad7d7e24-361a-545f-b7d0-b3f757dcc01e', id, '6db3f5d9-f1fc-54bc-a3ca-2a7c8912ff5a', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'intersectional identity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ad7d7e24-361a-545f-b7d0-b3f757dcc01e', id, '6db3f5d9-f1fc-54bc-a3ca-2a7c8912ff5a', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'sense of belonging' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ad7d7e24-361a-545f-b7d0-b3f757dcc01e', id, '6db3f5d9-f1fc-54bc-a3ca-2a7c8912ff5a', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'othering' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ad7d7e24-361a-545f-b7d0-b3f757dcc01e', id, '6db3f5d9-f1fc-54bc-a3ca-2a7c8912ff5a', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'dominant narrative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ad7d7e24-361a-545f-b7d0-b3f757dcc01e', id, '6db3f5d9-f1fc-54bc-a3ca-2a7c8912ff5a', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'self-definition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ad7d7e24-361a-545f-b7d0-b3f757dcc01e', id, '6db3f5d9-f1fc-54bc-a3ca-2a7c8912ff5a', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'reclaim a narrative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
