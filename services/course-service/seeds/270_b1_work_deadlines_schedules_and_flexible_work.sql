-- Track: B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('2e03f4cf-3b52-51c7-9d60-7d86967861b0', 'B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK', 'Сроки, расписания и гибкая работа', 'Развивайте практический английский уровня B1 для работы по теме «Сроки, расписания и гибкая работа».', '{"en":"Deadlines, Schedules and Flexible Work","ru":"Сроки, расписания и гибкая работа"}'::jsonb, '{"en":"Develop practical B1 workplace English for deadlines, schedules and flexible work.","ru":"Развивайте практический английский уровня B1 для работы по теме «Сроки, расписания и гибкая работа»."}'::jsonb, 'en', 'B1', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a4fd1d14-cb92-5cb9-85d2-7cc00eab3b74', NULL, 'Рабочая ситуация', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Planning Deadlines","ru":"Рабочая ситуация"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2e1625d-b817-586b-aa56-a6ce12848a81', 'a4fd1d14-cb92-5cb9-85d2-7cc00eab3b74', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L1_W01","left":"deadline","right":"срок"},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L1_W02","left":"reschedule","right":"перенести"},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L1_W03","left":"availability","right":"доступность"},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L1_W04","left":"flexible hours","right":"гибкий график"},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L1_W05","left":"shift","right":"смена"},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L1_W06","left":"overlap","right":"пересекаться"},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L1_W07","left":"arrangement","right":"договорённость"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('451d1590-d415-523e-8363-050237fffb45', 'a4fd1d14-cb92-5cb9-85d2-7cc00eab3b74', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L1_W08","is_correct":true,"text":"We can meet the deadline if we reschedule two non-urgent tasks and focus on the final report."},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L1_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L1_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1354fe48-3127-500e-a907-d1da8f1e6662', 'a4fd1d14-cb92-5cb9-85d2-7cc00eab3b74', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We can meet the deadline if we reschedule two non-urgent tasks and focus on the final report.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мы можем уложиться в срок, если перенесём две несрочные задачи и сосредоточимся на итоговом отчёте.","target_language":"en","word_bank":["We","can","meet","the","deadline","if","we","reschedule","two","non-urgent","tasks","and","focus","on","the","final","report."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('226b6aeb-1b79-544c-9d5a-6718f9f9dceb', 'a4fd1d14-cb92-5cb9-85d2-7cc00eab3b74', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"deadline","instruction":"Выберите подходящее слово.","options":["deadline","flexible hours","overlap"],"sentence_template":"We can meet the ___ if we reschedule two non-urgent tasks and focus on the final report."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('96a912c0-4390-5a10-b820-128f82454434', 'a4fd1d14-cb92-5cb9-85d2-7cc00eab3b74', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","can","meet","the","deadline","if","we","reschedule","two","non-urgent","tasks","and","focus","on","the","final","report."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["report.","final","the","on","focus","and","tasks","non-urgent","two","reschedule","we","if","deadline","the","meet","can","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8a85242e-7d07-50d7-a8fa-1072ae4855cd', 'a4fd1d14-cb92-5cb9-85d2-7cc00eab3b74', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We can meet the deadline if we reschedule two non-urgent tasks and focus on the final report. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('31f167dc-0d66-5236-97ad-8e0208218bb9', 'a4fd1d14-cb92-5cb9-85d2-7cc00eab3b74', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We can meet the deadline if we reschedule two non-urgent tasks and focus on the final report. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Мы можем уложиться в срок, если перенесём две несрочные задачи и сосредоточимся на итоговом отчёте. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a6b6c1b-b8fd-579a-ac8d-262315202568', 'a4fd1d14-cb92-5cb9-85d2-7cc00eab3b74', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"We can meet the deadline if we reschedule two non-urgent tasks and focus on the final report.","translation":"Мы можем уложиться в срок, если перенесём две несрочные задачи и сосредоточимся на итоговом отчёте.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Planning Deadlines"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f2563a63-e7cb-50a9-aecc-5dd3508905f9', 'a4fd1d14-cb92-5cb9-85d2-7cc00eab3b74', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“deadline” means the final time for completing work.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L1_W11","is_correct":true,"text":"the final time for completing work"},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L1_W12","is_correct":false,"text":"arrange for a different time"},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L1_W13","is_correct":false,"text":"the times when someone is free"}],"word":"deadline"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('897fba72-a9e8-502a-be36-42171541881a', 'a4fd1d14-cb92-5cb9-85d2-7cc00eab3b74', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We can meet the deadline if we reschedule two non-urgent tasks and focus on the final report.","explanation":"The missing workplace expression is “deadline”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"deadline","id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L1_W14","is_correct":true},{"audio_text":"availability","id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L1_W15","is_correct":false},{"audio_text":"shift","id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L1_W16","is_correct":false}],"sentence_template":"We can meet the ___ if we reschedule two non-urgent tasks and focus on the final report."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('09a23da4-2bd2-5fcb-a8fa-00cfe9eebfd4', 'a4fd1d14-cb92-5cb9-85d2-7cc00eab3b74', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"deadline","explanation":"The sentence requires “deadline” to communicate the intended workplace meaning.","hint_prefix":"dea","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We can meet the ___ if we reschedule two non-urgent tasks and focus on the final report."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ec27019-45d3-5d41-a922-99c17df15c7f', 'a4fd1d14-cb92-5cb9-85d2-7cc00eab3b74', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"deadline","id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L1_W17","text":"deadline"},{"audio_text":"reschedule","id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L1_W18","text":"reschedule"},{"audio_text":"availability","id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L1_W19","text":"availability"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('727f3653-6641-542c-a4d0-743f5e1ef30f', 'a4fd1d14-cb92-5cb9-85d2-7cc00eab3b74', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Planning Deadlines”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L1_W20","is_correct":true,"text":"We can meet the deadline if we reschedule two non-urgent tasks and focus on the final report."},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L1_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L1_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2e03f4cf-3b52-51c7-9d60-7d86967861b0', 'a4fd1d14-cb92-5cb9-85d2-7cc00eab3b74', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('270f619a-cdd4-5677-99d5-1f229b25e657', NULL, 'Обсуждение вариантов', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Negotiating Schedules","ru":"Обсуждение вариантов"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e93ec3b-e274-5b4c-b4b6-93412bda00ab', '270f619a-cdd4-5677-99d5-1f229b25e657', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L2_W01","left":"deadline","right":"срок"},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L2_W02","left":"reschedule","right":"перенести"},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L2_W03","left":"availability","right":"доступность"},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L2_W04","left":"flexible hours","right":"гибкий график"},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L2_W05","left":"shift","right":"смена"},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L2_W06","left":"overlap","right":"пересекаться"},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L2_W07","left":"arrangement","right":"договорённость"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fe66a961-30d0-5ded-a356-9a05f3ae4a62', '270f619a-cdd4-5677-99d5-1f229b25e657', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L2_W08","is_correct":true,"text":"Please confirm your availability because the proposed meeting overlaps with the afternoon shift."},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L2_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L2_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('091e18a4-36fd-5ee5-9bd0-dae3d732e552', '270f619a-cdd4-5677-99d5-1f229b25e657', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Please confirm your availability because the proposed meeting overlaps with the afternoon shift.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Пожалуйста, подтвердите свою доступность, потому что предложенная встреча пересекается с дневной сменой.","target_language":"en","word_bank":["Please","confirm","your","availability","because","the","proposed","meeting","overlaps","with","the","afternoon","shift."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7fffd8b6-30a3-5e99-b703-73cdbc1ed26f', '270f619a-cdd4-5677-99d5-1f229b25e657', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"reschedule","instruction":"Выберите подходящее слово.","options":["reschedule","shift","arrangement"],"sentence_template":"Please confirm your availability because the proposed meeting overlaps with the afternoon shift."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('87d3cdd2-d3e7-5aae-a111-f0b3f0252897', '270f619a-cdd4-5677-99d5-1f229b25e657', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Please","confirm","your","availability","because","the","proposed","meeting","overlaps","with","the","afternoon","shift."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["shift.","afternoon","the","with","overlaps","meeting","proposed","the","because","availability","your","confirm","Please"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b01bb2b5-4c89-5cb1-8c94-83ed74ff0529', '270f619a-cdd4-5677-99d5-1f229b25e657', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Please confirm your availability because the proposed meeting overlaps with the afternoon shift. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('24448ec4-6b0a-5947-afd1-e6add4c25f84', '270f619a-cdd4-5677-99d5-1f229b25e657', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Please confirm your availability because the proposed meeting overlaps with the afternoon shift. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Пожалуйста, подтвердите свою доступность, потому что предложенная встреча пересекается с дневной сменой. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd2dcb67-58da-58f8-ab64-602f70d85dc1', '270f619a-cdd4-5677-99d5-1f229b25e657', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"Please confirm your availability because the proposed meeting overlaps with the afternoon shift.","translation":"Пожалуйста, подтвердите свою доступность, потому что предложенная встреча пересекается с дневной сменой.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Negotiating Schedules"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('62dac1f7-9826-5e87-a8aa-c6d7f3853cf6', '270f619a-cdd4-5677-99d5-1f229b25e657', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“reschedule” means arrange for a different time.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L2_W11","is_correct":true,"text":"arrange for a different time"},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L2_W12","is_correct":false,"text":"the times when someone is free"},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L2_W13","is_correct":false,"text":"working times that can be adjusted"}],"word":"reschedule"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('14e2fa20-2918-5769-ad78-df4fb85d9787', '270f619a-cdd4-5677-99d5-1f229b25e657', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Please confirm your availability because the proposed meeting overlaps with the afternoon shift.","explanation":"The missing workplace expression is “reschedule”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"reschedule","id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L2_W14","is_correct":true},{"audio_text":"flexible hours","id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L2_W15","is_correct":false},{"audio_text":"overlap","id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L2_W16","is_correct":false}],"sentence_template":"Please confirm your availability because the proposed meeting overlaps with the afternoon shift."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a6eff970-3360-51c1-8061-335fa31ff8ce', '270f619a-cdd4-5677-99d5-1f229b25e657', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"reschedule","explanation":"The sentence requires “reschedule” to communicate the intended workplace meaning.","hint_prefix":"res","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Please confirm your availability because the proposed meeting overlaps with the afternoon shift."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1c60df4f-3468-571e-a4f4-0875c03469ff', '270f619a-cdd4-5677-99d5-1f229b25e657', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"deadline","id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L2_W17","text":"deadline"},{"audio_text":"reschedule","id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L2_W18","text":"reschedule"},{"audio_text":"availability","id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L2_W19","text":"availability"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e4f9c161-69f3-59f7-a7a0-b796ab55848c', '270f619a-cdd4-5677-99d5-1f229b25e657', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Negotiating Schedules”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L2_W20","is_correct":true,"text":"Please confirm your availability because the proposed meeting overlaps with the afternoon shift."},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L2_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L2_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2e03f4cf-3b52-51c7-9d60-7d86967861b0', '270f619a-cdd4-5677-99d5-1f229b25e657', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('fc89f0da-3e58-561a-831f-44ca69059e0d', NULL, 'Решение и последующие действия', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Flexible Working Arrangements","ru":"Решение и последующие действия"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('475f4d06-c28c-5b0d-ac1b-ce7555044576', 'fc89f0da-3e58-561a-831f-44ca69059e0d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L3_W01","left":"deadline","right":"срок"},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L3_W02","left":"reschedule","right":"перенести"},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L3_W03","left":"availability","right":"доступность"},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L3_W04","left":"flexible hours","right":"гибкий график"},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L3_W05","left":"shift","right":"смена"},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L3_W06","left":"overlap","right":"пересекаться"},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L3_W07","left":"arrangement","right":"договорённость"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('059a63ec-eebf-5805-88f4-1149f9788add', 'fc89f0da-3e58-561a-831f-44ca69059e0d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L3_W08","is_correct":true,"text":"Flexible hours can be a useful arrangement, provided that the whole team remains available during core working times."},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L3_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L3_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('03bad5ed-8ac0-5633-954f-dec2c196f31f', 'fc89f0da-3e58-561a-831f-44ca69059e0d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Flexible hours can be a useful arrangement, provided that the whole team remains available during core working times.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Гибкий график может быть полезной договорённостью при условии, что вся команда остаётся доступной в основные рабочие часы.","target_language":"en","word_bank":["Flexible","hours","can","be","a","useful","arrangement,","provided","that","the","whole","team","remains","available","during","core","working","times."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd2396f6-b7d5-5eb9-ac93-aff2d57ad649', 'fc89f0da-3e58-561a-831f-44ca69059e0d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"availability","instruction":"Выберите подходящее слово.","options":["availability","overlap","deadline"],"sentence_template":"Flexible hours can be a useful arrangement, provided that the whole team remains available during core working times."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('003c2902-4e1f-51cf-a41f-d762428d92c5', 'fc89f0da-3e58-561a-831f-44ca69059e0d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Flexible","hours","can","be","a","useful","arrangement,","provided","that","the","whole","team","remains","available","during","core","working","times."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["times.","working","core","during","available","remains","team","whole","the","that","provided","arrangement,","useful","a","be","can","hours","Flexible"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9466f458-8bbd-5571-8b3e-5f5075eed6c9', 'fc89f0da-3e58-561a-831f-44ca69059e0d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Flexible hours can be a useful arrangement, provided that the whole team remains available during core working times. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('23ab42a9-ea5d-5d20-a797-8f4d099f6e56', 'fc89f0da-3e58-561a-831f-44ca69059e0d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Flexible hours can be a useful arrangement, provided that the whole team remains available during core working times. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Гибкий график может быть полезной договорённостью при условии, что вся команда остаётся доступной в основные рабочие часы. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f134f2dc-9052-5f86-9a1f-8027df6c1154', 'fc89f0da-3e58-561a-831f-44ca69059e0d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"Flexible hours can be a useful arrangement, provided that the whole team remains available during core working times.","translation":"Гибкий график может быть полезной договорённостью при условии, что вся команда остаётся доступной в основные рабочие часы.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Flexible Working Arrangements"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('167ce1af-8dab-5624-ac5f-b8c962ec34fc', 'fc89f0da-3e58-561a-831f-44ca69059e0d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“availability” means the times when someone is free.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L3_W11","is_correct":true,"text":"the times when someone is free"},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L3_W12","is_correct":false,"text":"working times that can be adjusted"},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L3_W13","is_correct":false,"text":"a scheduled period of work"}],"word":"availability"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0afb7a61-c046-5b8c-b2f6-1a737aeb3c24', 'fc89f0da-3e58-561a-831f-44ca69059e0d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Flexible hours can be a useful arrangement, provided that the whole team remains available during core working times.","explanation":"The missing workplace expression is “availability”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"availability","id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L3_W14","is_correct":true},{"audio_text":"shift","id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L3_W15","is_correct":false},{"audio_text":"arrangement","id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L3_W16","is_correct":false}],"sentence_template":"Flexible hours can be a useful arrangement, provided that the whole team remains available during core working times."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0f63548-ba9c-59d1-89a6-f5bf91d8227e', 'fc89f0da-3e58-561a-831f-44ca69059e0d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"availability","explanation":"The sentence requires “availability” to communicate the intended workplace meaning.","hint_prefix":"ava","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Flexible hours can be a useful arrangement, provided that the whole team remains available during core working times."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('42d99bec-6a08-5ce1-acc8-1469253165d2', 'fc89f0da-3e58-561a-831f-44ca69059e0d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"deadline","id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L3_W17","text":"deadline"},{"audio_text":"reschedule","id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L3_W18","text":"reschedule"},{"audio_text":"availability","id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L3_W19","text":"availability"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f0f35951-bebd-5973-b388-62d799688464', 'fc89f0da-3e58-561a-831f-44ca69059e0d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Flexible Working Arrangements”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L3_W20","is_correct":true,"text":"Flexible hours can be a useful arrangement, provided that the whole team remains available during core working times."},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L3_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_DEADLINES_SCHEDULES_AND_FLEXIBLE_WORK_L3_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2e03f4cf-3b52-51c7-9d60-7d86967861b0', 'fc89f0da-3e58-561a-831f-44ca69059e0d', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0de93d22-7462-5503-8943-a78d5d53563a', 'en', 'deadline', 'срок', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('627f3524-b49c-5670-8171-6b468a372ac7', 'en', 'reschedule', 'перенести', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7fecf9b1-4dbc-5d8a-899e-a13a69107bd8', 'en', 'availability', 'доступность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8aa058dd-7748-58e5-9577-c68d0c4272ab', 'en', 'flexible hours', 'гибкий график', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fa1f2678-1d1a-53ed-8038-86e68b36d4ac', 'en', 'shift', 'смена', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ca3aab81-8c51-55c7-8963-e8079e3bea47', 'en', 'overlap', 'пересекаться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8e7d729d-71da-5f8a-a729-65d7bb6cf815', 'en', 'arrangement', 'договорённость', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0de93d22-7462-5503-8943-a78d5d53563a', 'en', 'deadline', 'срок', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('627f3524-b49c-5670-8171-6b468a372ac7', 'en', 'reschedule', 'перенести', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7fecf9b1-4dbc-5d8a-899e-a13a69107bd8', 'en', 'availability', 'доступность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8aa058dd-7748-58e5-9577-c68d0c4272ab', 'en', 'flexible hours', 'гибкий график', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fa1f2678-1d1a-53ed-8038-86e68b36d4ac', 'en', 'shift', 'смена', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ca3aab81-8c51-55c7-8963-e8079e3bea47', 'en', 'overlap', 'пересекаться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8e7d729d-71da-5f8a-a729-65d7bb6cf815', 'en', 'arrangement', 'договорённость', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0de93d22-7462-5503-8943-a78d5d53563a', 'en', 'deadline', 'срок', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('627f3524-b49c-5670-8171-6b468a372ac7', 'en', 'reschedule', 'перенести', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7fecf9b1-4dbc-5d8a-899e-a13a69107bd8', 'en', 'availability', 'доступность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8aa058dd-7748-58e5-9577-c68d0c4272ab', 'en', 'flexible hours', 'гибкий график', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fa1f2678-1d1a-53ed-8038-86e68b36d4ac', 'en', 'shift', 'смена', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ca3aab81-8c51-55c7-8963-e8079e3bea47', 'en', 'overlap', 'пересекаться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8e7d729d-71da-5f8a-a729-65d7bb6cf815', 'en', 'arrangement', 'договорённость', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e03f4cf-3b52-51c7-9d60-7d86967861b0', id, 'a4fd1d14-cb92-5cb9-85d2-7cc00eab3b74', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'deadline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e03f4cf-3b52-51c7-9d60-7d86967861b0', id, 'a4fd1d14-cb92-5cb9-85d2-7cc00eab3b74', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'reschedule' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e03f4cf-3b52-51c7-9d60-7d86967861b0', id, 'a4fd1d14-cb92-5cb9-85d2-7cc00eab3b74', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'availability' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e03f4cf-3b52-51c7-9d60-7d86967861b0', id, 'a4fd1d14-cb92-5cb9-85d2-7cc00eab3b74', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'flexible hours' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e03f4cf-3b52-51c7-9d60-7d86967861b0', id, 'a4fd1d14-cb92-5cb9-85d2-7cc00eab3b74', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'shift' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e03f4cf-3b52-51c7-9d60-7d86967861b0', id, 'a4fd1d14-cb92-5cb9-85d2-7cc00eab3b74', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'overlap' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e03f4cf-3b52-51c7-9d60-7d86967861b0', id, 'a4fd1d14-cb92-5cb9-85d2-7cc00eab3b74', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'arrangement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e03f4cf-3b52-51c7-9d60-7d86967861b0', id, '270f619a-cdd4-5677-99d5-1f229b25e657', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'deadline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e03f4cf-3b52-51c7-9d60-7d86967861b0', id, '270f619a-cdd4-5677-99d5-1f229b25e657', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'reschedule' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e03f4cf-3b52-51c7-9d60-7d86967861b0', id, '270f619a-cdd4-5677-99d5-1f229b25e657', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'availability' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e03f4cf-3b52-51c7-9d60-7d86967861b0', id, '270f619a-cdd4-5677-99d5-1f229b25e657', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'flexible hours' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e03f4cf-3b52-51c7-9d60-7d86967861b0', id, '270f619a-cdd4-5677-99d5-1f229b25e657', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'shift' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e03f4cf-3b52-51c7-9d60-7d86967861b0', id, '270f619a-cdd4-5677-99d5-1f229b25e657', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'overlap' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e03f4cf-3b52-51c7-9d60-7d86967861b0', id, '270f619a-cdd4-5677-99d5-1f229b25e657', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'arrangement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e03f4cf-3b52-51c7-9d60-7d86967861b0', id, 'fc89f0da-3e58-561a-831f-44ca69059e0d', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'deadline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e03f4cf-3b52-51c7-9d60-7d86967861b0', id, 'fc89f0da-3e58-561a-831f-44ca69059e0d', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'reschedule' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e03f4cf-3b52-51c7-9d60-7d86967861b0', id, 'fc89f0da-3e58-561a-831f-44ca69059e0d', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'availability' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e03f4cf-3b52-51c7-9d60-7d86967861b0', id, 'fc89f0da-3e58-561a-831f-44ca69059e0d', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'flexible hours' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e03f4cf-3b52-51c7-9d60-7d86967861b0', id, 'fc89f0da-3e58-561a-831f-44ca69059e0d', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'shift' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e03f4cf-3b52-51c7-9d60-7d86967861b0', id, 'fc89f0da-3e58-561a-831f-44ca69059e0d', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'overlap' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2e03f4cf-3b52-51c7-9d60-7d86967861b0', id, 'fc89f0da-3e58-561a-831f-44ca69059e0d', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'arrangement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
