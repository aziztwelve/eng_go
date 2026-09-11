-- Track: B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('f1552268-74bb-56c4-bc08-d746cc4a21cd', 'B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT', 'Рабочие технологии и техническая поддержка', 'Развивайте практический английский уровня B1 для работы по теме «Рабочие технологии и техническая поддержка».', '{"en":"Workplace Technology and Technical Support","ru":"Рабочие технологии и техническая поддержка"}'::jsonb, '{"en":"Develop practical B1 workplace English for workplace technology and technical support.","ru":"Развивайте практический английский уровня B1 для работы по теме «Рабочие технологии и техническая поддержка»."}'::jsonb, 'en', 'B1', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('169fa1bb-b71f-5f8b-85e5-12551c5ef8e0', NULL, 'Рабочая ситуация', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Using Workplace Systems","ru":"Рабочая ситуация"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e3168ca5-b461-51ac-a117-92a8771f7a6b', '169fa1bb-b71f-5f8b-85e5-12551c5ef8e0', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L1_W01","left":"technical issue","right":"техническая проблема"},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L1_W02","left":"troubleshoot","right":"устранять неполадки"},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L1_W03","left":"access","right":"доступ"},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L1_W04","left":"backup","right":"резервная копия"},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L1_W05","left":"update","right":"обновление"},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L1_W06","left":"restart","right":"перезапустить"},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L1_W07","left":"report a fault","right":"сообщить о неисправности"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('14c944d5-9ceb-50c1-b770-88be431f67e1', '169fa1bb-b71f-5f8b-85e5-12551c5ef8e0', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L1_W08","is_correct":true,"text":"I reported the technical issue after restarting the device failed to restore access."},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L1_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L1_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ffa90fe-902f-5c7a-b8e8-4e9ad84ac8d9', '169fa1bb-b71f-5f8b-85e5-12551c5ef8e0', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I reported the technical issue after restarting the device failed to restore access.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я сообщил о технической проблеме после того, как перезапуск устройства не восстановил доступ.","target_language":"en","word_bank":["I","reported","the","technical","issue","after","restarting","the","device","failed","to","restore","access."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ba60aa63-a708-5219-9411-5e7ec1574e17', '169fa1bb-b71f-5f8b-85e5-12551c5ef8e0', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"technical issue","instruction":"Выберите подходящее слово.","options":["technical issue","backup","restart"],"sentence_template":"I reported the ___ after restarting the device failed to restore access."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('408ce39d-d635-5db3-b09e-864773202198', '169fa1bb-b71f-5f8b-85e5-12551c5ef8e0', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","reported","the","technical","issue","after","restarting","the","device","failed","to","restore","access."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["access.","restore","to","failed","device","the","restarting","after","issue","technical","the","reported","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('421c6d00-e9d6-5b75-8d2b-0c8ffc0c038d', '169fa1bb-b71f-5f8b-85e5-12551c5ef8e0', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I reported the technical issue after restarting the device failed to restore access. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('27cd4f77-105f-5ff2-8b47-f14af31fb46d', '169fa1bb-b71f-5f8b-85e5-12551c5ef8e0', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I reported the technical issue after restarting the device failed to restore access. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Я сообщил о технической проблеме после того, как перезапуск устройства не восстановил доступ. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('263b6331-9f3d-57f1-888d-ade54827ebb2', '169fa1bb-b71f-5f8b-85e5-12551c5ef8e0', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"I reported the technical issue after restarting the device failed to restore access.","translation":"Я сообщил о технической проблеме после того, как перезапуск устройства не восстановил доступ.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Using Workplace Systems"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a15c5daf-885b-5c86-8c38-61c14588795b', '169fa1bb-b71f-5f8b-85e5-12551c5ef8e0', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“technical issue” means a problem involving equipment or software.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L1_W11","is_correct":true,"text":"a problem involving equipment or software"},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L1_W12","is_correct":false,"text":"identify and solve a technical problem"},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L1_W13","is_correct":false,"text":"permission to use a system"}],"word":"technical issue"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a14f76c0-e392-5efb-a176-9b8d017c3c6b', '169fa1bb-b71f-5f8b-85e5-12551c5ef8e0', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I reported the technical issue after restarting the device failed to restore access.","explanation":"The missing workplace expression is “technical issue”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"technical issue","id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L1_W14","is_correct":true},{"audio_text":"access","id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L1_W15","is_correct":false},{"audio_text":"update","id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L1_W16","is_correct":false}],"sentence_template":"I reported the ___ after restarting the device failed to restore access."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a0339f1-b1f7-5db8-b41d-5a70f3d14c83', '169fa1bb-b71f-5f8b-85e5-12551c5ef8e0', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"technical issue","explanation":"The sentence requires “technical issue” to communicate the intended workplace meaning.","hint_prefix":"tec","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I reported the ___ after restarting the device failed to restore access."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('239af51c-7c9a-512f-a98f-661ebe2ba21a', '169fa1bb-b71f-5f8b-85e5-12551c5ef8e0', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"technical issue","id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L1_W17","text":"technical issue"},{"audio_text":"troubleshoot","id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L1_W18","text":"troubleshoot"},{"audio_text":"access","id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L1_W19","text":"access"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c04019c9-8f9b-5896-ad37-79aefe6c4dac', '169fa1bb-b71f-5f8b-85e5-12551c5ef8e0', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Using Workplace Systems”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L1_W20","is_correct":true,"text":"I reported the technical issue after restarting the device failed to restore access."},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L1_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L1_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f1552268-74bb-56c4-bc08-d746cc4a21cd', '169fa1bb-b71f-5f8b-85e5-12551c5ef8e0', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f88dc000-b4db-5465-b3e0-d8cf4b03425b', NULL, 'Обсуждение вариантов', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Reporting Technical Issues","ru":"Обсуждение вариантов"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf1e9fcc-4486-5709-8cfa-6514e52fe634', 'f88dc000-b4db-5465-b3e0-d8cf4b03425b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L2_W01","left":"technical issue","right":"техническая проблема"},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L2_W02","left":"troubleshoot","right":"устранять неполадки"},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L2_W03","left":"access","right":"доступ"},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L2_W04","left":"backup","right":"резервная копия"},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L2_W05","left":"update","right":"обновление"},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L2_W06","left":"restart","right":"перезапустить"},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L2_W07","left":"report a fault","right":"сообщить о неисправности"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d9620842-c961-54a5-9402-70adf18a4921', 'f88dc000-b4db-5465-b3e0-d8cf4b03425b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L2_W08","is_correct":true,"text":"The support engineer troubleshot the connection and discovered that the latest update had changed a setting."},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L2_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L2_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b087ee3-e953-59e3-a21b-1569c4b30cae', 'f88dc000-b4db-5465-b3e0-d8cf4b03425b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The support engineer troubleshot the connection and discovered that the latest update had changed a setting.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Специалист поддержки устранил неполадку соединения и обнаружил, что последнее обновление изменило настройку.","target_language":"en","word_bank":["The","support","engineer","troubleshot","the","connection","and","discovered","that","the","latest","update","had","changed","a","setting."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('91746953-7311-56c6-a2ba-783ad75232bd', 'f88dc000-b4db-5465-b3e0-d8cf4b03425b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"troubleshoot","instruction":"Выберите подходящее слово.","options":["troubleshoot","update","report a fault"],"sentence_template":"The support engineer troubleshot the connection and discovered that the latest update had changed a setting."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d08a14df-8273-518b-891c-48007a17ddea', 'f88dc000-b4db-5465-b3e0-d8cf4b03425b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","support","engineer","troubleshot","the","connection","and","discovered","that","the","latest","update","had","changed","a","setting."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["setting.","a","changed","had","update","latest","the","that","discovered","and","connection","the","troubleshot","engineer","support","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3fb63062-ac11-5935-9790-eb0a96ef3c24', 'f88dc000-b4db-5465-b3e0-d8cf4b03425b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The support engineer troubleshot the connection and discovered that the latest update had changed a setting. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4f03765a-e929-5ae8-baf9-816df9639469', 'f88dc000-b4db-5465-b3e0-d8cf4b03425b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The support engineer troubleshot the connection and discovered that the latest update had changed a setting. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Специалист поддержки устранил неполадку соединения и обнаружил, что последнее обновление изменило настройку. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('30be695c-7c9f-5f3e-81cd-54f7533b5d4d', 'f88dc000-b4db-5465-b3e0-d8cf4b03425b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"The support engineer troubleshot the connection and discovered that the latest update had changed a setting.","translation":"Специалист поддержки устранил неполадку соединения и обнаружил, что последнее обновление изменило настройку.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Reporting Technical Issues"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f267e95f-83b3-5f8f-bc7d-511eac44ec1b', 'f88dc000-b4db-5465-b3e0-d8cf4b03425b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“troubleshoot” means identify and solve a technical problem.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L2_W11","is_correct":true,"text":"identify and solve a technical problem"},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L2_W12","is_correct":false,"text":"permission to use a system"},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L2_W13","is_correct":false,"text":"a saved copy of data"}],"word":"troubleshoot"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e4cb4827-1db2-5c36-b9c8-7eefe687e2e6', 'f88dc000-b4db-5465-b3e0-d8cf4b03425b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The support engineer troubleshot the connection and discovered that the latest update had changed a setting.","explanation":"The missing workplace expression is “troubleshoot”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"troubleshoot","id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L2_W14","is_correct":true},{"audio_text":"backup","id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L2_W15","is_correct":false},{"audio_text":"restart","id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L2_W16","is_correct":false}],"sentence_template":"The support engineer troubleshot the connection and discovered that the latest update had changed a setting."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('01b8561f-f609-58dc-a873-d9185a8c821e', 'f88dc000-b4db-5465-b3e0-d8cf4b03425b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"troubleshoot","explanation":"The sentence requires “troubleshoot” to communicate the intended workplace meaning.","hint_prefix":"tro","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The support engineer troubleshot the connection and discovered that the latest update had changed a setting."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('929f58e3-ed94-5348-9d85-56f5d44c278d', 'f88dc000-b4db-5465-b3e0-d8cf4b03425b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"technical issue","id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L2_W17","text":"technical issue"},{"audio_text":"troubleshoot","id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L2_W18","text":"troubleshoot"},{"audio_text":"access","id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L2_W19","text":"access"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf048790-0093-5029-b6fc-883a9f1608f5', 'f88dc000-b4db-5465-b3e0-d8cf4b03425b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Reporting Technical Issues”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L2_W20","is_correct":true,"text":"The support engineer troubleshot the connection and discovered that the latest update had changed a setting."},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L2_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L2_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f1552268-74bb-56c4-bc08-d746cc4a21cd', 'f88dc000-b4db-5465-b3e0-d8cf4b03425b', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('dcbf4bac-355b-5267-877e-df57c5a6fb37', NULL, 'Решение и последующие действия', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Following Support Advice","ru":"Решение и последующие действия"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1e4d3e9-5adf-53dd-a566-5cab5073936f', 'dcbf4bac-355b-5267-877e-df57c5a6fb37', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L3_W01","left":"technical issue","right":"техническая проблема"},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L3_W02","left":"troubleshoot","right":"устранять неполадки"},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L3_W03","left":"access","right":"доступ"},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L3_W04","left":"backup","right":"резервная копия"},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L3_W05","left":"update","right":"обновление"},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L3_W06","left":"restart","right":"перезапустить"},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L3_W07","left":"report a fault","right":"сообщить о неисправности"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4fd9519e-a4e7-5104-b0be-fa0b1d88c966', 'dcbf4bac-355b-5267-877e-df57c5a6fb37', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L3_W08","is_correct":true,"text":"Before replacing the equipment, make a backup and report the fault through the official system."},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L3_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L3_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1222c147-da98-5be6-9b77-b74b858e5b00', 'dcbf4bac-355b-5267-877e-df57c5a6fb37', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Before replacing the equipment, make a backup and report the fault through the official system.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Перед заменой оборудования сделайте резервную копию и сообщите о неисправности через официальную систему.","target_language":"en","word_bank":["Before","replacing","the","equipment,","make","a","backup","and","report","the","fault","through","the","official","system."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('370254c4-6364-5ff1-a084-798dffe32fe0', 'dcbf4bac-355b-5267-877e-df57c5a6fb37', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"access","instruction":"Выберите подходящее слово.","options":["access","restart","technical issue"],"sentence_template":"Before replacing the equipment, make a backup and report the fault through the official system."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a39cfe7-7a10-59e5-a2f3-ffc55592ab3f', 'dcbf4bac-355b-5267-877e-df57c5a6fb37', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Before","replacing","the","equipment,","make","a","backup","and","report","the","fault","through","the","official","system."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["system.","official","the","through","fault","the","report","and","backup","a","make","equipment,","the","replacing","Before"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1de8c484-a4b4-58ea-ba6d-90dc5970f214', 'dcbf4bac-355b-5267-877e-df57c5a6fb37', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Before replacing the equipment, make a backup and report the fault through the official system. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78ef389c-9c9b-5b7c-a57a-a89840dcc14c', 'dcbf4bac-355b-5267-877e-df57c5a6fb37', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Before replacing the equipment, make a backup and report the fault through the official system. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Перед заменой оборудования сделайте резервную копию и сообщите о неисправности через официальную систему. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7103864b-9dc0-52b6-9203-90e614ecd114', 'dcbf4bac-355b-5267-877e-df57c5a6fb37', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"Before replacing the equipment, make a backup and report the fault through the official system.","translation":"Перед заменой оборудования сделайте резервную копию и сообщите о неисправности через официальную систему.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Following Support Advice"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a40d7f04-0e24-5a2c-aecf-a943250c3e6d', 'dcbf4bac-355b-5267-877e-df57c5a6fb37', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“access” means permission to use a system.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L3_W11","is_correct":true,"text":"permission to use a system"},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L3_W12","is_correct":false,"text":"a saved copy of data"},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L3_W13","is_correct":false,"text":"a newer version of software"}],"word":"access"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('20c30d8f-c8d1-5ac0-b92c-809db790bf82', 'dcbf4bac-355b-5267-877e-df57c5a6fb37', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Before replacing the equipment, make a backup and report the fault through the official system.","explanation":"The missing workplace expression is “access”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"access","id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L3_W14","is_correct":true},{"audio_text":"update","id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L3_W15","is_correct":false},{"audio_text":"report a fault","id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L3_W16","is_correct":false}],"sentence_template":"Before replacing the equipment, make a backup and report the fault through the official system."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('594a942f-d8d3-52f6-8137-3b7d2485a45f', 'dcbf4bac-355b-5267-877e-df57c5a6fb37', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"access","explanation":"The sentence requires “access” to communicate the intended workplace meaning.","hint_prefix":"acc","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Before replacing the equipment, make a backup and report the fault through the official system."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('66c13e31-22c4-53a0-b1dc-5ec1b3a4bd44', 'dcbf4bac-355b-5267-877e-df57c5a6fb37', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"technical issue","id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L3_W17","text":"technical issue"},{"audio_text":"troubleshoot","id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L3_W18","text":"troubleshoot"},{"audio_text":"access","id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L3_W19","text":"access"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('99915bec-f757-5287-bf82-150fe9749e22', 'dcbf4bac-355b-5267-877e-df57c5a6fb37', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Following Support Advice”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L3_W20","is_correct":true,"text":"Before replacing the equipment, make a backup and report the fault through the official system."},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L3_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_WORKPLACE_TECHNOLOGY_AND_TECHNICAL_SUPPORT_L3_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f1552268-74bb-56c4-bc08-d746cc4a21cd', 'dcbf4bac-355b-5267-877e-df57c5a6fb37', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0cba7ccd-8ac9-5393-912e-3a351da7bc49', 'en', 'technical issue', 'техническая проблема', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c4d854bd-0189-56ef-a4cd-5144e98e130d', 'en', 'troubleshoot', 'устранять неполадки', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ad24171c-5145-5ed4-b48d-0cadea235cd1', 'en', 'access', 'доступ', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5da2aebb-f551-5aae-a77e-4f8ac9a81c38', 'en', 'backup', 'резервная копия', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3868ed7b-ea36-539b-bf36-ac6c93c6743f', 'en', 'update', 'обновление', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f58ed1f8-61e2-50e1-b604-e97a4e18188f', 'en', 'restart', 'перезапустить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('55357aa1-c249-5c8b-bbda-6a2e1f42e838', 'en', 'report a fault', 'сообщить о неисправности', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0cba7ccd-8ac9-5393-912e-3a351da7bc49', 'en', 'technical issue', 'техническая проблема', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c4d854bd-0189-56ef-a4cd-5144e98e130d', 'en', 'troubleshoot', 'устранять неполадки', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ad24171c-5145-5ed4-b48d-0cadea235cd1', 'en', 'access', 'доступ', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5da2aebb-f551-5aae-a77e-4f8ac9a81c38', 'en', 'backup', 'резервная копия', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3868ed7b-ea36-539b-bf36-ac6c93c6743f', 'en', 'update', 'обновление', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f58ed1f8-61e2-50e1-b604-e97a4e18188f', 'en', 'restart', 'перезапустить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('55357aa1-c249-5c8b-bbda-6a2e1f42e838', 'en', 'report a fault', 'сообщить о неисправности', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0cba7ccd-8ac9-5393-912e-3a351da7bc49', 'en', 'technical issue', 'техническая проблема', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c4d854bd-0189-56ef-a4cd-5144e98e130d', 'en', 'troubleshoot', 'устранять неполадки', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ad24171c-5145-5ed4-b48d-0cadea235cd1', 'en', 'access', 'доступ', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5da2aebb-f551-5aae-a77e-4f8ac9a81c38', 'en', 'backup', 'резервная копия', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3868ed7b-ea36-539b-bf36-ac6c93c6743f', 'en', 'update', 'обновление', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f58ed1f8-61e2-50e1-b604-e97a4e18188f', 'en', 'restart', 'перезапустить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('55357aa1-c249-5c8b-bbda-6a2e1f42e838', 'en', 'report a fault', 'сообщить о неисправности', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f1552268-74bb-56c4-bc08-d746cc4a21cd', id, '169fa1bb-b71f-5f8b-85e5-12551c5ef8e0', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'technical issue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f1552268-74bb-56c4-bc08-d746cc4a21cd', id, '169fa1bb-b71f-5f8b-85e5-12551c5ef8e0', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'troubleshoot' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f1552268-74bb-56c4-bc08-d746cc4a21cd', id, '169fa1bb-b71f-5f8b-85e5-12551c5ef8e0', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'access' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f1552268-74bb-56c4-bc08-d746cc4a21cd', id, '169fa1bb-b71f-5f8b-85e5-12551c5ef8e0', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'backup' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f1552268-74bb-56c4-bc08-d746cc4a21cd', id, '169fa1bb-b71f-5f8b-85e5-12551c5ef8e0', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'update' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f1552268-74bb-56c4-bc08-d746cc4a21cd', id, '169fa1bb-b71f-5f8b-85e5-12551c5ef8e0', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'restart' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f1552268-74bb-56c4-bc08-d746cc4a21cd', id, '169fa1bb-b71f-5f8b-85e5-12551c5ef8e0', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'report a fault' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f1552268-74bb-56c4-bc08-d746cc4a21cd', id, 'f88dc000-b4db-5465-b3e0-d8cf4b03425b', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'technical issue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f1552268-74bb-56c4-bc08-d746cc4a21cd', id, 'f88dc000-b4db-5465-b3e0-d8cf4b03425b', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'troubleshoot' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f1552268-74bb-56c4-bc08-d746cc4a21cd', id, 'f88dc000-b4db-5465-b3e0-d8cf4b03425b', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'access' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f1552268-74bb-56c4-bc08-d746cc4a21cd', id, 'f88dc000-b4db-5465-b3e0-d8cf4b03425b', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'backup' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f1552268-74bb-56c4-bc08-d746cc4a21cd', id, 'f88dc000-b4db-5465-b3e0-d8cf4b03425b', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'update' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f1552268-74bb-56c4-bc08-d746cc4a21cd', id, 'f88dc000-b4db-5465-b3e0-d8cf4b03425b', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'restart' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f1552268-74bb-56c4-bc08-d746cc4a21cd', id, 'f88dc000-b4db-5465-b3e0-d8cf4b03425b', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'report a fault' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f1552268-74bb-56c4-bc08-d746cc4a21cd', id, 'dcbf4bac-355b-5267-877e-df57c5a6fb37', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'technical issue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f1552268-74bb-56c4-bc08-d746cc4a21cd', id, 'dcbf4bac-355b-5267-877e-df57c5a6fb37', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'troubleshoot' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f1552268-74bb-56c4-bc08-d746cc4a21cd', id, 'dcbf4bac-355b-5267-877e-df57c5a6fb37', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'access' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f1552268-74bb-56c4-bc08-d746cc4a21cd', id, 'dcbf4bac-355b-5267-877e-df57c5a6fb37', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'backup' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f1552268-74bb-56c4-bc08-d746cc4a21cd', id, 'dcbf4bac-355b-5267-877e-df57c5a6fb37', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'update' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f1552268-74bb-56c4-bc08-d746cc4a21cd', id, 'dcbf4bac-355b-5267-877e-df57c5a6fb37', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'restart' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f1552268-74bb-56c4-bc08-d746cc4a21cd', id, 'dcbf4bac-355b-5267-877e-df57c5a6fb37', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'report a fault' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
