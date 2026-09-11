-- Track: C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('60ccfd13-ac45-5dd2-acac-560491597ac2', 'C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST', 'Медийные нарративы, дезинформация и общественное доверие', 'Развивайте свободную и нюансированную устную речь уровня C1 по теме «Медийные нарративы, дезинформация и общественное доверие», управляя абстрактными аргументами, импликациями и регистром.', '{"en":"Media Narratives, Misinformation and Public Trust","ru":"Медийные нарративы, дезинформация и общественное доверие"}'::jsonb, '{"en":"Develop fluent, nuanced C1 spoken English for media narratives, misinformation and public trust by controlling abstract argument, implication, and register.","ru":"Развивайте свободную и нюансированную устную речь уровня C1 по теме «Медийные нарративы, дезинформация и общественное доверие», управляя абстрактными аргументами, импликациями и регистром."}'::jsonb, 'en', 'C1', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2aa36ed4-1bfb-55d2-b336-732a21bbd1b6', NULL, 'Концептуальная точность и позиция', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"How Narratives Shape Perception","ru":"Концептуальная точность и позиция"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fb1400f5-e94a-59cf-90c2-56e1ba19035a', '2aa36ed4-1bfb-55d2-b336-732a21bbd1b6', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L1_D01","left":"narrative framing","right":"нарративное обрамление"},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L1_D02","left":"information disorder","right":"информационный беспорядок"},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L1_D03","left":"epistemic trust","right":"доверие к источникам знания"},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L1_D04","left":"false equivalence","right":"ложная эквивалентность"},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L1_D05","left":"verification norm","right":"норма проверки"},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L1_D06","left":"strategic ambiguity","right":"стратегическая неоднозначность"},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L1_D07","left":"corrective mechanism","right":"механизм исправления"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9d5b2ee1-1bdc-5326-8d87-f90a6a400eab', '2aa36ed4-1bfb-55d2-b336-732a21bbd1b6', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L1_D08","is_correct":true,"text":"Narrative framing influences public judgement not only through what is asserted, but also through which causes, actors, and alternatives remain invisible."},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L1_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L1_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e52c905-ecdc-5e9e-b493-9f60507f3482', '2aa36ed4-1bfb-55d2-b336-732a21bbd1b6', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Narrative framing influences public judgement not only through what is asserted, but also through which causes, actors, and alternatives remain invisible.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Нарративное обрамление влияет на общественное суждение не только утверждениями, но и тем, какие причины, участники и альтернативы остаются невидимыми.","target_language":"en","word_bank":["Narrative","framing","influences","public","judgement","not","only","through","what","is","asserted",",","but","also","through","which","causes",",","actors",",","and","alternatives","remain","invisible","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f870b416-f0d6-5c21-8447-d3fe6cb39363', '2aa36ed4-1bfb-55d2-b336-732a21bbd1b6', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"narrative framing","instruction":"Выберите подходящее слово.","options":["narrative framing","false equivalence","strategic ambiguity"],"sentence_template":"___ influences public judgement not only through what is asserted, but also through which causes, actors, and alternatives remain invisible."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c9218e4d-b9cf-57cf-ac97-cfa76245455a', '2aa36ed4-1bfb-55d2-b336-732a21bbd1b6', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Narrative","framing","influences","public","judgement","not","only","through","what","is","asserted",",","but","also","through","which","causes",",","actors",",","and","alternatives","remain","invisible","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","invisible","remain","alternatives","and",",","actors",",","causes","which","through","also","but",",","asserted","is","what","through","only","not","judgement","public","influences","framing","Narrative"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b8b8682-0e7b-5728-91c2-6f9c590811d0', '2aa36ed4-1bfb-55d2-b336-732a21bbd1b6', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Narrative framing influences public judgement not only through what is asserted, but also through which causes, actors, and alternatives remain invisible. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('069290e9-7368-5fe3-b344-de30ef6b1e31', '2aa36ed4-1bfb-55d2-b336-732a21bbd1b6', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Narrative framing influences public judgement not only through what is asserted, but also through which causes, actors, and alternatives remain invisible. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Нарративное обрамление влияет на общественное суждение не только утверждениями, но и тем, какие причины, участники и альтернативы остаются невидимыми. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('992e943b-5f46-5f39-b681-18f9cc209725', '2aa36ed4-1bfb-55d2-b336-732a21bbd1b6', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Narrative framing influences public judgement not only through what is asserted, but also through which causes, actors, and alternatives remain invisible.","translation":"Нарративное обрамление влияет на общественное суждение не только утверждениями, но и тем, какие причины, участники и альтернативы остаются невидимыми.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"How Narratives Shape Perception"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('87c189e0-f02c-506b-8927-7d99de771279', '2aa36ed4-1bfb-55d2-b336-732a21bbd1b6', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“narrative framing” means selection and emphasis that shape interpretation.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L1_D11","is_correct":true,"text":"selection and emphasis that shape interpretation"},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L1_D12","is_correct":false,"text":"a system containing false, misleading, and decontextualised content"},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L1_D13","is_correct":false,"text":"confidence in people or institutions as reliable knowers"}],"word":"narrative framing"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6f2d6897-55b3-5af2-b99c-3b69094bdec3', '2aa36ed4-1bfb-55d2-b336-732a21bbd1b6', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Narrative framing influences public judgement not only through what is asserted, but also through which causes, actors, and alternatives remain invisible.","explanation":"The missing C1 expression is “narrative framing”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"narrative framing","id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L1_D14","is_correct":true},{"audio_text":"epistemic trust","id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L1_D15","is_correct":false},{"audio_text":"verification norm","id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L1_D16","is_correct":false}],"sentence_template":"___ influences public judgement not only through what is asserted, but also through which causes, actors, and alternatives remain invisible."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('622ba6f6-b204-5d36-aae2-d002c8ef391c', '2aa36ed4-1bfb-55d2-b336-732a21bbd1b6', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"narrative framing","explanation":"The complete argument uses “narrative framing” with conceptual precision.","hint_prefix":"narr","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ influences public judgement not only through what is asserted, but also through which causes, actors, and alternatives remain invisible."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e26fe23-f857-55a7-8f40-8fb8699f48e0', '2aa36ed4-1bfb-55d2-b336-732a21bbd1b6', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"narrative framing","id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L1_D17","text":"narrative framing"},{"audio_text":"information disorder","id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L1_D18","text":"information disorder"},{"audio_text":"epistemic trust","id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L1_D19","text":"epistemic trust"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aceb3621-3dcf-59d9-93eb-44e24a00634d', '2aa36ed4-1bfb-55d2-b336-732a21bbd1b6', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “How Narratives Shape Perception”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L1_D20","is_correct":true,"text":"Narrative framing influences public judgement not only through what is asserted, but also through which causes, actors, and alternatives remain invisible."},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L1_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L1_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('60ccfd13-ac45-5dd2-acac-560491597ac2', '2aa36ed4-1bfb-55d2-b336-732a21bbd1b6', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2f68c75e-fd0f-5ba0-b603-4049043ca892', NULL, 'Критический анализ и взаимодействие', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Distinguishing Error from Manipulation","ru":"Критический анализ и взаимодействие"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('77eec0cb-183b-540e-862c-5e20ec7c727a', '2f68c75e-fd0f-5ba0-b603-4049043ca892', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L2_D01","left":"narrative framing","right":"нарративное обрамление"},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L2_D02","left":"information disorder","right":"информационный беспорядок"},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L2_D03","left":"epistemic trust","right":"доверие к источникам знания"},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L2_D04","left":"false equivalence","right":"ложная эквивалентность"},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L2_D05","left":"verification norm","right":"норма проверки"},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L2_D06","left":"strategic ambiguity","right":"стратегическая неоднозначность"},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L2_D07","left":"corrective mechanism","right":"механизм исправления"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7b830f11-bf6d-5412-98c7-94709a28b19f', '2f68c75e-fd0f-5ba0-b603-4049043ca892', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L2_D08","is_correct":true,"text":"Information disorder includes honest error as well as deliberate deception, and an effective response must distinguish their motives and mechanisms."},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L2_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L2_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e17ff1c8-add0-5d75-84b4-943279038690', '2f68c75e-fd0f-5ba0-b603-4049043ca892', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Information disorder includes honest error as well as deliberate deception, and an effective response must distinguish their motives and mechanisms.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Информационный беспорядок включает как честную ошибку, так и преднамеренный обман, и эффективный ответ должен различать их мотивы и механизмы.","target_language":"en","word_bank":["Information","disorder","includes","honest","error","as","well","as","deliberate","deception",",","and","an","effective","response","must","distinguish","their","motives","and","mechanisms","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2da36bfe-7d82-5766-b0b8-59fa03efc8b4', '2f68c75e-fd0f-5ba0-b603-4049043ca892', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"information disorder","instruction":"Выберите подходящее слово.","options":["information disorder","verification norm","corrective mechanism"],"sentence_template":"___ includes honest error as well as deliberate deception, and an effective response must distinguish their motives and mechanisms."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2bd426fa-724d-5925-866e-2b9902967c3b', '2f68c75e-fd0f-5ba0-b603-4049043ca892', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Information","disorder","includes","honest","error","as","well","as","deliberate","deception",",","and","an","effective","response","must","distinguish","their","motives","and","mechanisms","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","mechanisms","and","motives","their","distinguish","must","response","effective","an","and",",","deception","deliberate","as","well","as","error","honest","includes","disorder","Information"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2f4fdef3-85fe-55d2-b0fa-bc6dda97f99e', '2f68c75e-fd0f-5ba0-b603-4049043ca892', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Information disorder includes honest error as well as deliberate deception, and an effective response must distinguish their motives and mechanisms. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('61094122-3888-55f5-8bb5-4008ea6aa8f4', '2f68c75e-fd0f-5ba0-b603-4049043ca892', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Information disorder includes honest error as well as deliberate deception, and an effective response must distinguish their motives and mechanisms. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Информационный беспорядок включает как честную ошибку, так и преднамеренный обман, и эффективный ответ должен различать их мотивы и механизмы. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e839cda-69f9-5937-91a7-b9ce11c52623', '2f68c75e-fd0f-5ba0-b603-4049043ca892', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Information disorder includes honest error as well as deliberate deception, and an effective response must distinguish their motives and mechanisms.","translation":"Информационный беспорядок включает как честную ошибку, так и преднамеренный обман, и эффективный ответ должен различать их мотивы и механизмы.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Distinguishing Error from Manipulation"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('097033eb-3410-57ed-b8e1-64c719177f4c', '2f68c75e-fd0f-5ba0-b603-4049043ca892', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“information disorder” means a system containing false, misleading, and decontextualised content.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L2_D11","is_correct":true,"text":"a system containing false, misleading, and decontextualised content"},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L2_D12","is_correct":false,"text":"confidence in people or institutions as reliable knowers"},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L2_D13","is_correct":false,"text":"presenting unequal positions as equally supported"}],"word":"information disorder"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('72300cbf-ecda-5495-b898-27193fd58920', '2f68c75e-fd0f-5ba0-b603-4049043ca892', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Information disorder includes honest error as well as deliberate deception, and an effective response must distinguish their motives and mechanisms.","explanation":"The missing C1 expression is “information disorder”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"information disorder","id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L2_D14","is_correct":true},{"audio_text":"false equivalence","id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L2_D15","is_correct":false},{"audio_text":"strategic ambiguity","id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L2_D16","is_correct":false}],"sentence_template":"___ includes honest error as well as deliberate deception, and an effective response must distinguish their motives and mechanisms."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('918b651d-dc23-529c-8aad-8d8e84b4aa6b', '2f68c75e-fd0f-5ba0-b603-4049043ca892', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"information disorder","explanation":"The complete argument uses “information disorder” with conceptual precision.","hint_prefix":"info","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ includes honest error as well as deliberate deception, and an effective response must distinguish their motives and mechanisms."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1fca6e39-f5d8-5465-8331-b96a98238a45', '2f68c75e-fd0f-5ba0-b603-4049043ca892', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"narrative framing","id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L2_D17","text":"narrative framing"},{"audio_text":"information disorder","id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L2_D18","text":"information disorder"},{"audio_text":"epistemic trust","id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L2_D19","text":"epistemic trust"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8c10be9-428b-509e-9676-6dc25e79a618', '2f68c75e-fd0f-5ba0-b603-4049043ca892', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Distinguishing Error from Manipulation”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L2_D20","is_correct":true,"text":"Information disorder includes honest error as well as deliberate deception, and an effective response must distinguish their motives and mechanisms."},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L2_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L2_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('60ccfd13-ac45-5dd2-acac-560491597ac2', '2f68c75e-fd0f-5ba0-b603-4049043ca892', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('15b91758-fc18-5337-a94d-0ec35f374d94', NULL, 'Нюансированный вывод и свободная речь', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Rebuilding Public Trust","ru":"Нюансированный вывод и свободная речь"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('372f1abf-89ae-55da-a6a3-c490a7fd77a3', '15b91758-fc18-5337-a94d-0ec35f374d94', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L3_D01","left":"narrative framing","right":"нарративное обрамление"},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L3_D02","left":"information disorder","right":"информационный беспорядок"},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L3_D03","left":"epistemic trust","right":"доверие к источникам знания"},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L3_D04","left":"false equivalence","right":"ложная эквивалентность"},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L3_D05","left":"verification norm","right":"норма проверки"},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L3_D06","left":"strategic ambiguity","right":"стратегическая неоднозначность"},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L3_D07","left":"corrective mechanism","right":"механизм исправления"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71e76b29-0226-5798-8ee7-5a7ae50ef087', '15b91758-fc18-5337-a94d-0ec35f374d94', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L3_D08","is_correct":true,"text":"Rebuilding epistemic trust requires transparent verification norms and corrective mechanisms that acknowledge uncertainty without creating false equivalence."},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L3_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L3_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('affa82d1-a11f-53fb-968f-4b06b2dbc51e', '15b91758-fc18-5337-a94d-0ec35f374d94', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Rebuilding epistemic trust requires transparent verification norms and corrective mechanisms that acknowledge uncertainty without creating false equivalence.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Восстановление доверия к источникам знания требует прозрачных норм проверки и механизмов исправления, признающих неопределённость без создания ложной эквивалентности.","target_language":"en","word_bank":["Rebuilding","epistemic","trust","requires","transparent","verification","norms","and","corrective","mechanisms","that","acknowledge","uncertainty","without","creating","false","equivalence","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2975186f-f617-53cb-9583-3cfe32f75d60', '15b91758-fc18-5337-a94d-0ec35f374d94', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"epistemic trust","instruction":"Выберите подходящее слово.","options":["epistemic trust","strategic ambiguity","narrative framing"],"sentence_template":"Rebuilding ___ requires transparent verification norms and corrective mechanisms that acknowledge uncertainty without creating false equivalence."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8856612a-b937-5945-8dc9-62350b4968af', '15b91758-fc18-5337-a94d-0ec35f374d94', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Rebuilding","epistemic","trust","requires","transparent","verification","norms","and","corrective","mechanisms","that","acknowledge","uncertainty","without","creating","false","equivalence","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","equivalence","false","creating","without","uncertainty","acknowledge","that","mechanisms","corrective","and","norms","verification","transparent","requires","trust","epistemic","Rebuilding"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb869a3d-f146-5d43-a7ca-87c55554d67d', '15b91758-fc18-5337-a94d-0ec35f374d94', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Rebuilding epistemic trust requires transparent verification norms and corrective mechanisms that acknowledge uncertainty without creating false equivalence. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b031276e-7c23-57f3-86c5-5b1805ac8398', '15b91758-fc18-5337-a94d-0ec35f374d94', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Rebuilding epistemic trust requires transparent verification norms and corrective mechanisms that acknowledge uncertainty without creating false equivalence. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Восстановление доверия к источникам знания требует прозрачных норм проверки и механизмов исправления, признающих неопределённость без создания ложной эквивалентности. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dbd727a6-0950-5c94-b5a3-e4c46c892b51', '15b91758-fc18-5337-a94d-0ec35f374d94', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Rebuilding epistemic trust requires transparent verification norms and corrective mechanisms that acknowledge uncertainty without creating false equivalence.","translation":"Восстановление доверия к источникам знания требует прозрачных норм проверки и механизмов исправления, признающих неопределённость без создания ложной эквивалентности.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Rebuilding Public Trust"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('20e488ee-c308-56d7-86f2-284085b08ec4', '15b91758-fc18-5337-a94d-0ec35f374d94', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“epistemic trust” means confidence in people or institutions as reliable knowers.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L3_D11","is_correct":true,"text":"confidence in people or institutions as reliable knowers"},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L3_D12","is_correct":false,"text":"presenting unequal positions as equally supported"},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L3_D13","is_correct":false,"text":"an expectation that claims be checked before publication"}],"word":"epistemic trust"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b5bf2b25-b70d-5990-abde-22a1af79be76', '15b91758-fc18-5337-a94d-0ec35f374d94', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Rebuilding epistemic trust requires transparent verification norms and corrective mechanisms that acknowledge uncertainty without creating false equivalence.","explanation":"The missing C1 expression is “epistemic trust”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"epistemic trust","id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L3_D14","is_correct":true},{"audio_text":"verification norm","id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L3_D15","is_correct":false},{"audio_text":"corrective mechanism","id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L3_D16","is_correct":false}],"sentence_template":"Rebuilding ___ requires transparent verification norms and corrective mechanisms that acknowledge uncertainty without creating false equivalence."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('83820766-f085-5008-a5cf-46dff95177a4', '15b91758-fc18-5337-a94d-0ec35f374d94', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"epistemic trust","explanation":"The complete argument uses “epistemic trust” with conceptual precision.","hint_prefix":"epis","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Rebuilding ___ requires transparent verification norms and corrective mechanisms that acknowledge uncertainty without creating false equivalence."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b59b697f-267e-5714-84b4-d122bc7dca4b', '15b91758-fc18-5337-a94d-0ec35f374d94', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"narrative framing","id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L3_D17","text":"narrative framing"},{"audio_text":"information disorder","id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L3_D18","text":"information disorder"},{"audio_text":"epistemic trust","id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L3_D19","text":"epistemic trust"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b09e477e-affa-544b-aeb1-73cce51f0309', '15b91758-fc18-5337-a94d-0ec35f374d94', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Rebuilding Public Trust”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L3_D20","is_correct":true,"text":"Rebuilding epistemic trust requires transparent verification norms and corrective mechanisms that acknowledge uncertainty without creating false equivalence."},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L3_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_MEDIA_NARRATIVES_MISINFORMATION_AND_PUBLIC_TRUST_L3_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('60ccfd13-ac45-5dd2-acac-560491597ac2', '15b91758-fc18-5337-a94d-0ec35f374d94', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('37519e82-f6fb-55b8-8654-533061f0f4f1', 'en', 'narrative framing', 'нарративное обрамление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('76268b1d-de45-5623-97c7-0dc051dc999a', 'en', 'information disorder', 'информационный беспорядок', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8852eabd-6dff-53d2-9b05-f5a919e06d00', 'en', 'epistemic trust', 'доверие к источникам знания', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f3e9a27c-e634-59a2-8dfb-75ffcc92d16f', 'en', 'false equivalence', 'ложная эквивалентность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('21045179-1b59-5833-a997-f404b95f2713', 'en', 'verification norm', 'норма проверки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9715692c-0d48-54b3-9c0e-bd824378a10c', 'en', 'strategic ambiguity', 'стратегическая неоднозначность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e3884295-596c-5bbd-b254-6f401e86c707', 'en', 'corrective mechanism', 'механизм исправления', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('37519e82-f6fb-55b8-8654-533061f0f4f1', 'en', 'narrative framing', 'нарративное обрамление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('76268b1d-de45-5623-97c7-0dc051dc999a', 'en', 'information disorder', 'информационный беспорядок', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8852eabd-6dff-53d2-9b05-f5a919e06d00', 'en', 'epistemic trust', 'доверие к источникам знания', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f3e9a27c-e634-59a2-8dfb-75ffcc92d16f', 'en', 'false equivalence', 'ложная эквивалентность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('21045179-1b59-5833-a997-f404b95f2713', 'en', 'verification norm', 'норма проверки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9715692c-0d48-54b3-9c0e-bd824378a10c', 'en', 'strategic ambiguity', 'стратегическая неоднозначность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e3884295-596c-5bbd-b254-6f401e86c707', 'en', 'corrective mechanism', 'механизм исправления', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('37519e82-f6fb-55b8-8654-533061f0f4f1', 'en', 'narrative framing', 'нарративное обрамление', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('76268b1d-de45-5623-97c7-0dc051dc999a', 'en', 'information disorder', 'информационный беспорядок', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8852eabd-6dff-53d2-9b05-f5a919e06d00', 'en', 'epistemic trust', 'доверие к источникам знания', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f3e9a27c-e634-59a2-8dfb-75ffcc92d16f', 'en', 'false equivalence', 'ложная эквивалентность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('21045179-1b59-5833-a997-f404b95f2713', 'en', 'verification norm', 'норма проверки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9715692c-0d48-54b3-9c0e-bd824378a10c', 'en', 'strategic ambiguity', 'стратегическая неоднозначность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e3884295-596c-5bbd-b254-6f401e86c707', 'en', 'corrective mechanism', 'механизм исправления', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60ccfd13-ac45-5dd2-acac-560491597ac2', id, '2aa36ed4-1bfb-55d2-b336-732a21bbd1b6', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'narrative framing' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60ccfd13-ac45-5dd2-acac-560491597ac2', id, '2aa36ed4-1bfb-55d2-b336-732a21bbd1b6', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'information disorder' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60ccfd13-ac45-5dd2-acac-560491597ac2', id, '2aa36ed4-1bfb-55d2-b336-732a21bbd1b6', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'epistemic trust' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60ccfd13-ac45-5dd2-acac-560491597ac2', id, '2aa36ed4-1bfb-55d2-b336-732a21bbd1b6', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'false equivalence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60ccfd13-ac45-5dd2-acac-560491597ac2', id, '2aa36ed4-1bfb-55d2-b336-732a21bbd1b6', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'verification norm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60ccfd13-ac45-5dd2-acac-560491597ac2', id, '2aa36ed4-1bfb-55d2-b336-732a21bbd1b6', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'strategic ambiguity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60ccfd13-ac45-5dd2-acac-560491597ac2', id, '2aa36ed4-1bfb-55d2-b336-732a21bbd1b6', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'corrective mechanism' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60ccfd13-ac45-5dd2-acac-560491597ac2', id, '2f68c75e-fd0f-5ba0-b603-4049043ca892', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'narrative framing' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60ccfd13-ac45-5dd2-acac-560491597ac2', id, '2f68c75e-fd0f-5ba0-b603-4049043ca892', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'information disorder' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60ccfd13-ac45-5dd2-acac-560491597ac2', id, '2f68c75e-fd0f-5ba0-b603-4049043ca892', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'epistemic trust' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60ccfd13-ac45-5dd2-acac-560491597ac2', id, '2f68c75e-fd0f-5ba0-b603-4049043ca892', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'false equivalence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60ccfd13-ac45-5dd2-acac-560491597ac2', id, '2f68c75e-fd0f-5ba0-b603-4049043ca892', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'verification norm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60ccfd13-ac45-5dd2-acac-560491597ac2', id, '2f68c75e-fd0f-5ba0-b603-4049043ca892', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'strategic ambiguity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60ccfd13-ac45-5dd2-acac-560491597ac2', id, '2f68c75e-fd0f-5ba0-b603-4049043ca892', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'corrective mechanism' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60ccfd13-ac45-5dd2-acac-560491597ac2', id, '15b91758-fc18-5337-a94d-0ec35f374d94', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'narrative framing' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60ccfd13-ac45-5dd2-acac-560491597ac2', id, '15b91758-fc18-5337-a94d-0ec35f374d94', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'information disorder' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60ccfd13-ac45-5dd2-acac-560491597ac2', id, '15b91758-fc18-5337-a94d-0ec35f374d94', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'epistemic trust' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60ccfd13-ac45-5dd2-acac-560491597ac2', id, '15b91758-fc18-5337-a94d-0ec35f374d94', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'false equivalence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60ccfd13-ac45-5dd2-acac-560491597ac2', id, '15b91758-fc18-5337-a94d-0ec35f374d94', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'verification norm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60ccfd13-ac45-5dd2-acac-560491597ac2', id, '15b91758-fc18-5337-a94d-0ec35f374d94', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'strategic ambiguity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60ccfd13-ac45-5dd2-acac-560491597ac2', id, '15b91758-fc18-5337-a94d-0ec35f374d94', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'corrective mechanism' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
