-- Track: B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('85728e82-fd2a-5f22-9139-d4bc4321f5e1', 'B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL', 'Планирование, сроки и деловые поездки', 'Развивайте деловой английский уровня B1 по теме «Планирование, сроки и деловые поездки».', '{"en":"Planning, Deadlines and Business Travel","ru":"Планирование, сроки и деловые поездки"}'::jsonb, '{"en":"Develop B1 business English for planning, deadlines and business travel.","ru":"Развивайте деловой английский уровня B1 по теме «Планирование, сроки и деловые поездки»."}'::jsonb, 'en', 'B1', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('19de5f45-f29f-552c-996a-02e88d891b4a', NULL, 'Деловой контекст', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Project Scheduling","ru":"Деловой контекст"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c269fc7-584f-5951-840f-d23621d8348c', '19de5f45-f29f-552c-996a-02e88d891b4a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L1_B01","left":"schedule","right":"график"},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L1_B02","left":"business trip","right":"деловая поездка"},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L1_B03","left":"reschedule","right":"перенести"},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L1_B04","left":"availability","right":"доступность"},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L1_B05","left":"deadline","right":"срок"},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L1_B06","left":"contingency plan","right":"резервный план"},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L1_B07","left":"confirm arrangements","right":"подтвердить договорённости"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dfd892f5-d7f5-516b-ba4c-128fdcc60fdc', '19de5f45-f29f-552c-996a-02e88d891b4a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L1_B08","is_correct":true,"text":"The project schedule is demanding, but we can meet the deadline if no major changes are requested."},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L1_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L1_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6e697451-ad5d-5fc8-b84a-28144a086d2d', '19de5f45-f29f-552c-996a-02e88d891b4a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The project schedule is demanding, but we can meet the deadline if no major changes are requested.","instruction":"Соберите перевод.","source_language":"ru","source_text":"График проекта напряжённый, но мы можем уложиться в срок, если не будет запрошено серьёзных изменений.","target_language":"en","word_bank":["The","project","schedule","is","demanding,","but","we","can","meet","the","deadline","if","no","major","changes","are","requested."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b1c25843-9360-5cc4-b419-fe8dec9cdf16', '19de5f45-f29f-552c-996a-02e88d891b4a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"schedule","instruction":"Выберите подходящее слово.","options":["schedule","availability","contingency plan"],"sentence_template":"The project ___ is demanding, but we can meet the deadline if no major changes are requested."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5b0672e-5e8c-58c5-a428-3636699af2fa', '19de5f45-f29f-552c-996a-02e88d891b4a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","project","schedule","is","demanding,","but","we","can","meet","the","deadline","if","no","major","changes","are","requested."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["requested.","are","changes","major","no","if","deadline","the","meet","can","we","but","demanding,","is","schedule","project","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('db0b5caf-fe17-577b-9365-7a04f3f6660b', '19de5f45-f29f-552c-996a-02e88d891b4a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The project schedule is demanding, but we can meet the deadline if no major changes are requested. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('472fc55f-734c-5bb0-a62b-b3da7cb4a951', '19de5f45-f29f-552c-996a-02e88d891b4a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The project schedule is demanding, but we can meet the deadline if no major changes are requested. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"График проекта напряжённый, но мы можем уложиться в срок, если не будет запрошено серьёзных изменений. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c69e6a0e-d3c9-51b0-8c2c-68a4ca630577', '19de5f45-f29f-552c-996a-02e88d891b4a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"The project schedule is demanding, but we can meet the deadline if no major changes are requested.","translation":"График проекта напряжённый, но мы можем уложиться в срок, если не будет запрошено серьёзных изменений.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Project Scheduling"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b4f9a17-214c-5805-b096-2f66975718cb', '19de5f45-f29f-552c-996a-02e88d891b4a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“schedule” means a plan showing times and activities.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L1_B11","is_correct":true,"text":"a plan showing times and activities"},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L1_B12","is_correct":false,"text":"travel for professional purposes"},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L1_B13","is_correct":false,"text":"arrange for a different time"}],"word":"schedule"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('775b9941-0bed-5cac-811b-58791149b581', '19de5f45-f29f-552c-996a-02e88d891b4a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The project schedule is demanding, but we can meet the deadline if no major changes are requested.","explanation":"The missing business expression is “schedule”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"schedule","id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L1_B14","is_correct":true},{"audio_text":"reschedule","id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L1_B15","is_correct":false},{"audio_text":"deadline","id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L1_B16","is_correct":false}],"sentence_template":"The project ___ is demanding, but we can meet the deadline if no major changes are requested."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c8db81eb-7c28-569f-b79f-57327b15b512', '19de5f45-f29f-552c-996a-02e88d891b4a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"schedule","explanation":"The sentence requires “schedule” to express the intended business meaning.","hint_prefix":"sch","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The project ___ is demanding, but we can meet the deadline if no major changes are requested."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e45d31a2-838c-53fb-b84e-df8798db9ba9', '19de5f45-f29f-552c-996a-02e88d891b4a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"schedule","id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L1_B17","text":"schedule"},{"audio_text":"business trip","id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L1_B18","text":"business trip"},{"audio_text":"reschedule","id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L1_B19","text":"reschedule"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4e3cdfb3-68ee-5c6a-9220-c76b407d2742', '19de5f45-f29f-552c-996a-02e88d891b4a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Project Scheduling”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L1_B20","is_correct":true,"text":"The project schedule is demanding, but we can meet the deadline if no major changes are requested."},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L1_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L1_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('85728e82-fd2a-5f22-9139-d4bc4321f5e1', '19de5f45-f29f-552c-996a-02e88d891b4a', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ae4bd00e-4f6a-5396-8d1c-86988500dc0a', NULL, 'Обсуждение и уточнение', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Managing Deadlines","ru":"Обсуждение и уточнение"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fcf5ca39-39a1-535f-a94b-2bacf9703c05', 'ae4bd00e-4f6a-5396-8d1c-86988500dc0a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L2_B01","left":"schedule","right":"график"},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L2_B02","left":"business trip","right":"деловая поездка"},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L2_B03","left":"reschedule","right":"перенести"},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L2_B04","left":"availability","right":"доступность"},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L2_B05","left":"deadline","right":"срок"},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L2_B06","left":"contingency plan","right":"резервный план"},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L2_B07","left":"confirm arrangements","right":"подтвердить договорённости"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0d107e75-b34c-5aa7-8cef-4421b0befa81', 'ae4bd00e-4f6a-5396-8d1c-86988500dc0a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L2_B08","is_correct":true,"text":"We rescheduled the business trip after checking the client’s availability and the flight options."},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L2_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L2_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2499d866-b763-51da-88a8-6ff9c862a37b', 'ae4bd00e-4f6a-5396-8d1c-86988500dc0a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We rescheduled the business trip after checking the client’s availability and the flight options.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мы перенесли деловую поездку после проверки доступности клиента и вариантов рейсов.","target_language":"en","word_bank":["We","rescheduled","the","business","trip","after","checking","the","client’s","availability","and","the","flight","options."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c381503a-34b0-5f4d-8438-d7edeb21745d', 'ae4bd00e-4f6a-5396-8d1c-86988500dc0a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"business trip","instruction":"Выберите подходящее слово.","options":["business trip","deadline","confirm arrangements"],"sentence_template":"We rescheduled the ___ after checking the client’s availability and the flight options."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('efeaed8c-e9f0-56e9-8155-fbbe8fbcea77', 'ae4bd00e-4f6a-5396-8d1c-86988500dc0a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","rescheduled","the","business","trip","after","checking","the","client’s","availability","and","the","flight","options."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["options.","flight","the","and","availability","client’s","the","checking","after","trip","business","the","rescheduled","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f081e7aa-f380-5f76-a12d-f11b19f20233', 'ae4bd00e-4f6a-5396-8d1c-86988500dc0a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We rescheduled the business trip after checking the client’s availability and the flight options. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('874f4d3b-7e25-5207-89f5-cb86de63fd2c', 'ae4bd00e-4f6a-5396-8d1c-86988500dc0a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We rescheduled the business trip after checking the client’s availability and the flight options. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Мы перенесли деловую поездку после проверки доступности клиента и вариантов рейсов. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9bc97dda-b1ac-5c69-860e-5162ab7f4b88', 'ae4bd00e-4f6a-5396-8d1c-86988500dc0a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"We rescheduled the business trip after checking the client’s availability and the flight options.","translation":"Мы перенесли деловую поездку после проверки доступности клиента и вариантов рейсов.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Managing Deadlines"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b938bd95-f015-5692-b51f-66bcbc02f0ea', 'ae4bd00e-4f6a-5396-8d1c-86988500dc0a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“business trip” means travel for professional purposes.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L2_B11","is_correct":true,"text":"travel for professional purposes"},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L2_B12","is_correct":false,"text":"arrange for a different time"},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L2_B13","is_correct":false,"text":"times when someone is free"}],"word":"business trip"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('97664ff6-13cf-5caf-986b-f9992d08d5a5', 'ae4bd00e-4f6a-5396-8d1c-86988500dc0a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We rescheduled the business trip after checking the client’s availability and the flight options.","explanation":"The missing business expression is “business trip”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"business trip","id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L2_B14","is_correct":true},{"audio_text":"availability","id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L2_B15","is_correct":false},{"audio_text":"contingency plan","id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L2_B16","is_correct":false}],"sentence_template":"We rescheduled the ___ after checking the client’s availability and the flight options."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('06b39d16-0001-5e78-8cd1-cb1cf6fa8d68', 'ae4bd00e-4f6a-5396-8d1c-86988500dc0a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"business trip","explanation":"The sentence requires “business trip” to express the intended business meaning.","hint_prefix":"bus","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We rescheduled the ___ after checking the client’s availability and the flight options."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71d89287-f823-51c2-a1ab-c7417f7c0b98', 'ae4bd00e-4f6a-5396-8d1c-86988500dc0a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"schedule","id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L2_B17","text":"schedule"},{"audio_text":"business trip","id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L2_B18","text":"business trip"},{"audio_text":"reschedule","id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L2_B19","text":"reschedule"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f072c0d6-abfd-5491-8651-66f0e673a275', 'ae4bd00e-4f6a-5396-8d1c-86988500dc0a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Managing Deadlines”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L2_B20","is_correct":true,"text":"We rescheduled the business trip after checking the client’s availability and the flight options."},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L2_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L2_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('85728e82-fd2a-5f22-9139-d4bc4321f5e1', 'ae4bd00e-4f6a-5396-8d1c-86988500dc0a', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('36c941fe-25ea-5533-8cf6-ec34e500d1b6', NULL, 'Решение и дальнейшие действия', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Business Travel Arrangements","ru":"Решение и дальнейшие действия"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('10e68585-09e0-56be-afcf-c2dc81520001', '36c941fe-25ea-5533-8cf6-ec34e500d1b6', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L3_B01","left":"schedule","right":"график"},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L3_B02","left":"business trip","right":"деловая поездка"},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L3_B03","left":"reschedule","right":"перенести"},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L3_B04","left":"availability","right":"доступность"},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L3_B05","left":"deadline","right":"срок"},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L3_B06","left":"contingency plan","right":"резервный план"},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L3_B07","left":"confirm arrangements","right":"подтвердить договорённости"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b611de7e-b0c2-5680-9130-f23328e9a052', '36c941fe-25ea-5533-8cf6-ec34e500d1b6', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L3_B08","is_correct":true,"text":"Before confirming the arrangements, we prepared a contingency plan in case the conference was delayed."},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L3_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L3_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b4e809d7-c00e-5e21-a804-4dcff1945aa1', '36c941fe-25ea-5533-8cf6-ec34e500d1b6', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Before confirming the arrangements, we prepared a contingency plan in case the conference was delayed.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Перед подтверждением договорённостей мы подготовили резервный план на случай задержки конференции.","target_language":"en","word_bank":["Before","confirming","the","arrangements,","we","prepared","a","contingency","plan","in","case","the","conference","was","delayed."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5c500e4b-4d8d-5d7f-976e-42b8452646ea', '36c941fe-25ea-5533-8cf6-ec34e500d1b6', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"reschedule","instruction":"Выберите подходящее слово.","options":["reschedule","contingency plan","schedule"],"sentence_template":"Before confirming the arrangements, we prepared a contingency plan in case the conference was delayed."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e2a7a50-baee-5897-8d4f-7df7fadbc21e', '36c941fe-25ea-5533-8cf6-ec34e500d1b6', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Before","confirming","the","arrangements,","we","prepared","a","contingency","plan","in","case","the","conference","was","delayed."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["delayed.","was","conference","the","case","in","plan","contingency","a","prepared","we","arrangements,","the","confirming","Before"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('286294c7-6676-5e57-a2ab-7a334c2a1ce3', '36c941fe-25ea-5533-8cf6-ec34e500d1b6', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Before confirming the arrangements, we prepared a contingency plan in case the conference was delayed. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9388ba06-8e61-5cc4-915c-556918216926', '36c941fe-25ea-5533-8cf6-ec34e500d1b6', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Before confirming the arrangements, we prepared a contingency plan in case the conference was delayed. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Перед подтверждением договорённостей мы подготовили резервный план на случай задержки конференции. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4ad51a22-6d87-5f0a-bebf-7bd834a528fc', '36c941fe-25ea-5533-8cf6-ec34e500d1b6', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"Before confirming the arrangements, we prepared a contingency plan in case the conference was delayed.","translation":"Перед подтверждением договорённостей мы подготовили резервный план на случай задержки конференции.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Business Travel Arrangements"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('10b2c88c-d4a6-5fa0-815b-f224176de791', '36c941fe-25ea-5533-8cf6-ec34e500d1b6', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“reschedule” means arrange for a different time.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L3_B11","is_correct":true,"text":"arrange for a different time"},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L3_B12","is_correct":false,"text":"times when someone is free"},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L3_B13","is_correct":false,"text":"the final completion time"}],"word":"reschedule"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f635eabf-0cb5-5f94-8317-6887ef3506ba', '36c941fe-25ea-5533-8cf6-ec34e500d1b6', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Before confirming the arrangements, we prepared a contingency plan in case the conference was delayed.","explanation":"The missing business expression is “reschedule”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"reschedule","id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L3_B14","is_correct":true},{"audio_text":"deadline","id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L3_B15","is_correct":false},{"audio_text":"confirm arrangements","id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L3_B16","is_correct":false}],"sentence_template":"Before confirming the arrangements, we prepared a contingency plan in case the conference was delayed."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('26760fff-8019-5fb0-975c-6ac1b1d9d030', '36c941fe-25ea-5533-8cf6-ec34e500d1b6', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"reschedule","explanation":"The sentence requires “reschedule” to express the intended business meaning.","hint_prefix":"res","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Before confirming the arrangements, we prepared a contingency plan in case the conference was delayed."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8aa3f998-6646-52e3-9ec0-ae17bdcca1f3', '36c941fe-25ea-5533-8cf6-ec34e500d1b6', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"schedule","id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L3_B17","text":"schedule"},{"audio_text":"business trip","id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L3_B18","text":"business trip"},{"audio_text":"reschedule","id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L3_B19","text":"reschedule"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2fb342cc-311c-591b-a2cf-6f7cc6cab1ba', '36c941fe-25ea-5533-8cf6-ec34e500d1b6', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Business Travel Arrangements”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L3_B20","is_correct":true,"text":"Before confirming the arrangements, we prepared a contingency plan in case the conference was delayed."},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L3_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_PLANNING_DEADLINES_AND_BUSINESS_TRAVEL_L3_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('85728e82-fd2a-5f22-9139-d4bc4321f5e1', '36c941fe-25ea-5533-8cf6-ec34e500d1b6', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d002d42c-cc36-5eb2-992f-c808826121c6', 'en', 'schedule', 'график', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6a222f9b-2cb4-5043-81c6-3c9a557b10de', 'en', 'business trip', 'деловая поездка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('627f3524-b49c-5670-8171-6b468a372ac7', 'en', 'reschedule', 'перенести', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7fecf9b1-4dbc-5d8a-899e-a13a69107bd8', 'en', 'availability', 'доступность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0de93d22-7462-5503-8943-a78d5d53563a', 'en', 'deadline', 'срок', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9d1029c0-3196-53ed-a5d2-7e4afdc890ec', 'en', 'contingency plan', 'резервный план', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('76acc5c2-848a-5fbe-922f-b3e68804765b', 'en', 'confirm arrangements', 'подтвердить договорённости', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d002d42c-cc36-5eb2-992f-c808826121c6', 'en', 'schedule', 'график', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6a222f9b-2cb4-5043-81c6-3c9a557b10de', 'en', 'business trip', 'деловая поездка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('627f3524-b49c-5670-8171-6b468a372ac7', 'en', 'reschedule', 'перенести', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7fecf9b1-4dbc-5d8a-899e-a13a69107bd8', 'en', 'availability', 'доступность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0de93d22-7462-5503-8943-a78d5d53563a', 'en', 'deadline', 'срок', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9d1029c0-3196-53ed-a5d2-7e4afdc890ec', 'en', 'contingency plan', 'резервный план', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('76acc5c2-848a-5fbe-922f-b3e68804765b', 'en', 'confirm arrangements', 'подтвердить договорённости', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d002d42c-cc36-5eb2-992f-c808826121c6', 'en', 'schedule', 'график', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6a222f9b-2cb4-5043-81c6-3c9a557b10de', 'en', 'business trip', 'деловая поездка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('627f3524-b49c-5670-8171-6b468a372ac7', 'en', 'reschedule', 'перенести', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7fecf9b1-4dbc-5d8a-899e-a13a69107bd8', 'en', 'availability', 'доступность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0de93d22-7462-5503-8943-a78d5d53563a', 'en', 'deadline', 'срок', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9d1029c0-3196-53ed-a5d2-7e4afdc890ec', 'en', 'contingency plan', 'резервный план', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('76acc5c2-848a-5fbe-922f-b3e68804765b', 'en', 'confirm arrangements', 'подтвердить договорённости', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '85728e82-fd2a-5f22-9139-d4bc4321f5e1', id, '19de5f45-f29f-552c-996a-02e88d891b4a', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'schedule' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '85728e82-fd2a-5f22-9139-d4bc4321f5e1', id, '19de5f45-f29f-552c-996a-02e88d891b4a', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'business trip' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '85728e82-fd2a-5f22-9139-d4bc4321f5e1', id, '19de5f45-f29f-552c-996a-02e88d891b4a', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'reschedule' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '85728e82-fd2a-5f22-9139-d4bc4321f5e1', id, '19de5f45-f29f-552c-996a-02e88d891b4a', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'availability' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '85728e82-fd2a-5f22-9139-d4bc4321f5e1', id, '19de5f45-f29f-552c-996a-02e88d891b4a', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'deadline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '85728e82-fd2a-5f22-9139-d4bc4321f5e1', id, '19de5f45-f29f-552c-996a-02e88d891b4a', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'contingency plan' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '85728e82-fd2a-5f22-9139-d4bc4321f5e1', id, '19de5f45-f29f-552c-996a-02e88d891b4a', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirm arrangements' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '85728e82-fd2a-5f22-9139-d4bc4321f5e1', id, 'ae4bd00e-4f6a-5396-8d1c-86988500dc0a', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'schedule' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '85728e82-fd2a-5f22-9139-d4bc4321f5e1', id, 'ae4bd00e-4f6a-5396-8d1c-86988500dc0a', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'business trip' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '85728e82-fd2a-5f22-9139-d4bc4321f5e1', id, 'ae4bd00e-4f6a-5396-8d1c-86988500dc0a', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'reschedule' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '85728e82-fd2a-5f22-9139-d4bc4321f5e1', id, 'ae4bd00e-4f6a-5396-8d1c-86988500dc0a', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'availability' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '85728e82-fd2a-5f22-9139-d4bc4321f5e1', id, 'ae4bd00e-4f6a-5396-8d1c-86988500dc0a', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'deadline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '85728e82-fd2a-5f22-9139-d4bc4321f5e1', id, 'ae4bd00e-4f6a-5396-8d1c-86988500dc0a', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'contingency plan' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '85728e82-fd2a-5f22-9139-d4bc4321f5e1', id, 'ae4bd00e-4f6a-5396-8d1c-86988500dc0a', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirm arrangements' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '85728e82-fd2a-5f22-9139-d4bc4321f5e1', id, '36c941fe-25ea-5533-8cf6-ec34e500d1b6', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'schedule' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '85728e82-fd2a-5f22-9139-d4bc4321f5e1', id, '36c941fe-25ea-5533-8cf6-ec34e500d1b6', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'business trip' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '85728e82-fd2a-5f22-9139-d4bc4321f5e1', id, '36c941fe-25ea-5533-8cf6-ec34e500d1b6', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'reschedule' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '85728e82-fd2a-5f22-9139-d4bc4321f5e1', id, '36c941fe-25ea-5533-8cf6-ec34e500d1b6', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'availability' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '85728e82-fd2a-5f22-9139-d4bc4321f5e1', id, '36c941fe-25ea-5533-8cf6-ec34e500d1b6', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'deadline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '85728e82-fd2a-5f22-9139-d4bc4321f5e1', id, '36c941fe-25ea-5533-8cf6-ec34e500d1b6', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'contingency plan' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '85728e82-fd2a-5f22-9139-d4bc4321f5e1', id, '36c941fe-25ea-5533-8cf6-ec34e500d1b6', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirm arrangements' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
