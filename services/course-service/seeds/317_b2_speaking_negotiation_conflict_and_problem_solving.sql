-- Track: B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('cfdb887c-0568-5a25-a46d-9d036086ce1d', 'B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING', 'Переговоры, конфликт и решение проблем', 'Развивайте свободную и точную устную речь уровня B2 по теме «Переговоры, конфликт и решение проблем»: аргументируйте, реагируйте на возражения и формулируйте взвешенные выводы.', '{"en":"Negotiation, Conflict and Problem-Solving","ru":"Переговоры, конфликт и решение проблем"}'::jsonb, '{"en":"Develop fluent, precise B2 spoken English for negotiation, conflict and problem-solving through argument, counterargument, and balanced conclusions.","ru":"Развивайте свободную и точную устную речь уровня B2 по теме «Переговоры, конфликт и решение проблем»: аргументируйте, реагируйте на возражения и формулируйте взвешенные выводы."}'::jsonb, 'en', 'B2', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e1c31b3b-0afd-56a5-bb16-dbcc8221c314', NULL, 'Ключевые понятия и позиция', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Understanding Positions","ru":"Ключевые понятия и позиция"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e5ce037-61bd-5c08-9d69-9edb6d60d19f', 'e1c31b3b-0afd-56a5-bb16-dbcc8221c314', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L1_D01","left":"common ground","right":"общая основа"},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L1_D02","left":"underlying concern","right":"глубинная проблема"},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L1_D03","left":"mutually beneficial","right":"взаимовыгодный"},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L1_D04","left":"make a concession","right":"пойти на уступку"},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L1_D05","left":"resolve a dispute","right":"разрешить спор"},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L1_D06","left":"non-negotiable","right":"не подлежащий обсуждению"},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L1_D07","left":"implement a solution","right":"реализовать решение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b877462-f625-5679-9b1f-e341b2cb2487', 'e1c31b3b-0afd-56a5-bb16-dbcc8221c314', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L1_D08","is_correct":true,"text":"Finding common ground becomes easier when both sides separate their fixed positions from the interests they actually share."},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L1_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L1_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71ee61b2-afb1-5db2-b29e-5e465df93625', 'e1c31b3b-0afd-56a5-bb16-dbcc8221c314', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Finding common ground becomes easier when both sides separate their fixed positions from the interests they actually share.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Найти общую основу легче, когда обе стороны отделяют свои жёсткие позиции от интересов, которые они действительно разделяют.","target_language":"en","word_bank":["Finding","common","ground","becomes","easier","when","both","sides","separate","their","fixed","positions","from","the","interests","they","actually","share","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('19365e5e-e7fb-55d6-a47e-637b5f0211c0', 'e1c31b3b-0afd-56a5-bb16-dbcc8221c314', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"common ground","instruction":"Выберите подходящее слово.","options":["common ground","make a concession","non-negotiable"],"sentence_template":"Finding ___ becomes easier when both sides separate their fixed positions from the interests they actually share."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a3d0fb6d-b95b-5aeb-83ac-c3103aed58c4', 'e1c31b3b-0afd-56a5-bb16-dbcc8221c314', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Finding","common","ground","becomes","easier","when","both","sides","separate","their","fixed","positions","from","the","interests","they","actually","share","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","share","actually","they","interests","the","from","positions","fixed","their","separate","sides","both","when","easier","becomes","ground","common","Finding"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e5fb44a0-9d0f-594f-8505-9760feee5246', 'e1c31b3b-0afd-56a5-bb16-dbcc8221c314', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Finding common ground becomes easier when both sides separate their fixed positions from the interests they actually share. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a26d1b96-9ceb-5ea4-9158-87968daa7ca6', 'e1c31b3b-0afd-56a5-bb16-dbcc8221c314', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Finding common ground becomes easier when both sides separate their fixed positions from the interests they actually share. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Найти общую основу легче, когда обе стороны отделяют свои жёсткие позиции от интересов, которые они действительно разделяют. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bcb8408f-003d-579d-b614-d565f11f7dbd', 'e1c31b3b-0afd-56a5-bb16-dbcc8221c314', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Finding common ground becomes easier when both sides separate their fixed positions from the interests they actually share.","translation":"Найти общую основу легче, когда обе стороны отделяют свои жёсткие позиции от интересов, которые они действительно разделяют.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Understanding Positions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f4d9daf1-5d54-5bdc-a7a4-779ea04277cb', 'e1c31b3b-0afd-56a5-bb16-dbcc8221c314', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“common ground” means shared interests or beliefs that enable agreement.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L1_D11","is_correct":true,"text":"shared interests or beliefs that enable agreement"},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L1_D12","is_correct":false,"text":"the real worry beneath a stated position"},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L1_D13","is_correct":false,"text":"providing advantages to all parties"}],"word":"common ground"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0bf92600-4bc5-599d-9680-70f7705b5ebf', 'e1c31b3b-0afd-56a5-bb16-dbcc8221c314', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Finding common ground becomes easier when both sides separate their fixed positions from the interests they actually share.","explanation":"The missing B2 expression is “common ground”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"common ground","id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L1_D14","is_correct":true},{"audio_text":"mutually beneficial","id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L1_D15","is_correct":false},{"audio_text":"resolve a dispute","id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L1_D16","is_correct":false}],"sentence_template":"Finding ___ becomes easier when both sides separate their fixed positions from the interests they actually share."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0997a7a0-930b-5d6b-a74f-e2a7066ee270', 'e1c31b3b-0afd-56a5-bb16-dbcc8221c314', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"common ground","explanation":"The complete argument uses “common ground” to express the intended meaning precisely.","hint_prefix":"comm","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Finding ___ becomes easier when both sides separate their fixed positions from the interests they actually share."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1b464175-676c-5c9b-a52f-517e99dff9b8', 'e1c31b3b-0afd-56a5-bb16-dbcc8221c314', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"common ground","id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L1_D17","text":"common ground"},{"audio_text":"underlying concern","id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L1_D18","text":"underlying concern"},{"audio_text":"mutually beneficial","id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L1_D19","text":"mutually beneficial"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ad712798-8a8f-5b2c-bf34-df781775b65f', 'e1c31b3b-0afd-56a5-bb16-dbcc8221c314', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Understanding Positions”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L1_D20","is_correct":true,"text":"Finding common ground becomes easier when both sides separate their fixed positions from the interests they actually share."},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L1_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L1_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('cfdb887c-0568-5a25-a46d-9d036086ce1d', 'e1c31b3b-0afd-56a5-bb16-dbcc8221c314', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9875a173-7a3e-5a90-9fc6-6502fdc51d08', NULL, 'Развитие и оспаривание аргумента', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Negotiating Compromise","ru":"Развитие и оспаривание аргумента"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b5042fd-cef5-5cfe-b76b-dfa6ca94cd85', '9875a173-7a3e-5a90-9fc6-6502fdc51d08', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L2_D01","left":"common ground","right":"общая основа"},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L2_D02","left":"underlying concern","right":"глубинная проблема"},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L2_D03","left":"mutually beneficial","right":"взаимовыгодный"},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L2_D04","left":"make a concession","right":"пойти на уступку"},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L2_D05","left":"resolve a dispute","right":"разрешить спор"},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L2_D06","left":"non-negotiable","right":"не подлежащий обсуждению"},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L2_D07","left":"implement a solution","right":"реализовать решение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6cbfe557-a3c8-5610-a90d-84b329e0220a', '9875a173-7a3e-5a90-9fc6-6502fdc51d08', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L2_D08","is_correct":true,"text":"Identifying the underlying concern may reveal a mutually beneficial option that neither party considered at the beginning."},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L2_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L2_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fa11a95e-ae04-5d9c-bdf7-3335b4f50e3c', '9875a173-7a3e-5a90-9fc6-6502fdc51d08', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Identifying the underlying concern may reveal a mutually beneficial option that neither party considered at the beginning.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Выявление глубинной проблемы может открыть взаимовыгодный вариант, который ни одна из сторон сначала не рассматривала.","target_language":"en","word_bank":["Identifying","the","underlying","concern","may","reveal","a","mutually","beneficial","option","that","neither","party","considered","at","the","beginning","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('896b35c6-4428-5eea-9a0a-5c50d72cf7f8', '9875a173-7a3e-5a90-9fc6-6502fdc51d08', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"underlying concern","instruction":"Выберите подходящее слово.","options":["underlying concern","resolve a dispute","implement a solution"],"sentence_template":"Identifying the ___ may reveal a mutually beneficial option that neither party considered at the beginning."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4512299b-37aa-5190-8298-763340c13d12', '9875a173-7a3e-5a90-9fc6-6502fdc51d08', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Identifying","the","underlying","concern","may","reveal","a","mutually","beneficial","option","that","neither","party","considered","at","the","beginning","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","beginning","the","at","considered","party","neither","that","option","beneficial","mutually","a","reveal","may","concern","underlying","the","Identifying"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a34dcf07-44ed-54c6-99a2-cbbac9f938f6', '9875a173-7a3e-5a90-9fc6-6502fdc51d08', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Identifying the underlying concern may reveal a mutually beneficial option that neither party considered at the beginning. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cac3b309-c698-5841-bda6-f8d79fdcc50b', '9875a173-7a3e-5a90-9fc6-6502fdc51d08', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Identifying the underlying concern may reveal a mutually beneficial option that neither party considered at the beginning. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Выявление глубинной проблемы может открыть взаимовыгодный вариант, который ни одна из сторон сначала не рассматривала. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6307ba8f-ca01-5674-96af-e34b41f1573d', '9875a173-7a3e-5a90-9fc6-6502fdc51d08', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Identifying the underlying concern may reveal a mutually beneficial option that neither party considered at the beginning.","translation":"Выявление глубинной проблемы может открыть взаимовыгодный вариант, который ни одна из сторон сначала не рассматривала.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Negotiating Compromise"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f80418bb-027f-5b95-b364-389d47f1628d', '9875a173-7a3e-5a90-9fc6-6502fdc51d08', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“underlying concern” means the real worry beneath a stated position.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L2_D11","is_correct":true,"text":"the real worry beneath a stated position"},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L2_D12","is_correct":false,"text":"providing advantages to all parties"},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L2_D13","is_correct":false,"text":"give up part of a demand to facilitate agreement"}],"word":"underlying concern"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b3b498fb-98c9-5231-91bb-446aa7bf0e70', '9875a173-7a3e-5a90-9fc6-6502fdc51d08', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Identifying the underlying concern may reveal a mutually beneficial option that neither party considered at the beginning.","explanation":"The missing B2 expression is “underlying concern”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"underlying concern","id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L2_D14","is_correct":true},{"audio_text":"make a concession","id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L2_D15","is_correct":false},{"audio_text":"non-negotiable","id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L2_D16","is_correct":false}],"sentence_template":"Identifying the ___ may reveal a mutually beneficial option that neither party considered at the beginning."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1763ea26-8562-5131-9cfe-e9cda54aeba9', '9875a173-7a3e-5a90-9fc6-6502fdc51d08', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"underlying concern","explanation":"The complete argument uses “underlying concern” to express the intended meaning precisely.","hint_prefix":"unde","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Identifying the ___ may reveal a mutually beneficial option that neither party considered at the beginning."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9524952a-8bac-5895-a819-bfda67330ae0', '9875a173-7a3e-5a90-9fc6-6502fdc51d08', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"common ground","id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L2_D17","text":"common ground"},{"audio_text":"underlying concern","id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L2_D18","text":"underlying concern"},{"audio_text":"mutually beneficial","id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L2_D19","text":"mutually beneficial"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d446f0c-8217-5412-99e5-38a19c36a826', '9875a173-7a3e-5a90-9fc6-6502fdc51d08', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Negotiating Compromise”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L2_D20","is_correct":true,"text":"Identifying the underlying concern may reveal a mutually beneficial option that neither party considered at the beginning."},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L2_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L2_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('cfdb887c-0568-5a25-a46d-9d036086ce1d', '9875a173-7a3e-5a90-9fc6-6502fdc51d08', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('37105775-84cf-54bf-8802-02e8d78797be', NULL, 'Взвешенный вывод и взаимодействие', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Evaluating Outcomes","ru":"Взвешенный вывод и взаимодействие"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('93b92f36-61c2-59ed-b578-12f4ec64b62f', '37105775-84cf-54bf-8802-02e8d78797be', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L3_D01","left":"common ground","right":"общая основа"},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L3_D02","left":"underlying concern","right":"глубинная проблема"},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L3_D03","left":"mutually beneficial","right":"взаимовыгодный"},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L3_D04","left":"make a concession","right":"пойти на уступку"},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L3_D05","left":"resolve a dispute","right":"разрешить спор"},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L3_D06","left":"non-negotiable","right":"не подлежащий обсуждению"},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L3_D07","left":"implement a solution","right":"реализовать решение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b5cb6332-277a-542d-b9f1-2471dac9b681', '37105775-84cf-54bf-8802-02e8d78797be', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L3_D08","is_correct":true,"text":"Before making a concession, we should clarify what remains non-negotiable and how the final solution will be implemented."},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L3_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L3_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('586eea7a-7e2a-5259-8b81-ec1e4dba9ee0', '37105775-84cf-54bf-8802-02e8d78797be', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Before making a concession, we should clarify what remains non-negotiable and how the final solution will be implemented.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Прежде чем идти на уступку, следует уточнить, что остаётся не подлежащим обсуждению и как будет реализовано окончательное решение.","target_language":"en","word_bank":["Before","making","a","concession",",","we","should","clarify","what","remains","non-negotiable","and","how","the","final","solution","will","be","implemented","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3c9b74c7-2152-55ce-80c7-e0b93e8d88a2', '37105775-84cf-54bf-8802-02e8d78797be', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"mutually beneficial","instruction":"Выберите подходящее слово.","options":["mutually beneficial","non-negotiable","common ground"],"sentence_template":"Before making a concession, we should clarify what remains non-negotiable and how the final solution will be implemented."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('55eefcad-c5a6-51c9-bb00-949d29d3c0be', '37105775-84cf-54bf-8802-02e8d78797be', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Before","making","a","concession",",","we","should","clarify","what","remains","non-negotiable","and","how","the","final","solution","will","be","implemented","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","implemented","be","will","solution","final","the","how","and","non-negotiable","remains","what","clarify","should","we",",","concession","a","making","Before"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9a86bd1-0fc5-5bfa-a3d5-acc81ead7cf3', '37105775-84cf-54bf-8802-02e8d78797be', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Before making a concession, we should clarify what remains non-negotiable and how the final solution will be implemented. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc748a8d-7286-5340-a9b3-8685889a7006', '37105775-84cf-54bf-8802-02e8d78797be', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Before making a concession, we should clarify what remains non-negotiable and how the final solution will be implemented. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Прежде чем идти на уступку, следует уточнить, что остаётся не подлежащим обсуждению и как будет реализовано окончательное решение. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('43653ca6-9aba-5449-a488-ed07ba8700a4', '37105775-84cf-54bf-8802-02e8d78797be', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Before making a concession, we should clarify what remains non-negotiable and how the final solution will be implemented.","translation":"Прежде чем идти на уступку, следует уточнить, что остаётся не подлежащим обсуждению и как будет реализовано окончательное решение.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Evaluating Outcomes"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('294a410e-757f-5b78-ba6e-2ff04c4e0f04', '37105775-84cf-54bf-8802-02e8d78797be', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“mutually beneficial” means providing advantages to all parties.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L3_D11","is_correct":true,"text":"providing advantages to all parties"},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L3_D12","is_correct":false,"text":"give up part of a demand to facilitate agreement"},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L3_D13","is_correct":false,"text":"bring a disagreement to an acceptable conclusion"}],"word":"mutually beneficial"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b227cec6-1db5-573b-ac21-ad849abbbc6e', '37105775-84cf-54bf-8802-02e8d78797be', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Before making a concession, we should clarify what remains non-negotiable and how the final solution will be implemented.","explanation":"The missing B2 expression is “mutually beneficial”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"mutually beneficial","id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L3_D14","is_correct":true},{"audio_text":"resolve a dispute","id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L3_D15","is_correct":false},{"audio_text":"implement a solution","id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L3_D16","is_correct":false}],"sentence_template":"Before making a concession, we should clarify what remains non-negotiable and how the final solution will be implemented."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('34725464-c2fb-53ce-a115-2ec9a7052966', '37105775-84cf-54bf-8802-02e8d78797be', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"mutually beneficial","explanation":"The complete argument uses “mutually beneficial” to express the intended meaning precisely.","hint_prefix":"mutu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Before making a concession, we should clarify what remains non-negotiable and how the final solution will be implemented."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2f330fa8-47d2-5aa4-8b65-36e76c271f60', '37105775-84cf-54bf-8802-02e8d78797be', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"common ground","id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L3_D17","text":"common ground"},{"audio_text":"underlying concern","id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L3_D18","text":"underlying concern"},{"audio_text":"mutually beneficial","id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L3_D19","text":"mutually beneficial"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('88a0a785-8b9f-548b-aa4b-4d63773868b6', '37105775-84cf-54bf-8802-02e8d78797be', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Evaluating Outcomes”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L3_D20","is_correct":true,"text":"Before making a concession, we should clarify what remains non-negotiable and how the final solution will be implemented."},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L3_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_NEGOTIATION_CONFLICT_AND_PROBLEM_SOLVING_L3_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('cfdb887c-0568-5a25-a46d-9d036086ce1d', '37105775-84cf-54bf-8802-02e8d78797be', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('121cb794-6b73-5c10-aaa1-173d539681b3', 'en', 'common ground', 'общая основа', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eb0d559e-c7ab-55ae-99b3-5a1e72afbc51', 'en', 'underlying concern', 'глубинная проблема', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('26a4b8bf-0789-5652-b4c5-f5de949ead2b', 'en', 'mutually beneficial', 'взаимовыгодный', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3bfd1bdf-6dfe-58a3-8386-26615355a1df', 'en', 'make a concession', 'пойти на уступку', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('68653820-e7c2-54f5-abab-5945bcd2b442', 'en', 'resolve a dispute', 'разрешить спор', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3078c98-bab5-5756-8bbb-fdfee27d1d82', 'en', 'non-negotiable', 'не подлежащий обсуждению', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('690dd7ab-043a-585b-8a8e-6e5d1b1d6535', 'en', 'implement a solution', 'реализовать решение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('121cb794-6b73-5c10-aaa1-173d539681b3', 'en', 'common ground', 'общая основа', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eb0d559e-c7ab-55ae-99b3-5a1e72afbc51', 'en', 'underlying concern', 'глубинная проблема', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('26a4b8bf-0789-5652-b4c5-f5de949ead2b', 'en', 'mutually beneficial', 'взаимовыгодный', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3bfd1bdf-6dfe-58a3-8386-26615355a1df', 'en', 'make a concession', 'пойти на уступку', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('68653820-e7c2-54f5-abab-5945bcd2b442', 'en', 'resolve a dispute', 'разрешить спор', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3078c98-bab5-5756-8bbb-fdfee27d1d82', 'en', 'non-negotiable', 'не подлежащий обсуждению', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('690dd7ab-043a-585b-8a8e-6e5d1b1d6535', 'en', 'implement a solution', 'реализовать решение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('121cb794-6b73-5c10-aaa1-173d539681b3', 'en', 'common ground', 'общая основа', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eb0d559e-c7ab-55ae-99b3-5a1e72afbc51', 'en', 'underlying concern', 'глубинная проблема', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('26a4b8bf-0789-5652-b4c5-f5de949ead2b', 'en', 'mutually beneficial', 'взаимовыгодный', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3bfd1bdf-6dfe-58a3-8386-26615355a1df', 'en', 'make a concession', 'пойти на уступку', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('68653820-e7c2-54f5-abab-5945bcd2b442', 'en', 'resolve a dispute', 'разрешить спор', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3078c98-bab5-5756-8bbb-fdfee27d1d82', 'en', 'non-negotiable', 'не подлежащий обсуждению', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('690dd7ab-043a-585b-8a8e-6e5d1b1d6535', 'en', 'implement a solution', 'реализовать решение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdb887c-0568-5a25-a46d-9d036086ce1d', id, 'e1c31b3b-0afd-56a5-bb16-dbcc8221c314', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'common ground' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdb887c-0568-5a25-a46d-9d036086ce1d', id, 'e1c31b3b-0afd-56a5-bb16-dbcc8221c314', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'underlying concern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdb887c-0568-5a25-a46d-9d036086ce1d', id, 'e1c31b3b-0afd-56a5-bb16-dbcc8221c314', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'mutually beneficial' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdb887c-0568-5a25-a46d-9d036086ce1d', id, 'e1c31b3b-0afd-56a5-bb16-dbcc8221c314', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'make a concession' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdb887c-0568-5a25-a46d-9d036086ce1d', id, 'e1c31b3b-0afd-56a5-bb16-dbcc8221c314', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'resolve a dispute' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdb887c-0568-5a25-a46d-9d036086ce1d', id, 'e1c31b3b-0afd-56a5-bb16-dbcc8221c314', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'non-negotiable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdb887c-0568-5a25-a46d-9d036086ce1d', id, 'e1c31b3b-0afd-56a5-bb16-dbcc8221c314', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'implement a solution' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdb887c-0568-5a25-a46d-9d036086ce1d', id, '9875a173-7a3e-5a90-9fc6-6502fdc51d08', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'common ground' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdb887c-0568-5a25-a46d-9d036086ce1d', id, '9875a173-7a3e-5a90-9fc6-6502fdc51d08', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'underlying concern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdb887c-0568-5a25-a46d-9d036086ce1d', id, '9875a173-7a3e-5a90-9fc6-6502fdc51d08', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'mutually beneficial' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdb887c-0568-5a25-a46d-9d036086ce1d', id, '9875a173-7a3e-5a90-9fc6-6502fdc51d08', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'make a concession' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdb887c-0568-5a25-a46d-9d036086ce1d', id, '9875a173-7a3e-5a90-9fc6-6502fdc51d08', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'resolve a dispute' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdb887c-0568-5a25-a46d-9d036086ce1d', id, '9875a173-7a3e-5a90-9fc6-6502fdc51d08', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'non-negotiable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdb887c-0568-5a25-a46d-9d036086ce1d', id, '9875a173-7a3e-5a90-9fc6-6502fdc51d08', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'implement a solution' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdb887c-0568-5a25-a46d-9d036086ce1d', id, '37105775-84cf-54bf-8802-02e8d78797be', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'common ground' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdb887c-0568-5a25-a46d-9d036086ce1d', id, '37105775-84cf-54bf-8802-02e8d78797be', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'underlying concern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdb887c-0568-5a25-a46d-9d036086ce1d', id, '37105775-84cf-54bf-8802-02e8d78797be', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'mutually beneficial' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdb887c-0568-5a25-a46d-9d036086ce1d', id, '37105775-84cf-54bf-8802-02e8d78797be', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'make a concession' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdb887c-0568-5a25-a46d-9d036086ce1d', id, '37105775-84cf-54bf-8802-02e8d78797be', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'resolve a dispute' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdb887c-0568-5a25-a46d-9d036086ce1d', id, '37105775-84cf-54bf-8802-02e8d78797be', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'non-negotiable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cfdb887c-0568-5a25-a46d-9d036086ce1d', id, '37105775-84cf-54bf-8802-02e8d78797be', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'implement a solution' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
