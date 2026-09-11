-- Track: B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('1e890cab-8517-5812-9f13-fe8bbca5e9c6', 'B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS', 'Проекты, задачи и отчёты о ходе работы', 'Развивайте практический английский уровня B1 для работы по теме «Проекты, задачи и отчёты о ходе работы».', '{"en":"Projects, Tasks and Progress Reports","ru":"Проекты, задачи и отчёты о ходе работы"}'::jsonb, '{"en":"Develop practical B1 workplace English for projects, tasks and progress reports.","ru":"Развивайте практический английский уровня B1 для работы по теме «Проекты, задачи и отчёты о ходе работы»."}'::jsonb, 'en', 'B1', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5e062a61-cac6-5342-b689-a20849cffbc2', NULL, 'Рабочая ситуация', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Planning Tasks","ru":"Рабочая ситуация"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc8847d0-a024-5c42-ba1a-4e19de683a46', '5e062a61-cac6-5342-b689-a20849cffbc2', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L1_W01","left":"milestone","right":"ключевой этап"},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L1_W02","left":"on schedule","right":"по графику"},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L1_W03","left":"delay","right":"задержка"},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L1_W04","left":"update","right":"обновление"},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L1_W05","left":"complete","right":"завершить"},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L1_W06","left":"issue","right":"проблема"},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L1_W07","left":"next step","right":"следующий шаг"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8945e473-1e75-5d98-978a-b7e51564880c', '5e062a61-cac6-5342-b689-a20849cffbc2', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L1_W08","is_correct":true,"text":"We reached the first milestone on schedule, although one technical issue still needs attention."},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L1_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L1_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1515660e-d223-588e-9a22-0293ab7118fd', '5e062a61-cac6-5342-b689-a20849cffbc2', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We reached the first milestone on schedule, although one technical issue still needs attention.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мы достигли первого ключевого этапа по графику, хотя одна техническая проблема всё ещё требует внимания.","target_language":"en","word_bank":["We","reached","the","first","milestone","on","schedule,","although","one","technical","issue","still","needs","attention."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f3fa07a0-84f7-5491-9d35-6d6e446b14c2', '5e062a61-cac6-5342-b689-a20849cffbc2', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"milestone","instruction":"Выберите подходящее слово.","options":["milestone","update","issue"],"sentence_template":"We reached the first ___ on schedule, although one technical issue still needs attention."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('27584fd3-ac2d-50dc-a58c-64933b0fe1b0', '5e062a61-cac6-5342-b689-a20849cffbc2', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","reached","the","first","milestone","on","schedule,","although","one","technical","issue","still","needs","attention."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["attention.","needs","still","issue","technical","one","although","schedule,","on","milestone","first","the","reached","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2e78061-13d3-5291-b2d6-6767b7e547f8', '5e062a61-cac6-5342-b689-a20849cffbc2', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We reached the first milestone on schedule, although one technical issue still needs attention. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65a1c96c-5186-5acc-ae5e-c99d9b0fe894', '5e062a61-cac6-5342-b689-a20849cffbc2', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We reached the first milestone on schedule, although one technical issue still needs attention. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Мы достигли первого ключевого этапа по графику, хотя одна техническая проблема всё ещё требует внимания. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5859e706-c28d-5e0d-b6f1-7ef8840c61de', '5e062a61-cac6-5342-b689-a20849cffbc2', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"We reached the first milestone on schedule, although one technical issue still needs attention.","translation":"Мы достигли первого ключевого этапа по графику, хотя одна техническая проблема всё ещё требует внимания.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Planning Tasks"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1eb130d8-7c1a-5b59-9df7-8e5b25afa7da', '5e062a61-cac6-5342-b689-a20849cffbc2', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“milestone” means an important point in a project.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L1_W11","is_correct":true,"text":"an important point in a project"},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L1_W12","is_correct":false,"text":"progressing at the planned rate"},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L1_W13","is_correct":false,"text":"a period of waiting beyond the plan"}],"word":"milestone"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b8d55df6-a038-53f0-bddc-167af50e5670', '5e062a61-cac6-5342-b689-a20849cffbc2', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We reached the first milestone on schedule, although one technical issue still needs attention.","explanation":"The missing workplace expression is “milestone”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"milestone","id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L1_W14","is_correct":true},{"audio_text":"delay","id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L1_W15","is_correct":false},{"audio_text":"complete","id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L1_W16","is_correct":false}],"sentence_template":"We reached the first ___ on schedule, although one technical issue still needs attention."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('234332dc-af59-54f2-8148-4485f43f4738', '5e062a61-cac6-5342-b689-a20849cffbc2', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"milestone","explanation":"The sentence requires “milestone” to communicate the intended workplace meaning.","hint_prefix":"mil","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We reached the first ___ on schedule, although one technical issue still needs attention."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce2c2b18-c3f9-59e5-9d18-33726b7fb29c', '5e062a61-cac6-5342-b689-a20849cffbc2', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"milestone","id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L1_W17","text":"milestone"},{"audio_text":"on schedule","id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L1_W18","text":"on schedule"},{"audio_text":"delay","id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L1_W19","text":"delay"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c10f7b8d-a6d5-5ae7-94f9-15c13ddd492a', '5e062a61-cac6-5342-b689-a20849cffbc2', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Planning Tasks”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L1_W20","is_correct":true,"text":"We reached the first milestone on schedule, although one technical issue still needs attention."},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L1_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L1_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1e890cab-8517-5812-9f13-fe8bbca5e9c6', '5e062a61-cac6-5342-b689-a20849cffbc2', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5982320a-a649-5626-b100-2127acbc1905', NULL, 'Обсуждение вариантов', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Reporting Progress","ru":"Обсуждение вариантов"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0251b0cd-ba91-5f5c-874c-34e9a7d05b33', '5982320a-a649-5626-b100-2127acbc1905', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L2_W01","left":"milestone","right":"ключевой этап"},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L2_W02","left":"on schedule","right":"по графику"},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L2_W03","left":"delay","right":"задержка"},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L2_W04","left":"update","right":"обновление"},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L2_W05","left":"complete","right":"завершить"},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L2_W06","left":"issue","right":"проблема"},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L2_W07","left":"next step","right":"следующий шаг"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('19f2d4e3-9c2e-5d78-b808-a12559425a9c', '5982320a-a649-5626-b100-2127acbc1905', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L2_W08","is_correct":true,"text":"The progress update explains the cause of the delay and shows which tasks have already been completed."},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L2_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L2_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a559af9-da7b-5a46-94c7-810abeb4616e', '5982320a-a649-5626-b100-2127acbc1905', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The progress update explains the cause of the delay and shows which tasks have already been completed.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Отчёт о ходе работы объясняет причину задержки и показывает, какие задачи уже выполнены.","target_language":"en","word_bank":["The","progress","update","explains","the","cause","of","the","delay","and","shows","which","tasks","have","already","been","completed."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c1763889-e7be-5562-b93c-a992b50d17bf', '5982320a-a649-5626-b100-2127acbc1905', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"on schedule","instruction":"Выберите подходящее слово.","options":["on schedule","complete","next step"],"sentence_template":"The progress update explains the cause of the delay and shows which tasks have already been completed."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e9fff10-9638-5c5b-a13e-f6961ae575fb', '5982320a-a649-5626-b100-2127acbc1905', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","progress","update","explains","the","cause","of","the","delay","and","shows","which","tasks","have","already","been","completed."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["completed.","been","already","have","tasks","which","shows","and","delay","the","of","cause","the","explains","update","progress","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e6efe09-9af3-527f-b243-2397049ba5cf', '5982320a-a649-5626-b100-2127acbc1905', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The progress update explains the cause of the delay and shows which tasks have already been completed. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d120fc3f-461a-5cdb-a723-47ff50d2157e', '5982320a-a649-5626-b100-2127acbc1905', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The progress update explains the cause of the delay and shows which tasks have already been completed. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Отчёт о ходе работы объясняет причину задержки и показывает, какие задачи уже выполнены. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cee1a0d0-0798-545d-9857-099040216602', '5982320a-a649-5626-b100-2127acbc1905', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"The progress update explains the cause of the delay and shows which tasks have already been completed.","translation":"Отчёт о ходе работы объясняет причину задержки и показывает, какие задачи уже выполнены.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Reporting Progress"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('106942bb-69e5-5af1-b44a-f8075f3c8487', '5982320a-a649-5626-b100-2127acbc1905', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“on schedule” means progressing at the planned rate.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L2_W11","is_correct":true,"text":"progressing at the planned rate"},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L2_W12","is_correct":false,"text":"a period of waiting beyond the plan"},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L2_W13","is_correct":false,"text":"new information about progress"}],"word":"on schedule"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0f662ec1-d5b1-5025-a31f-4e120742b3a7', '5982320a-a649-5626-b100-2127acbc1905', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The progress update explains the cause of the delay and shows which tasks have already been completed.","explanation":"The missing workplace expression is “on schedule”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"on schedule","id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L2_W14","is_correct":true},{"audio_text":"update","id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L2_W15","is_correct":false},{"audio_text":"issue","id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L2_W16","is_correct":false}],"sentence_template":"The progress update explains the cause of the delay and shows which tasks have already been completed."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e2cd6e5c-de23-5a91-916d-0676cac23cc1', '5982320a-a649-5626-b100-2127acbc1905', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"on schedule","explanation":"The sentence requires “on schedule” to communicate the intended workplace meaning.","hint_prefix":"on ","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The progress update explains the cause of the delay and shows which tasks have already been completed."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e70f5ea-3c63-57cd-88aa-40d0d24d91aa', '5982320a-a649-5626-b100-2127acbc1905', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"milestone","id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L2_W17","text":"milestone"},{"audio_text":"on schedule","id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L2_W18","text":"on schedule"},{"audio_text":"delay","id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L2_W19","text":"delay"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('97f16782-8976-5e12-b782-297faf87d9d0', '5982320a-a649-5626-b100-2127acbc1905', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Reporting Progress”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L2_W20","is_correct":true,"text":"The progress update explains the cause of the delay and shows which tasks have already been completed."},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L2_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L2_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1e890cab-8517-5812-9f13-fe8bbca5e9c6', '5982320a-a649-5626-b100-2127acbc1905', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('67202ff2-8709-5f00-8f74-3573e12311bd', NULL, 'Решение и последующие действия', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Explaining Delays","ru":"Решение и последующие действия"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c85255eb-87ed-5424-b159-dcee65cb2d05', '67202ff2-8709-5f00-8f74-3573e12311bd', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L3_W01","left":"milestone","right":"ключевой этап"},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L3_W02","left":"on schedule","right":"по графику"},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L3_W03","left":"delay","right":"задержка"},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L3_W04","left":"update","right":"обновление"},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L3_W05","left":"complete","right":"завершить"},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L3_W06","left":"issue","right":"проблема"},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L3_W07","left":"next step","right":"следующий шаг"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8765e60d-78e8-5338-a5e6-619393d6b9a9', '67202ff2-8709-5f00-8f74-3573e12311bd', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L3_W08","is_correct":true,"text":"Our next step is to test the revised system before the team presents it to the client."},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L3_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L3_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('15c34fa4-c667-57c3-a376-1156decb4a6a', '67202ff2-8709-5f00-8f74-3573e12311bd', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Our next step is to test the revised system before the team presents it to the client.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Наш следующий шаг — протестировать обновлённую систему до того, как команда представит её клиенту.","target_language":"en","word_bank":["Our","next","step","is","to","test","the","revised","system","before","the","team","presents","it","to","the","client."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a5b9d22-4856-5721-b655-27cf40a16f62', '67202ff2-8709-5f00-8f74-3573e12311bd', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"delay","instruction":"Выберите подходящее слово.","options":["delay","issue","milestone"],"sentence_template":"Our next step is to test the revised system before the team presents it to the client."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('69f082fb-6026-5650-9ff2-1f0c4bd853e1', '67202ff2-8709-5f00-8f74-3573e12311bd', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Our","next","step","is","to","test","the","revised","system","before","the","team","presents","it","to","the","client."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["client.","the","to","it","presents","team","the","before","system","revised","the","test","to","is","step","next","Our"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e67a5ae-d935-597e-b5de-8357b54accb8', '67202ff2-8709-5f00-8f74-3573e12311bd', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Our next step is to test the revised system before the team presents it to the client. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76a6e7ef-1609-53d2-8def-1df1e29550bd', '67202ff2-8709-5f00-8f74-3573e12311bd', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Our next step is to test the revised system before the team presents it to the client. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Наш следующий шаг — протестировать обновлённую систему до того, как команда представит её клиенту. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('781b723d-dc05-5d19-80ef-614146b5b109', '67202ff2-8709-5f00-8f74-3573e12311bd', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"Our next step is to test the revised system before the team presents it to the client.","translation":"Наш следующий шаг — протестировать обновлённую систему до того, как команда представит её клиенту.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Explaining Delays"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b0de51e8-3004-577b-aaec-8bc6a0c92207', '67202ff2-8709-5f00-8f74-3573e12311bd', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“delay” means a period of waiting beyond the plan.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L3_W11","is_correct":true,"text":"a period of waiting beyond the plan"},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L3_W12","is_correct":false,"text":"new information about progress"},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L3_W13","is_correct":false,"text":"finish a task successfully"}],"word":"delay"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c50c944f-c6e0-51a7-a82f-7c3739ac8471', '67202ff2-8709-5f00-8f74-3573e12311bd', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Our next step is to test the revised system before the team presents it to the client.","explanation":"The missing workplace expression is “delay”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"delay","id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L3_W14","is_correct":true},{"audio_text":"complete","id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L3_W15","is_correct":false},{"audio_text":"next step","id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L3_W16","is_correct":false}],"sentence_template":"Our next step is to test the revised system before the team presents it to the client."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5d52a46-e986-5bcd-812a-5285ec5626bf', '67202ff2-8709-5f00-8f74-3573e12311bd', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"delay","explanation":"The sentence requires “delay” to communicate the intended workplace meaning.","hint_prefix":"del","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Our next step is to test the revised system before the team presents it to the client."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('806682df-0ed8-5768-b431-a0241e9b5d17', '67202ff2-8709-5f00-8f74-3573e12311bd', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"milestone","id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L3_W17","text":"milestone"},{"audio_text":"on schedule","id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L3_W18","text":"on schedule"},{"audio_text":"delay","id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L3_W19","text":"delay"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4779602d-d26c-5d54-9c1f-82d73ea0bedf', '67202ff2-8709-5f00-8f74-3573e12311bd', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Explaining Delays”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L3_W20","is_correct":true,"text":"Our next step is to test the revised system before the team presents it to the client."},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L3_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_PROJECTS_TASKS_AND_PROGRESS_REPORTS_L3_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1e890cab-8517-5812-9f13-fe8bbca5e9c6', '67202ff2-8709-5f00-8f74-3573e12311bd', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fe75d63d-1ce9-55c8-b88e-03ae1705aa4a', 'en', 'milestone', 'ключевой этап', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e815c6a8-529f-528b-9f94-bb31c9444c05', 'en', 'on schedule', 'по графику', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fd2c7af1-db85-5890-9817-36eb2267b8fb', 'en', 'delay', 'задержка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3868ed7b-ea36-539b-bf36-ac6c93c6743f', 'en', 'update', 'обновление', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fcfa4e57-cf2d-599d-932f-abf4db6d562c', 'en', 'complete', 'завершить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('90be2997-63b3-59fb-a9e8-43a59bdbc3e5', 'en', 'issue', 'проблема', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f493effe-75fe-5aa6-bd65-d498034aae13', 'en', 'next step', 'следующий шаг', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fe75d63d-1ce9-55c8-b88e-03ae1705aa4a', 'en', 'milestone', 'ключевой этап', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e815c6a8-529f-528b-9f94-bb31c9444c05', 'en', 'on schedule', 'по графику', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fd2c7af1-db85-5890-9817-36eb2267b8fb', 'en', 'delay', 'задержка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3868ed7b-ea36-539b-bf36-ac6c93c6743f', 'en', 'update', 'обновление', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fcfa4e57-cf2d-599d-932f-abf4db6d562c', 'en', 'complete', 'завершить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('90be2997-63b3-59fb-a9e8-43a59bdbc3e5', 'en', 'issue', 'проблема', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f493effe-75fe-5aa6-bd65-d498034aae13', 'en', 'next step', 'следующий шаг', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fe75d63d-1ce9-55c8-b88e-03ae1705aa4a', 'en', 'milestone', 'ключевой этап', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e815c6a8-529f-528b-9f94-bb31c9444c05', 'en', 'on schedule', 'по графику', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fd2c7af1-db85-5890-9817-36eb2267b8fb', 'en', 'delay', 'задержка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3868ed7b-ea36-539b-bf36-ac6c93c6743f', 'en', 'update', 'обновление', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fcfa4e57-cf2d-599d-932f-abf4db6d562c', 'en', 'complete', 'завершить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('90be2997-63b3-59fb-a9e8-43a59bdbc3e5', 'en', 'issue', 'проблема', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f493effe-75fe-5aa6-bd65-d498034aae13', 'en', 'next step', 'следующий шаг', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e890cab-8517-5812-9f13-fe8bbca5e9c6', id, '5e062a61-cac6-5342-b689-a20849cffbc2', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'milestone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e890cab-8517-5812-9f13-fe8bbca5e9c6', id, '5e062a61-cac6-5342-b689-a20849cffbc2', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'on schedule' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e890cab-8517-5812-9f13-fe8bbca5e9c6', id, '5e062a61-cac6-5342-b689-a20849cffbc2', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'delay' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e890cab-8517-5812-9f13-fe8bbca5e9c6', id, '5e062a61-cac6-5342-b689-a20849cffbc2', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'update' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e890cab-8517-5812-9f13-fe8bbca5e9c6', id, '5e062a61-cac6-5342-b689-a20849cffbc2', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'complete' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e890cab-8517-5812-9f13-fe8bbca5e9c6', id, '5e062a61-cac6-5342-b689-a20849cffbc2', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'issue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e890cab-8517-5812-9f13-fe8bbca5e9c6', id, '5e062a61-cac6-5342-b689-a20849cffbc2', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'next step' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e890cab-8517-5812-9f13-fe8bbca5e9c6', id, '5982320a-a649-5626-b100-2127acbc1905', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'milestone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e890cab-8517-5812-9f13-fe8bbca5e9c6', id, '5982320a-a649-5626-b100-2127acbc1905', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'on schedule' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e890cab-8517-5812-9f13-fe8bbca5e9c6', id, '5982320a-a649-5626-b100-2127acbc1905', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'delay' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e890cab-8517-5812-9f13-fe8bbca5e9c6', id, '5982320a-a649-5626-b100-2127acbc1905', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'update' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e890cab-8517-5812-9f13-fe8bbca5e9c6', id, '5982320a-a649-5626-b100-2127acbc1905', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'complete' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e890cab-8517-5812-9f13-fe8bbca5e9c6', id, '5982320a-a649-5626-b100-2127acbc1905', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'issue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e890cab-8517-5812-9f13-fe8bbca5e9c6', id, '5982320a-a649-5626-b100-2127acbc1905', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'next step' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e890cab-8517-5812-9f13-fe8bbca5e9c6', id, '67202ff2-8709-5f00-8f74-3573e12311bd', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'milestone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e890cab-8517-5812-9f13-fe8bbca5e9c6', id, '67202ff2-8709-5f00-8f74-3573e12311bd', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'on schedule' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e890cab-8517-5812-9f13-fe8bbca5e9c6', id, '67202ff2-8709-5f00-8f74-3573e12311bd', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'delay' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e890cab-8517-5812-9f13-fe8bbca5e9c6', id, '67202ff2-8709-5f00-8f74-3573e12311bd', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'update' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e890cab-8517-5812-9f13-fe8bbca5e9c6', id, '67202ff2-8709-5f00-8f74-3573e12311bd', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'complete' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e890cab-8517-5812-9f13-fe8bbca5e9c6', id, '67202ff2-8709-5f00-8f74-3573e12311bd', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'issue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1e890cab-8517-5812-9f13-fe8bbca5e9c6', id, '67202ff2-8709-5f00-8f74-3573e12311bd', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'next step' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
