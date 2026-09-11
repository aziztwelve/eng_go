-- Track: B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('0f9ed41b-501e-5555-ae1e-3fc64f1a88f1', 'B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS', 'Командная работа и отношения с коллегами', 'Развивайте практический английский уровня B1 для работы по теме «Командная работа и отношения с коллегами».', '{"en":"Teamwork and Workplace Relationships","ru":"Командная работа и отношения с коллегами"}'::jsonb, '{"en":"Develop practical B1 workplace English for teamwork and workplace relationships.","ru":"Развивайте практический английский уровня B1 для работы по теме «Командная работа и отношения с коллегами»."}'::jsonb, 'en', 'B1', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ebde021e-02aa-5fdb-95b5-659b84dd49d3', NULL, 'Рабочая ситуация', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Building Rapport","ru":"Рабочая ситуация"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c131140b-d3fd-5b83-838e-a1e36fac275f', 'ebde021e-02aa-5fdb-95b5-659b84dd49d3', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L1_W01","left":"rapport","right":"взаимопонимание"},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L1_W02","left":"support","right":"поддерживать"},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L1_W03","left":"recognise effort","right":"признавать усилия"},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L1_W04","left":"disagreement","right":"разногласие"},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L1_W05","left":"respectful","right":"уважительный"},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L1_W06","left":"resolve tension","right":"снять напряжение"},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L1_W07","left":"team spirit","right":"командный дух"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('569c44af-9843-5c76-982c-047ddf2966a0', 'ebde021e-02aa-5fdb-95b5-659b84dd49d3', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L1_W08","is_correct":true,"text":"Regular informal conversations can build rapport and strengthen team spirit without taking much time."},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L1_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L1_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('66e12a07-79f6-565a-884f-358c8d32a9a3', 'ebde021e-02aa-5fdb-95b5-659b84dd49d3', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Regular informal conversations can build rapport and strengthen team spirit without taking much time.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Регулярные неформальные беседы могут укреплять взаимопонимание и командный дух, не занимая много времени.","target_language":"en","word_bank":["Regular","informal","conversations","can","build","rapport","and","strengthen","team","spirit","without","taking","much","time."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e03f4cd9-ee78-566d-a763-f412d42dbce9', 'ebde021e-02aa-5fdb-95b5-659b84dd49d3', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"rapport","instruction":"Выберите подходящее слово.","options":["rapport","disagreement","resolve tension"],"sentence_template":"Regular informal conversations can build ___ and strengthen team spirit without taking much time."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef9d997c-5c72-58ea-aed4-f3b17bcaa15b', 'ebde021e-02aa-5fdb-95b5-659b84dd49d3', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Regular","informal","conversations","can","build","rapport","and","strengthen","team","spirit","without","taking","much","time."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["time.","much","taking","without","spirit","team","strengthen","and","rapport","build","can","conversations","informal","Regular"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4bd3c037-5336-57dd-b520-e27dcd471bf1', 'ebde021e-02aa-5fdb-95b5-659b84dd49d3', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Regular informal conversations can build rapport and strengthen team spirit without taking much time. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fe8a897d-6aaf-5b25-bfbd-4c2c2938ccfe', 'ebde021e-02aa-5fdb-95b5-659b84dd49d3', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Regular informal conversations can build rapport and strengthen team spirit without taking much time. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Регулярные неформальные беседы могут укреплять взаимопонимание и командный дух, не занимая много времени. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41e1663e-4942-5560-92ee-b66ca8f783de', 'ebde021e-02aa-5fdb-95b5-659b84dd49d3', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"Regular informal conversations can build rapport and strengthen team spirit without taking much time.","translation":"Регулярные неформальные беседы могут укреплять взаимопонимание и командный дух, не занимая много времени.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Building Rapport"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e5ea21a6-082f-507f-b6db-a77e219b4db7', 'ebde021e-02aa-5fdb-95b5-659b84dd49d3', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“rapport” means a positive relationship based on trust.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L1_W11","is_correct":true,"text":"a positive relationship based on trust"},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L1_W12","is_correct":false,"text":"help someone succeed"},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L1_W13","is_correct":false,"text":"show appreciation for work"}],"word":"rapport"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8f1214d0-56a1-5517-b451-3cf07bad3ebe', 'ebde021e-02aa-5fdb-95b5-659b84dd49d3', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Regular informal conversations can build rapport and strengthen team spirit without taking much time.","explanation":"The missing workplace expression is “rapport”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"rapport","id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L1_W14","is_correct":true},{"audio_text":"recognise effort","id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L1_W15","is_correct":false},{"audio_text":"respectful","id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L1_W16","is_correct":false}],"sentence_template":"Regular informal conversations can build ___ and strengthen team spirit without taking much time."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ffbd5a90-d93e-5524-b5a1-6d8bd5232457', 'ebde021e-02aa-5fdb-95b5-659b84dd49d3', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"rapport","explanation":"The sentence requires “rapport” to communicate the intended workplace meaning.","hint_prefix":"rap","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Regular informal conversations can build ___ and strengthen team spirit without taking much time."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('37a38463-3215-5537-9814-2f05bf3918e7', 'ebde021e-02aa-5fdb-95b5-659b84dd49d3', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"rapport","id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L1_W17","text":"rapport"},{"audio_text":"support","id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L1_W18","text":"support"},{"audio_text":"recognise effort","id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L1_W19","text":"recognise effort"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6a9b34e6-6391-5fee-9ad9-d407d73e3dca', 'ebde021e-02aa-5fdb-95b5-659b84dd49d3', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Building Rapport”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L1_W20","is_correct":true,"text":"Regular informal conversations can build rapport and strengthen team spirit without taking much time."},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L1_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L1_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0f9ed41b-501e-5555-ae1e-3fc64f1a88f1', 'ebde021e-02aa-5fdb-95b5-659b84dd49d3', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('1c1d83a2-15f0-5c52-96db-6fc27caa8bf3', NULL, 'Обсуждение вариантов', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Supporting Colleagues","ru":"Обсуждение вариантов"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bdd68ea2-3551-530c-b3a5-42d2062e3e5a', '1c1d83a2-15f0-5c52-96db-6fc27caa8bf3', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L2_W01","left":"rapport","right":"взаимопонимание"},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L2_W02","left":"support","right":"поддерживать"},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L2_W03","left":"recognise effort","right":"признавать усилия"},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L2_W04","left":"disagreement","right":"разногласие"},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L2_W05","left":"respectful","right":"уважительный"},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L2_W06","left":"resolve tension","right":"снять напряжение"},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L2_W07","left":"team spirit","right":"командный дух"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c4f3707c-c8a8-5cfe-9b78-8c2566426d34', '1c1d83a2-15f0-5c52-96db-6fc27caa8bf3', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L2_W08","is_correct":true,"text":"A good colleague offers support and recognises other people’s effort instead of taking all the credit."},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L2_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L2_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f2847ad5-27f9-5ec1-9e92-55ebd30bf445', '1c1d83a2-15f0-5c52-96db-6fc27caa8bf3', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A good colleague offers support and recognises other people’s effort instead of taking all the credit.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Хороший коллега предлагает поддержку и признаёт усилия других людей, вместо того чтобы присваивать все заслуги.","target_language":"en","word_bank":["A","good","colleague","offers","support","and","recognises","other","people’s","effort","instead","of","taking","all","the","credit."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0be3687d-e0f5-5db9-9fed-bf787c16783a', '1c1d83a2-15f0-5c52-96db-6fc27caa8bf3', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"support","instruction":"Выберите подходящее слово.","options":["support","respectful","team spirit"],"sentence_template":"A good colleague offers ___ and recognises other people’s effort instead of taking all the credit."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('70b4db1e-ac1f-5a43-8178-d6788c4fc898', '1c1d83a2-15f0-5c52-96db-6fc27caa8bf3', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","good","colleague","offers","support","and","recognises","other","people’s","effort","instead","of","taking","all","the","credit."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["credit.","the","all","taking","of","instead","effort","people’s","other","recognises","and","support","offers","colleague","good","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac37a268-4bd3-57fe-b040-217237af1515', '1c1d83a2-15f0-5c52-96db-6fc27caa8bf3', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A good colleague offers support and recognises other people’s effort instead of taking all the credit. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e2552398-bc54-5b18-8caa-9809e525f8f9', '1c1d83a2-15f0-5c52-96db-6fc27caa8bf3', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A good colleague offers support and recognises other people’s effort instead of taking all the credit. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Хороший коллега предлагает поддержку и признаёт усилия других людей, вместо того чтобы присваивать все заслуги. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c9d80cf1-2a90-5baf-aae2-775247db96a3', '1c1d83a2-15f0-5c52-96db-6fc27caa8bf3', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"A good colleague offers support and recognises other people’s effort instead of taking all the credit.","translation":"Хороший коллега предлагает поддержку и признаёт усилия других людей, вместо того чтобы присваивать все заслуги.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Supporting Colleagues"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d16ef203-50af-51ff-b108-ff06a8b940d7', '1c1d83a2-15f0-5c52-96db-6fc27caa8bf3', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“support” means help someone succeed.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L2_W11","is_correct":true,"text":"help someone succeed"},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L2_W12","is_correct":false,"text":"show appreciation for work"},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L2_W13","is_correct":false,"text":"a difference of opinion"}],"word":"support"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3399c9ef-45ad-5aff-b051-87b2ba17cc49', '1c1d83a2-15f0-5c52-96db-6fc27caa8bf3', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A good colleague offers support and recognises other people’s effort instead of taking all the credit.","explanation":"The missing workplace expression is “support”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"support","id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L2_W14","is_correct":true},{"audio_text":"disagreement","id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L2_W15","is_correct":false},{"audio_text":"resolve tension","id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L2_W16","is_correct":false}],"sentence_template":"A good colleague offers ___ and recognises other people’s effort instead of taking all the credit."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76c18540-a0c0-56a0-b468-c19c18078a2d', '1c1d83a2-15f0-5c52-96db-6fc27caa8bf3', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"support","explanation":"The sentence requires “support” to communicate the intended workplace meaning.","hint_prefix":"sup","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A good colleague offers ___ and recognises other people’s effort instead of taking all the credit."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('77b79354-670e-540a-8529-b7d3a692da32', '1c1d83a2-15f0-5c52-96db-6fc27caa8bf3', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"rapport","id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L2_W17","text":"rapport"},{"audio_text":"support","id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L2_W18","text":"support"},{"audio_text":"recognise effort","id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L2_W19","text":"recognise effort"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('92fc8320-af3d-5a53-a8c7-d896ab45e4b7', '1c1d83a2-15f0-5c52-96db-6fc27caa8bf3', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Supporting Colleagues”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L2_W20","is_correct":true,"text":"A good colleague offers support and recognises other people’s effort instead of taking all the credit."},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L2_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L2_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0f9ed41b-501e-5555-ae1e-3fc64f1a88f1', '1c1d83a2-15f0-5c52-96db-6fc27caa8bf3', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ff14e2b8-787d-57eb-9ea2-ef9ae8ef7e87', NULL, 'Решение и последующие действия', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Resolving Minor Tension","ru":"Решение и последующие действия"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d3a57d2-7a3b-5908-ba0b-0350c189fbd0', 'ff14e2b8-787d-57eb-9ea2-ef9ae8ef7e87', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L3_W01","left":"rapport","right":"взаимопонимание"},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L3_W02","left":"support","right":"поддерживать"},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L3_W03","left":"recognise effort","right":"признавать усилия"},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L3_W04","left":"disagreement","right":"разногласие"},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L3_W05","left":"respectful","right":"уважительный"},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L3_W06","left":"resolve tension","right":"снять напряжение"},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L3_W07","left":"team spirit","right":"командный дух"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf1393fc-cb4e-5bde-abe4-8634b6f4031b', 'ff14e2b8-787d-57eb-9ea2-ef9ae8ef7e87', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L3_W08","is_correct":true,"text":"We resolved the tension by discussing the disagreement in a respectful and private conversation."},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L3_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L3_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('11fda359-d815-5c46-b005-bd9eea071712', 'ff14e2b8-787d-57eb-9ea2-ef9ae8ef7e87', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We resolved the tension by discussing the disagreement in a respectful and private conversation.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мы сняли напряжение, обсудив разногласие в уважительной и конфиденциальной беседе.","target_language":"en","word_bank":["We","resolved","the","tension","by","discussing","the","disagreement","in","a","respectful","and","private","conversation."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('514646ba-1cda-52a4-93aa-5c90d3a98ab6', 'ff14e2b8-787d-57eb-9ea2-ef9ae8ef7e87', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"recognise effort","instruction":"Выберите подходящее слово.","options":["recognise effort","resolve tension","rapport"],"sentence_template":"We resolved the tension by discussing the disagreement in a respectful and private conversation."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('86de0468-01e5-5e13-9262-da2464fc34df', 'ff14e2b8-787d-57eb-9ea2-ef9ae8ef7e87', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","resolved","the","tension","by","discussing","the","disagreement","in","a","respectful","and","private","conversation."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["conversation.","private","and","respectful","a","in","disagreement","the","discussing","by","tension","the","resolved","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e9d6d00-b410-5e38-be97-962f8192b357', 'ff14e2b8-787d-57eb-9ea2-ef9ae8ef7e87', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We resolved the tension by discussing the disagreement in a respectful and private conversation. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c9071edb-8196-5dbb-851f-d03c983ef2cd', 'ff14e2b8-787d-57eb-9ea2-ef9ae8ef7e87', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We resolved the tension by discussing the disagreement in a respectful and private conversation. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Мы сняли напряжение, обсудив разногласие в уважительной и конфиденциальной беседе. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eed22940-a149-519d-abf0-6f5f21e236c9', 'ff14e2b8-787d-57eb-9ea2-ef9ae8ef7e87', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"We resolved the tension by discussing the disagreement in a respectful and private conversation.","translation":"Мы сняли напряжение, обсудив разногласие в уважительной и конфиденциальной беседе.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Resolving Minor Tension"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f23eaeee-260a-50b4-9927-2314deae35b4', 'ff14e2b8-787d-57eb-9ea2-ef9ae8ef7e87', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“recognise effort” means show appreciation for work.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L3_W11","is_correct":true,"text":"show appreciation for work"},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L3_W12","is_correct":false,"text":"a difference of opinion"},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L3_W13","is_correct":false,"text":"showing consideration for others"}],"word":"recognise effort"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('144cb3c0-a371-5e2f-ab00-305aeee2991c', 'ff14e2b8-787d-57eb-9ea2-ef9ae8ef7e87', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We resolved the tension by discussing the disagreement in a respectful and private conversation.","explanation":"The missing workplace expression is “recognise effort”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"recognise effort","id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L3_W14","is_correct":true},{"audio_text":"respectful","id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L3_W15","is_correct":false},{"audio_text":"team spirit","id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L3_W16","is_correct":false}],"sentence_template":"We resolved the tension by discussing the disagreement in a respectful and private conversation."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6aba59f8-26ef-5c1d-99f1-793fa10b117e', 'ff14e2b8-787d-57eb-9ea2-ef9ae8ef7e87', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"recognise effort","explanation":"The sentence requires “recognise effort” to communicate the intended workplace meaning.","hint_prefix":"rec","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We resolved the tension by discussing the disagreement in a respectful and private conversation."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b32dafdb-9caf-511c-8d10-3d13e5a64112', 'ff14e2b8-787d-57eb-9ea2-ef9ae8ef7e87', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"rapport","id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L3_W17","text":"rapport"},{"audio_text":"support","id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L3_W18","text":"support"},{"audio_text":"recognise effort","id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L3_W19","text":"recognise effort"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('019d96b7-7381-5cac-ac8b-23d5507e11f6', 'ff14e2b8-787d-57eb-9ea2-ef9ae8ef7e87', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Resolving Minor Tension”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L3_W20","is_correct":true,"text":"We resolved the tension by discussing the disagreement in a respectful and private conversation."},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L3_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_TEAMWORK_AND_WORKPLACE_RELATIONSHIPS_L3_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0f9ed41b-501e-5555-ae1e-3fc64f1a88f1', 'ff14e2b8-787d-57eb-9ea2-ef9ae8ef7e87', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('08a85ab4-8781-56df-b862-bf8e8ff44b39', 'en', 'rapport', 'взаимопонимание', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d346cb78-0803-5b1d-8757-0e0103022f12', 'en', 'support', 'поддерживать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('df41b332-661a-50ad-9655-22a91f7ec69f', 'en', 'recognise effort', 'признавать усилия', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('35923f66-1397-5d5c-b90b-3a48d9197fa1', 'en', 'disagreement', 'разногласие', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9696574b-9333-5089-840d-6b540fc75052', 'en', 'respectful', 'уважительный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('17c3c4a4-4849-563a-8896-c23dabbf6ebf', 'en', 'resolve tension', 'снять напряжение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8ce4dbe0-8728-5ba0-9b57-a27a5ef5dd0c', 'en', 'team spirit', 'командный дух', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('08a85ab4-8781-56df-b862-bf8e8ff44b39', 'en', 'rapport', 'взаимопонимание', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d346cb78-0803-5b1d-8757-0e0103022f12', 'en', 'support', 'поддерживать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('df41b332-661a-50ad-9655-22a91f7ec69f', 'en', 'recognise effort', 'признавать усилия', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('35923f66-1397-5d5c-b90b-3a48d9197fa1', 'en', 'disagreement', 'разногласие', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9696574b-9333-5089-840d-6b540fc75052', 'en', 'respectful', 'уважительный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('17c3c4a4-4849-563a-8896-c23dabbf6ebf', 'en', 'resolve tension', 'снять напряжение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8ce4dbe0-8728-5ba0-9b57-a27a5ef5dd0c', 'en', 'team spirit', 'командный дух', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('08a85ab4-8781-56df-b862-bf8e8ff44b39', 'en', 'rapport', 'взаимопонимание', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d346cb78-0803-5b1d-8757-0e0103022f12', 'en', 'support', 'поддерживать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('df41b332-661a-50ad-9655-22a91f7ec69f', 'en', 'recognise effort', 'признавать усилия', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('35923f66-1397-5d5c-b90b-3a48d9197fa1', 'en', 'disagreement', 'разногласие', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9696574b-9333-5089-840d-6b540fc75052', 'en', 'respectful', 'уважительный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('17c3c4a4-4849-563a-8896-c23dabbf6ebf', 'en', 'resolve tension', 'снять напряжение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8ce4dbe0-8728-5ba0-9b57-a27a5ef5dd0c', 'en', 'team spirit', 'командный дух', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0f9ed41b-501e-5555-ae1e-3fc64f1a88f1', id, 'ebde021e-02aa-5fdb-95b5-659b84dd49d3', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'rapport' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0f9ed41b-501e-5555-ae1e-3fc64f1a88f1', id, 'ebde021e-02aa-5fdb-95b5-659b84dd49d3', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'support' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0f9ed41b-501e-5555-ae1e-3fc64f1a88f1', id, 'ebde021e-02aa-5fdb-95b5-659b84dd49d3', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'recognise effort' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0f9ed41b-501e-5555-ae1e-3fc64f1a88f1', id, 'ebde021e-02aa-5fdb-95b5-659b84dd49d3', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'disagreement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0f9ed41b-501e-5555-ae1e-3fc64f1a88f1', id, 'ebde021e-02aa-5fdb-95b5-659b84dd49d3', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'respectful' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0f9ed41b-501e-5555-ae1e-3fc64f1a88f1', id, 'ebde021e-02aa-5fdb-95b5-659b84dd49d3', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'resolve tension' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0f9ed41b-501e-5555-ae1e-3fc64f1a88f1', id, 'ebde021e-02aa-5fdb-95b5-659b84dd49d3', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'team spirit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0f9ed41b-501e-5555-ae1e-3fc64f1a88f1', id, '1c1d83a2-15f0-5c52-96db-6fc27caa8bf3', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'rapport' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0f9ed41b-501e-5555-ae1e-3fc64f1a88f1', id, '1c1d83a2-15f0-5c52-96db-6fc27caa8bf3', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'support' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0f9ed41b-501e-5555-ae1e-3fc64f1a88f1', id, '1c1d83a2-15f0-5c52-96db-6fc27caa8bf3', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'recognise effort' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0f9ed41b-501e-5555-ae1e-3fc64f1a88f1', id, '1c1d83a2-15f0-5c52-96db-6fc27caa8bf3', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'disagreement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0f9ed41b-501e-5555-ae1e-3fc64f1a88f1', id, '1c1d83a2-15f0-5c52-96db-6fc27caa8bf3', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'respectful' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0f9ed41b-501e-5555-ae1e-3fc64f1a88f1', id, '1c1d83a2-15f0-5c52-96db-6fc27caa8bf3', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'resolve tension' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0f9ed41b-501e-5555-ae1e-3fc64f1a88f1', id, '1c1d83a2-15f0-5c52-96db-6fc27caa8bf3', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'team spirit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0f9ed41b-501e-5555-ae1e-3fc64f1a88f1', id, 'ff14e2b8-787d-57eb-9ea2-ef9ae8ef7e87', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'rapport' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0f9ed41b-501e-5555-ae1e-3fc64f1a88f1', id, 'ff14e2b8-787d-57eb-9ea2-ef9ae8ef7e87', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'support' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0f9ed41b-501e-5555-ae1e-3fc64f1a88f1', id, 'ff14e2b8-787d-57eb-9ea2-ef9ae8ef7e87', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'recognise effort' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0f9ed41b-501e-5555-ae1e-3fc64f1a88f1', id, 'ff14e2b8-787d-57eb-9ea2-ef9ae8ef7e87', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'disagreement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0f9ed41b-501e-5555-ae1e-3fc64f1a88f1', id, 'ff14e2b8-787d-57eb-9ea2-ef9ae8ef7e87', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'respectful' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0f9ed41b-501e-5555-ae1e-3fc64f1a88f1', id, 'ff14e2b8-787d-57eb-9ea2-ef9ae8ef7e87', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'resolve tension' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0f9ed41b-501e-5555-ae1e-3fc64f1a88f1', id, 'ff14e2b8-787d-57eb-9ea2-ef9ae8ef7e87', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'team spirit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
