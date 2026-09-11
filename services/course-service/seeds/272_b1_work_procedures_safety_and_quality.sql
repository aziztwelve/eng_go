-- Track: B1_WORK_PROCEDURES_SAFETY_AND_QUALITY. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('28f5fc24-bf07-5a65-b3e2-048972e52f33', 'B1_WORK_PROCEDURES_SAFETY_AND_QUALITY', 'Процедуры, безопасность и качество', 'Развивайте практический английский уровня B1 для работы по теме «Процедуры, безопасность и качество».', '{"en":"Procedures, Safety and Quality","ru":"Процедуры, безопасность и качество"}'::jsonb, '{"en":"Develop practical B1 workplace English for procedures, safety and quality.","ru":"Развивайте практический английский уровня B1 для работы по теме «Процедуры, безопасность и качество»."}'::jsonb, 'en', 'B1', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('73b59a8e-1add-503b-9514-ab8927307a9b', NULL, 'Рабочая ситуация', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Explaining Procedures","ru":"Рабочая ситуация"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4261c14-756f-5891-82c5-5f206297009c', '73b59a8e-1add-503b-9514-ab8927307a9b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L1_W01","left":"procedure","right":"процедура"},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L1_W02","left":"hazard","right":"опасность"},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L1_W03","left":"protective equipment","right":"защитное оборудование"},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L1_W04","left":"quality standard","right":"стандарт качества"},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L1_W05","left":"inspection","right":"проверка"},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L1_W06","left":"comply with","right":"соблюдать"},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L1_W07","left":"prevent","right":"предотвращать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2d0b16aa-4c28-54fc-a3eb-3ad08223ef0b', '73b59a8e-1add-503b-9514-ab8927307a9b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L1_W08","is_correct":true,"text":"The procedure requires staff to identify each hazard before beginning the inspection."},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L1_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L1_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e8d2916-5ac5-5487-9cb0-93c5ca40a9be', '73b59a8e-1add-503b-9514-ab8927307a9b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The procedure requires staff to identify each hazard before beginning the inspection.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Процедура требует, чтобы сотрудники определили каждую опасность до начала проверки.","target_language":"en","word_bank":["The","procedure","requires","staff","to","identify","each","hazard","before","beginning","the","inspection."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a96dc61b-708f-5222-838f-6e2776e6c0c4', '73b59a8e-1add-503b-9514-ab8927307a9b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"procedure","instruction":"Выберите подходящее слово.","options":["procedure","quality standard","comply with"],"sentence_template":"The ___ requires staff to identify each hazard before beginning the inspection."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dcd01176-b7e8-50e2-97ee-8c4d6e7796b5', '73b59a8e-1add-503b-9514-ab8927307a9b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","procedure","requires","staff","to","identify","each","hazard","before","beginning","the","inspection."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["inspection.","the","beginning","before","hazard","each","identify","to","staff","requires","procedure","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e94c2480-7c1e-5605-8a3f-f161af35a655', '73b59a8e-1add-503b-9514-ab8927307a9b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The procedure requires staff to identify each hazard before beginning the inspection. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('87958dbb-cc79-5fe0-8460-76b42d638aa8', '73b59a8e-1add-503b-9514-ab8927307a9b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The procedure requires staff to identify each hazard before beginning the inspection. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Процедура требует, чтобы сотрудники определили каждую опасность до начала проверки. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3cd48d44-b257-5419-b3f6-5ef65ca24fce', '73b59a8e-1add-503b-9514-ab8927307a9b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"The procedure requires staff to identify each hazard before beginning the inspection.","translation":"Процедура требует, чтобы сотрудники определили каждую опасность до начала проверки.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Explaining Procedures"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c3caab9e-1a2e-511c-814e-8bb70acd3c7b', '73b59a8e-1add-503b-9514-ab8927307a9b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“procedure” means an established series of actions.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L1_W11","is_correct":true,"text":"an established series of actions"},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L1_W12","is_correct":false,"text":"something that may cause harm"},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L1_W13","is_correct":false,"text":"items worn or used for safety"}],"word":"procedure"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3994aac8-a957-5575-8aee-84a5b1fb0288', '73b59a8e-1add-503b-9514-ab8927307a9b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The procedure requires staff to identify each hazard before beginning the inspection.","explanation":"The missing workplace expression is “procedure”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"procedure","id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L1_W14","is_correct":true},{"audio_text":"protective equipment","id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L1_W15","is_correct":false},{"audio_text":"inspection","id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L1_W16","is_correct":false}],"sentence_template":"The ___ requires staff to identify each hazard before beginning the inspection."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('adc2cc78-279e-50a0-9fd6-d90d782940df', '73b59a8e-1add-503b-9514-ab8927307a9b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"procedure","explanation":"The sentence requires “procedure” to communicate the intended workplace meaning.","hint_prefix":"pro","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ requires staff to identify each hazard before beginning the inspection."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9be0723-71e6-59c0-80ea-cd1eef1894d9', '73b59a8e-1add-503b-9514-ab8927307a9b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"procedure","id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L1_W17","text":"procedure"},{"audio_text":"hazard","id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L1_W18","text":"hazard"},{"audio_text":"protective equipment","id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L1_W19","text":"protective equipment"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a1ef5cb8-551c-59f4-b6ef-a0cd9fe8ecf7', '73b59a8e-1add-503b-9514-ab8927307a9b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Explaining Procedures”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L1_W20","is_correct":true,"text":"The procedure requires staff to identify each hazard before beginning the inspection."},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L1_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L1_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('28f5fc24-bf07-5a65-b3e2-048972e52f33', '73b59a8e-1add-503b-9514-ab8927307a9b', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('1b3c44c0-81d8-5383-890a-ab1bb6c99367', NULL, 'Обсуждение вариантов', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Managing Safety Risks","ru":"Обсуждение вариантов"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f1a542b-4e7b-558b-987a-604d1a04c36d', '1b3c44c0-81d8-5383-890a-ab1bb6c99367', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L2_W01","left":"procedure","right":"процедура"},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L2_W02","left":"hazard","right":"опасность"},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L2_W03","left":"protective equipment","right":"защитное оборудование"},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L2_W04","left":"quality standard","right":"стандарт качества"},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L2_W05","left":"inspection","right":"проверка"},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L2_W06","left":"comply with","right":"соблюдать"},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L2_W07","left":"prevent","right":"предотвращать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1255be4b-d773-5c81-aee3-4ed6939fed57', '1b3c44c0-81d8-5383-890a-ab1bb6c99367', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L2_W08","is_correct":true,"text":"Protective equipment must be worn so that employees comply with the safety rules and prevent injury."},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L2_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L2_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5dbb9a55-323b-5ae8-ae85-23c9eabcda5e', '1b3c44c0-81d8-5383-890a-ab1bb6c99367', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Protective equipment must be worn so that employees comply with the safety rules and prevent injury.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Необходимо использовать защитное оборудование, чтобы сотрудники соблюдали правила безопасности и предотвращали травмы.","target_language":"en","word_bank":["Protective","equipment","must","be","worn","so","that","employees","comply","with","the","safety","rules","and","prevent","injury."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cec1a9d5-bb9b-50af-854b-a4866cdd7b49', '1b3c44c0-81d8-5383-890a-ab1bb6c99367', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"hazard","instruction":"Выберите подходящее слово.","options":["hazard","inspection","prevent"],"sentence_template":"Protective equipment must be worn so that employees comply with the safety rules and prevent injury."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('70e821b0-cfdd-5d12-985e-80fa6365c42b', '1b3c44c0-81d8-5383-890a-ab1bb6c99367', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Protective","equipment","must","be","worn","so","that","employees","comply","with","the","safety","rules","and","prevent","injury."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["injury.","prevent","and","rules","safety","the","with","comply","employees","that","so","worn","be","must","equipment","Protective"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('100e9530-0dc9-566e-aab6-04695c5e9302', '1b3c44c0-81d8-5383-890a-ab1bb6c99367', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Protective equipment must be worn so that employees comply with the safety rules and prevent injury. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0bb0eaed-e5a4-59c6-baad-9948b7d20833', '1b3c44c0-81d8-5383-890a-ab1bb6c99367', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Protective equipment must be worn so that employees comply with the safety rules and prevent injury. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Необходимо использовать защитное оборудование, чтобы сотрудники соблюдали правила безопасности и предотвращали травмы. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c1ef20b4-4ec0-5608-b6ae-2c263bbcc93a', '1b3c44c0-81d8-5383-890a-ab1bb6c99367', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"Protective equipment must be worn so that employees comply with the safety rules and prevent injury.","translation":"Необходимо использовать защитное оборудование, чтобы сотрудники соблюдали правила безопасности и предотвращали травмы.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Managing Safety Risks"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b728ef2d-7617-5db9-a71c-6d981459c994', '1b3c44c0-81d8-5383-890a-ab1bb6c99367', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“hazard” means something that may cause harm.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L2_W11","is_correct":true,"text":"something that may cause harm"},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L2_W12","is_correct":false,"text":"items worn or used for safety"},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L2_W13","is_correct":false,"text":"an agreed level of acceptable quality"}],"word":"hazard"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('431cf0c5-30ef-5805-b8ec-8848995b9dbc', '1b3c44c0-81d8-5383-890a-ab1bb6c99367', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Protective equipment must be worn so that employees comply with the safety rules and prevent injury.","explanation":"The missing workplace expression is “hazard”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"hazard","id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L2_W14","is_correct":true},{"audio_text":"quality standard","id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L2_W15","is_correct":false},{"audio_text":"comply with","id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L2_W16","is_correct":false}],"sentence_template":"Protective equipment must be worn so that employees comply with the safety rules and prevent injury."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('51798cd8-6338-5800-b42b-b1edbd79f073', '1b3c44c0-81d8-5383-890a-ab1bb6c99367', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"hazard","explanation":"The sentence requires “hazard” to communicate the intended workplace meaning.","hint_prefix":"haz","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Protective equipment must be worn so that employees comply with the safety rules and prevent injury."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2f7b645f-c6af-52e3-829c-3d3b2ff590de', '1b3c44c0-81d8-5383-890a-ab1bb6c99367', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"procedure","id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L2_W17","text":"procedure"},{"audio_text":"hazard","id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L2_W18","text":"hazard"},{"audio_text":"protective equipment","id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L2_W19","text":"protective equipment"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d17aa62-935a-5435-bb4d-9833db0557dc', '1b3c44c0-81d8-5383-890a-ab1bb6c99367', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Managing Safety Risks”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L2_W20","is_correct":true,"text":"Protective equipment must be worn so that employees comply with the safety rules and prevent injury."},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L2_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L2_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('28f5fc24-bf07-5a65-b3e2-048972e52f33', '1b3c44c0-81d8-5383-890a-ab1bb6c99367', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('29dc884e-e7f1-5528-a9e5-e6a5e5314e80', NULL, 'Решение и последующие действия', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Checking Quality","ru":"Решение и последующие действия"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0f1d2ac3-a8cc-5bcd-827c-5192d295669c', '29dc884e-e7f1-5528-a9e5-e6a5e5314e80', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L3_W01","left":"procedure","right":"процедура"},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L3_W02","left":"hazard","right":"опасность"},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L3_W03","left":"protective equipment","right":"защитное оборудование"},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L3_W04","left":"quality standard","right":"стандарт качества"},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L3_W05","left":"inspection","right":"проверка"},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L3_W06","left":"comply with","right":"соблюдать"},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L3_W07","left":"prevent","right":"предотвращать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e32affb-6e29-5027-bf84-19752cf13fac', '29dc884e-e7f1-5528-a9e5-e6a5e5314e80', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L3_W08","is_correct":true,"text":"The final inspection confirmed that the product met the quality standard despite an earlier fault."},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L3_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L3_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d65824e5-5805-5730-8548-df8fc6124405', '29dc884e-e7f1-5528-a9e5-e6a5e5314e80', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The final inspection confirmed that the product met the quality standard despite an earlier fault.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Итоговая проверка подтвердила, что продукт соответствует стандарту качества, несмотря на предыдущую неисправность.","target_language":"en","word_bank":["The","final","inspection","confirmed","that","the","product","met","the","quality","standard","despite","an","earlier","fault."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('05be80ad-c04b-56a6-b365-5912359b3fde', '29dc884e-e7f1-5528-a9e5-e6a5e5314e80', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"protective equipment","instruction":"Выберите подходящее слово.","options":["protective equipment","comply with","procedure"],"sentence_template":"The final inspection confirmed that the product met the quality standard despite an earlier fault."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2d8dd3ed-9b2a-5c55-866f-bd290d08bc3f', '29dc884e-e7f1-5528-a9e5-e6a5e5314e80', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","final","inspection","confirmed","that","the","product","met","the","quality","standard","despite","an","earlier","fault."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["fault.","earlier","an","despite","standard","quality","the","met","product","the","that","confirmed","inspection","final","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1fb952f6-bdb1-504e-a2be-8a0f23fd8680', '29dc884e-e7f1-5528-a9e5-e6a5e5314e80', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The final inspection confirmed that the product met the quality standard despite an earlier fault. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fbd3cf64-6605-5246-94be-c2940efb35ee', '29dc884e-e7f1-5528-a9e5-e6a5e5314e80', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The final inspection confirmed that the product met the quality standard despite an earlier fault. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Итоговая проверка подтвердила, что продукт соответствует стандарту качества, несмотря на предыдущую неисправность. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('698f99d9-52e2-5206-a9b4-eb735b7fc3d8', '29dc884e-e7f1-5528-a9e5-e6a5e5314e80', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"The final inspection confirmed that the product met the quality standard despite an earlier fault.","translation":"Итоговая проверка подтвердила, что продукт соответствует стандарту качества, несмотря на предыдущую неисправность.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Checking Quality"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3277b78f-c308-5735-9652-45110f92ce12', '29dc884e-e7f1-5528-a9e5-e6a5e5314e80', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“protective equipment” means items worn or used for safety.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L3_W11","is_correct":true,"text":"items worn or used for safety"},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L3_W12","is_correct":false,"text":"an agreed level of acceptable quality"},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L3_W13","is_correct":false,"text":"a careful examination"}],"word":"protective equipment"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('56f764ae-3169-5dd0-9b7d-35c4a96a546e', '29dc884e-e7f1-5528-a9e5-e6a5e5314e80', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The final inspection confirmed that the product met the quality standard despite an earlier fault.","explanation":"The missing workplace expression is “protective equipment”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"protective equipment","id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L3_W14","is_correct":true},{"audio_text":"inspection","id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L3_W15","is_correct":false},{"audio_text":"prevent","id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L3_W16","is_correct":false}],"sentence_template":"The final inspection confirmed that the product met the quality standard despite an earlier fault."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7de6c84-7ad8-5c1f-8c84-a9587f3e80d1', '29dc884e-e7f1-5528-a9e5-e6a5e5314e80', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"protective equipment","explanation":"The sentence requires “protective equipment” to communicate the intended workplace meaning.","hint_prefix":"pro","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The final inspection confirmed that the product met the quality standard despite an earlier fault."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a933e5e-6f6c-53ee-ac9d-6c80c3c95d8d', '29dc884e-e7f1-5528-a9e5-e6a5e5314e80', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"procedure","id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L3_W17","text":"procedure"},{"audio_text":"hazard","id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L3_W18","text":"hazard"},{"audio_text":"protective equipment","id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L3_W19","text":"protective equipment"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('40b173d3-8ecb-5b20-98e0-15b3aaf91f3c', '29dc884e-e7f1-5528-a9e5-e6a5e5314e80', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Checking Quality”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L3_W20","is_correct":true,"text":"The final inspection confirmed that the product met the quality standard despite an earlier fault."},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L3_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_PROCEDURES_SAFETY_AND_QUALITY_L3_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('28f5fc24-bf07-5a65-b3e2-048972e52f33', '29dc884e-e7f1-5528-a9e5-e6a5e5314e80', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f356ec4e-5884-5644-a1ad-2ff300f44333', 'en', 'procedure', 'процедура', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c1385a77-acc4-5be8-8fd1-e9fb5b2ceb3d', 'en', 'hazard', 'опасность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aff8f020-a946-5eea-bb95-969aa2ff0ae5', 'en', 'protective equipment', 'защитное оборудование', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d73c986b-93f9-57ec-b72f-6041eb5ef4f1', 'en', 'quality standard', 'стандарт качества', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('904fd6a6-86ee-5f64-8521-8d44534938cf', 'en', 'inspection', 'проверка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d8edd4a6-5ebd-50e2-b540-db74391ea303', 'en', 'comply with', 'соблюдать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('71b55063-46ef-5bbc-87c0-a3aaaebd3d8f', 'en', 'prevent', 'предотвращать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f356ec4e-5884-5644-a1ad-2ff300f44333', 'en', 'procedure', 'процедура', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c1385a77-acc4-5be8-8fd1-e9fb5b2ceb3d', 'en', 'hazard', 'опасность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aff8f020-a946-5eea-bb95-969aa2ff0ae5', 'en', 'protective equipment', 'защитное оборудование', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d73c986b-93f9-57ec-b72f-6041eb5ef4f1', 'en', 'quality standard', 'стандарт качества', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('904fd6a6-86ee-5f64-8521-8d44534938cf', 'en', 'inspection', 'проверка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d8edd4a6-5ebd-50e2-b540-db74391ea303', 'en', 'comply with', 'соблюдать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('71b55063-46ef-5bbc-87c0-a3aaaebd3d8f', 'en', 'prevent', 'предотвращать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f356ec4e-5884-5644-a1ad-2ff300f44333', 'en', 'procedure', 'процедура', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c1385a77-acc4-5be8-8fd1-e9fb5b2ceb3d', 'en', 'hazard', 'опасность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aff8f020-a946-5eea-bb95-969aa2ff0ae5', 'en', 'protective equipment', 'защитное оборудование', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d73c986b-93f9-57ec-b72f-6041eb5ef4f1', 'en', 'quality standard', 'стандарт качества', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('904fd6a6-86ee-5f64-8521-8d44534938cf', 'en', 'inspection', 'проверка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d8edd4a6-5ebd-50e2-b540-db74391ea303', 'en', 'comply with', 'соблюдать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('71b55063-46ef-5bbc-87c0-a3aaaebd3d8f', 'en', 'prevent', 'предотвращать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '28f5fc24-bf07-5a65-b3e2-048972e52f33', id, '73b59a8e-1add-503b-9514-ab8927307a9b', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'procedure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '28f5fc24-bf07-5a65-b3e2-048972e52f33', id, '73b59a8e-1add-503b-9514-ab8927307a9b', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'hazard' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '28f5fc24-bf07-5a65-b3e2-048972e52f33', id, '73b59a8e-1add-503b-9514-ab8927307a9b', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'protective equipment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '28f5fc24-bf07-5a65-b3e2-048972e52f33', id, '73b59a8e-1add-503b-9514-ab8927307a9b', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'quality standard' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '28f5fc24-bf07-5a65-b3e2-048972e52f33', id, '73b59a8e-1add-503b-9514-ab8927307a9b', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'inspection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '28f5fc24-bf07-5a65-b3e2-048972e52f33', id, '73b59a8e-1add-503b-9514-ab8927307a9b', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'comply with' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '28f5fc24-bf07-5a65-b3e2-048972e52f33', id, '73b59a8e-1add-503b-9514-ab8927307a9b', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'prevent' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '28f5fc24-bf07-5a65-b3e2-048972e52f33', id, '1b3c44c0-81d8-5383-890a-ab1bb6c99367', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'procedure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '28f5fc24-bf07-5a65-b3e2-048972e52f33', id, '1b3c44c0-81d8-5383-890a-ab1bb6c99367', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'hazard' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '28f5fc24-bf07-5a65-b3e2-048972e52f33', id, '1b3c44c0-81d8-5383-890a-ab1bb6c99367', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'protective equipment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '28f5fc24-bf07-5a65-b3e2-048972e52f33', id, '1b3c44c0-81d8-5383-890a-ab1bb6c99367', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'quality standard' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '28f5fc24-bf07-5a65-b3e2-048972e52f33', id, '1b3c44c0-81d8-5383-890a-ab1bb6c99367', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'inspection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '28f5fc24-bf07-5a65-b3e2-048972e52f33', id, '1b3c44c0-81d8-5383-890a-ab1bb6c99367', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'comply with' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '28f5fc24-bf07-5a65-b3e2-048972e52f33', id, '1b3c44c0-81d8-5383-890a-ab1bb6c99367', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'prevent' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '28f5fc24-bf07-5a65-b3e2-048972e52f33', id, '29dc884e-e7f1-5528-a9e5-e6a5e5314e80', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'procedure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '28f5fc24-bf07-5a65-b3e2-048972e52f33', id, '29dc884e-e7f1-5528-a9e5-e6a5e5314e80', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'hazard' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '28f5fc24-bf07-5a65-b3e2-048972e52f33', id, '29dc884e-e7f1-5528-a9e5-e6a5e5314e80', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'protective equipment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '28f5fc24-bf07-5a65-b3e2-048972e52f33', id, '29dc884e-e7f1-5528-a9e5-e6a5e5314e80', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'quality standard' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '28f5fc24-bf07-5a65-b3e2-048972e52f33', id, '29dc884e-e7f1-5528-a9e5-e6a5e5314e80', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'inspection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '28f5fc24-bf07-5a65-b3e2-048972e52f33', id, '29dc884e-e7f1-5528-a9e5-e6a5e5314e80', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'comply with' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '28f5fc24-bf07-5a65-b3e2-048972e52f33', id, '29dc884e-e7f1-5528-a9e5-e6a5e5314e80', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'prevent' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
