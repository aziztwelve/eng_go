-- Track: B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('103bc0bb-f7e3-55d6-a2a6-16d5ced9ce6a', 'B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY', 'Потребительская культура, этика и устойчивость', 'Развивайте свободную и точную устную речь уровня B2 по теме «Потребительская культура, этика и устойчивость»: аргументируйте, реагируйте на возражения и формулируйте взвешенные выводы.', '{"en":"Consumer Culture, Ethics and Sustainability","ru":"Потребительская культура, этика и устойчивость"}'::jsonb, '{"en":"Develop fluent, precise B2 spoken English for consumer culture, ethics and sustainability through argument, counterargument, and balanced conclusions.","ru":"Развивайте свободную и точную устную речь уровня B2 по теме «Потребительская культура, этика и устойчивость»: аргументируйте, реагируйте на возражения и формулируйте взвешенные выводы."}'::jsonb, 'en', 'B2', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('03b189e7-c466-52cf-bd30-c12c76df8299', NULL, 'Ключевые понятия и позиция', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Consumer Behaviour","ru":"Ключевые понятия и позиция"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c3d016d7-7951-5686-a08d-65f68c778079', '03b189e7-c466-52cf-bd30-c12c76df8299', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L1_D01","left":"ethical consumption","right":"этичное потребление"},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L1_D02","left":"environmental impact","right":"воздействие на окружающую среду"},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L1_D03","left":"supply chain","right":"цепочка поставок"},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L1_D04","left":"misleading claim","right":"вводящее в заблуждение утверждение"},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L1_D05","left":"disposable culture","right":"культура одноразового потребления"},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L1_D06","left":"accountability","right":"ответственность"},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L1_D07","left":"informed choice","right":"осознанный выбор"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8f10f922-4669-584e-b990-e02df9666de9', '03b189e7-c466-52cf-bd30-c12c76df8299', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L1_D08","is_correct":true,"text":"Ethical consumption is difficult when companies provide limited information about working conditions throughout their supply chain."},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L1_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L1_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9558fc60-885b-5ba6-977c-9dc5f0244642', '03b189e7-c466-52cf-bd30-c12c76df8299', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Ethical consumption is difficult when companies provide limited information about working conditions throughout their supply chain.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Этичное потребление затруднено, когда компании предоставляют мало информации об условиях труда во всей цепочке поставок.","target_language":"en","word_bank":["Ethical","consumption","is","difficult","when","companies","provide","limited","information","about","working","conditions","throughout","their","supply","chain","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('360273b3-ec51-58ea-b8c8-bdce0c7469e1', '03b189e7-c466-52cf-bd30-c12c76df8299', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"ethical consumption","instruction":"Выберите подходящее слово.","options":["ethical consumption","misleading claim","accountability"],"sentence_template":"___ is difficult when companies provide limited information about working conditions throughout their supply chain."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c305af04-d44b-5dff-8e1e-29483122a7a5', '03b189e7-c466-52cf-bd30-c12c76df8299', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Ethical","consumption","is","difficult","when","companies","provide","limited","information","about","working","conditions","throughout","their","supply","chain","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","chain","supply","their","throughout","conditions","working","about","information","limited","provide","companies","when","difficult","is","consumption","Ethical"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2f482d1b-2348-5605-8181-6fe814525f94', '03b189e7-c466-52cf-bd30-c12c76df8299', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Ethical consumption is difficult when companies provide limited information about working conditions throughout their supply chain. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb9f5539-43ab-51c6-abff-20a3e34832e9', '03b189e7-c466-52cf-bd30-c12c76df8299', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Ethical consumption is difficult when companies provide limited information about working conditions throughout their supply chain. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Этичное потребление затруднено, когда компании предоставляют мало информации об условиях труда во всей цепочке поставок. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('09735e23-a12e-5cd9-a00b-40086822cbf9', '03b189e7-c466-52cf-bd30-c12c76df8299', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Ethical consumption is difficult when companies provide limited information about working conditions throughout their supply chain.","translation":"Этичное потребление затруднено, когда компании предоставляют мало информации об условиях труда во всей цепочке поставок.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Consumer Behaviour"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4d0fec1c-7f69-55cb-9db8-4e20772d08cf', '03b189e7-c466-52cf-bd30-c12c76df8299', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“ethical consumption” means buying goods with concern for social and environmental effects.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L1_D11","is_correct":true,"text":"buying goods with concern for social and environmental effects"},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L1_D12","is_correct":false,"text":"the effect an activity has on the natural world"},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L1_D13","is_correct":false,"text":"the network involved in producing and delivering goods"}],"word":"ethical consumption"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c4a1169e-f457-598c-b9fa-8f8a35dbc321', '03b189e7-c466-52cf-bd30-c12c76df8299', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Ethical consumption is difficult when companies provide limited information about working conditions throughout their supply chain.","explanation":"The missing B2 expression is “ethical consumption”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"ethical consumption","id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L1_D14","is_correct":true},{"audio_text":"supply chain","id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L1_D15","is_correct":false},{"audio_text":"disposable culture","id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L1_D16","is_correct":false}],"sentence_template":"___ is difficult when companies provide limited information about working conditions throughout their supply chain."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b784d116-decc-5c7e-8ede-f126b28b8ed6', '03b189e7-c466-52cf-bd30-c12c76df8299', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"ethical consumption","explanation":"The complete argument uses “ethical consumption” to express the intended meaning precisely.","hint_prefix":"ethi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___ is difficult when companies provide limited information about working conditions throughout their supply chain."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b22b1784-762f-507d-bf90-ca96d5e32d76', '03b189e7-c466-52cf-bd30-c12c76df8299', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"ethical consumption","id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L1_D17","text":"ethical consumption"},{"audio_text":"environmental impact","id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L1_D18","text":"environmental impact"},{"audio_text":"supply chain","id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L1_D19","text":"supply chain"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b9831143-85cb-54e6-83ac-c2f33f65f45b', '03b189e7-c466-52cf-bd30-c12c76df8299', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Consumer Behaviour”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L1_D20","is_correct":true,"text":"Ethical consumption is difficult when companies provide limited information about working conditions throughout their supply chain."},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L1_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L1_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('103bc0bb-f7e3-55d6-a2a6-16d5ced9ce6a', '03b189e7-c466-52cf-bd30-c12c76df8299', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b4c2ffe9-d165-59f0-989e-3273e81d90d9', NULL, 'Развитие и оспаривание аргумента', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Ethical Choices","ru":"Развитие и оспаривание аргумента"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('343e969e-c55d-59b4-baf8-189c752ea5eb', 'b4c2ffe9-d165-59f0-989e-3273e81d90d9', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L2_D01","left":"ethical consumption","right":"этичное потребление"},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L2_D02","left":"environmental impact","right":"воздействие на окружающую среду"},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L2_D03","left":"supply chain","right":"цепочка поставок"},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L2_D04","left":"misleading claim","right":"вводящее в заблуждение утверждение"},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L2_D05","left":"disposable culture","right":"культура одноразового потребления"},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L2_D06","left":"accountability","right":"ответственность"},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L2_D07","left":"informed choice","right":"осознанный выбор"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e82d9bc2-987a-57a9-8870-fc9108f5d45d', 'b4c2ffe9-d165-59f0-989e-3273e81d90d9', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L2_D08","is_correct":true,"text":"Reducing environmental impact requires more than individual effort because manufacturers and governments must also accept accountability."},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L2_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L2_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2fbcf423-fd03-5d5f-93c7-9eb0f13a7d6b', 'b4c2ffe9-d165-59f0-989e-3273e81d90d9', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Reducing environmental impact requires more than individual effort because manufacturers and governments must also accept accountability.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Снижение воздействия на окружающую среду требует большего, чем личные усилия, поскольку производители и правительства также должны нести ответственность.","target_language":"en","word_bank":["Reducing","environmental","impact","requires","more","than","individual","effort","because","manufacturers","and","governments","must","also","accept","accountability","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7f78883-96df-5aed-aac6-dda67bace134', 'b4c2ffe9-d165-59f0-989e-3273e81d90d9', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"environmental impact","instruction":"Выберите подходящее слово.","options":["environmental impact","disposable culture","informed choice"],"sentence_template":"Reducing ___ requires more than individual effort because manufacturers and governments must also accept accountability."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ecc9031d-c629-57e7-9c3c-4337e0412e91', 'b4c2ffe9-d165-59f0-989e-3273e81d90d9', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Reducing","environmental","impact","requires","more","than","individual","effort","because","manufacturers","and","governments","must","also","accept","accountability","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","accountability","accept","also","must","governments","and","manufacturers","because","effort","individual","than","more","requires","impact","environmental","Reducing"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aab886ca-2cc1-5d86-8925-e10dc61868b9', 'b4c2ffe9-d165-59f0-989e-3273e81d90d9', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Reducing environmental impact requires more than individual effort because manufacturers and governments must also accept accountability. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('344fc873-8375-5e89-a19a-9a3d2b0042a4', 'b4c2ffe9-d165-59f0-989e-3273e81d90d9', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Reducing environmental impact requires more than individual effort because manufacturers and governments must also accept accountability. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Снижение воздействия на окружающую среду требует большего, чем личные усилия, поскольку производители и правительства также должны нести ответственность. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d98c82d7-91f8-5e46-9827-24daf1c6617e', 'b4c2ffe9-d165-59f0-989e-3273e81d90d9', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Reducing environmental impact requires more than individual effort because manufacturers and governments must also accept accountability.","translation":"Снижение воздействия на окружающую среду требует большего, чем личные усилия, поскольку производители и правительства также должны нести ответственность.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Ethical Choices"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2aa92a36-8579-5e19-ab54-864ac8c469b8', 'b4c2ffe9-d165-59f0-989e-3273e81d90d9', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“environmental impact” means the effect an activity has on the natural world.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L2_D11","is_correct":true,"text":"the effect an activity has on the natural world"},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L2_D12","is_correct":false,"text":"the network involved in producing and delivering goods"},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L2_D13","is_correct":false,"text":"a statement likely to create a false impression"}],"word":"environmental impact"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9e80e84-a5a6-57c9-a135-d6f602cc3258', 'b4c2ffe9-d165-59f0-989e-3273e81d90d9', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Reducing environmental impact requires more than individual effort because manufacturers and governments must also accept accountability.","explanation":"The missing B2 expression is “environmental impact”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"environmental impact","id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L2_D14","is_correct":true},{"audio_text":"misleading claim","id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L2_D15","is_correct":false},{"audio_text":"accountability","id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L2_D16","is_correct":false}],"sentence_template":"Reducing ___ requires more than individual effort because manufacturers and governments must also accept accountability."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ba175827-2d71-539d-92ac-a5e806dd92cd', 'b4c2ffe9-d165-59f0-989e-3273e81d90d9', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"environmental impact","explanation":"The complete argument uses “environmental impact” to express the intended meaning precisely.","hint_prefix":"envi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Reducing ___ requires more than individual effort because manufacturers and governments must also accept accountability."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('186a1085-8e51-559d-b411-39221b59fe07', 'b4c2ffe9-d165-59f0-989e-3273e81d90d9', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"ethical consumption","id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L2_D17","text":"ethical consumption"},{"audio_text":"environmental impact","id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L2_D18","text":"environmental impact"},{"audio_text":"supply chain","id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L2_D19","text":"supply chain"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78257e43-564d-51e2-9b1d-8f5fcc7534aa', 'b4c2ffe9-d165-59f0-989e-3273e81d90d9', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Ethical Choices”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L2_D20","is_correct":true,"text":"Reducing environmental impact requires more than individual effort because manufacturers and governments must also accept accountability."},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L2_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L2_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('103bc0bb-f7e3-55d6-a2a6-16d5ced9ce6a', 'b4c2ffe9-d165-59f0-989e-3273e81d90d9', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('dc7ea2f2-1524-58a3-8cee-263b49eb477c', NULL, 'Взвешенный вывод и взаимодействие', 'Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу.', '{"en":"Sustainable Alternatives","ru":"Взвешенный вывод и взаимодействие"}'::jsonb, '{"en":"Develop a fluent B2 argument, support it with precise examples, acknowledge an alternative perspective, and reach a balanced conclusion.","ru":"Свободно развивать аргумент уровня B2, подкреплять его точными примерами, учитывать альтернативную точку зрения и приходить к взвешенному выводу."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e52a1fca-3626-5b79-b010-59dd1f3e0a2a', 'dc7ea2f2-1524-58a3-8cee-263b49eb477c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L3_D01","left":"ethical consumption","right":"этичное потребление"},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L3_D02","left":"environmental impact","right":"воздействие на окружающую среду"},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L3_D03","left":"supply chain","right":"цепочка поставок"},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L3_D04","left":"misleading claim","right":"вводящее в заблуждение утверждение"},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L3_D05","left":"disposable culture","right":"культура одноразового потребления"},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L3_D06","left":"accountability","right":"ответственность"},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L3_D07","left":"informed choice","right":"осознанный выбор"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d76c855e-4a4d-54a9-bac7-261cc169a077', 'dc7ea2f2-1524-58a3-8cee-263b49eb477c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response develops a precise B2 position and shows how its ideas are logically related.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L3_D08","is_correct":true,"text":"A misleading claim can prevent customers from making an informed choice, particularly when supposedly sustainable products cost more."},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L3_D09","is_correct":false,"text":"The issue is obvious, and anyone who disagrees is simply wrong."},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L3_D10","is_correct":false,"text":"There are different opinions, but no evidence or explanation is necessary."}],"question":"Which response presents the most nuanced and well-supported position?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('210e0879-7c15-5da3-bc9a-6b72db0d9fe8', 'dc7ea2f2-1524-58a3-8cee-263b49eb477c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A misleading claim can prevent customers from making an informed choice, particularly when supposedly sustainable products cost more.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Вводящее в заблуждение утверждение может помешать покупателям сделать осознанный выбор, особенно когда якобы экологичные товары стоят дороже.","target_language":"en","word_bank":["A","misleading","claim","can","prevent","customers","from","making","an","informed","choice",",","particularly","when","supposedly","sustainable","products","cost","more","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b91b548-4c2a-5756-b7c0-3e75515aa450', 'dc7ea2f2-1524-58a3-8cee-263b49eb477c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"supply chain","instruction":"Выберите подходящее слово.","options":["supply chain","accountability","ethical consumption"],"sentence_template":"A misleading claim can prevent customers from making an informed choice, particularly when supposedly sustainable products cost more."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('80c2c500-431b-503d-9df7-6c41323917e3', 'dc7ea2f2-1524-58a3-8cee-263b49eb477c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","misleading","claim","can","prevent","customers","from","making","an","informed","choice",",","particularly","when","supposedly","sustainable","products","cost","more","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","more","cost","products","sustainable","supposedly","when","particularly",",","choice","informed","an","making","from","customers","prevent","can","claim","misleading","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb338bba-d59b-5fb8-a8df-66ce5f9c9db1', 'dc7ea2f2-1524-58a3-8cee-263b49eb477c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A misleading claim can prevent customers from making an informed choice, particularly when supposedly sustainable products cost more. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7205965f-e8f2-5d95-aeba-debfccce3c6e', 'dc7ea2f2-1524-58a3-8cee-263b49eb477c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A misleading claim can prevent customers from making an informed choice, particularly when supposedly sustainable products cost more. Nevertheless, the opposite perspective deserves consideration before a firm conclusion is reached. Although the issue is complex, a practical response should reflect both evidence and wider consequences.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Вводящее в заблуждение утверждение может помешать покупателям сделать осознанный выбор, особенно когда якобы экологичные товары стоят дороже. Тем не менее противоположная точка зрения заслуживает рассмотрения до того, как будет сделан окончательный вывод. Хотя вопрос сложен, практический ответ должен учитывать и доказательства, и более широкие последствия."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce821553-a5dc-5ce6-a47f-7dcbfece1d81', 'dc7ea2f2-1524-58a3-8cee-263b49eb477c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"A misleading claim can prevent customers from making an informed choice, particularly when supposedly sustainable products cost more.","translation":"Вводящее в заблуждение утверждение может помешать покупателям сделать осознанный выбор, особенно когда якобы экологичные товары стоят дороже.","type":"dialogue"},{"character":"Leo","text":"That is persuasive, but what limitation or counterargument should we acknowledge?","translation":"Это убедительно, но какое ограничение или контраргумент нам следует признать?","type":"dialogue"},{"options":[{"is_correct":true,"text":"That objection is valid to some extent; however, the available evidence still supports a qualified version of the original claim."},{"is_correct":false,"text":"I disagree completely, so there is no point in examining the objection."}],"text":"Which reply moves the discussion forward?","type":"choice"}],"title":"Sustainable Alternatives"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1841eacf-8ebd-5675-a8d1-ff515cd19e03', 'dc7ea2f2-1524-58a3-8cee-263b49eb477c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“supply chain” means the network involved in producing and delivering goods.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L3_D11","is_correct":true,"text":"the network involved in producing and delivering goods"},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L3_D12","is_correct":false,"text":"a statement likely to create a false impression"},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L3_D13","is_correct":false,"text":"a habit of replacing rather than repairing products"}],"word":"supply chain"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('10c7e4d3-e1f3-55f8-95f1-6c13b4674c67', 'dc7ea2f2-1524-58a3-8cee-263b49eb477c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A misleading claim can prevent customers from making an informed choice, particularly when supposedly sustainable products cost more.","explanation":"The missing B2 expression is “supply chain”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"supply chain","id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L3_D14","is_correct":true},{"audio_text":"disposable culture","id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L3_D15","is_correct":false},{"audio_text":"informed choice","id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L3_D16","is_correct":false}],"sentence_template":"A misleading claim can prevent customers from making an informed choice, particularly when supposedly sustainable products cost more."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6f685f6b-c78b-56e0-8932-8c13a346317a', 'dc7ea2f2-1524-58a3-8cee-263b49eb477c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"supply chain","explanation":"The complete argument uses “supply chain” to express the intended meaning precisely.","hint_prefix":"supp","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A misleading claim can prevent customers from making an informed choice, particularly when supposedly sustainable products cost more."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d91e7f0f-4bf8-5303-a724-d8697cfea300', 'dc7ea2f2-1524-58a3-8cee-263b49eb477c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with the same written expression.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"ethical consumption","id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L3_D17","text":"ethical consumption"},{"audio_text":"environmental impact","id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L3_D18","text":"environmental impact"},{"audio_text":"supply chain","id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L3_D19","text":"supply chain"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cb5db290-aeab-5e50-a54d-24ff843dcc69', 'dc7ea2f2-1524-58a3-8cee-263b49eb477c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What balanced position would you take on “Sustainable Alternatives”?"}],"explanation":"The correct response advances the discussion with a developed, relevant, and appropriately nuanced B2 contribution.","instruction":"Ответьте.","options":[{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L3_D20","is_correct":true,"text":"A misleading claim can prevent customers from making an informed choice, particularly when supposedly sustainable products cost more."},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L3_D21","is_correct":false,"text":"There is only one possible answer, and no qualification is needed."},{"id":"B2_SPEAKING_CONSUMER_CULTURE_ETHICS_AND_SUSTAINABILITY_L3_D22","is_correct":false,"text":"I would rather avoid the issue because arguments do not require evidence."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('103bc0bb-f7e3-55d6-a2a6-16d5ced9ce6a', 'dc7ea2f2-1524-58a3-8cee-263b49eb477c', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('777e464b-72b4-570d-bf9e-ed7815524136', 'en', 'ethical consumption', 'этичное потребление', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8f508ea4-ca37-5401-a86e-378b76d3581a', 'en', 'environmental impact', 'воздействие на окружающую среду', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ab9ef062-249e-50f2-9894-757fa7170afe', 'en', 'supply chain', 'цепочка поставок', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7574ab5b-1585-548b-bb0c-a44c346e78d1', 'en', 'misleading claim', 'вводящее в заблуждение утверждение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2c74cc31-db13-5079-9562-2915e9c46471', 'en', 'disposable culture', 'культура одноразового потребления', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3ff99f62-4798-52e5-9a51-ae3104dd4322', 'en', 'accountability', 'ответственность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bf652e81-562f-55c6-af3f-92dfdc35259a', 'en', 'informed choice', 'осознанный выбор', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('777e464b-72b4-570d-bf9e-ed7815524136', 'en', 'ethical consumption', 'этичное потребление', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8f508ea4-ca37-5401-a86e-378b76d3581a', 'en', 'environmental impact', 'воздействие на окружающую среду', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ab9ef062-249e-50f2-9894-757fa7170afe', 'en', 'supply chain', 'цепочка поставок', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7574ab5b-1585-548b-bb0c-a44c346e78d1', 'en', 'misleading claim', 'вводящее в заблуждение утверждение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2c74cc31-db13-5079-9562-2915e9c46471', 'en', 'disposable culture', 'культура одноразового потребления', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3ff99f62-4798-52e5-9a51-ae3104dd4322', 'en', 'accountability', 'ответственность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bf652e81-562f-55c6-af3f-92dfdc35259a', 'en', 'informed choice', 'осознанный выбор', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('777e464b-72b4-570d-bf9e-ed7815524136', 'en', 'ethical consumption', 'этичное потребление', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8f508ea4-ca37-5401-a86e-378b76d3581a', 'en', 'environmental impact', 'воздействие на окружающую среду', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ab9ef062-249e-50f2-9894-757fa7170afe', 'en', 'supply chain', 'цепочка поставок', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7574ab5b-1585-548b-bb0c-a44c346e78d1', 'en', 'misleading claim', 'вводящее в заблуждение утверждение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2c74cc31-db13-5079-9562-2915e9c46471', 'en', 'disposable culture', 'культура одноразового потребления', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3ff99f62-4798-52e5-9a51-ae3104dd4322', 'en', 'accountability', 'ответственность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bf652e81-562f-55c6-af3f-92dfdc35259a', 'en', 'informed choice', 'осознанный выбор', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '103bc0bb-f7e3-55d6-a2a6-16d5ced9ce6a', id, '03b189e7-c466-52cf-bd30-c12c76df8299', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'ethical consumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '103bc0bb-f7e3-55d6-a2a6-16d5ced9ce6a', id, '03b189e7-c466-52cf-bd30-c12c76df8299', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'environmental impact' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '103bc0bb-f7e3-55d6-a2a6-16d5ced9ce6a', id, '03b189e7-c466-52cf-bd30-c12c76df8299', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'supply chain' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '103bc0bb-f7e3-55d6-a2a6-16d5ced9ce6a', id, '03b189e7-c466-52cf-bd30-c12c76df8299', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'misleading claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '103bc0bb-f7e3-55d6-a2a6-16d5ced9ce6a', id, '03b189e7-c466-52cf-bd30-c12c76df8299', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'disposable culture' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '103bc0bb-f7e3-55d6-a2a6-16d5ced9ce6a', id, '03b189e7-c466-52cf-bd30-c12c76df8299', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'accountability' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '103bc0bb-f7e3-55d6-a2a6-16d5ced9ce6a', id, '03b189e7-c466-52cf-bd30-c12c76df8299', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'informed choice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '103bc0bb-f7e3-55d6-a2a6-16d5ced9ce6a', id, 'b4c2ffe9-d165-59f0-989e-3273e81d90d9', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'ethical consumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '103bc0bb-f7e3-55d6-a2a6-16d5ced9ce6a', id, 'b4c2ffe9-d165-59f0-989e-3273e81d90d9', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'environmental impact' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '103bc0bb-f7e3-55d6-a2a6-16d5ced9ce6a', id, 'b4c2ffe9-d165-59f0-989e-3273e81d90d9', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'supply chain' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '103bc0bb-f7e3-55d6-a2a6-16d5ced9ce6a', id, 'b4c2ffe9-d165-59f0-989e-3273e81d90d9', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'misleading claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '103bc0bb-f7e3-55d6-a2a6-16d5ced9ce6a', id, 'b4c2ffe9-d165-59f0-989e-3273e81d90d9', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'disposable culture' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '103bc0bb-f7e3-55d6-a2a6-16d5ced9ce6a', id, 'b4c2ffe9-d165-59f0-989e-3273e81d90d9', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'accountability' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '103bc0bb-f7e3-55d6-a2a6-16d5ced9ce6a', id, 'b4c2ffe9-d165-59f0-989e-3273e81d90d9', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'informed choice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '103bc0bb-f7e3-55d6-a2a6-16d5ced9ce6a', id, 'dc7ea2f2-1524-58a3-8cee-263b49eb477c', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'ethical consumption' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '103bc0bb-f7e3-55d6-a2a6-16d5ced9ce6a', id, 'dc7ea2f2-1524-58a3-8cee-263b49eb477c', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'environmental impact' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '103bc0bb-f7e3-55d6-a2a6-16d5ced9ce6a', id, 'dc7ea2f2-1524-58a3-8cee-263b49eb477c', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'supply chain' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '103bc0bb-f7e3-55d6-a2a6-16d5ced9ce6a', id, 'dc7ea2f2-1524-58a3-8cee-263b49eb477c', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'misleading claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '103bc0bb-f7e3-55d6-a2a6-16d5ced9ce6a', id, 'dc7ea2f2-1524-58a3-8cee-263b49eb477c', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'disposable culture' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '103bc0bb-f7e3-55d6-a2a6-16d5ced9ce6a', id, 'dc7ea2f2-1524-58a3-8cee-263b49eb477c', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'accountability' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '103bc0bb-f7e3-55d6-a2a6-16d5ced9ce6a', id, 'dc7ea2f2-1524-58a3-8cee-263b49eb477c', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'informed choice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
