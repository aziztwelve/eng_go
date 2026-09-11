-- Track: A2_WORK_REQUESTS_AND_CLARIFICATION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('8a768ecc-760a-5ed1-afed-b032056e9c28', 'A2_WORK_REQUESTS_AND_CLARIFICATION', 'Просьбы и уточнения', 'Развивайте практический английский уровня A2 для работы по теме «Просьбы и уточнения».', '{"en":"Requests and Clarification","ru":"Просьбы и уточнения"}'::jsonb, '{"en":"Develop practical A2 workplace English for requests and clarification.","ru":"Развивайте практический английский уровня A2 для работы по теме «Просьбы и уточнения»."}'::jsonb, 'en', 'A2', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('8016b5b0-3ab7-55e9-a0d0-aa0311bf1c09', NULL, 'Просьбы на этой неделе', 'Рассказать о просьбах и уточнениях, используя past simple и present perfect.', '{"en":"Requests This Week","ru":"Просьбы на этой неделе"}'::jsonb, '{"en":"Talk about requests and clarifications using past simple and present perfect.","ru":"Рассказать о просьбах и уточнениях, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1818d242-30cd-5fdf-a060-8b38c1c445fa', '8016b5b0-3ab7-55e9-a0d0-aa0311bf1c09', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to ask for","right":"попросить (что-то)"},{"id":"P2","left":"to explain","right":"объяснить"},{"id":"P3","left":"to clarify","right":"уточнить"},{"id":"P4","left":"detail","right":"деталь / подробность"},{"id":"P5","left":"request","right":"просьба / запрос"},{"id":"P6","left":"by email","right":"по электронной почте"},{"id":"P7","left":"to double-check","right":"перепроверить"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8f27bda5-f3f6-542a-b0ab-0272ebed9bd2', '8016b5b0-3ab7-55e9-a0d0-aa0311bf1c09', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I have already asked him for the details twice.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I have already asked him for the details twice."},{"id":"Q_B","is_correct":false,"text":"I have asked him for the details yesterday."},{"id":"Q_C","is_correct":false,"text":"I ask him for the details already twice."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c73ca0d3-ca8e-5ebc-9ae5-06e0c3c7fb38', '8016b5b0-3ab7-55e9-a0d0-aa0311bf1c09', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I asked her to explain the details, and she has already sent the reply by email.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я попросил её объяснить детали, и она уже прислала ответ по почте.","target_language":"en","word_bank":["to","tomorrow","by","explain","reply","her","did","sent","already","has","details,","email.","I","and","asks","asked","she","the","the"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a0bdc2cf-2b12-5f47-9bc1-7124efffe572', '8016b5b0-3ab7-55e9-a0d0-aa0311bf1c09', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"asked","instruction":"Выберите подходящее слово.","options":["asked","has ask","asking"],"sentence_template":"Yesterday he ___ me for help with the presentation.","translation_hint":"Вчера он попросил меня помочь с презентацией."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('94dcf400-ab71-5a25-be0c-b923498bf0a4', '8016b5b0-3ab7-55e9-a0d0-aa0311bf1c09', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["She","has","clarified","all","the","details","of","our","request."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["the","of","has","clarified","did","details","request.","all","was","our","She"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a005f8d-6742-517b-a106-8f1d6fc8c6e3', '8016b5b0-3ab7-55e9-a0d0-aa0311bf1c09', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I asked for the exact numbers, and the client has just sent them by email.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d9229827-079b-5adf-bb61-43cc9061b6ee', '8016b5b0-3ab7-55e9-a0d0-aa0311bf1c09', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I asked for the exact numbers, and the client has just sent them by email.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Я попросил точные цифры, и клиент только что прислал их по почте."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('942edd49-12b5-5da3-90c2-8cce5367c3f8', '8016b5b0-3ab7-55e9-a0d0-aa0311bf1c09', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"Did you understand what the client wants?","translation":"Ты понял, чего хочет клиент?","type":"dialogue"},{"character":"Tom","text":"Not really. His email was not very clear about the deadline.","translation":"Не совсем. Его письмо не очень ясно описывало сроки.","type":"dialogue"},{"options":[{"is_correct":true,"text":"He should ask the client to clarify the deadline."},{"is_correct":false,"text":"He must to guess the deadline yesterday."},{"is_correct":false,"text":"The email is asking Tom for more details itself."}],"text":"What should Tom do?","type":"choice"}],"title":"A Vague Email"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('09f3d419-842f-504c-bc20-db91a7a9549b', '8016b5b0-3ab7-55e9-a0d0-aa0311bf1c09', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to clarify” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To make something easier to understand"},{"id":"D_B","is_correct":false,"text":"To close a request without an answer"},{"id":"D_C","is_correct":false,"text":"To send a document without checking it"}],"word":"to clarify"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6bea3ad5-babc-5d87-9891-7b643dbca8f5', '8016b5b0-3ab7-55e9-a0d0-aa0311bf1c09', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Could you repeat the question, please?","explanation":"The missing word is “repeat”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"repeat","id":"LW_A","is_correct":true},{"audio_text":"repeated","id":"LW_B","is_correct":false},{"audio_text":"repeating","id":"LW_C","is_correct":false}],"sentence_template":"Could you ___ the question, please?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e5659bb-4221-5e72-a3fe-aeb53d367995', '8016b5b0-3ab7-55e9-a0d0-aa0311bf1c09', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"checked","explanation":"The complete sentence is “I have double-checked the numbers in the report.”.","hint_prefix":"ch","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I have double-___ the numbers in the report."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2cae6a88-9abd-5b44-bd66-eda47fb522f3', '8016b5b0-3ab7-55e9-a0d0-aa0311bf1c09', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to ask for","id":"V1","text":"to ask for"},{"audio_text":"to explain","id":"V2","text":"to explain"},{"audio_text":"to clarify","id":"V3","text":"to clarify"},{"audio_text":"detail","id":"V4","text":"detail"},{"audio_text":"request","id":"V5","text":"request"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2798babe-e0a3-5d37-a1fd-adef1d18680a', '8016b5b0-3ab7-55e9-a0d0-aa0311bf1c09', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Did you get my email about the venue?"}],"explanation":"“Yes, I got it, but could you clarify the date? The email says two different days.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes, I got it, but could you clarify the date? The email says two different days."},{"id":"C_B","is_correct":false,"text":"Yes, I have get it yesterday."},{"id":"C_C","is_correct":false,"text":"The venue is emailing me the date."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8a768ecc-760a-5ed1-afed-b032056e9c28', '8016b5b0-3ab7-55e9-a0d0-aa0311bf1c09', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('48bec22b-d49a-506b-8d57-3ed98274af5a', NULL, 'Вежливые просьбы на будущее', 'Вежливо просить о будущем и сравнивать способы общения.', '{"en":"Polite Requests for the Future","ru":"Вежливые просьбы на будущее"}'::jsonb, '{"en":"Make polite future requests and compare ways of communicating.","ru":"Вежливо просить о будущем и сравнивать способы общения."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc82853c-fc5e-58e8-ab38-118a5462c383', '48bec22b-d49a-506b-8d57-3ed98274af5a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"Could you...?","right":"Не могли бы вы...?"},{"id":"P2","left":"as soon as possible","right":"как можно скорее"},{"id":"P3","left":"to send a reminder","right":"отправить напоминание"},{"id":"P4","left":"urgent","right":"срочный"},{"id":"P5","left":"more convenient","right":"удобнее"},{"id":"P6","left":"to respond","right":"ответить"},{"id":"P7","left":"attachment","right":"вложение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8743eb22-d03f-50e3-ad4d-e5d07725dc89', '48bec22b-d49a-506b-8d57-3ed98274af5a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Could you send the report as soon as possible, please?”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Could you send the report as soon as possible, please?"},{"id":"Q_B","is_correct":false,"text":"Send the report now."},{"id":"Q_C","is_correct":false,"text":"You will send the report today."}],"question":"Which request is the most polite?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('de139c51-c5bd-54d7-83d5-7d72ce5ba505', '48bec22b-d49a-506b-8d57-3ed98274af5a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Could you check the attachment and respond before the end of the day?","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Не могли бы вы проверить вложение и ответить до конца дня?","target_language":"en","word_bank":["Could","check","can","before","the","the","you","and","did","the","day?","end","yesterday","attachment","of","respond"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('27f03f1a-76a8-5905-b0ef-65279d936228', '48bec22b-d49a-506b-8d57-3ed98274af5a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"more","instruction":"Выберите подходящее слово.","options":["more","most","much"],"sentence_template":"A phone call is ___ convenient than a long email chain.","translation_hint":"Телефонный звонок удобнее длинной переписки."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3bf6791a-aa89-5a3b-a740-0e09520a49c7', '48bec22b-d49a-506b-8d57-3ed98274af5a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Could","you","send","me","a","reminder","about","tomorrow''s","meeting?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["about","Could","did","send","a","me","reminder","was","you","meeting?","tomorrow''s"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef22872e-4446-5366-946f-d39394434651', '48bec22b-d49a-506b-8d57-3ed98274af5a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If the request is urgent, a phone call is faster than an email, but an email is clearer.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e209220-3fb5-55a1-9692-830af967bea7', '48bec22b-d49a-506b-8d57-3ed98274af5a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If the request is urgent, a phone call is faster than an email, but an email is clearer.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если просьба срочная, звонок быстрее письма, но письмо понятнее."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8bd6da15-c708-5936-b69e-1d4becd31ab2', '48bec22b-d49a-506b-8d57-3ed98274af5a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Client","text":"Could you send us the updated prices this week?","translation":"Не могли бы вы прислать обновлённые цены на этой неделе?","type":"dialogue"},{"character":"Anna","text":"Of course. Is Friday soon enough?","translation":"Конечно. Пятницы будет достаточно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Friday is fine, but could you also include the delivery costs?"},{"is_correct":false,"text":"Yes, you will sent them last Monday."},{"is_correct":false,"text":"The prices are sending themselves."}],"text":"What does the client answer?","type":"choice"}],"title":"The Urgent Request"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cf89fc45-4c8e-509f-b521-eb7ae4f386c7', '48bec22b-d49a-506b-8d57-3ed98274af5a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“urgent” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Needing attention very quickly"},{"id":"D_B","is_correct":false,"text":"Planned for a later time"},{"id":"D_C","is_correct":false,"text":"Not important at all"}],"word":"urgent"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1f8b361d-6ceb-551b-8dbc-3a0713ecf28a', '48bec22b-d49a-506b-8d57-3ed98274af5a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Could you open the attachment, please?","explanation":"The missing word is “open”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"open","id":"LW_A","is_correct":true},{"audio_text":"opened","id":"LW_B","is_correct":false},{"audio_text":"opening","id":"LW_C","is_correct":false}],"sentence_template":"Could you ___ the attachment, please?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('67b083ae-e1b8-538a-a6a5-e8538c0f5df9', '48bec22b-d49a-506b-8d57-3ed98274af5a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"by","explanation":"The complete sentence is “Could you reply by Friday, please?”.","hint_prefix":"by","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Could you reply ___ Friday, please?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('671d79e7-ff51-5394-8deb-0f2bb605848a', '48bec22b-d49a-506b-8d57-3ed98274af5a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"Could you...?","id":"V1","text":"Could you...?"},{"audio_text":"as soon as possible","id":"V2","text":"as soon as possible"},{"audio_text":"to send a reminder","id":"V3","text":"to send a reminder"},{"audio_text":"urgent","id":"V4","text":"urgent"},{"audio_text":"more convenient","id":"V5","text":"more convenient"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('45d3435a-e860-5f1f-9890-5a458a0b30b8', '48bec22b-d49a-506b-8d57-3ed98274af5a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"I need those figures for the meeting."}],"explanation":"“Sure. Could you tell me which figures you need exactly?” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Sure. Could you tell me which figures you need exactly?"},{"id":"C_B","is_correct":false,"text":"Yes, I will sended them yesterday."},{"id":"C_C","is_correct":false,"text":"The figures are meeting me tomorrow."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8a768ecc-760a-5ed1-afed-b032056e9c28', '48bec22b-d49a-506b-8d57-3ed98274af5a', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('92739679-5b1d-5040-a006-f0d109f03f37', NULL, 'Уточняем правильно', 'Уточнять информацию с should и первым условным.', '{"en":"Clarifying the Right Way","ru":"Уточняем правильно"}'::jsonb, '{"en":"Clarify information using should and the first conditional.","ru":"Уточнять информацию с should и первым условным."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('98ba3553-39a8-5b84-8375-2963ebaa2158', '92739679-5b1d-5040-a006-f0d109f03f37', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to make sure","right":"убедиться"},{"id":"P2","left":"to misunderstand","right":"неправильно понять"},{"id":"P3","left":"exact","right":"точный"},{"id":"P4","left":"to confirm","right":"подтвердить"},{"id":"P5","left":"in writing","right":"в письменном виде"},{"id":"P6","left":"to avoid","right":"избежать"},{"id":"P7","left":"confusion","right":"путаница"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('82a7e65d-9b7f-52ba-98cb-3d8a5154a7b3', '92739679-5b1d-5040-a006-f0d109f03f37', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should confirm important requests in writing.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should confirm important requests in writing."},{"id":"Q_B","is_correct":false,"text":"You should to confirm the request yesterday."},{"id":"Q_C","is_correct":false,"text":"You must confirming requests last week."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a2a5f4af-6387-5902-a4ab-90888efa1f0f', '92739679-5b1d-5040-a006-f0d109f03f37', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you do not clarify the details now, there will be confusion later.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если ты не уточнишь детали сейчас, потом возникнет путаница.","target_language":"en","word_bank":["will","be","there","the","now,","did","If","clarify","details","do","not","clarified","later.","you","yesterday","confusion"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b5c2826-af6f-59ba-8742-30033458ce1b', '92739679-5b1d-5040-a006-f0d109f03f37', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"should","instruction":"Выберите подходящее слово.","options":["should","must to","shoulds"],"sentence_template":"You ___ make sure you have the exact numbers before the call.","translation_hint":"Стоит убедиться, что у тебя точные цифры, перед звонком."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b7ac91c-d028-5a20-8902-d2ea85f1172e', '92739679-5b1d-5040-a006-f0d109f03f37', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","confirm","the","time","of","the","meeting","in","writing."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["the","went","time","writing.","should","meeting","the","in","confirm","You","of","mustn''t"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1fcf717b-a575-5ee5-8038-7399cde2b391', '92739679-5b1d-5040-a006-f0d109f03f37', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you repeat the request in your own words, you will avoid many misunderstandings.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c41799b8-8e0b-57de-a4df-cbf27ede4c5b', '92739679-5b1d-5040-a006-f0d109f03f37', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you repeat the request in your own words, you will avoid many misunderstandings.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если ты повторишь просьбу своими словами, ты избежишь многих недопониманий."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a4dbd96-a89a-54c4-95b5-9b7ec0f192b6', '92739679-5b1d-5040-a006-f0d109f03f37', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Manager","text":"The client was not happy yesterday. He misunderstood our offer.","translation":"Клиент был недоволен вчера. Он неправильно понял наше предложение.","type":"dialogue"},{"character":"Anna","text":"What should we do differently next time?","translation":"Что нам делать иначе в следующий раз?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should confirm every detail in writing to avoid confusion."},{"is_correct":false,"text":"We must to confirm details yesterday again."},{"is_correct":false,"text":"The confusion is avoiding us next time."}],"text":"What does the manager say?","type":"choice"}],"title":"Avoiding Confusion"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('26cb30f9-5b83-59a8-b309-4ce4ec51870f', '92739679-5b1d-5040-a006-f0d109f03f37', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to avoid” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To stop something bad from happening"},{"id":"D_B","is_correct":false,"text":"To create a new problem at work"},{"id":"D_C","is_correct":false,"text":"To answer a question very slowly"}],"word":"to avoid"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('750d545e-566b-502f-a9e5-939b11807a95', '92739679-5b1d-5040-a006-f0d109f03f37', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you double-check the details, you will avoid mistakes.","explanation":"The missing word is “double-check”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"double-check","id":"LW_A","is_correct":true},{"audio_text":"will double-check","id":"LW_B","is_correct":false},{"audio_text":"double-checked","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ the details, you will avoid mistakes."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ee21f8f2-e652-53c7-93c4-3bb056aafd83', '92739679-5b1d-5040-a006-f0d109f03f37', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"in","explanation":"The complete sentence is “You should confirm the order in writing.”.","hint_prefix":"in","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should confirm the order ___ writing."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f587f241-e0a3-5ca2-9f45-2429ffceab99', '92739679-5b1d-5040-a006-f0d109f03f37', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to make sure","id":"V1","text":"to make sure"},{"audio_text":"to misunderstand","id":"V2","text":"to misunderstand"},{"audio_text":"exact","id":"V3","text":"exact"},{"audio_text":"to confirm","id":"V4","text":"to confirm"},{"audio_text":"in writing","id":"V5","text":"in writing"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5806c928-bd3e-53a4-954a-ec1b3133eeb6', '92739679-5b1d-5040-a006-f0d109f03f37', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"The client changed the quantity again."}],"explanation":"“You should ask him to confirm the new number by email.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"You should ask him to confirm the new number by email."},{"id":"C_B","is_correct":false,"text":"You must to ask him yesterday."},{"id":"C_C","is_correct":false,"text":"The quantity is confirming the client."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8a768ecc-760a-5ed1-afed-b032056e9c28', '92739679-5b1d-5040-a006-f0d109f03f37', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('76c7e26f-e2d8-5964-bed5-0aa85921841c', 'en', 'to ask for', 'попросить (что-то)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d70beb98-38eb-5847-be0e-4301e553920f', 'en', 'to explain', 'объяснить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('53b7f1f8-f4fd-5c9a-8f20-2e9741ad12d4', 'en', 'to clarify', 'уточнить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('782ece6c-01d6-5f48-9142-360a91cab81b', 'en', 'detail', 'деталь / подробность', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('89923d48-ca83-5639-98a1-4c70437df0c3', 'en', 'request', 'просьба / запрос', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4ede1320-205c-5d43-916d-4dbbb592760a', 'en', 'by email', 'по электронной почте', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2e8fdf43-8345-58d9-b123-11f8dc1b3003', 'en', 'to double-check', 'перепроверить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2ab116e8-b76e-5904-906e-126075a38361', 'en', 'Could you...?', 'Не могли бы вы...?', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3a797c0-7fd1-5828-baa2-e71bb1b13fc6', 'en', 'as soon as possible', 'как можно скорее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c7228a5b-d434-5184-9662-dffa586b324c', 'en', 'to send a reminder', 'отправить напоминание', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1e18bf8e-cee9-58ff-92cd-a52142e7de44', 'en', 'urgent', 'срочный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d7bac6b-efc5-5994-a19a-98b6367b75f7', 'en', 'more convenient', 'удобнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('db9a6030-1017-5599-8bde-942573dbc4b1', 'en', 'to respond', 'ответить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0fe26307-8371-51f1-8414-74e74af495c2', 'en', 'attachment', 'вложение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1efba0af-af3e-5e2a-97a7-ba9b8f1ff5fd', 'en', 'to make sure', 'убедиться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41554601-092a-5e2d-8f89-e16c17dd6a9d', 'en', 'to misunderstand', 'неправильно понять', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('57d175ae-b563-5394-a89f-e5398bc873d9', 'en', 'exact', 'точный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('479ada9b-5e03-574e-8749-5ae36cbb4e81', 'en', 'to confirm', 'подтвердить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b4123f4d-1c57-598b-8d01-c01141690633', 'en', 'in writing', 'в письменном виде', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b110080a-0f99-5d14-8162-4f6376939179', 'en', 'to avoid', 'избежать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f99b4a49-e947-5c03-bbe9-38eb552c0867', 'en', 'confusion', 'путаница', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a768ecc-760a-5ed1-afed-b032056e9c28', id, '8016b5b0-3ab7-55e9-a0d0-aa0311bf1c09', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'to ask for' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a768ecc-760a-5ed1-afed-b032056e9c28', id, '8016b5b0-3ab7-55e9-a0d0-aa0311bf1c09', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to explain' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a768ecc-760a-5ed1-afed-b032056e9c28', id, '8016b5b0-3ab7-55e9-a0d0-aa0311bf1c09', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to clarify' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a768ecc-760a-5ed1-afed-b032056e9c28', id, '8016b5b0-3ab7-55e9-a0d0-aa0311bf1c09', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'detail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a768ecc-760a-5ed1-afed-b032056e9c28', id, '8016b5b0-3ab7-55e9-a0d0-aa0311bf1c09', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'request' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a768ecc-760a-5ed1-afed-b032056e9c28', id, '8016b5b0-3ab7-55e9-a0d0-aa0311bf1c09', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'by email' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a768ecc-760a-5ed1-afed-b032056e9c28', id, '8016b5b0-3ab7-55e9-a0d0-aa0311bf1c09', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'to double-check' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a768ecc-760a-5ed1-afed-b032056e9c28', id, '48bec22b-d49a-506b-8d57-3ed98274af5a', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'Could you...?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a768ecc-760a-5ed1-afed-b032056e9c28', id, '48bec22b-d49a-506b-8d57-3ed98274af5a', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'as soon as possible' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a768ecc-760a-5ed1-afed-b032056e9c28', id, '48bec22b-d49a-506b-8d57-3ed98274af5a', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to send a reminder' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a768ecc-760a-5ed1-afed-b032056e9c28', id, '48bec22b-d49a-506b-8d57-3ed98274af5a', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'urgent' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a768ecc-760a-5ed1-afed-b032056e9c28', id, '48bec22b-d49a-506b-8d57-3ed98274af5a', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'more convenient' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a768ecc-760a-5ed1-afed-b032056e9c28', id, '48bec22b-d49a-506b-8d57-3ed98274af5a', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to respond' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a768ecc-760a-5ed1-afed-b032056e9c28', id, '48bec22b-d49a-506b-8d57-3ed98274af5a', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'attachment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a768ecc-760a-5ed1-afed-b032056e9c28', id, '92739679-5b1d-5040-a006-f0d109f03f37', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to make sure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a768ecc-760a-5ed1-afed-b032056e9c28', id, '92739679-5b1d-5040-a006-f0d109f03f37', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to misunderstand' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a768ecc-760a-5ed1-afed-b032056e9c28', id, '92739679-5b1d-5040-a006-f0d109f03f37', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'exact' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a768ecc-760a-5ed1-afed-b032056e9c28', id, '92739679-5b1d-5040-a006-f0d109f03f37', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to confirm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a768ecc-760a-5ed1-afed-b032056e9c28', id, '92739679-5b1d-5040-a006-f0d109f03f37', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'in writing' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a768ecc-760a-5ed1-afed-b032056e9c28', id, '92739679-5b1d-5040-a006-f0d109f03f37', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to avoid' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8a768ecc-760a-5ed1-afed-b032056e9c28', id, '92739679-5b1d-5040-a006-f0d109f03f37', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'confusion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
