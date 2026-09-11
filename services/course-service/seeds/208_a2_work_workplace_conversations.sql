-- Track: A2_WORK_WORKPLACE_CONVERSATIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('0407c9d5-1662-5221-9849-f06bf546ac68', 'A2_WORK_WORKPLACE_CONVERSATIONS', 'Разговоры на работе', 'Развивайте практический английский уровня A2 для работы по теме «Разговоры на работе».', '{"en":"Workplace Conversations","ru":"Разговоры на работе"}'::jsonb, '{"en":"Develop practical A2 workplace English for workplace conversations.","ru":"Развивайте практический английский уровня A2 для работы по теме «Разговоры на работе»."}'::jsonb, 'en', 'A2', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('65ab8fd9-9517-53b3-9779-89a3eaae9ced', NULL, 'Разговоры у кулера', 'Обменяться новостями с коллегами, используя past simple и present perfect.', '{"en":"Conversations by the Coffee Machine","ru":"Разговоры у кулера"}'::jsonb, '{"en":"Exchange news with colleagues using past simple and present perfect.","ru":"Обменяться новостями с коллегами, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d015891-3bed-518a-8538-bc91152949da', '65ab8fd9-9517-53b3-9779-89a3eaae9ced', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"small talk","right":"светская беседа"},{"id":"P2","left":"news","right":"новости"},{"id":"P3","left":"to hear about","right":"услышать о"},{"id":"P4","left":"to move offices","right":"переехать в другой офис"},{"id":"P5","left":"to congratulate","right":"поздравить"},{"id":"P6","left":"team","right":"команда"},{"id":"P7","left":"lately","right":"в последнее время"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4f5b9fe9-9a27-533d-90b3-1ede00e0c9dc', '65ab8fd9-9517-53b3-9779-89a3eaae9ced', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Have you heard about the new project lately?”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Have you heard about the new project lately?"},{"id":"Q_B","is_correct":false,"text":"Did you have heard about it yesterday?"},{"id":"Q_C","is_correct":false,"text":"Have you hearing about it last week?"}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f0d79593-0dd4-5196-912d-c79a90f73b0f', '65ab8fd9-9517-53b3-9779-89a3eaae9ced', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I heard that the marketing team moved to the third floor last week.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я слышал, что отдел маркетинга переехал на третий этаж на прошлой неделе.","target_language":"en","word_bank":["I","last","hears","that","third","tomorrow","to","heard","floor","moved","did","the","team","the","marketing","week."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c10f9009-b8b6-5762-8bc6-e18db8b31056', '65ab8fd9-9517-53b3-9779-89a3eaae9ced', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"congratulated","instruction":"Выберите подходящее слово.","options":["congratulated","has congratulate","congratulating"],"sentence_template":"She ___ her colleague on the promotion this morning.","translation_hint":"Она поздравила коллегу с повышением сегодня утром."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('720f6be3-19c8-5886-aa3e-0e740a01c8a4', '65ab8fd9-9517-53b3-9779-89a3eaae9ced', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Our","team","has","grown","a","lot","lately."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["Our","a","lot","did","was","has","team","grown","lately."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('401e781d-fcf8-598f-bd98-f75572f6e5e0', '65ab8fd9-9517-53b3-9779-89a3eaae9ced', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Have you spoken to Daniel lately? He has moved to the Berlin office.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6a5783ec-628c-5f00-85aa-e61e64430cf0', '65ab8fd9-9517-53b3-9779-89a3eaae9ced', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Have you spoken to Daniel lately? He has moved to the Berlin office.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Ты в последнее время разговаривал с Даниэлем? Он переехал в берлинский офис."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8fded728-9f16-54c7-87cc-1c3396882b28', '65ab8fd9-9517-53b3-9779-89a3eaae9ced', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Ben","text":"Have you heard the news? Anna has joined our project team!","translation":"Слышал новость? Аня вошла в нашу проектную команду!","type":"dialogue"},{"character":"Maya","text":"That''s great! When did she start?","translation":"Здорово! Когда она начала?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Last Monday, and she has already shared some good ideas."},{"is_correct":false,"text":"Tomorrow, and she shared ideas yesterday."},{"is_correct":false,"text":"The project team has start her."}],"text":"What does Ben answer?","type":"choice"}],"title":"Good News"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('57f480a5-e2ac-5ad7-b472-4a0fa41bca69', '65ab8fd9-9517-53b3-9779-89a3eaae9ced', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to congratulate” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To tell someone you are happy about their success"},{"id":"D_B","is_correct":false,"text":"To tell someone about a problem"},{"id":"D_C","is_correct":false,"text":"To ask someone to leave the room"}],"word":"to congratulate"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef38347e-bf0e-53de-abd2-2888356edb8b', '65ab8fd9-9517-53b3-9779-89a3eaae9ced', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Have you heard about the reorganisation?","explanation":"The missing word is “heard”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"heard","id":"LW_A","is_correct":true},{"audio_text":"hear","id":"LW_B","is_correct":false},{"audio_text":"hearing","id":"LW_C","is_correct":false}],"sentence_template":"Have you ___ about the reorganisation?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b2b83d9-163e-5ddb-991d-70d6eedc753e', '65ab8fd9-9517-53b3-9779-89a3eaae9ced', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"since","explanation":"The complete sentence is “We have moved to the new office since March.”.","hint_prefix":"si","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We have moved to the new office ___ March."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cad489f2-f8fe-5116-810b-0ddc8868ca67', '65ab8fd9-9517-53b3-9779-89a3eaae9ced', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"small talk","id":"V1","text":"small talk"},{"audio_text":"news","id":"V2","text":"news"},{"audio_text":"to hear about","id":"V3","text":"to hear about"},{"audio_text":"to move offices","id":"V4","text":"to move offices"},{"audio_text":"to congratulate","id":"V5","text":"to congratulate"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('559984d7-61c3-58ec-9534-ad4b7256769d', '65ab8fd9-9517-53b3-9779-89a3eaae9ced', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Did you hear about the new office?"}],"explanation":"“Yes, I heard about it last week. Have you seen the plans yet?” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes, I heard about it last week. Have you seen the plans yet?"},{"id":"C_B","is_correct":false,"text":"Yes, I have hear it yesterday."},{"id":"C_C","is_correct":false,"text":"The office is hearing us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0407c9d5-1662-5221-9849-f06bf546ac68', '65ab8fd9-9517-53b3-9779-89a3eaae9ced', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0b37fabb-4052-5330-83b2-16818c4e4050', NULL, 'Договариваемся о встрече', 'Договориться о встрече, используя формы будущего и сравнения.', '{"en":"Arranging to Meet","ru":"Договариваемся о встрече"}'::jsonb, '{"en":"Arrange a meeting using future forms and comparatives.","ru":"Договориться о встрече, используя формы будущего и сравнения."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd51ad38-5648-5d0f-a116-3504a8df180d', '0b37fabb-4052-5330-83b2-16818c4e4050', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to arrange","right":"договориться (о встрече)"},{"id":"P2","left":"to suit","right":"подходить (о времени)"},{"id":"P3","left":"instead","right":"вместо этого"},{"id":"P4","left":"to postpone","right":"перенести"},{"id":"P5","left":"video call","right":"видеозвонок"},{"id":"P6","left":"in person","right":"лично"},{"id":"P7","left":"easier","right":"проще"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('01dc99ab-82bc-5a4d-b2ab-e5049b68c564', '0b37fabb-4052-5330-83b2-16818c4e4050', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “We are meeting the client at three o''clock tomorrow.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"We are meeting the client at three o''clock tomorrow."},{"id":"Q_B","is_correct":false,"text":"We meet the client at three yesterday."},{"id":"Q_C","is_correct":false,"text":"We has met the client at three tomorrow."}],"question":"Which sentence uses the present continuous for a future arrangement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1a5a9379-d5ec-5ce0-8688-0db6f9a6319d', '0b37fabb-4052-5330-83b2-16818c4e4050', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We are discussing the budget at ten tomorrow — in person is easier than a video call.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Завтра в десять мы обсуждаем бюджет — лично это проще, чем по видеосвязи.","target_language":"en","word_bank":["in","discuss","yesterday","is","did","than","the","a","at","easier","We","tomorrow","ten","discussing","budget","—","person","are","video","call."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('52970136-1b3d-5c68-aae1-59d07687b631', '0b37fabb-4052-5330-83b2-16818c4e4050', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"quicker","instruction":"Выберите подходящее слово.","options":["quicker","quickest","more quick"],"sentence_template":"A short video call is ___ than a long email thread.","translation_hint":"Короткий видеозвонок быстрее длинной переписки."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('54396056-ea81-51b6-a2a2-3a41b0a9acfa', '0b37fabb-4052-5330-83b2-16818c4e4050', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","am","meeting","the","suppliers","on","Thursday","morning."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["did","suppliers","meeting","morning.","Thursday","I","was","the","on","am"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('773cfe4b-8516-521f-a550-604e4e2974a2', '0b37fabb-4052-5330-83b2-16818c4e4050', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I am going to postpone our call because the client is visiting us at the same time.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9a4a8c7-caef-5457-8415-1c6a966c308d', '0b37fabb-4052-5330-83b2-16818c4e4050', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I am going to postpone our call because the client is visiting us at the same time.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Я перенесу наш звонок, потому что клиент приедет к нам в то же время."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2877c477-bdc8-5379-bdfb-86ce07b5c546', '0b37fabb-4052-5330-83b2-16818c4e4050', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"I''m afraid I can''t meet on Thursday. Could we meet on Friday instead?","translation":"Боюсь, не смогу в четверг. Можем встретиться в пятницу?","type":"dialogue"},{"character":"Tom","text":"Friday morning is busy, but the afternoon is free.","translation":"Утро пятницы занято, но вторая половина свободна.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Then we are meeting at two o''clock on Friday."},{"is_correct":false,"text":"Then we met at two yesterday."},{"is_correct":false,"text":"Friday is meeting us instead."}],"text":"What does Anna suggest?","type":"choice"}],"title":"Rescheduling"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('adad5b6e-28c1-5f1c-acf8-ac14fc8bcade', '0b37fabb-4052-5330-83b2-16818c4e4050', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to postpone” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To move an event to a later time"},{"id":"D_B","is_correct":false,"text":"To cancel an event completely"},{"id":"D_C","is_correct":false,"text":"To start a meeting earlier than planned"}],"word":"to postpone"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('73efe824-de25-58fd-bd1c-64b40532a43b', '0b37fabb-4052-5330-83b2-16818c4e4050', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We are meeting the client at three.","explanation":"The missing word is “meeting”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"meeting","id":"LW_A","is_correct":true},{"audio_text":"meet","id":"LW_B","is_correct":false},{"audio_text":"met","id":"LW_C","is_correct":false}],"sentence_template":"We are ___ the client at three."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a8b9236-6799-5ada-ad65-18ab80167756', '0b37fabb-4052-5330-83b2-16818c4e4050', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"cheaper","explanation":"The complete sentence is “A video call is cheaper than travelling.”.","hint_prefix":"ch","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A video call is ___ than travelling."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6410ff03-5dbb-5a4b-98a7-eb3328f226d0', '0b37fabb-4052-5330-83b2-16818c4e4050', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to arrange","id":"V1","text":"to arrange"},{"audio_text":"to suit","id":"V2","text":"to suit"},{"audio_text":"instead","id":"V3","text":"instead"},{"audio_text":"to postpone","id":"V4","text":"to postpone"},{"audio_text":"video call","id":"V5","text":"video call"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f0a4519f-0e2b-5dab-9760-2b8507c08012', '0b37fabb-4052-5330-83b2-16818c4e4050', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Does Monday at ten suit you?"}],"explanation":"“Monday suits me fine — I am seeing the dentist in the afternoon.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Monday suits me fine — I am seeing the dentist in the afternoon."},{"id":"C_B","is_correct":false,"text":"Yes, I suited it yesterday."},{"id":"C_C","is_correct":false,"text":"Monday is suiting the dentist."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0407c9d5-1662-5221-9849-f06bf546ac68', '0b37fabb-4052-5330-83b2-16818c4e4050', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('356c5f34-76ac-5946-a93b-091658a0821d', NULL, 'Если возникнет недопонимание', 'Обсудить недопонимания, используя should и первое условное.', '{"en":"If There Is a Misunderstanding","ru":"Если возникнет недопонимание"}'::jsonb, '{"en":"Discuss misunderstandings using should and the first conditional.","ru":"Обсудить недопонимания, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('299d15cb-40ff-55a2-bb6d-0fa58483c98c', '356c5f34-76ac-5946-a93b-091658a0821d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"misunderstanding","right":"недопонимание"},{"id":"P2","left":"to apologise","right":"извиниться"},{"id":"P3","left":"to listen carefully","right":"внимательно слушать"},{"id":"P4","left":"to interrupt","right":"перебивать"},{"id":"P5","left":"tone","right":"тон"},{"id":"P6","left":"directly","right":"прямо"},{"id":"P7","left":"to sort out","right":"уладить"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f88ddd93-7162-562d-a8de-8dc594e9a303', '356c5f34-76ac-5946-a93b-091658a0821d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should listen carefully before you answer.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should listen carefully before you answer."},{"id":"Q_B","is_correct":false,"text":"You should to listen carefully yesterday."},{"id":"Q_C","is_correct":false,"text":"You must listening carefully last week."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('083a3a98-e4ac-5043-b476-9b49233fbe60', '356c5f34-76ac-5946-a93b-091658a0821d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If there is a misunderstanding, you should discuss it directly and calmly.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если возникнет недопонимание, лучше обсудить его напрямую и спокойно.","target_language":"en","word_bank":["directly","yesterday","did","is","and","misunderstanding,","it","discuss","should","If","there","calmly.","you","was","a"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a9800c14-fcce-5b4e-9c18-35e3bec3f34a', '356c5f34-76ac-5946-a93b-091658a0821d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"interrupt","instruction":"Выберите подходящее слово.","options":["interrupt","will interrupt","interrupted"],"sentence_template":"If you ___ people all the time, they will stop listening to you.","translation_hint":"Если ты всё время перебиваешь, тебя перестанут слушать."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a5c0d762-87a2-5c8e-a62f-e1a70a818eb8', '356c5f34-76ac-5946-a93b-091658a0821d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","apologise","if","the","tone","of","your","email","sounded","rude."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["mustn''t","of","the","went","email","You","your","apologise","if","tone","should","rude.","sounded"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5b4c33fc-c6c6-513c-8847-8e1d2c8cc480', '356c5f34-76ac-5946-a93b-091658a0821d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you explain the problem calmly, you will sort it out quickly and keep a good relationship.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e97c5d2-aff1-521b-b7ff-747c7d8ab2c2', '356c5f34-76ac-5946-a93b-091658a0821d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you explain the problem calmly, you will sort it out quickly and keep a good relationship.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если ты спокойно объяснишь проблему, то быстро уладишь её и сохранишь хорошие отношения."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d45222e-b75d-5092-8f30-b87379a7c068', '356c5f34-76ac-5946-a93b-091658a0821d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Manager","text":"I heard raised voices in the meeting room. What happened?","translation":"Я слышал повышенные голоса в переговорке. Что случилось?","type":"dialogue"},{"character":"Tom","text":"We had a misunderstanding about the budget numbers.","translation":"У нас было недопонимание по цифрам бюджета.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I should apologise and explain the numbers calmly."},{"is_correct":false,"text":"I must to apologise yesterday afternoon."},{"is_correct":false,"text":"The numbers are apologising for me."}],"text":"What should Tom do next?","type":"choice"}],"title":"After the Argument"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('887f2367-47e0-5a3d-9d46-7da739030509', '356c5f34-76ac-5946-a93b-091658a0821d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to interrupt” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To start speaking while someone else is speaking"},{"id":"D_B","is_correct":false,"text":"To wait quietly until someone finishes"},{"id":"D_C","is_correct":false,"text":"To write down what someone says"}],"word":"to interrupt"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0249ae0c-cd17-5237-871b-51b8962d7242', '356c5f34-76ac-5946-a93b-091658a0821d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you listen to both sides, you will understand the problem.","explanation":"The missing word is “listen”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"listen","id":"LW_A","is_correct":true},{"audio_text":"will listen","id":"LW_B","is_correct":false},{"audio_text":"listened","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ to both sides, you will understand the problem."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('95acaac5-e248-542c-91c1-6f4a0fd91b2d', '356c5f34-76ac-5946-a93b-091658a0821d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"as","explanation":"The complete sentence is “You should sort out the problem as soon as possible.”.","hint_prefix":"as","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should sort out the problem ___ soon as possible."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9be7a92-e79e-5958-8037-a3876449b290', '356c5f34-76ac-5946-a93b-091658a0821d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"misunderstanding","id":"V1","text":"misunderstanding"},{"audio_text":"to apologise","id":"V2","text":"to apologise"},{"audio_text":"to listen carefully","id":"V3","text":"to listen carefully"},{"audio_text":"to interrupt","id":"V4","text":"to interrupt"},{"audio_text":"tone","id":"V5","text":"tone"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ab4d8ec6-cdd9-553c-955e-380da3b36909', '356c5f34-76ac-5946-a93b-091658a0821d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"I think Maya misunderstood my email."}],"explanation":"“You should speak to her directly — if you wait, it will get worse.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"You should speak to her directly — if you wait, it will get worse."},{"id":"C_B","is_correct":false,"text":"You must to speak yesterday."},{"id":"C_C","is_correct":false,"text":"The email is misunderstanding her."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0407c9d5-1662-5221-9849-f06bf546ac68', '356c5f34-76ac-5946-a93b-091658a0821d', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6aac0434-3d28-5eab-893b-44204237ecef', 'en', 'small talk', 'светская беседа', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0ab6bc04-0dd2-51ad-b37a-57562cd58731', 'en', 'news', 'новости', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('38fc7c19-24fa-5866-993a-a316ba0753e7', 'en', 'to hear about', 'услышать о', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1cd09cb1-66e2-5182-a6b7-e20753ed990b', 'en', 'to move offices', 'переехать в другой офис', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1475b3d3-812a-5668-b514-38a9f439e221', 'en', 'to congratulate', 'поздравить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8aa16c3f-9953-5483-9522-c6cb31db9d7f', 'en', 'team', 'команда', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('40874f5a-ee5f-580e-8cb5-082da06c6a23', 'en', 'lately', 'в последнее время', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a97a3bec-8199-5231-9799-802e7e2c3511', 'en', 'to arrange', 'договориться (о встрече)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7bb1b89e-fbcf-5b04-9e8c-93f083e9087c', 'en', 'to suit', 'подходить (о времени)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8cf98276-de25-579b-82cf-1940736d09a8', 'en', 'instead', 'вместо этого', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a8386ab1-7e94-551a-9612-6950f85f1d95', 'en', 'to postpone', 'перенести', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('65f45728-8c9f-5520-be67-49d1774eb595', 'en', 'video call', 'видеозвонок', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('83dea719-7397-540f-9595-3d49d2533303', 'en', 'in person', 'лично', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ee7817fc-9431-5770-83c2-0ddb81d67bea', 'en', 'easier', 'проще', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6117e854-1ec4-5b68-a1d8-85e54ca63b70', 'en', 'misunderstanding', 'недопонимание', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf7f596f-bcb7-5cb6-9711-bacf705f7044', 'en', 'to apologise', 'извиниться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('16e95a9a-9b99-55e5-9ea7-d5a86cf2801f', 'en', 'to listen carefully', 'внимательно слушать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d44c848b-bb75-5377-a64e-04207b525667', 'en', 'to interrupt', 'перебивать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('041bb7b0-8bab-52e3-933f-9d8790b555df', 'en', 'tone', 'тон', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('834daa2b-8991-5b5b-a63c-a47494c5bdbd', 'en', 'directly', 'прямо', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('360bd2fb-5fc8-5ba3-983c-603d7bb1d034', 'en', 'to sort out', 'уладить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0407c9d5-1662-5221-9849-f06bf546ac68', id, '65ab8fd9-9517-53b3-9779-89a3eaae9ced', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'small talk' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0407c9d5-1662-5221-9849-f06bf546ac68', id, '65ab8fd9-9517-53b3-9779-89a3eaae9ced', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'news' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0407c9d5-1662-5221-9849-f06bf546ac68', id, '65ab8fd9-9517-53b3-9779-89a3eaae9ced', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to hear about' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0407c9d5-1662-5221-9849-f06bf546ac68', id, '65ab8fd9-9517-53b3-9779-89a3eaae9ced', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'to move offices' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0407c9d5-1662-5221-9849-f06bf546ac68', id, '65ab8fd9-9517-53b3-9779-89a3eaae9ced', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to congratulate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0407c9d5-1662-5221-9849-f06bf546ac68', id, '65ab8fd9-9517-53b3-9779-89a3eaae9ced', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'team' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0407c9d5-1662-5221-9849-f06bf546ac68', id, '65ab8fd9-9517-53b3-9779-89a3eaae9ced', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'lately' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0407c9d5-1662-5221-9849-f06bf546ac68', id, '0b37fabb-4052-5330-83b2-16818c4e4050', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to arrange' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0407c9d5-1662-5221-9849-f06bf546ac68', id, '0b37fabb-4052-5330-83b2-16818c4e4050', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to suit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0407c9d5-1662-5221-9849-f06bf546ac68', id, '0b37fabb-4052-5330-83b2-16818c4e4050', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'instead' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0407c9d5-1662-5221-9849-f06bf546ac68', id, '0b37fabb-4052-5330-83b2-16818c4e4050', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to postpone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0407c9d5-1662-5221-9849-f06bf546ac68', id, '0b37fabb-4052-5330-83b2-16818c4e4050', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'video call' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0407c9d5-1662-5221-9849-f06bf546ac68', id, '0b37fabb-4052-5330-83b2-16818c4e4050', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'in person' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0407c9d5-1662-5221-9849-f06bf546ac68', id, '0b37fabb-4052-5330-83b2-16818c4e4050', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'easier' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0407c9d5-1662-5221-9849-f06bf546ac68', id, '356c5f34-76ac-5946-a93b-091658a0821d', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'misunderstanding' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0407c9d5-1662-5221-9849-f06bf546ac68', id, '356c5f34-76ac-5946-a93b-091658a0821d', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to apologise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0407c9d5-1662-5221-9849-f06bf546ac68', id, '356c5f34-76ac-5946-a93b-091658a0821d', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to listen carefully' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0407c9d5-1662-5221-9849-f06bf546ac68', id, '356c5f34-76ac-5946-a93b-091658a0821d', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to interrupt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0407c9d5-1662-5221-9849-f06bf546ac68', id, '356c5f34-76ac-5946-a93b-091658a0821d', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'tone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0407c9d5-1662-5221-9849-f06bf546ac68', id, '356c5f34-76ac-5946-a93b-091658a0821d', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'directly' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0407c9d5-1662-5221-9849-f06bf546ac68', id, '356c5f34-76ac-5946-a93b-091658a0821d', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to sort out' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
