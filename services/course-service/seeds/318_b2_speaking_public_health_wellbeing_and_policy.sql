-- Track: B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('1e74c4c8-f667-5e6b-b4e1-1e209c2d86b1', 'B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY', 'Общественное здоровье, благополучие и политика', 'Развивайте свободную и точную устную речь уровня B2 по теме «Общественное здоровье, благополучие и политика»: аргументируйте, реагируйте на возражения и формулируйте взвешенные выводы.', '{"en":"Public Health, Wellbeing and Policy","ru":"Общественное здоровье, благополучие и политика"}'::jsonb, '{"en":"Develop fluent, precise B2 spoken English for public health, wellbeing and policy through argument, counterargument, and balanced conclusions.","ru":"Развивайте свободную и точную устную речь уровня B2 по теме «Общественное здоровье, благополучие и политика»: аргументируйте, реагируйте на возражения и формулируйте взвешенные выводы."}'::jsonb, 'en', 'B2', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b884ff7f-4ba1-56fa-a317-b8a4a20b3cea', NULL, 'Ключевые понятия и позиция', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Health Trends","ru":"Ключевые понятия и позиция"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3d0502e-e7b6-572a-9d56-2ccdd8310218', 'b884ff7f-4ba1-56fa-a317-b8a4a20b3cea', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L1_D01","left":"preventive measure","right":"профилактическая мера"},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L1_D02","left":"health inequality","right":"неравенство в сфере здоровья"},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L1_D03","left":"evidence-based","right":"основанный на доказательствах"},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L1_D04","left":"raise awareness","right":"повышать осведомлённость"},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L1_D05","left":"early intervention","right":"раннее вмешательство"},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L1_D06","left":"public funding","right":"государственное финансирование"},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L1_D07","left":"unintended consequence","right":"непредвиденное последствие"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('595594b7-b3e6-5efe-9dfb-81b87f19f2c4', 'b884ff7f-4ba1-56fa-a317-b8a4a20b3cea', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L1_D08","is_correct":true,"text":"A preventive measure is most effective when it is evidence-based, clearly explained, and accessible to those at greatest risk."},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L1_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L1_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7adede7b-770f-5a18-8a4b-2f9c39e14fd4', 'b884ff7f-4ba1-56fa-a317-b8a4a20b3cea', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A preventive measure is most effective when it is evidence-based, clearly explained, and accessible to those at greatest risk.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Профилактическая мера наиболее эффективна, когда она основана на доказательствах, ясно объяснена и доступна людям с наибольшим риском.","target_language":"en","word_bank":["A","preventive","measure","is","most","effective","when","it","is","evidence-based",",","clearly","explained",",","and","accessible","to","those","at","greatest","risk","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d75c759e-4f2c-5509-b3c4-3c211e090c21', 'b884ff7f-4ba1-56fa-a317-b8a4a20b3cea', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"preventive measure","instruction":"Выберите подходящее слово.","options":["preventive measure","raise awareness","public funding"],"sentence_template":"A ___ is most effective when it is evidence-based, clearly explained, and accessible to those at greatest risk."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d43b01c5-263e-547d-89d4-0b090a192ac0', 'b884ff7f-4ba1-56fa-a317-b8a4a20b3cea', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","preventive","measure","is","most","effective","when","it","is","evidence-based",",","clearly","explained",",","and","accessible","to","those","at","greatest","risk","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","risk","greatest","at","those","to","accessible","and",",","explained","clearly",",","evidence-based","is","it","when","effective","most","is","measure","preventive","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd58425d-fee8-54de-9cc7-b555076775cc', 'b884ff7f-4ba1-56fa-a317-b8a4a20b3cea', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A preventive measure is most effective when it is evidence-based, clearly explained, and accessible to those at greatest risk. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a0a15a8b-89fa-54d1-a926-c43292316e5f', 'b884ff7f-4ba1-56fa-a317-b8a4a20b3cea', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A preventive measure is most effective when it is evidence-based, clearly explained, and accessible to those at greatest risk. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Профилактическая мера наиболее эффективна, когда она основана на доказательствах, ясно объяснена и доступна людям с наибольшим риском. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4cb6387e-ca54-50c3-9fe0-bbc415dc6238', 'b884ff7f-4ba1-56fa-a317-b8a4a20b3cea', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"A preventive measure is most effective when it is evidence-based, clearly explained, and accessible to those at greatest risk.","translation":"Профилактическая мера наиболее эффективна, когда она основана на доказательствах, ясно объяснена и доступна людям с наибольшим риском.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Health Trends"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('60080ab9-649e-53b0-8b17-31e0c72bced6', 'b884ff7f-4ba1-56fa-a317-b8a4a20b3cea', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“preventive measure” means an action intended to stop a problem before it develops.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L1_D11","is_correct":true,"text":"an action intended to stop a problem before it develops"},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L1_D12","is_correct":false,"text":"an unfair difference in health outcomes between groups"},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L1_D13","is_correct":false,"text":"supported by reliable research and data"}],"word":"preventive measure"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2477e7c5-0001-52a0-ae83-112211640a90', 'b884ff7f-4ba1-56fa-a317-b8a4a20b3cea', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A preventive measure is most effective when it is evidence-based, clearly explained, and accessible to those at greatest risk.","explanation":"The missing B2 expression is “preventive measure”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"preventive measure","id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L1_D14","is_correct":true},{"audio_text":"evidence-based","id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L1_D15","is_correct":false},{"audio_text":"early intervention","id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L1_D16","is_correct":false}],"sentence_template":"A ___ is most effective when it is evidence-based, clearly explained, and accessible to those at greatest risk."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('415b7406-c8a3-5f5f-a112-873594392400', 'b884ff7f-4ba1-56fa-a317-b8a4a20b3cea', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"preventive measure","explanation":"The complete argument uses “preventive measure” to express the intended meaning precisely.","hint_prefix":"prev","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ is most effective when it is evidence-based, clearly explained, and accessible to those at greatest risk."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b5d581b0-4206-50f7-990f-bfe595e3c7f2', 'b884ff7f-4ba1-56fa-a317-b8a4a20b3cea', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"preventive measure","id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L1_D17","text":"preventive measure"},{"audio_text":"health inequality","id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L1_D18","text":"health inequality"},{"audio_text":"evidence-based","id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L1_D19","text":"evidence-based"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('df78f61e-39f4-543a-b79c-6f7448c58339', 'b884ff7f-4ba1-56fa-a317-b8a4a20b3cea', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Health Trends”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L1_D20","is_correct":true,"text":"A preventive measure is most effective when it is evidence-based, clearly explained, and accessible to those at greatest risk."},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L1_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L1_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1e74c4c8-f667-5e6b-b4e1-1e209c2d86b1', 'b884ff7f-4ba1-56fa-a317-b8a4a20b3cea', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('83d425af-83c4-5e9d-b888-920b69f5cc04', NULL, 'Развитие и оспаривание аргумента', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Mental Wellbeing","ru":"Развитие и оспаривание аргумента"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4f5be69e-5021-516f-bf2c-2556ee3eb42e', '83d425af-83c4-5e9d-b888-920b69f5cc04', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L2_D01","left":"preventive measure","right":"профилактическая мера"},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L2_D02","left":"health inequality","right":"неравенство в сфере здоровья"},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L2_D03","left":"evidence-based","right":"основанный на доказательствах"},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L2_D04","left":"raise awareness","right":"повышать осведомлённость"},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L2_D05","left":"early intervention","right":"раннее вмешательство"},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L2_D06","left":"public funding","right":"государственное финансирование"},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L2_D07","left":"unintended consequence","right":"непредвиденное последствие"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('58a502ae-578a-551e-858b-e3966d003426', '83d425af-83c4-5e9d-b888-920b69f5cc04', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L2_D08","is_correct":true,"text":"Health inequality cannot be addressed through personal responsibility alone because income, housing, and public funding shape people’s options."},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L2_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L2_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('48d8865c-edbc-5f28-818b-874f98e1ecb4', '83d425af-83c4-5e9d-b888-920b69f5cc04', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Health inequality cannot be addressed through personal responsibility alone because income, housing, and public funding shape people’s options.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Неравенство в сфере здоровья нельзя устранить одной лишь личной ответственностью, поскольку доход, жильё и государственное финансирование определяют возможности людей.","target_language":"en","word_bank":["Health","inequality","cannot","be","addressed","through","personal","responsibility","alone","because","income",",","housing",",","and","public","funding","shape","people’s","options","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('842248e0-2db0-542e-9031-16578927be44', '83d425af-83c4-5e9d-b888-920b69f5cc04', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"health inequality","instruction":"Выберите подходящее слово.","options":["health inequality","early intervention","unintended consequence"],"sentence_template":"___ cannot be addressed through personal responsibility alone because income, housing, and public funding shape people’s options."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc40cc9d-1edd-58dd-a67d-7eb9f8f409c5', '83d425af-83c4-5e9d-b888-920b69f5cc04', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Health","inequality","cannot","be","addressed","through","personal","responsibility","alone","because","income",",","housing",",","and","public","funding","shape","people’s","options","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","options","people’s","shape","funding","public","and",",","housing",",","income","because","alone","responsibility","personal","through","addressed","be","cannot","inequality","Health"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0bcc0ad-c484-5257-a4c4-57b00db9b1b1', '83d425af-83c4-5e9d-b888-920b69f5cc04', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Health inequality cannot be addressed through personal responsibility alone because income, housing, and public funding shape people’s options. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1359a29c-6541-5778-8953-0fc7f5e9c44f', '83d425af-83c4-5e9d-b888-920b69f5cc04', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Health inequality cannot be addressed through personal responsibility alone because income, housing, and public funding shape people’s options. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Неравенство в сфере здоровья нельзя устранить одной лишь личной ответственностью, поскольку доход, жильё и государственное финансирование определяют возможности людей. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b8a542bb-7012-5270-bbf0-8734784b715f', '83d425af-83c4-5e9d-b888-920b69f5cc04', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Health inequality cannot be addressed through personal responsibility alone because income, housing, and public funding shape people’s options.","translation":"Неравенство в сфере здоровья нельзя устранить одной лишь личной ответственностью, поскольку доход, жильё и государственное финансирование определяют возможности людей.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Mental Wellbeing"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c9241b5d-1826-5302-819e-f4c458333222', '83d425af-83c4-5e9d-b888-920b69f5cc04', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“health inequality” means an unfair difference in health outcomes between groups.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L2_D11","is_correct":true,"text":"an unfair difference in health outcomes between groups"},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L2_D12","is_correct":false,"text":"supported by reliable research and data"},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L2_D13","is_correct":false,"text":"increase public knowledge of an issue"}],"word":"health inequality"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e1ebdb6-2a1a-5445-b634-38fda90f5976', '83d425af-83c4-5e9d-b888-920b69f5cc04', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Health inequality cannot be addressed through personal responsibility alone because income, housing, and public funding shape people’s options.","explanation":"The missing B2 expression is “health inequality”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"health inequality","id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L2_D14","is_correct":true},{"audio_text":"raise awareness","id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L2_D15","is_correct":false},{"audio_text":"public funding","id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L2_D16","is_correct":false}],"sentence_template":"___ cannot be addressed through personal responsibility alone because income, housing, and public funding shape people’s options."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('166c3e9f-1e29-5a40-8a1e-047a244030d6', '83d425af-83c4-5e9d-b888-920b69f5cc04', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"health inequality","explanation":"The complete argument uses “health inequality” to express the intended meaning precisely.","hint_prefix":"heal","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ cannot be addressed through personal responsibility alone because income, housing, and public funding shape people’s options."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eea17630-e491-5b7d-9fd5-bf6e6819882e', '83d425af-83c4-5e9d-b888-920b69f5cc04', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"preventive measure","id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L2_D17","text":"preventive measure"},{"audio_text":"health inequality","id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L2_D18","text":"health inequality"},{"audio_text":"evidence-based","id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L2_D19","text":"evidence-based"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76477636-3f31-55ac-b416-b6368c25647b', '83d425af-83c4-5e9d-b888-920b69f5cc04', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Mental Wellbeing”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L2_D20","is_correct":true,"text":"Health inequality cannot be addressed through personal responsibility alone because income, housing, and public funding shape people’s options."},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L2_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L2_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1e74c4c8-f667-5e6b-b4e1-1e209c2d86b1', '83d425af-83c4-5e9d-b888-920b69f5cc04', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('21c3a7bc-b665-507b-9d52-0a502733dad7', NULL, 'Взвешенный вывод и взаимодействие', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Public Policy Choices","ru":"Взвешенный вывод и взаимодействие"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('091f5d7b-7606-59c1-a69e-ea48cb032867', '21c3a7bc-b665-507b-9d52-0a502733dad7', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L3_D01","left":"preventive measure","right":"профилактическая мера"},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L3_D02","left":"health inequality","right":"неравенство в сфере здоровья"},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L3_D03","left":"evidence-based","right":"основанный на доказательствах"},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L3_D04","left":"raise awareness","right":"повышать осведомлённость"},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L3_D05","left":"early intervention","right":"раннее вмешательство"},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L3_D06","left":"public funding","right":"государственное финансирование"},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L3_D07","left":"unintended consequence","right":"непредвиденное последствие"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a68dd81a-2855-5868-9347-dc1f2c4a7253', '21c3a7bc-b665-507b-9d52-0a502733dad7', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L3_D08","is_correct":true,"text":"Early intervention may reduce long-term harm, although policymakers must monitor any unintended consequence of the programme."},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L3_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L3_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3d7aefdb-0d2e-5c11-a058-1cb7606d5ff4', '21c3a7bc-b665-507b-9d52-0a502733dad7', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Early intervention may reduce long-term harm, although policymakers must monitor any unintended consequence of the programme.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Раннее вмешательство может уменьшить долгосрочный вред, хотя разработчики политики должны отслеживать любые непредвиденные последствия программы.","target_language":"en","word_bank":["Early","intervention","may","reduce","long-term","harm",",","although","policymakers","must","monitor","any","unintended","consequence","of","the","programme","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9cdd0413-9d3c-5747-82bb-36b02baa0ad3', '21c3a7bc-b665-507b-9d52-0a502733dad7', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"evidence-based","instruction":"Выберите подходящее слово.","options":["evidence-based","public funding","preventive measure"],"sentence_template":"Early intervention may reduce long-term harm, although policymakers must monitor any unintended consequence of the programme."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bdbd0df3-67cc-5a2c-b734-7676ea7aad37', '21c3a7bc-b665-507b-9d52-0a502733dad7', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Early","intervention","may","reduce","long-term","harm",",","although","policymakers","must","monitor","any","unintended","consequence","of","the","programme","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","programme","the","of","consequence","unintended","any","monitor","must","policymakers","although",",","harm","long-term","reduce","may","intervention","Early"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0bafc6da-8835-5cd3-91ca-ec5f2e22a98d', '21c3a7bc-b665-507b-9d52-0a502733dad7', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Early intervention may reduce long-term harm, although policymakers must monitor any unintended consequence of the programme. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f8f51a42-9d56-5fe9-a39f-e0ab9252878f', '21c3a7bc-b665-507b-9d52-0a502733dad7', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Early intervention may reduce long-term harm, although policymakers must monitor any unintended consequence of the programme. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Раннее вмешательство может уменьшить долгосрочный вред, хотя разработчики политики должны отслеживать любые непредвиденные последствия программы. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89c31a8f-256f-5277-ae9d-3599961eb1a8', '21c3a7bc-b665-507b-9d52-0a502733dad7', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Early intervention may reduce long-term harm, although policymakers must monitor any unintended consequence of the programme.","translation":"Раннее вмешательство может уменьшить долгосрочный вред, хотя разработчики политики должны отслеживать любые непредвиденные последствия программы.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Public Policy Choices"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d74ccd58-2fea-58e3-b375-7e262dc3c09e', '21c3a7bc-b665-507b-9d52-0a502733dad7', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“evidence-based” means supported by reliable research and data.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L3_D11","is_correct":true,"text":"supported by reliable research and data"},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L3_D12","is_correct":false,"text":"increase public knowledge of an issue"},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L3_D13","is_correct":false,"text":"action taken before a problem becomes severe"}],"word":"evidence-based"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b63567cb-de02-574a-8578-437c3cc7b681', '21c3a7bc-b665-507b-9d52-0a502733dad7', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Early intervention may reduce long-term harm, although policymakers must monitor any unintended consequence of the programme.","explanation":"The missing B2 expression is “evidence-based”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"evidence-based","id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L3_D14","is_correct":true},{"audio_text":"early intervention","id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L3_D15","is_correct":false},{"audio_text":"unintended consequence","id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L3_D16","is_correct":false}],"sentence_template":"Early intervention may reduce long-term harm, although policymakers must monitor any unintended consequence of the programme."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f4eee15f-74bb-5f52-bb71-21aaf0b2e0c9', '21c3a7bc-b665-507b-9d52-0a502733dad7', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"evidence-based","explanation":"The complete argument uses “evidence-based” to express the intended meaning precisely.","hint_prefix":"evid","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Early intervention may reduce long-term harm, although policymakers must monitor any unintended consequence of the programme."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d972b461-0e7a-516e-afe6-adbc0244df0b', '21c3a7bc-b665-507b-9d52-0a502733dad7', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"preventive measure","id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L3_D17","text":"preventive measure"},{"audio_text":"health inequality","id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L3_D18","text":"health inequality"},{"audio_text":"evidence-based","id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L3_D19","text":"evidence-based"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('294701e8-c556-5e13-b5eb-0b97f77c692e', '21c3a7bc-b665-507b-9d52-0a502733dad7', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Public Policy Choices”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L3_D20","is_correct":true,"text":"Early intervention may reduce long-term harm, although policymakers must monitor any unintended consequence of the programme."},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L3_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_PUBLIC_HEALTH_WELLBEING_AND_POLICY_L3_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1e74c4c8-f667-5e6b-b4e1-1e209c2d86b1', '21c3a7bc-b665-507b-9d52-0a502733dad7', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0c20a6c8-9129-5e2a-ae02-0e05a4489500', 'en', 'preventive measure', 'профилактическая мера', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('da5bf5db-80bd-571d-a818-e7c20d0c4246', 'en', 'health inequality', 'неравенство в сфере здоровья', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2925528c-008e-5bbf-9545-9fb55a636eb4', 'en', 'evidence-based', 'основанный на доказательствах', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('44e71c23-35c9-5a5e-966b-3529f5f6c476', 'en', 'raise awareness', 'повышать осведомлённость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('137b040a-50ee-5e62-84d1-c2a6184dafa8', 'en', 'early intervention', 'раннее вмешательство', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a1fc3d17-b541-56a0-8e38-e66c1dec506e', 'en', 'public funding', 'государственное финансирование', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8f20b265-9d5c-5dde-a182-b25591168267', 'en', 'unintended consequence', 'непредвиденное последствие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0c20a6c8-9129-5e2a-ae02-0e05a4489500', 'en', 'preventive measure', 'профилактическая мера', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('da5bf5db-80bd-571d-a818-e7c20d0c4246', 'en', 'health inequality', 'неравенство в сфере здоровья', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2925528c-008e-5bbf-9545-9fb55a636eb4', 'en', 'evidence-based', 'основанный на доказательствах', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('44e71c23-35c9-5a5e-966b-3529f5f6c476', 'en', 'raise awareness', 'повышать осведомлённость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('137b040a-50ee-5e62-84d1-c2a6184dafa8', 'en', 'early intervention', 'раннее вмешательство', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a1fc3d17-b541-56a0-8e38-e66c1dec506e', 'en', 'public funding', 'государственное финансирование', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8f20b265-9d5c-5dde-a182-b25591168267', 'en', 'unintended consequence', 'непредвиденное последствие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0c20a6c8-9129-5e2a-ae02-0e05a4489500', 'en', 'preventive measure', 'профилактическая мера', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('da5bf5db-80bd-571d-a818-e7c20d0c4246', 'en', 'health inequality', 'неравенство в сфере здоровья', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2925528c-008e-5bbf-9545-9fb55a636eb4', 'en', 'evidence-based', 'основанный на доказательствах', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('44e71c23-35c9-5a5e-966b-3529f5f6c476', 'en', 'raise awareness', 'повышать осведомлённость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('137b040a-50ee-5e62-84d1-c2a6184dafa8', 'en', 'early intervention', 'раннее вмешательство', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a1fc3d17-b541-56a0-8e38-e66c1dec506e', 'en', 'public funding', 'государственное финансирование', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8f20b265-9d5c-5dde-a182-b25591168267', 'en', 'unintended consequence', 'непредвиденное последствие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e74c4c8-f667-5e6b-b4e1-1e209c2d86b1', id, 'b884ff7f-4ba1-56fa-a317-b8a4a20b3cea', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'preventive measure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e74c4c8-f667-5e6b-b4e1-1e209c2d86b1', id, 'b884ff7f-4ba1-56fa-a317-b8a4a20b3cea', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'health inequality' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e74c4c8-f667-5e6b-b4e1-1e209c2d86b1', id, 'b884ff7f-4ba1-56fa-a317-b8a4a20b3cea', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence-based' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e74c4c8-f667-5e6b-b4e1-1e209c2d86b1', id, 'b884ff7f-4ba1-56fa-a317-b8a4a20b3cea', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'raise awareness' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e74c4c8-f667-5e6b-b4e1-1e209c2d86b1', id, 'b884ff7f-4ba1-56fa-a317-b8a4a20b3cea', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'early intervention' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e74c4c8-f667-5e6b-b4e1-1e209c2d86b1', id, 'b884ff7f-4ba1-56fa-a317-b8a4a20b3cea', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'public funding' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e74c4c8-f667-5e6b-b4e1-1e209c2d86b1', id, 'b884ff7f-4ba1-56fa-a317-b8a4a20b3cea', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'unintended consequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e74c4c8-f667-5e6b-b4e1-1e209c2d86b1', id, '83d425af-83c4-5e9d-b888-920b69f5cc04', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'preventive measure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e74c4c8-f667-5e6b-b4e1-1e209c2d86b1', id, '83d425af-83c4-5e9d-b888-920b69f5cc04', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'health inequality' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e74c4c8-f667-5e6b-b4e1-1e209c2d86b1', id, '83d425af-83c4-5e9d-b888-920b69f5cc04', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence-based' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e74c4c8-f667-5e6b-b4e1-1e209c2d86b1', id, '83d425af-83c4-5e9d-b888-920b69f5cc04', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'raise awareness' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e74c4c8-f667-5e6b-b4e1-1e209c2d86b1', id, '83d425af-83c4-5e9d-b888-920b69f5cc04', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'early intervention' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e74c4c8-f667-5e6b-b4e1-1e209c2d86b1', id, '83d425af-83c4-5e9d-b888-920b69f5cc04', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'public funding' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e74c4c8-f667-5e6b-b4e1-1e209c2d86b1', id, '83d425af-83c4-5e9d-b888-920b69f5cc04', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'unintended consequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e74c4c8-f667-5e6b-b4e1-1e209c2d86b1', id, '21c3a7bc-b665-507b-9d52-0a502733dad7', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'preventive measure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e74c4c8-f667-5e6b-b4e1-1e209c2d86b1', id, '21c3a7bc-b665-507b-9d52-0a502733dad7', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'health inequality' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e74c4c8-f667-5e6b-b4e1-1e209c2d86b1', id, '21c3a7bc-b665-507b-9d52-0a502733dad7', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence-based' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e74c4c8-f667-5e6b-b4e1-1e209c2d86b1', id, '21c3a7bc-b665-507b-9d52-0a502733dad7', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'raise awareness' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e74c4c8-f667-5e6b-b4e1-1e209c2d86b1', id, '21c3a7bc-b665-507b-9d52-0a502733dad7', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'early intervention' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e74c4c8-f667-5e6b-b4e1-1e209c2d86b1', id, '21c3a7bc-b665-507b-9d52-0a502733dad7', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'public funding' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e74c4c8-f667-5e6b-b4e1-1e209c2d86b1', id, '21c3a7bc-b665-507b-9d52-0a502733dad7', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'unintended consequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
