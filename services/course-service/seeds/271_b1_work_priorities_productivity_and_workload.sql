-- Track: B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('d05265e7-6511-5d6c-ad55-ebe4ceda4e8b', 'B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD', 'Приоритеты, продуктивность и рабочая нагрузка', 'Развивайте практический английский уровня B1 для работы по теме «Приоритеты, продуктивность и рабочая нагрузка».', '{"en":"Priorities, Productivity and Workload","ru":"Приоритеты, продуктивность и рабочая нагрузка"}'::jsonb, '{"en":"Develop practical B1 workplace English for priorities, productivity and workload.","ru":"Развивайте практический английский уровня B1 для работы по теме «Приоритеты, продуктивность и рабочая нагрузка»."}'::jsonb, 'en', 'B1', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('aaed982f-2b06-592c-b690-16714dd55a5f', NULL, 'Рабочая ситуация', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Setting Priorities","ru":"Рабочая ситуация"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('909febf5-09db-503e-bf3a-6e2f4ad7a6ca', 'aaed982f-2b06-592c-b690-16714dd55a5f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L1_W01","left":"workload","right":"рабочая нагрузка"},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L1_W02","left":"priority","right":"приоритет"},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L1_W03","left":"delegate","right":"делегировать"},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L1_W04","left":"efficient","right":"эффективный"},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L1_W05","left":"urgent","right":"срочный"},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L1_W06","left":"postpone","right":"отложить"},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L1_W07","left":"capacity","right":"рабочий ресурс"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c4bab46c-47a1-5adc-b518-5f739799ceb6', 'aaed982f-2b06-592c-b690-16714dd55a5f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L1_W08","is_correct":true,"text":"When my workload exceeds my capacity, I identify the most urgent priority and delegate suitable tasks."},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L1_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L1_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b893d8dc-b57b-541f-8526-eb14fde56b54', 'aaed982f-2b06-592c-b690-16714dd55a5f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"When my workload exceeds my capacity, I identify the most urgent priority and delegate suitable tasks.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Когда моя рабочая нагрузка превышает мои возможности, я определяю самый срочный приоритет и делегирую подходящие задачи.","target_language":"en","word_bank":["When","my","workload","exceeds","my","capacity,","I","identify","the","most","urgent","priority","and","delegate","suitable","tasks."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2672c0d7-7548-5b48-92a1-eece814ad98e', 'aaed982f-2b06-592c-b690-16714dd55a5f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"workload","instruction":"Выберите подходящее слово.","options":["workload","efficient","postpone"],"sentence_template":"When my ___ exceeds my capacity, I identify the most urgent priority and delegate suitable tasks."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7664baf1-1b10-577f-8c49-f5c9c7eb208d', 'aaed982f-2b06-592c-b690-16714dd55a5f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["When","my","workload","exceeds","my","capacity,","I","identify","the","most","urgent","priority","and","delegate","suitable","tasks."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["tasks.","suitable","delegate","and","priority","urgent","most","the","identify","I","capacity,","my","exceeds","workload","my","When"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('45f6fad8-3b08-5b47-b247-7b9a085ea68f', 'aaed982f-2b06-592c-b690-16714dd55a5f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"When my workload exceeds my capacity, I identify the most urgent priority and delegate suitable tasks. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('77416934-2866-53f4-a8b5-896b38af153c', 'aaed982f-2b06-592c-b690-16714dd55a5f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"When my workload exceeds my capacity, I identify the most urgent priority and delegate suitable tasks. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Когда моя рабочая нагрузка превышает мои возможности, я определяю самый срочный приоритет и делегирую подходящие задачи. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b6c22b22-8bd0-5aba-a204-1fa61c3bfd03', 'aaed982f-2b06-592c-b690-16714dd55a5f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"When my workload exceeds my capacity, I identify the most urgent priority and delegate suitable tasks.","translation":"Когда моя рабочая нагрузка превышает мои возможности, я определяю самый срочный приоритет и делегирую подходящие задачи.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Setting Priorities"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('68a3f827-fd28-5ad8-851c-2298c441a9cd', 'aaed982f-2b06-592c-b690-16714dd55a5f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“workload” means the amount of work to be completed.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L1_W11","is_correct":true,"text":"the amount of work to be completed"},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L1_W12","is_correct":false,"text":"a task requiring attention first"},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L1_W13","is_correct":false,"text":"give responsibility to another person"}],"word":"workload"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('397c5160-e574-5cea-8e65-4416bc90f49e', 'aaed982f-2b06-592c-b690-16714dd55a5f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"When my workload exceeds my capacity, I identify the most urgent priority and delegate suitable tasks.","explanation":"The missing workplace expression is “workload”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"workload","id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L1_W14","is_correct":true},{"audio_text":"delegate","id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L1_W15","is_correct":false},{"audio_text":"urgent","id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L1_W16","is_correct":false}],"sentence_template":"When my ___ exceeds my capacity, I identify the most urgent priority and delegate suitable tasks."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('586cd979-1314-5cd9-bde8-4f21072e572e', 'aaed982f-2b06-592c-b690-16714dd55a5f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"workload","explanation":"The sentence requires “workload” to communicate the intended workplace meaning.","hint_prefix":"wor","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"When my ___ exceeds my capacity, I identify the most urgent priority and delegate suitable tasks."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b0332cf-07eb-5d15-9170-2fa048ba07fd', 'aaed982f-2b06-592c-b690-16714dd55a5f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"workload","id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L1_W17","text":"workload"},{"audio_text":"priority","id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L1_W18","text":"priority"},{"audio_text":"delegate","id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L1_W19","text":"delegate"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e8fafdd9-a18f-5267-8646-59ce7fbf4a7e', 'aaed982f-2b06-592c-b690-16714dd55a5f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Setting Priorities”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L1_W20","is_correct":true,"text":"When my workload exceeds my capacity, I identify the most urgent priority and delegate suitable tasks."},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L1_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L1_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d05265e7-6511-5d6c-ad55-ebe4ceda4e8b', 'aaed982f-2b06-592c-b690-16714dd55a5f', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('4d919859-73ad-59b2-a059-afe2dba623a5', NULL, 'Обсуждение вариантов', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Managing Workload","ru":"Обсуждение вариантов"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('001facc4-2627-5b22-8997-b46bda81ecf9', '4d919859-73ad-59b2-a059-afe2dba623a5', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L2_W01","left":"workload","right":"рабочая нагрузка"},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L2_W02","left":"priority","right":"приоритет"},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L2_W03","left":"delegate","right":"делегировать"},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L2_W04","left":"efficient","right":"эффективный"},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L2_W05","left":"urgent","right":"срочный"},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L2_W06","left":"postpone","right":"отложить"},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L2_W07","left":"capacity","right":"рабочий ресурс"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('67f64ca1-662f-57ff-baeb-c4fd2ddc831f', '4d919859-73ad-59b2-a059-afe2dba623a5', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L2_W08","is_correct":true,"text":"The new process is more efficient because it reduces repeated work without lowering quality."},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L2_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L2_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a00b349-b4b1-50f1-9324-b09508bb81ec', '4d919859-73ad-59b2-a059-afe2dba623a5', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The new process is more efficient because it reduces repeated work without lowering quality.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Новый процесс более эффективен, потому что сокращает повторную работу без снижения качества.","target_language":"en","word_bank":["The","new","process","is","more","efficient","because","it","reduces","repeated","work","without","lowering","quality."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e6a171ac-fa61-5108-8a8e-c5b1ea5db34b', '4d919859-73ad-59b2-a059-afe2dba623a5', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"priority","instruction":"Выберите подходящее слово.","options":["priority","urgent","capacity"],"sentence_template":"The new process is more efficient because it reduces repeated work without lowering quality."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ab12da3-c455-5928-be33-bc6b2c40882f', '4d919859-73ad-59b2-a059-afe2dba623a5', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","new","process","is","more","efficient","because","it","reduces","repeated","work","without","lowering","quality."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["quality.","lowering","without","work","repeated","reduces","it","because","efficient","more","is","process","new","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('53d986a1-f82e-57ed-ba12-f7646bf13773', '4d919859-73ad-59b2-a059-afe2dba623a5', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The new process is more efficient because it reduces repeated work without lowering quality. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('220cd665-5e44-57f3-b0bf-78bda864517c', '4d919859-73ad-59b2-a059-afe2dba623a5', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The new process is more efficient because it reduces repeated work without lowering quality. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Новый процесс более эффективен, потому что сокращает повторную работу без снижения качества. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a422ffa-7512-5fcf-a32f-27f331460add', '4d919859-73ad-59b2-a059-afe2dba623a5', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"The new process is more efficient because it reduces repeated work without lowering quality.","translation":"Новый процесс более эффективен, потому что сокращает повторную работу без снижения качества.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Managing Workload"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('481edf0c-f0fc-5f79-9f78-f406c990ca03', '4d919859-73ad-59b2-a059-afe2dba623a5', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“priority” means a task requiring attention first.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L2_W11","is_correct":true,"text":"a task requiring attention first"},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L2_W12","is_correct":false,"text":"give responsibility to another person"},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L2_W13","is_correct":false,"text":"achieving results without wasted effort"}],"word":"priority"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5ee734e4-8e07-5b83-8268-d76faa9f26b4', '4d919859-73ad-59b2-a059-afe2dba623a5', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The new process is more efficient because it reduces repeated work without lowering quality.","explanation":"The missing workplace expression is “priority”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"priority","id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L2_W14","is_correct":true},{"audio_text":"efficient","id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L2_W15","is_correct":false},{"audio_text":"postpone","id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L2_W16","is_correct":false}],"sentence_template":"The new process is more efficient because it reduces repeated work without lowering quality."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5941d835-e45d-54ca-9489-46e7afd19250', '4d919859-73ad-59b2-a059-afe2dba623a5', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"priority","explanation":"The sentence requires “priority” to communicate the intended workplace meaning.","hint_prefix":"pri","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The new process is more efficient because it reduces repeated work without lowering quality."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a50097ea-9308-51b4-b39e-b7d19951fe3c', '4d919859-73ad-59b2-a059-afe2dba623a5', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"workload","id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L2_W17","text":"workload"},{"audio_text":"priority","id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L2_W18","text":"priority"},{"audio_text":"delegate","id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L2_W19","text":"delegate"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fbc7f740-fcf0-56a4-9ee6-27a6b692b2c5', '4d919859-73ad-59b2-a059-afe2dba623a5', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Managing Workload”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L2_W20","is_correct":true,"text":"The new process is more efficient because it reduces repeated work without lowering quality."},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L2_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L2_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d05265e7-6511-5d6c-ad55-ebe4ceda4e8b', '4d919859-73ad-59b2-a059-afe2dba623a5', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('3082dd40-97a1-5103-812b-8f57422dea77', NULL, 'Решение и последующие действия', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Improving Productivity","ru":"Решение и последующие действия"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('81a62247-f1d2-5ea6-8b1e-1d97d93e6e98', '3082dd40-97a1-5103-812b-8f57422dea77', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L3_W01","left":"workload","right":"рабочая нагрузка"},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L3_W02","left":"priority","right":"приоритет"},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L3_W03","left":"delegate","right":"делегировать"},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L3_W04","left":"efficient","right":"эффективный"},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L3_W05","left":"urgent","right":"срочный"},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L3_W06","left":"postpone","right":"отложить"},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L3_W07","left":"capacity","right":"рабочий ресурс"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('39a7a386-e174-5fab-9a7b-af9f6e500915', '3082dd40-97a1-5103-812b-8f57422dea77', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L3_W08","is_correct":true,"text":"We postponed a minor task so that the team could complete the client request on time."},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L3_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L3_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ac4ba5a-b99d-50fa-ac6e-00b34592fecb', '3082dd40-97a1-5103-812b-8f57422dea77', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We postponed a minor task so that the team could complete the client request on time.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мы отложили второстепенную задачу, чтобы команда могла вовремя выполнить запрос клиента.","target_language":"en","word_bank":["We","postponed","a","minor","task","so","that","the","team","could","complete","the","client","request","on","time."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0127e471-1032-511f-8118-1efefcc0e01b', '3082dd40-97a1-5103-812b-8f57422dea77', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"delegate","instruction":"Выберите подходящее слово.","options":["delegate","postpone","workload"],"sentence_template":"We postponed a minor task so that the team could complete the client request on time."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b558926a-3fa2-58fd-8e79-881ebce64e8d', '3082dd40-97a1-5103-812b-8f57422dea77', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","postponed","a","minor","task","so","that","the","team","could","complete","the","client","request","on","time."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["time.","on","request","client","the","complete","could","team","the","that","so","task","minor","a","postponed","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ecd05ac-a4f3-5456-88e5-b9047696dee8', '3082dd40-97a1-5103-812b-8f57422dea77', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We postponed a minor task so that the team could complete the client request on time. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ca7b09f-57ec-506e-8dcf-faa5810630db', '3082dd40-97a1-5103-812b-8f57422dea77', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We postponed a minor task so that the team could complete the client request on time. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Мы отложили второстепенную задачу, чтобы команда могла вовремя выполнить запрос клиента. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('53b5d31e-c179-55ac-a50d-f37fed4c4511', '3082dd40-97a1-5103-812b-8f57422dea77', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"We postponed a minor task so that the team could complete the client request on time.","translation":"Мы отложили второстепенную задачу, чтобы команда могла вовремя выполнить запрос клиента.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Improving Productivity"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('32418cf1-9273-5f45-be13-6a8b98eda958', '3082dd40-97a1-5103-812b-8f57422dea77', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“delegate” means give responsibility to another person.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L3_W11","is_correct":true,"text":"give responsibility to another person"},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L3_W12","is_correct":false,"text":"achieving results without wasted effort"},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L3_W13","is_correct":false,"text":"requiring immediate attention"}],"word":"delegate"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d2ab9e1-55db-5842-9db0-56d21b8cad6c', '3082dd40-97a1-5103-812b-8f57422dea77', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We postponed a minor task so that the team could complete the client request on time.","explanation":"The missing workplace expression is “delegate”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"delegate","id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L3_W14","is_correct":true},{"audio_text":"urgent","id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L3_W15","is_correct":false},{"audio_text":"capacity","id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L3_W16","is_correct":false}],"sentence_template":"We postponed a minor task so that the team could complete the client request on time."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e951577-fa54-5c02-a72d-0ff1e8c8ed45', '3082dd40-97a1-5103-812b-8f57422dea77', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"delegate","explanation":"The sentence requires “delegate” to communicate the intended workplace meaning.","hint_prefix":"del","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We postponed a minor task so that the team could complete the client request on time."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('305adbee-898f-56a1-a749-0b58ce6ea4f8', '3082dd40-97a1-5103-812b-8f57422dea77', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"workload","id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L3_W17","text":"workload"},{"audio_text":"priority","id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L3_W18","text":"priority"},{"audio_text":"delegate","id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L3_W19","text":"delegate"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('74aca759-15f9-5938-a6a2-a2493860b5e7', '3082dd40-97a1-5103-812b-8f57422dea77', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Improving Productivity”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L3_W20","is_correct":true,"text":"We postponed a minor task so that the team could complete the client request on time."},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L3_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_PRIORITIES_PRODUCTIVITY_AND_WORKLOAD_L3_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d05265e7-6511-5d6c-ad55-ebe4ceda4e8b', '3082dd40-97a1-5103-812b-8f57422dea77', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4ad582a0-2e6e-519c-9660-c3b9ffe798f3', 'en', 'workload', 'рабочая нагрузка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6a5d16a1-7f9e-5c34-bf92-150d61852a8b', 'en', 'priority', 'приоритет', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b233571b-4d97-5f3b-87b5-24fb89c116c7', 'en', 'delegate', 'делегировать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8503622f-b04b-5a20-8f34-97ea0ef4899d', 'en', 'efficient', 'эффективный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1e18bf8e-cee9-58ff-92cd-a52142e7de44', 'en', 'urgent', 'срочный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3a223fb-a5b1-55d6-8f4a-3037c444b4e7', 'en', 'postpone', 'отложить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eb989026-0d95-5265-b124-a60447d7f83c', 'en', 'capacity', 'рабочий ресурс', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4ad582a0-2e6e-519c-9660-c3b9ffe798f3', 'en', 'workload', 'рабочая нагрузка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6a5d16a1-7f9e-5c34-bf92-150d61852a8b', 'en', 'priority', 'приоритет', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b233571b-4d97-5f3b-87b5-24fb89c116c7', 'en', 'delegate', 'делегировать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8503622f-b04b-5a20-8f34-97ea0ef4899d', 'en', 'efficient', 'эффективный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1e18bf8e-cee9-58ff-92cd-a52142e7de44', 'en', 'urgent', 'срочный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3a223fb-a5b1-55d6-8f4a-3037c444b4e7', 'en', 'postpone', 'отложить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eb989026-0d95-5265-b124-a60447d7f83c', 'en', 'capacity', 'рабочий ресурс', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4ad582a0-2e6e-519c-9660-c3b9ffe798f3', 'en', 'workload', 'рабочая нагрузка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6a5d16a1-7f9e-5c34-bf92-150d61852a8b', 'en', 'priority', 'приоритет', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b233571b-4d97-5f3b-87b5-24fb89c116c7', 'en', 'delegate', 'делегировать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8503622f-b04b-5a20-8f34-97ea0ef4899d', 'en', 'efficient', 'эффективный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1e18bf8e-cee9-58ff-92cd-a52142e7de44', 'en', 'urgent', 'срочный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3a223fb-a5b1-55d6-8f4a-3037c444b4e7', 'en', 'postpone', 'отложить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eb989026-0d95-5265-b124-a60447d7f83c', 'en', 'capacity', 'рабочий ресурс', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd05265e7-6511-5d6c-ad55-ebe4ceda4e8b', id, 'aaed982f-2b06-592c-b690-16714dd55a5f', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'workload' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd05265e7-6511-5d6c-ad55-ebe4ceda4e8b', id, 'aaed982f-2b06-592c-b690-16714dd55a5f', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'priority' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd05265e7-6511-5d6c-ad55-ebe4ceda4e8b', id, 'aaed982f-2b06-592c-b690-16714dd55a5f', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'delegate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd05265e7-6511-5d6c-ad55-ebe4ceda4e8b', id, 'aaed982f-2b06-592c-b690-16714dd55a5f', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'efficient' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd05265e7-6511-5d6c-ad55-ebe4ceda4e8b', id, 'aaed982f-2b06-592c-b690-16714dd55a5f', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'urgent' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd05265e7-6511-5d6c-ad55-ebe4ceda4e8b', id, 'aaed982f-2b06-592c-b690-16714dd55a5f', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'postpone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd05265e7-6511-5d6c-ad55-ebe4ceda4e8b', id, 'aaed982f-2b06-592c-b690-16714dd55a5f', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'capacity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd05265e7-6511-5d6c-ad55-ebe4ceda4e8b', id, '4d919859-73ad-59b2-a059-afe2dba623a5', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'workload' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd05265e7-6511-5d6c-ad55-ebe4ceda4e8b', id, '4d919859-73ad-59b2-a059-afe2dba623a5', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'priority' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd05265e7-6511-5d6c-ad55-ebe4ceda4e8b', id, '4d919859-73ad-59b2-a059-afe2dba623a5', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'delegate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd05265e7-6511-5d6c-ad55-ebe4ceda4e8b', id, '4d919859-73ad-59b2-a059-afe2dba623a5', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'efficient' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd05265e7-6511-5d6c-ad55-ebe4ceda4e8b', id, '4d919859-73ad-59b2-a059-afe2dba623a5', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'urgent' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd05265e7-6511-5d6c-ad55-ebe4ceda4e8b', id, '4d919859-73ad-59b2-a059-afe2dba623a5', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'postpone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd05265e7-6511-5d6c-ad55-ebe4ceda4e8b', id, '4d919859-73ad-59b2-a059-afe2dba623a5', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'capacity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd05265e7-6511-5d6c-ad55-ebe4ceda4e8b', id, '3082dd40-97a1-5103-812b-8f57422dea77', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'workload' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd05265e7-6511-5d6c-ad55-ebe4ceda4e8b', id, '3082dd40-97a1-5103-812b-8f57422dea77', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'priority' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd05265e7-6511-5d6c-ad55-ebe4ceda4e8b', id, '3082dd40-97a1-5103-812b-8f57422dea77', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'delegate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd05265e7-6511-5d6c-ad55-ebe4ceda4e8b', id, '3082dd40-97a1-5103-812b-8f57422dea77', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'efficient' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd05265e7-6511-5d6c-ad55-ebe4ceda4e8b', id, '3082dd40-97a1-5103-812b-8f57422dea77', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'urgent' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd05265e7-6511-5d6c-ad55-ebe4ceda4e8b', id, '3082dd40-97a1-5103-812b-8f57422dea77', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'postpone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd05265e7-6511-5d6c-ad55-ebe4ceda4e8b', id, '3082dd40-97a1-5103-812b-8f57422dea77', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'capacity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
