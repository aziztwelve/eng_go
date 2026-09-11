-- Track: B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('d0af0be6-0ed2-5dff-bf91-170f6576a8a8', 'B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION', 'Командное общение и сотрудничество', 'Развивайте практический английский уровня B1 для работы по теме «Командное общение и сотрудничество».', '{"en":"Team Communication and Collaboration","ru":"Командное общение и сотрудничество"}'::jsonb, '{"en":"Develop practical B1 workplace English for team communication and collaboration.","ru":"Развивайте практический английский уровня B1 для работы по теме «Командное общение и сотрудничество»."}'::jsonb, 'en', 'B1', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('42643a4c-be73-5fd2-b044-ed8cbcd7241e', NULL, 'Рабочая ситуация', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Sharing Information","ru":"Рабочая ситуация"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3fe8beed-88be-53b7-9640-37c072776292', '42643a4c-be73-5fd2-b044-ed8cbcd7241e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L1_W01","left":"coordinate","right":"координировать"},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L1_W02","left":"keep someone informed","right":"держать в курсе"},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L1_W03","left":"contribute","right":"вносить вклад"},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L1_W04","left":"misunderstanding","right":"недопонимание"},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L1_W05","left":"clarify","right":"уточнять"},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L1_W06","left":"collaborate","right":"сотрудничать"},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L1_W07","left":"feedback","right":"обратная связь"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0d856911-160d-5bd3-8e34-0f7f202a4266', '42643a4c-be73-5fd2-b044-ed8cbcd7241e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L1_W08","is_correct":true,"text":"We coordinate our tasks through a shared plan and keep everyone informed when priorities change."},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L1_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L1_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d07b5e3-d69f-5dcf-8066-ddac675b904c', '42643a4c-be73-5fd2-b044-ed8cbcd7241e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We coordinate our tasks through a shared plan and keep everyone informed when priorities change.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мы координируем задачи с помощью общего плана и держим всех в курсе изменений приоритетов.","target_language":"en","word_bank":["We","coordinate","our","tasks","through","a","shared","plan","and","keep","everyone","informed","when","priorities","change."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f9730409-c876-5d9e-9af1-63265915e1d1', '42643a4c-be73-5fd2-b044-ed8cbcd7241e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"coordinate","instruction":"Выберите подходящее слово.","options":["coordinate","misunderstanding","collaborate"],"sentence_template":"We ___ our tasks through a shared plan and keep everyone informed when priorities change."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da02aee0-eec4-5254-9e1c-b2e8999410dc', '42643a4c-be73-5fd2-b044-ed8cbcd7241e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","coordinate","our","tasks","through","a","shared","plan","and","keep","everyone","informed","when","priorities","change."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["change.","priorities","when","informed","everyone","keep","and","plan","shared","a","through","tasks","our","coordinate","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0cee6ee7-ff37-5d99-8189-0042cccac334', '42643a4c-be73-5fd2-b044-ed8cbcd7241e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We coordinate our tasks through a shared plan and keep everyone informed when priorities change. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90a6c453-057c-52e4-8f4f-f5a9d1c4ebbf', '42643a4c-be73-5fd2-b044-ed8cbcd7241e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We coordinate our tasks through a shared plan and keep everyone informed when priorities change. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Мы координируем задачи с помощью общего плана и держим всех в курсе изменений приоритетов. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('120c7d14-cbe3-504d-86e1-424ceb577649', '42643a4c-be73-5fd2-b044-ed8cbcd7241e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"We coordinate our tasks through a shared plan and keep everyone informed when priorities change.","translation":"Мы координируем задачи с помощью общего плана и держим всех в курсе изменений приоритетов.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Sharing Information"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b412a127-393c-500e-8e3b-00a0187476d3', '42643a4c-be73-5fd2-b044-ed8cbcd7241e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“coordinate” means organise people or activities effectively.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L1_W11","is_correct":true,"text":"organise people or activities effectively"},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L1_W12","is_correct":false,"text":"provide regular relevant information"},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L1_W13","is_correct":false,"text":"add useful work or ideas"}],"word":"coordinate"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('25da4520-3cab-5ea9-b191-e55f4b69794a', '42643a4c-be73-5fd2-b044-ed8cbcd7241e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We coordinate our tasks through a shared plan and keep everyone informed when priorities change.","explanation":"The missing workplace expression is “coordinate”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"coordinate","id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L1_W14","is_correct":true},{"audio_text":"contribute","id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L1_W15","is_correct":false},{"audio_text":"clarify","id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L1_W16","is_correct":false}],"sentence_template":"We ___ our tasks through a shared plan and keep everyone informed when priorities change."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('74d53f08-012f-5597-86bc-71f0571c0ae7', '42643a4c-be73-5fd2-b044-ed8cbcd7241e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"coordinate","explanation":"The sentence requires “coordinate” to communicate the intended workplace meaning.","hint_prefix":"coo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We ___ our tasks through a shared plan and keep everyone informed when priorities change."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f66965e6-0990-5fcf-9a61-767fedeb838f', '42643a4c-be73-5fd2-b044-ed8cbcd7241e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"coordinate","id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L1_W17","text":"coordinate"},{"audio_text":"keep someone informed","id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L1_W18","text":"keep someone informed"},{"audio_text":"contribute","id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L1_W19","text":"contribute"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('83ba1189-8126-5cc1-933f-62aa7ac4a6e3', '42643a4c-be73-5fd2-b044-ed8cbcd7241e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Sharing Information”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L1_W20","is_correct":true,"text":"We coordinate our tasks through a shared plan and keep everyone informed when priorities change."},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L1_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L1_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d0af0be6-0ed2-5dff-bf91-170f6576a8a8', '42643a4c-be73-5fd2-b044-ed8cbcd7241e', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('99969702-1124-5f23-b768-fe11e8000cd5', NULL, 'Обсуждение вариантов', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Coordinating with Colleagues","ru":"Обсуждение вариантов"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('73a78aa6-b054-5e6d-a798-10a872195956', '99969702-1124-5f23-b768-fe11e8000cd5', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L2_W01","left":"coordinate","right":"координировать"},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L2_W02","left":"keep someone informed","right":"держать в курсе"},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L2_W03","left":"contribute","right":"вносить вклад"},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L2_W04","left":"misunderstanding","right":"недопонимание"},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L2_W05","left":"clarify","right":"уточнять"},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L2_W06","left":"collaborate","right":"сотрудничать"},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L2_W07","left":"feedback","right":"обратная связь"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7aad22f8-a844-5eea-b97e-a6019a18da4c', '99969702-1124-5f23-b768-fe11e8000cd5', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L2_W08","is_correct":true,"text":"Each department contributed useful information, which allowed us to collaborate more effectively."},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L2_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L2_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('64bad47b-3936-5ab2-9242-61c0023a0a9f', '99969702-1124-5f23-b768-fe11e8000cd5', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Each department contributed useful information, which allowed us to collaborate more effectively.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Каждый отдел предоставил полезную информацию, что позволило нам сотрудничать эффективнее.","target_language":"en","word_bank":["Each","department","contributed","useful","information,","which","allowed","us","to","collaborate","more","effectively."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2e3e61dd-e553-5063-85a1-cf80bfe39d80', '99969702-1124-5f23-b768-fe11e8000cd5', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"keep someone informed","instruction":"Выберите подходящее слово.","options":["keep someone informed","clarify","feedback"],"sentence_template":"Each department contributed useful information, which allowed us to collaborate more effectively."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b71bfef1-a730-58ad-95d2-c476e2f1d7ef', '99969702-1124-5f23-b768-fe11e8000cd5', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Each","department","contributed","useful","information,","which","allowed","us","to","collaborate","more","effectively."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["effectively.","more","collaborate","to","us","allowed","which","information,","useful","contributed","department","Each"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('57e58b9a-2b17-5e28-acf7-df73b69e1a20', '99969702-1124-5f23-b768-fe11e8000cd5', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Each department contributed useful information, which allowed us to collaborate more effectively. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fd84e839-7529-577c-a797-55f1321d4f53', '99969702-1124-5f23-b768-fe11e8000cd5', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Each department contributed useful information, which allowed us to collaborate more effectively. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Каждый отдел предоставил полезную информацию, что позволило нам сотрудничать эффективнее. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2bed4b5b-70cc-5a18-bc88-2bc8997bb455', '99969702-1124-5f23-b768-fe11e8000cd5', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"Each department contributed useful information, which allowed us to collaborate more effectively.","translation":"Каждый отдел предоставил полезную информацию, что позволило нам сотрудничать эффективнее.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Coordinating with Colleagues"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9377a4ba-1cf2-536e-892f-c2c27b4f76ed', '99969702-1124-5f23-b768-fe11e8000cd5', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“keep someone informed” means provide regular relevant information.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L2_W11","is_correct":true,"text":"provide regular relevant information"},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L2_W12","is_correct":false,"text":"add useful work or ideas"},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L2_W13","is_correct":false,"text":"a failure to understand correctly"}],"word":"keep someone informed"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('de5de5f3-5e78-5d93-a86f-988bd4189e9b', '99969702-1124-5f23-b768-fe11e8000cd5', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Each department contributed useful information, which allowed us to collaborate more effectively.","explanation":"The missing workplace expression is “keep someone informed”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"keep someone informed","id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L2_W14","is_correct":true},{"audio_text":"misunderstanding","id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L2_W15","is_correct":false},{"audio_text":"collaborate","id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L2_W16","is_correct":false}],"sentence_template":"Each department contributed useful information, which allowed us to collaborate more effectively."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('709f4da6-6b31-554a-8544-cc2cd3e87612', '99969702-1124-5f23-b768-fe11e8000cd5', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"keep someone informed","explanation":"The sentence requires “keep someone informed” to communicate the intended workplace meaning.","hint_prefix":"kee","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Each department contributed useful information, which allowed us to collaborate more effectively."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3513dca2-09c2-59de-9644-d2bf22d60900', '99969702-1124-5f23-b768-fe11e8000cd5', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"coordinate","id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L2_W17","text":"coordinate"},{"audio_text":"keep someone informed","id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L2_W18","text":"keep someone informed"},{"audio_text":"contribute","id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L2_W19","text":"contribute"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('af501dff-7c15-5a83-9861-e659ddc92a72', '99969702-1124-5f23-b768-fe11e8000cd5', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Coordinating with Colleagues”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L2_W20","is_correct":true,"text":"Each department contributed useful information, which allowed us to collaborate more effectively."},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L2_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L2_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d0af0be6-0ed2-5dff-bf91-170f6576a8a8', '99969702-1124-5f23-b768-fe11e8000cd5', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ea416afc-8315-5304-977e-631b3560dcab', NULL, 'Решение и последующие действия', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Handling Different Views","ru":"Решение и последующие действия"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c0c3ead-3fc9-5aa8-b2e4-20944a21369e', 'ea416afc-8315-5304-977e-631b3560dcab', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L3_W01","left":"coordinate","right":"координировать"},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L3_W02","left":"keep someone informed","right":"держать в курсе"},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L3_W03","left":"contribute","right":"вносить вклад"},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L3_W04","left":"misunderstanding","right":"недопонимание"},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L3_W05","left":"clarify","right":"уточнять"},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L3_W06","left":"collaborate","right":"сотрудничать"},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L3_W07","left":"feedback","right":"обратная связь"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('debae051-21ba-51b9-a456-d062b75c2bca', 'ea416afc-8315-5304-977e-631b3560dcab', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L3_W08","is_correct":true,"text":"A brief meeting clarified the misunderstanding and gave both colleagues a chance to offer feedback."},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L3_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L3_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bafb48a3-1a13-59e4-a44e-a1d45ba25793', 'ea416afc-8315-5304-977e-631b3560dcab', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A brief meeting clarified the misunderstanding and gave both colleagues a chance to offer feedback.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Короткая встреча прояснила недопонимание и дала обоим коллегам возможность оставить обратную связь.","target_language":"en","word_bank":["A","brief","meeting","clarified","the","misunderstanding","and","gave","both","colleagues","a","chance","to","offer","feedback."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4d1b6222-95a1-53f4-b38d-163844575ec9', 'ea416afc-8315-5304-977e-631b3560dcab', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"contribute","instruction":"Выберите подходящее слово.","options":["contribute","collaborate","coordinate"],"sentence_template":"A brief meeting clarified the misunderstanding and gave both colleagues a chance to offer feedback."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eea69096-973e-533d-8037-e843325fd0ce', 'ea416afc-8315-5304-977e-631b3560dcab', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","brief","meeting","clarified","the","misunderstanding","and","gave","both","colleagues","a","chance","to","offer","feedback."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["feedback.","offer","to","chance","a","colleagues","both","gave","and","misunderstanding","the","clarified","meeting","brief","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c82f410c-dcb1-5a3b-b8dc-33988be2872e', 'ea416afc-8315-5304-977e-631b3560dcab', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A brief meeting clarified the misunderstanding and gave both colleagues a chance to offer feedback. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ea3f926-1540-53fc-b2f5-290816c431ba', 'ea416afc-8315-5304-977e-631b3560dcab', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A brief meeting clarified the misunderstanding and gave both colleagues a chance to offer feedback. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Короткая встреча прояснила недопонимание и дала обоим коллегам возможность оставить обратную связь. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('641bf974-ff65-571d-8e7d-640555a2e5d0', 'ea416afc-8315-5304-977e-631b3560dcab', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"A brief meeting clarified the misunderstanding and gave both colleagues a chance to offer feedback.","translation":"Короткая встреча прояснила недопонимание и дала обоим коллегам возможность оставить обратную связь.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Handling Different Views"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac4f9bf3-c838-5beb-b701-2748e42c88fc', 'ea416afc-8315-5304-977e-631b3560dcab', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“contribute” means add useful work or ideas.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L3_W11","is_correct":true,"text":"add useful work or ideas"},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L3_W12","is_correct":false,"text":"a failure to understand correctly"},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L3_W13","is_correct":false,"text":"make information easier to understand"}],"word":"contribute"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d67274ba-578a-555a-b45c-dc30e85969bd', 'ea416afc-8315-5304-977e-631b3560dcab', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A brief meeting clarified the misunderstanding and gave both colleagues a chance to offer feedback.","explanation":"The missing workplace expression is “contribute”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"contribute","id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L3_W14","is_correct":true},{"audio_text":"clarify","id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L3_W15","is_correct":false},{"audio_text":"feedback","id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L3_W16","is_correct":false}],"sentence_template":"A brief meeting clarified the misunderstanding and gave both colleagues a chance to offer feedback."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e84a8de-e14a-5cbd-a742-53fc15db5ae9', 'ea416afc-8315-5304-977e-631b3560dcab', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"contribute","explanation":"The sentence requires “contribute” to communicate the intended workplace meaning.","hint_prefix":"con","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A brief meeting clarified the misunderstanding and gave both colleagues a chance to offer feedback."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac305084-7ae4-5af6-abae-c92347cbaba3', 'ea416afc-8315-5304-977e-631b3560dcab', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"coordinate","id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L3_W17","text":"coordinate"},{"audio_text":"keep someone informed","id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L3_W18","text":"keep someone informed"},{"audio_text":"contribute","id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L3_W19","text":"contribute"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7b639ac-ccee-5322-8bd7-dcaf36fd4aa3', 'ea416afc-8315-5304-977e-631b3560dcab', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Handling Different Views”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L3_W20","is_correct":true,"text":"A brief meeting clarified the misunderstanding and gave both colleagues a chance to offer feedback."},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L3_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_TEAM_COMMUNICATION_AND_COLLABORATION_L3_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d0af0be6-0ed2-5dff-bf91-170f6576a8a8', 'ea416afc-8315-5304-977e-631b3560dcab', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ed4bf9ba-5651-5b16-b9da-aea21a338e85', 'en', 'coordinate', 'координировать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('71ea0b6b-b7a9-5934-8eb9-a324b7b2754c', 'en', 'keep someone informed', 'держать в курсе', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0464b424-7844-5d1d-8d6e-38aa7c67cee9', 'en', 'contribute', 'вносить вклад', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6117e854-1ec4-5b68-a1d8-85e54ca63b70', 'en', 'misunderstanding', 'недопонимание', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('076f2a6e-d040-58e4-b99b-6c8f8b0e8b7c', 'en', 'clarify', 'уточнять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5c42992b-5e03-56d1-af29-2af53cb4e838', 'en', 'collaborate', 'сотрудничать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('558f3e34-64c4-59f9-8396-8f1506c22c17', 'en', 'feedback', 'обратная связь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ed4bf9ba-5651-5b16-b9da-aea21a338e85', 'en', 'coordinate', 'координировать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('71ea0b6b-b7a9-5934-8eb9-a324b7b2754c', 'en', 'keep someone informed', 'держать в курсе', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0464b424-7844-5d1d-8d6e-38aa7c67cee9', 'en', 'contribute', 'вносить вклад', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6117e854-1ec4-5b68-a1d8-85e54ca63b70', 'en', 'misunderstanding', 'недопонимание', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('076f2a6e-d040-58e4-b99b-6c8f8b0e8b7c', 'en', 'clarify', 'уточнять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5c42992b-5e03-56d1-af29-2af53cb4e838', 'en', 'collaborate', 'сотрудничать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('558f3e34-64c4-59f9-8396-8f1506c22c17', 'en', 'feedback', 'обратная связь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ed4bf9ba-5651-5b16-b9da-aea21a338e85', 'en', 'coordinate', 'координировать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('71ea0b6b-b7a9-5934-8eb9-a324b7b2754c', 'en', 'keep someone informed', 'держать в курсе', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0464b424-7844-5d1d-8d6e-38aa7c67cee9', 'en', 'contribute', 'вносить вклад', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6117e854-1ec4-5b68-a1d8-85e54ca63b70', 'en', 'misunderstanding', 'недопонимание', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('076f2a6e-d040-58e4-b99b-6c8f8b0e8b7c', 'en', 'clarify', 'уточнять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5c42992b-5e03-56d1-af29-2af53cb4e838', 'en', 'collaborate', 'сотрудничать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('558f3e34-64c4-59f9-8396-8f1506c22c17', 'en', 'feedback', 'обратная связь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd0af0be6-0ed2-5dff-bf91-170f6576a8a8', id, '42643a4c-be73-5fd2-b044-ed8cbcd7241e', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'coordinate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd0af0be6-0ed2-5dff-bf91-170f6576a8a8', id, '42643a4c-be73-5fd2-b044-ed8cbcd7241e', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'keep someone informed' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd0af0be6-0ed2-5dff-bf91-170f6576a8a8', id, '42643a4c-be73-5fd2-b044-ed8cbcd7241e', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'contribute' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd0af0be6-0ed2-5dff-bf91-170f6576a8a8', id, '42643a4c-be73-5fd2-b044-ed8cbcd7241e', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'misunderstanding' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd0af0be6-0ed2-5dff-bf91-170f6576a8a8', id, '42643a4c-be73-5fd2-b044-ed8cbcd7241e', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'clarify' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd0af0be6-0ed2-5dff-bf91-170f6576a8a8', id, '42643a4c-be73-5fd2-b044-ed8cbcd7241e', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'collaborate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd0af0be6-0ed2-5dff-bf91-170f6576a8a8', id, '42643a4c-be73-5fd2-b044-ed8cbcd7241e', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'feedback' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd0af0be6-0ed2-5dff-bf91-170f6576a8a8', id, '99969702-1124-5f23-b768-fe11e8000cd5', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'coordinate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd0af0be6-0ed2-5dff-bf91-170f6576a8a8', id, '99969702-1124-5f23-b768-fe11e8000cd5', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'keep someone informed' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd0af0be6-0ed2-5dff-bf91-170f6576a8a8', id, '99969702-1124-5f23-b768-fe11e8000cd5', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'contribute' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd0af0be6-0ed2-5dff-bf91-170f6576a8a8', id, '99969702-1124-5f23-b768-fe11e8000cd5', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'misunderstanding' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd0af0be6-0ed2-5dff-bf91-170f6576a8a8', id, '99969702-1124-5f23-b768-fe11e8000cd5', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'clarify' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd0af0be6-0ed2-5dff-bf91-170f6576a8a8', id, '99969702-1124-5f23-b768-fe11e8000cd5', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'collaborate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd0af0be6-0ed2-5dff-bf91-170f6576a8a8', id, '99969702-1124-5f23-b768-fe11e8000cd5', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'feedback' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd0af0be6-0ed2-5dff-bf91-170f6576a8a8', id, 'ea416afc-8315-5304-977e-631b3560dcab', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'coordinate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd0af0be6-0ed2-5dff-bf91-170f6576a8a8', id, 'ea416afc-8315-5304-977e-631b3560dcab', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'keep someone informed' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd0af0be6-0ed2-5dff-bf91-170f6576a8a8', id, 'ea416afc-8315-5304-977e-631b3560dcab', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'contribute' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd0af0be6-0ed2-5dff-bf91-170f6576a8a8', id, 'ea416afc-8315-5304-977e-631b3560dcab', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'misunderstanding' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd0af0be6-0ed2-5dff-bf91-170f6576a8a8', id, 'ea416afc-8315-5304-977e-631b3560dcab', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'clarify' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd0af0be6-0ed2-5dff-bf91-170f6576a8a8', id, 'ea416afc-8315-5304-977e-631b3560dcab', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'collaborate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd0af0be6-0ed2-5dff-bf91-170f6576a8a8', id, 'ea416afc-8315-5304-977e-631b3560dcab', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'feedback' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
