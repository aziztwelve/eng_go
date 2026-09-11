-- Track: C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('32c4acf0-dad7-5370-9c8c-f7b71cf95c74', 'C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY', 'Государственная политика, неравенство и коллективная ответственность', 'Развивайте свободную и нюансированную устную речь уровня C1 по теме «Государственная политика, неравенство и коллективная ответственность», управляя абстрактными аргументами, импликациями и регистром.', '{"en":"Public Policy, Inequality and Collective Responsibility","ru":"Государственная политика, неравенство и коллективная ответственность"}'::jsonb, '{"en":"Develop fluent, nuanced C1 spoken English for public policy, inequality and collective responsibility by controlling abstract argument, implication, and register.","ru":"Развивайте свободную и нюансированную устную речь уровня C1 по теме «Государственная политика, неравенство и коллективная ответственность», управляя абстрактными аргументами, импликациями и регистром."}'::jsonb, 'en', 'C1', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('d599563b-3ad4-5f13-947a-6e5532ec4835', NULL, 'Концептуальная точность и позиция', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Defining the Policy Problem","ru":"Концептуальная точность и позиция"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ea630ee3-8c90-5553-af74-00176cc67ff4', 'd599563b-3ad4-5f13-947a-6e5532ec4835', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L1_D01","left":"structural inequality","right":"структурное неравенство"},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L1_D02","left":"policy trade-off","right":"компромисс государственной политики"},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L1_D03","left":"universal provision","right":"универсальное обеспечение"},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L1_D04","left":"targeted intervention","right":"адресное вмешательство"},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L1_D05","left":"collective responsibility","right":"коллективная ответственность"},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L1_D06","left":"policy legitimacy","right":"легитимность политики"},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L1_D07","left":"distributional impact","right":"распределительное воздействие"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('354030a8-7848-501b-b431-ffe143a8e3c4', 'd599563b-3ad4-5f13-947a-6e5532ec4835', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L1_D08","is_correct":true,"text":"Structural inequality cannot be reduced to individual choices because institutions shape the options from which those choices are made."},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L1_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L1_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0db2c937-1423-5406-b135-6f409fd8a8f0', 'd599563b-3ad4-5f13-947a-6e5532ec4835', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Structural inequality cannot be reduced to individual choices because institutions shape the options from which those choices are made.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Структурное неравенство нельзя свести к индивидуальному выбору, поскольку институты формируют сами доступные варианты.","target_language":"en","word_bank":["Structural","inequality","cannot","be","reduced","to","individual","choices","because","institutions","shape","the","options","from","which","those","choices","are","made","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('178475d7-aa9a-5c3a-a2a7-3c057c329e31', 'd599563b-3ad4-5f13-947a-6e5532ec4835', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"structural inequality","instruction":"Выберите подходящее слово.","options":["structural inequality","targeted intervention","policy legitimacy"],"sentence_template":"___ cannot be reduced to individual choices because institutions shape the options from which those choices are made."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8c2b2637-5ecc-55d1-a8dd-7a1debb1edc5', 'd599563b-3ad4-5f13-947a-6e5532ec4835', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Structural","inequality","cannot","be","reduced","to","individual","choices","because","institutions","shape","the","options","from","which","those","choices","are","made","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","made","are","choices","those","which","from","options","the","shape","institutions","because","choices","individual","to","reduced","be","cannot","inequality","Structural"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('447c898d-5caf-5370-b226-6aa2b5447789', 'd599563b-3ad4-5f13-947a-6e5532ec4835', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Structural inequality cannot be reduced to individual choices because institutions shape the options from which those choices are made. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c770d062-5144-56c2-a439-88bca546742c', 'd599563b-3ad4-5f13-947a-6e5532ec4835', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Structural inequality cannot be reduced to individual choices because institutions shape the options from which those choices are made. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Структурное неравенство нельзя свести к индивидуальному выбору, поскольку институты формируют сами доступные варианты. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e0bd7c3a-e33e-59a4-aee9-672e13b3823b', 'd599563b-3ad4-5f13-947a-6e5532ec4835', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Structural inequality cannot be reduced to individual choices because institutions shape the options from which those choices are made.","translation":"Структурное неравенство нельзя свести к индивидуальному выбору, поскольку институты формируют сами доступные варианты.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Defining the Policy Problem"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5eeeb32-e3eb-50a7-9c68-16157f3ce735', 'd599563b-3ad4-5f13-947a-6e5532ec4835', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“structural inequality” means systematic disadvantage embedded in institutions.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L1_D11","is_correct":true,"text":"systematic disadvantage embedded in institutions"},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L1_D12","is_correct":false,"text":"a balance between competing public objectives"},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L1_D13","is_correct":false,"text":"a service available to everyone"}],"word":"structural inequality"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('acb995b4-a5ab-5377-bdc7-36e93181b8a5', 'd599563b-3ad4-5f13-947a-6e5532ec4835', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Structural inequality cannot be reduced to individual choices because institutions shape the options from which those choices are made.","explanation":"The missing C1 expression is “structural inequality”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"structural inequality","id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L1_D14","is_correct":true},{"audio_text":"universal provision","id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L1_D15","is_correct":false},{"audio_text":"collective responsibility","id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L1_D16","is_correct":false}],"sentence_template":"___ cannot be reduced to individual choices because institutions shape the options from which those choices are made."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3b7dfbdc-486d-5f5d-90f3-4e7711c3b590', 'd599563b-3ad4-5f13-947a-6e5532ec4835', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"structural inequality","explanation":"The complete argument uses “structural inequality” with conceptual precision.","hint_prefix":"stru","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ cannot be reduced to individual choices because institutions shape the options from which those choices are made."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('27d5245a-e78c-5df4-9e8b-378ea04e2b6e', 'd599563b-3ad4-5f13-947a-6e5532ec4835', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"structural inequality","id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L1_D17","text":"structural inequality"},{"audio_text":"policy trade-off","id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L1_D18","text":"policy trade-off"},{"audio_text":"universal provision","id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L1_D19","text":"universal provision"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3c7f01aa-dafd-58e1-8c5d-f1c3267912fe', 'd599563b-3ad4-5f13-947a-6e5532ec4835', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Defining the Policy Problem”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L1_D20","is_correct":true,"text":"Structural inequality cannot be reduced to individual choices because institutions shape the options from which those choices are made."},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L1_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L1_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('32c4acf0-dad7-5370-9c8c-f7b71cf95c74', 'd599563b-3ad4-5f13-947a-6e5532ec4835', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('6f20bf65-0c1b-5230-9272-285c4e7ab1ce', NULL, 'Критический анализ и взаимодействие', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Balancing Rights and Outcomes","ru":"Критический анализ и взаимодействие"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b83ae29-2d34-5c06-8366-fc2cb7e9c5ab', '6f20bf65-0c1b-5230-9272-285c4e7ab1ce', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L2_D01","left":"structural inequality","right":"структурное неравенство"},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L2_D02","left":"policy trade-off","right":"компромисс государственной политики"},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L2_D03","left":"universal provision","right":"универсальное обеспечение"},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L2_D04","left":"targeted intervention","right":"адресное вмешательство"},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L2_D05","left":"collective responsibility","right":"коллективная ответственность"},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L2_D06","left":"policy legitimacy","right":"легитимность политики"},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L2_D07","left":"distributional impact","right":"распределительное воздействие"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c4697c22-bee2-52c2-83e6-70ac951205a0', '6f20bf65-0c1b-5230-9272-285c4e7ab1ce', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L2_D08","is_correct":true,"text":"A policy trade-off between universal provision and targeted intervention should be judged partly by its distributional impact."},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L2_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L2_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('def4845f-efc9-5b8c-9c08-864cbe2edaf3', '6f20bf65-0c1b-5230-9272-285c4e7ab1ce', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A policy trade-off between universal provision and targeted intervention should be judged partly by its distributional impact.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Компромисс между универсальным обеспечением и адресным вмешательством следует оценивать в том числе по его распределительному воздействию.","target_language":"en","word_bank":["A","policy","trade-off","between","universal","provision","and","targeted","intervention","should","be","judged","partly","by","its","distributional","impact","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3ac84ebd-e204-5e8b-ac21-435ee1cabe33', '6f20bf65-0c1b-5230-9272-285c4e7ab1ce', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"policy trade-off","instruction":"Выберите подходящее слово.","options":["policy trade-off","collective responsibility","distributional impact"],"sentence_template":"A ___ between universal provision and targeted intervention should be judged partly by its distributional impact."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('61c75105-fb8d-5479-a787-f26f4c880ff5', '6f20bf65-0c1b-5230-9272-285c4e7ab1ce', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","policy","trade-off","between","universal","provision","and","targeted","intervention","should","be","judged","partly","by","its","distributional","impact","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","impact","distributional","its","by","partly","judged","be","should","intervention","targeted","and","provision","universal","between","trade-off","policy","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('435cb6d0-ad3d-52e5-a471-477f50ff46ec', '6f20bf65-0c1b-5230-9272-285c4e7ab1ce', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A policy trade-off between universal provision and targeted intervention should be judged partly by its distributional impact. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2cc291ed-9fba-5f15-b655-de3d51ecf80d', '6f20bf65-0c1b-5230-9272-285c4e7ab1ce', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A policy trade-off between universal provision and targeted intervention should be judged partly by its distributional impact. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Компромисс между универсальным обеспечением и адресным вмешательством следует оценивать в том числе по его распределительному воздействию. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf3d1007-7520-563e-afd9-dea79d2fa971', '6f20bf65-0c1b-5230-9272-285c4e7ab1ce', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"A policy trade-off between universal provision and targeted intervention should be judged partly by its distributional impact.","translation":"Компромисс между универсальным обеспечением и адресным вмешательством следует оценивать в том числе по его распределительному воздействию.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Balancing Rights and Outcomes"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5709414f-f7f4-53ce-9ab0-c8c1913053aa', '6f20bf65-0c1b-5230-9272-285c4e7ab1ce', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“policy trade-off” means a balance between competing public objectives.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L2_D11","is_correct":true,"text":"a balance between competing public objectives"},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L2_D12","is_correct":false,"text":"a service available to everyone"},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L2_D13","is_correct":false,"text":"action directed at a specific group or problem"}],"word":"policy trade-off"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d0e768a-f35f-51d8-847c-4cafdad76d9e', '6f20bf65-0c1b-5230-9272-285c4e7ab1ce', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A policy trade-off between universal provision and targeted intervention should be judged partly by its distributional impact.","explanation":"The missing C1 expression is “policy trade-off”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"policy trade-off","id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L2_D14","is_correct":true},{"audio_text":"targeted intervention","id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L2_D15","is_correct":false},{"audio_text":"policy legitimacy","id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L2_D16","is_correct":false}],"sentence_template":"A ___ between universal provision and targeted intervention should be judged partly by its distributional impact."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2d3bf2c5-7f11-5356-8f43-8482c71e6216', '6f20bf65-0c1b-5230-9272-285c4e7ab1ce', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"policy trade-off","explanation":"The complete argument uses “policy trade-off” with conceptual precision.","hint_prefix":"poli","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ between universal provision and targeted intervention should be judged partly by its distributional impact."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('934a0dac-1c91-5a24-b628-db50fd6ff856', '6f20bf65-0c1b-5230-9272-285c4e7ab1ce', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"structural inequality","id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L2_D17","text":"structural inequality"},{"audio_text":"policy trade-off","id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L2_D18","text":"policy trade-off"},{"audio_text":"universal provision","id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L2_D19","text":"universal provision"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6227ff7d-4513-5327-9f69-85082e2b5a20', '6f20bf65-0c1b-5230-9272-285c4e7ab1ce', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Balancing Rights and Outcomes”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L2_D20","is_correct":true,"text":"A policy trade-off between universal provision and targeted intervention should be judged partly by its distributional impact."},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L2_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L2_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('32c4acf0-dad7-5370-9c8c-f7b71cf95c74', '6f20bf65-0c1b-5230-9272-285c4e7ab1ce', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('742ad138-ddd0-5b3f-90ba-08b9e5231d01', NULL, 'Нюансированный вывод и свободная речь', 'Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения.', '{"en":"Evaluating Collective Responsibility","ru":"Нюансированный вывод и свободная речь"}'::jsonb, '{"en":"Develop a complex C1 argument fluently, conveying precise shades of meaning, exposing hidden assumptions, and responding flexibly to strong objections.","ru":"Свободно развивать сложный аргумент уровня C1, точно передавая оттенки смысла, выявляя скрытые предположения и гибко реагируя на сильные возражения."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb49b224-a67a-5c2e-8a5d-6419374c415c', '742ad138-ddd0-5b3f-90ba-08b9e5231d01', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L3_D01","left":"structural inequality","right":"структурное неравенство"},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L3_D02","left":"policy trade-off","right":"компромисс государственной политики"},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L3_D03","left":"universal provision","right":"универсальное обеспечение"},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L3_D04","left":"targeted intervention","right":"адресное вмешательство"},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L3_D05","left":"collective responsibility","right":"коллективная ответственность"},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L3_D06","left":"policy legitimacy","right":"легитимность политики"},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L3_D07","left":"distributional impact","right":"распределительное воздействие"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dce52980-6bd6-54a3-a016-c5542f58a850', '742ad138-ddd0-5b3f-90ba-08b9e5231d01', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response sustains a precise C1 claim while controlling qualification, abstraction, and logical implication.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L3_D08","is_correct":true,"text":"Collective responsibility gains policy legitimacy when obligations are transparent, proportionate, and matched by meaningful public accountability."},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L3_D09","is_correct":false,"text":"The matter admits only one interpretation, and any objection merely confirms the opposing side’s ignorance."},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L3_D10","is_correct":false,"text":"Every perspective is equally valid, so evidence and conceptual distinctions serve no meaningful purpose."}],"question":"Which response offers the most intellectually rigorous and nuanced position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fafd02cc-1f8a-5e7c-b900-7b8d8b10dea2', '742ad138-ddd0-5b3f-90ba-08b9e5231d01', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Collective responsibility gains policy legitimacy when obligations are transparent, proportionate, and matched by meaningful public accountability.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Коллективная ответственность приобретает легитимность, когда обязательства прозрачны, соразмерны и подкреплены реальной общественной подотчётностью.","target_language":"en","word_bank":["Collective","responsibility","gains","policy","legitimacy","when","obligations","are","transparent",",","proportionate",",","and","matched","by","meaningful","public","accountability","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ee61dce3-9cb6-5a43-9986-26453a923e5e', '742ad138-ddd0-5b3f-90ba-08b9e5231d01', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"universal provision","instruction":"Выберите подходящее слово.","options":["universal provision","policy legitimacy","structural inequality"],"sentence_template":"Collective responsibility gains policy legitimacy when obligations are transparent, proportionate, and matched by meaningful public accountability."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0dc94b49-c3df-53b5-b107-941823c38874', '742ad138-ddd0-5b3f-90ba-08b9e5231d01', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Collective","responsibility","gains","policy","legitimacy","when","obligations","are","transparent",",","proportionate",",","and","matched","by","meaningful","public","accountability","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","accountability","public","meaningful","by","matched","and",",","proportionate",",","transparent","are","obligations","when","legitimacy","policy","gains","responsibility","Collective"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c8b2cfb3-d6bb-5084-9e6b-3a44bb412362', '742ad138-ddd0-5b3f-90ba-08b9e5231d01', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Collective responsibility gains policy legitimacy when obligations are transparent, proportionate, and matched by meaningful public accountability. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c89512f2-c326-51cd-b682-a460271004c3', '742ad138-ddd0-5b3f-90ba-08b9e5231d01', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Collective responsibility gains policy legitimacy when obligations are transparent, proportionate, and matched by meaningful public accountability. That said, the argument should not be overstated: its force depends on assumptions that remain open to principled challenge. A more defensible conclusion would distinguish what follows from the evidence from what is merely plausible under a particular interpretation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Коллективная ответственность приобретает легитимность, когда обязательства прозрачны, соразмерны и подкреплены реальной общественной подотчётностью. При этом аргумент не следует преувеличивать: его сила зависит от предположений, которые остаются открытыми для принципиального оспаривания. Более обоснованный вывод отделил бы то, что следует из доказательств, от того, что лишь правдоподобно при определённой интерпретации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('983c904d-36b9-57db-8e3b-2a951c454c8a', '742ad138-ddd0-5b3f-90ba-08b9e5231d01', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Collective responsibility gains policy legitimacy when obligations are transparent, proportionate, and matched by meaningful public accountability.","translation":"Коллективная ответственность приобретает легитимность, когда обязательства прозрачны, соразмерны и подкреплены реальной общественной подотчётностью.","type":"dialogue"},{"character":"Leo","text":"That account is persuasive, but does it understate the strongest objection or rely on an unexamined assumption?","translation":"Это звучит убедительно, но не преуменьшает ли такой подход сильнейшее возражение и не опирается ли на непроверенное предположение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection exposes a genuine limitation; nevertheless, it qualifies the scope of the claim rather than invalidating its central reasoning."},{"is_correct":false,"text":"The objection is inconvenient, so I would simply restate the original claim more forcefully."}],"text":"Which response demonstrates C1 interaction?","type":"choice"}],"title":"Evaluating Collective Responsibility"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc6f16e9-9f53-5057-9677-582b2206fe80', '742ad138-ddd0-5b3f-90ba-08b9e5231d01', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“universal provision” means a service available to everyone.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L3_D11","is_correct":true,"text":"a service available to everyone"},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L3_D12","is_correct":false,"text":"action directed at a specific group or problem"},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L3_D13","is_correct":false,"text":"shared obligation for a social outcome"}],"word":"universal provision"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a6253242-ecb8-58c8-9c7f-f29e915e2497', '742ad138-ddd0-5b3f-90ba-08b9e5231d01', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Collective responsibility gains policy legitimacy when obligations are transparent, proportionate, and matched by meaningful public accountability.","explanation":"The missing C1 expression is “universal provision”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"universal provision","id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L3_D14","is_correct":true},{"audio_text":"collective responsibility","id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L3_D15","is_correct":false},{"audio_text":"distributional impact","id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L3_D16","is_correct":false}],"sentence_template":"Collective responsibility gains policy legitimacy when obligations are transparent, proportionate, and matched by meaningful public accountability."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4f5b6747-82ca-583d-9569-210f94b9ab28', '742ad138-ddd0-5b3f-90ba-08b9e5231d01', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"universal provision","explanation":"The complete argument uses “universal provision” with conceptual precision.","hint_prefix":"univ","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Collective responsibility gains policy legitimacy when obligations are transparent, proportionate, and matched by meaningful public accountability."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41d7989c-eb70-5bb6-8333-e568dffd13d6', '742ad138-ddd0-5b3f-90ba-08b9e5231d01', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each nuanced C1 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"structural inequality","id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L3_D17","text":"structural inequality"},{"audio_text":"policy trade-off","id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L3_D18","text":"policy trade-off"},{"audio_text":"universal provision","id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L3_D19","text":"universal provision"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('175e1387-28fd-5c88-abe0-9205b1840c5f', '742ad138-ddd0-5b3f-90ba-08b9e5231d01', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Moderator","text":"How would you formulate a nuanced position on “Evaluating Collective Responsibility”?"}],"explanation":"The correct response advances an abstract C1 discussion through conceptual precision, qualification, and flexible engagement with competing views.","instruction":"Ответьте.","options":[{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L3_D20","is_correct":true,"text":"Collective responsibility gains policy legitimacy when obligations are transparent, proportionate, and matched by meaningful public accountability."},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L3_D21","is_correct":false,"text":"The issue is self-evident, so competing interpretations and evidence need not be considered."},{"id":"C1_SPEAKING_PUBLIC_POLICY_INEQUALITY_AND_COLLECTIVE_RESPONSIBILITY_L3_D22","is_correct":false,"text":"Since the topic is complex, no reasoned conclusion can ever be more defensible than another."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('32c4acf0-dad7-5370-9c8c-f7b71cf95c74', '742ad138-ddd0-5b3f-90ba-08b9e5231d01', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('30bc2529-56f1-5820-ae4d-0945b15b1d5b', 'en', 'structural inequality', 'структурное неравенство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('485b3720-ee10-569f-b388-27ac39e3e451', 'en', 'policy trade-off', 'компромисс государственной политики', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cbc4d98-4ed7-5a5b-bf91-1c6c364004e6', 'en', 'universal provision', 'универсальное обеспечение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('488050a7-c549-5970-9566-6c7a5ba05ca8', 'en', 'targeted intervention', 'адресное вмешательство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ac6f309-fd0a-5e9d-b271-55f7f0627924', 'en', 'collective responsibility', 'коллективная ответственность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a366782c-85d8-5a2c-8ca8-3f22fffd2054', 'en', 'policy legitimacy', 'легитимность политики', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b668755e-571b-5864-89b2-e93012c93ba3', 'en', 'distributional impact', 'распределительное воздействие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('30bc2529-56f1-5820-ae4d-0945b15b1d5b', 'en', 'structural inequality', 'структурное неравенство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('485b3720-ee10-569f-b388-27ac39e3e451', 'en', 'policy trade-off', 'компромисс государственной политики', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cbc4d98-4ed7-5a5b-bf91-1c6c364004e6', 'en', 'universal provision', 'универсальное обеспечение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('488050a7-c549-5970-9566-6c7a5ba05ca8', 'en', 'targeted intervention', 'адресное вмешательство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ac6f309-fd0a-5e9d-b271-55f7f0627924', 'en', 'collective responsibility', 'коллективная ответственность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a366782c-85d8-5a2c-8ca8-3f22fffd2054', 'en', 'policy legitimacy', 'легитимность политики', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b668755e-571b-5864-89b2-e93012c93ba3', 'en', 'distributional impact', 'распределительное воздействие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('30bc2529-56f1-5820-ae4d-0945b15b1d5b', 'en', 'structural inequality', 'структурное неравенство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('485b3720-ee10-569f-b388-27ac39e3e451', 'en', 'policy trade-off', 'компромисс государственной политики', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cbc4d98-4ed7-5a5b-bf91-1c6c364004e6', 'en', 'universal provision', 'универсальное обеспечение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('488050a7-c549-5970-9566-6c7a5ba05ca8', 'en', 'targeted intervention', 'адресное вмешательство', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ac6f309-fd0a-5e9d-b271-55f7f0627924', 'en', 'collective responsibility', 'коллективная ответственность', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a366782c-85d8-5a2c-8ca8-3f22fffd2054', 'en', 'policy legitimacy', 'легитимность политики', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b668755e-571b-5864-89b2-e93012c93ba3', 'en', 'distributional impact', 'распределительное воздействие', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '32c4acf0-dad7-5370-9c8c-f7b71cf95c74', id, 'd599563b-3ad4-5f13-947a-6e5532ec4835', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'structural inequality' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '32c4acf0-dad7-5370-9c8c-f7b71cf95c74', id, 'd599563b-3ad4-5f13-947a-6e5532ec4835', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'policy trade-off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '32c4acf0-dad7-5370-9c8c-f7b71cf95c74', id, 'd599563b-3ad4-5f13-947a-6e5532ec4835', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'universal provision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '32c4acf0-dad7-5370-9c8c-f7b71cf95c74', id, 'd599563b-3ad4-5f13-947a-6e5532ec4835', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'targeted intervention' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '32c4acf0-dad7-5370-9c8c-f7b71cf95c74', id, 'd599563b-3ad4-5f13-947a-6e5532ec4835', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'collective responsibility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '32c4acf0-dad7-5370-9c8c-f7b71cf95c74', id, 'd599563b-3ad4-5f13-947a-6e5532ec4835', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'policy legitimacy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '32c4acf0-dad7-5370-9c8c-f7b71cf95c74', id, 'd599563b-3ad4-5f13-947a-6e5532ec4835', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'distributional impact' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '32c4acf0-dad7-5370-9c8c-f7b71cf95c74', id, '6f20bf65-0c1b-5230-9272-285c4e7ab1ce', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'structural inequality' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '32c4acf0-dad7-5370-9c8c-f7b71cf95c74', id, '6f20bf65-0c1b-5230-9272-285c4e7ab1ce', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'policy trade-off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '32c4acf0-dad7-5370-9c8c-f7b71cf95c74', id, '6f20bf65-0c1b-5230-9272-285c4e7ab1ce', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'universal provision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '32c4acf0-dad7-5370-9c8c-f7b71cf95c74', id, '6f20bf65-0c1b-5230-9272-285c4e7ab1ce', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'targeted intervention' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '32c4acf0-dad7-5370-9c8c-f7b71cf95c74', id, '6f20bf65-0c1b-5230-9272-285c4e7ab1ce', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'collective responsibility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '32c4acf0-dad7-5370-9c8c-f7b71cf95c74', id, '6f20bf65-0c1b-5230-9272-285c4e7ab1ce', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'policy legitimacy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '32c4acf0-dad7-5370-9c8c-f7b71cf95c74', id, '6f20bf65-0c1b-5230-9272-285c4e7ab1ce', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'distributional impact' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '32c4acf0-dad7-5370-9c8c-f7b71cf95c74', id, '742ad138-ddd0-5b3f-90ba-08b9e5231d01', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'structural inequality' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '32c4acf0-dad7-5370-9c8c-f7b71cf95c74', id, '742ad138-ddd0-5b3f-90ba-08b9e5231d01', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'policy trade-off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '32c4acf0-dad7-5370-9c8c-f7b71cf95c74', id, '742ad138-ddd0-5b3f-90ba-08b9e5231d01', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'universal provision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '32c4acf0-dad7-5370-9c8c-f7b71cf95c74', id, '742ad138-ddd0-5b3f-90ba-08b9e5231d01', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'targeted intervention' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '32c4acf0-dad7-5370-9c8c-f7b71cf95c74', id, '742ad138-ddd0-5b3f-90ba-08b9e5231d01', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'collective responsibility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '32c4acf0-dad7-5370-9c8c-f7b71cf95c74', id, '742ad138-ddd0-5b3f-90ba-08b9e5231d01', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'policy legitimacy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '32c4acf0-dad7-5370-9c8c-f7b71cf95c74', id, '742ad138-ddd0-5b3f-90ba-08b9e5231d01', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'distributional impact' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
