-- Track: B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('0858ab43-b91f-580e-8930-cdcb5c8cd315', 'B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS', 'Должности, обязанности и карьерные цели', 'Развивайте практический английский уровня B1 для работы по теме «Должности, обязанности и карьерные цели».', '{"en":"Roles, Responsibilities and Career Goals","ru":"Должности, обязанности и карьерные цели"}'::jsonb, '{"en":"Develop practical B1 workplace English for roles, responsibilities and career goals.","ru":"Развивайте практический английский уровня B1 для работы по теме «Должности, обязанности и карьерные цели»."}'::jsonb, 'en', 'B1', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('808f1a31-aeff-54ec-a9d7-efd8a79303aa', NULL, 'Рабочая ситуация', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Describing Your Role","ru":"Рабочая ситуация"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2d37c682-a6df-5ed0-97c6-9a07dafcf144', '808f1a31-aeff-54ec-a9d7-efd8a79303aa', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L1_W01","left":"responsibility","right":"обязанность"},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L1_W02","left":"supervise","right":"контролировать"},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L1_W03","left":"career path","right":"карьерный путь"},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L1_W04","left":"qualification","right":"квалификация"},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L1_W05","left":"promotion","right":"повышение"},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L1_W06","left":"strength","right":"сильная сторона"},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L1_W07","left":"develop","right":"развивать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce8f7ab0-d5a4-5c93-baef-1083b40e2fb5', '808f1a31-aeff-54ec-a9d7-efd8a79303aa', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L1_W08","is_correct":true,"text":"My main responsibility is to supervise daily operations and make sure the team has the information it needs."},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L1_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L1_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5483ec0e-2714-591b-9a8c-d55ce0bde339', '808f1a31-aeff-54ec-a9d7-efd8a79303aa', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"My main responsibility is to supervise daily operations and make sure the team has the information it needs.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Моя главная обязанность — контролировать ежедневную работу и обеспечивать команду необходимой информацией.","target_language":"en","word_bank":["My","main","responsibility","is","to","supervise","daily","operations","and","make","sure","the","team","has","the","information","it","needs."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c516a126-b28b-5909-83a9-28baa0b539fc', '808f1a31-aeff-54ec-a9d7-efd8a79303aa', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"responsibility","instruction":"Выберите подходящее слово.","options":["responsibility","qualification","strength"],"sentence_template":"My main ___ is to supervise daily operations and make sure the team has the information it needs."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('73872991-b73b-5b38-9f68-2663de867e85', '808f1a31-aeff-54ec-a9d7-efd8a79303aa', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["My","main","responsibility","is","to","supervise","daily","operations","and","make","sure","the","team","has","the","information","it","needs."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["needs.","it","information","the","has","team","the","sure","make","and","operations","daily","supervise","to","is","responsibility","main","My"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('27cbad2f-df23-5c50-9e0d-816b3a80c584', '808f1a31-aeff-54ec-a9d7-efd8a79303aa', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"My main responsibility is to supervise daily operations and make sure the team has the information it needs. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3eee8ae9-91dc-58e0-9d0e-edff3a527be1', '808f1a31-aeff-54ec-a9d7-efd8a79303aa', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"My main responsibility is to supervise daily operations and make sure the team has the information it needs. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Моя главная обязанность — контролировать ежедневную работу и обеспечивать команду необходимой информацией. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fbf20323-4597-5a2e-9d79-3f8afa64ed65', '808f1a31-aeff-54ec-a9d7-efd8a79303aa', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"My main responsibility is to supervise daily operations and make sure the team has the information it needs.","translation":"Моя главная обязанность — контролировать ежедневную работу и обеспечивать команду необходимой информацией.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Describing Your Role"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('93ed3ab7-5eeb-52fd-90c3-26a18300f4af', '808f1a31-aeff-54ec-a9d7-efd8a79303aa', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“responsibility” means a duty you are expected to manage.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L1_W11","is_correct":true,"text":"a duty you are expected to manage"},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L1_W12","is_correct":false,"text":"manage another person’s work"},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L1_W13","is_correct":false,"text":"the progress of jobs during working life"}],"word":"responsibility"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3be48e49-b9f1-57e3-b030-991b69b2bac1', '808f1a31-aeff-54ec-a9d7-efd8a79303aa', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"My main responsibility is to supervise daily operations and make sure the team has the information it needs.","explanation":"The missing workplace expression is “responsibility”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"responsibility","id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L1_W14","is_correct":true},{"audio_text":"career path","id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L1_W15","is_correct":false},{"audio_text":"promotion","id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L1_W16","is_correct":false}],"sentence_template":"My main ___ is to supervise daily operations and make sure the team has the information it needs."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f5816b64-d9ce-5b07-b0a7-74458e618370', '808f1a31-aeff-54ec-a9d7-efd8a79303aa', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"responsibility","explanation":"The sentence requires “responsibility” to communicate the intended workplace meaning.","hint_prefix":"res","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"My main ___ is to supervise daily operations and make sure the team has the information it needs."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('979a4713-d029-578d-823b-f1ec22785ece', '808f1a31-aeff-54ec-a9d7-efd8a79303aa', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"responsibility","id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L1_W17","text":"responsibility"},{"audio_text":"supervise","id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L1_W18","text":"supervise"},{"audio_text":"career path","id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L1_W19","text":"career path"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b5e09bd9-4036-5098-ab82-a28379f8ee18', '808f1a31-aeff-54ec-a9d7-efd8a79303aa', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Describing Your Role”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L1_W20","is_correct":true,"text":"My main responsibility is to supervise daily operations and make sure the team has the information it needs."},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L1_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L1_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0858ab43-b91f-580e-8930-cdcb5c8cd315', '808f1a31-aeff-54ec-a9d7-efd8a79303aa', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('6e83a22e-6d8e-5bce-bf85-a77eebd7b3ec', NULL, 'Обсуждение вариантов', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Changing Responsibilities","ru":"Обсуждение вариантов"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('51674036-6019-544f-b5c2-b4c346a3faf4', '6e83a22e-6d8e-5bce-bf85-a77eebd7b3ec', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L2_W01","left":"responsibility","right":"обязанность"},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L2_W02","left":"supervise","right":"контролировать"},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L2_W03","left":"career path","right":"карьерный путь"},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L2_W04","left":"qualification","right":"квалификация"},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L2_W05","left":"promotion","right":"повышение"},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L2_W06","left":"strength","right":"сильная сторона"},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L2_W07","left":"develop","right":"развивать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4c461817-b127-5120-ba94-1c7beb665177', '6e83a22e-6d8e-5bce-bf85-a77eebd7b3ec', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L2_W08","is_correct":true,"text":"This qualification could strengthen my career path, although experience will remain equally important."},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L2_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L2_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d83210b2-332b-5534-b5d1-51a7fe80099d', '6e83a22e-6d8e-5bce-bf85-a77eebd7b3ec', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"This qualification could strengthen my career path, although experience will remain equally important.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Эта квалификация может укрепить мой карьерный путь, хотя опыт останется не менее важным.","target_language":"en","word_bank":["This","qualification","could","strengthen","my","career","path,","although","experience","will","remain","equally","important."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cafaca6c-2e87-598b-a42c-f5035bb4f64d', '6e83a22e-6d8e-5bce-bf85-a77eebd7b3ec', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"supervise","instruction":"Выберите подходящее слово.","options":["supervise","promotion","develop"],"sentence_template":"This qualification could strengthen my career path, although experience will remain equally important."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b854e396-5668-5b78-b3f9-f8e6affeb585', '6e83a22e-6d8e-5bce-bf85-a77eebd7b3ec', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["This","qualification","could","strengthen","my","career","path,","although","experience","will","remain","equally","important."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["important.","equally","remain","will","experience","although","path,","career","my","strengthen","could","qualification","This"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf406c4b-ced4-5595-8ac2-704331ca20a0', '6e83a22e-6d8e-5bce-bf85-a77eebd7b3ec', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"This qualification could strengthen my career path, although experience will remain equally important. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('056fe00d-e8b3-5ef3-9d91-5c00a5497e14', '6e83a22e-6d8e-5bce-bf85-a77eebd7b3ec', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"This qualification could strengthen my career path, although experience will remain equally important. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Эта квалификация может укрепить мой карьерный путь, хотя опыт останется не менее важным. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a67ea3e-40e9-512a-9d15-f3c2d78e3bae', '6e83a22e-6d8e-5bce-bf85-a77eebd7b3ec', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"This qualification could strengthen my career path, although experience will remain equally important.","translation":"Эта квалификация может укрепить мой карьерный путь, хотя опыт останется не менее важным.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Changing Responsibilities"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c39f60ba-c972-5ac0-8f42-cfffd4248a09', '6e83a22e-6d8e-5bce-bf85-a77eebd7b3ec', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“supervise” means manage another person’s work.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L2_W11","is_correct":true,"text":"manage another person’s work"},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L2_W12","is_correct":false,"text":"the progress of jobs during working life"},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L2_W13","is_correct":false,"text":"a skill or certificate for a job"}],"word":"supervise"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('651a4854-6b7f-5038-b2bf-9719ecabcf94', '6e83a22e-6d8e-5bce-bf85-a77eebd7b3ec', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"This qualification could strengthen my career path, although experience will remain equally important.","explanation":"The missing workplace expression is “supervise”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"supervise","id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L2_W14","is_correct":true},{"audio_text":"qualification","id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L2_W15","is_correct":false},{"audio_text":"strength","id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L2_W16","is_correct":false}],"sentence_template":"This qualification could strengthen my career path, although experience will remain equally important."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e6a2429f-6dc5-5dab-93a0-8cef8cf3428e', '6e83a22e-6d8e-5bce-bf85-a77eebd7b3ec', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"supervise","explanation":"The sentence requires “supervise” to communicate the intended workplace meaning.","hint_prefix":"sup","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"This qualification could strengthen my career path, although experience will remain equally important."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fa72b293-2f22-5857-9595-31c4d4d320e6', '6e83a22e-6d8e-5bce-bf85-a77eebd7b3ec', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"responsibility","id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L2_W17","text":"responsibility"},{"audio_text":"supervise","id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L2_W18","text":"supervise"},{"audio_text":"career path","id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L2_W19","text":"career path"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fa631bef-5a21-588f-813b-525eb713aea7', '6e83a22e-6d8e-5bce-bf85-a77eebd7b3ec', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Changing Responsibilities”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L2_W20","is_correct":true,"text":"This qualification could strengthen my career path, although experience will remain equally important."},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L2_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L2_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0858ab43-b91f-580e-8930-cdcb5c8cd315', '6e83a22e-6d8e-5bce-bf85-a77eebd7b3ec', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('dc7e1802-5a8b-5bf5-9d6e-565ed748e81a', NULL, 'Решение и последующие действия', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Career Goals","ru":"Решение и последующие действия"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8a9b1353-ad97-53d3-b9ef-922be84234b9', 'dc7e1802-5a8b-5bf5-9d6e-565ed748e81a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L3_W01","left":"responsibility","right":"обязанность"},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L3_W02","left":"supervise","right":"контролировать"},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L3_W03","left":"career path","right":"карьерный путь"},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L3_W04","left":"qualification","right":"квалификация"},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L3_W05","left":"promotion","right":"повышение"},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L3_W06","left":"strength","right":"сильная сторона"},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L3_W07","left":"develop","right":"развивать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7b5b90fd-f12a-567b-885a-25a806e065c6', 'dc7e1802-5a8b-5bf5-9d6e-565ed748e81a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L3_W08","is_correct":true,"text":"Before applying for a promotion, I want to develop my leadership skills and demonstrate my strengths consistently."},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L3_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L3_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b2e7114-5279-569c-8c5b-1560baa18caf', 'dc7e1802-5a8b-5bf5-9d6e-565ed748e81a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Before applying for a promotion, I want to develop my leadership skills and demonstrate my strengths consistently.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Прежде чем подавать заявку на повышение, я хочу развить лидерские навыки и постоянно демонстрировать свои сильные стороны.","target_language":"en","word_bank":["Before","applying","for","a","promotion,","I","want","to","develop","my","leadership","skills","and","demonstrate","my","strengths","consistently."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9fdb9be-cdb6-5985-9c30-b7b22b8a0252', 'dc7e1802-5a8b-5bf5-9d6e-565ed748e81a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"career path","instruction":"Выберите подходящее слово.","options":["career path","strength","responsibility"],"sentence_template":"Before applying for a promotion, I want to develop my leadership skills and demonstrate my strengths consistently."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9201756-67b2-531c-a53f-0769cc8caa45', 'dc7e1802-5a8b-5bf5-9d6e-565ed748e81a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Before","applying","for","a","promotion,","I","want","to","develop","my","leadership","skills","and","demonstrate","my","strengths","consistently."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["consistently.","strengths","my","demonstrate","and","skills","leadership","my","develop","to","want","I","promotion,","a","for","applying","Before"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9fb6f949-40f1-5ae0-bcd0-044e07ae4661', 'dc7e1802-5a8b-5bf5-9d6e-565ed748e81a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Before applying for a promotion, I want to develop my leadership skills and demonstrate my strengths consistently. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e5a7d3f-926e-5c96-9377-3df46eaaae45', 'dc7e1802-5a8b-5bf5-9d6e-565ed748e81a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Before applying for a promotion, I want to develop my leadership skills and demonstrate my strengths consistently. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Прежде чем подавать заявку на повышение, я хочу развить лидерские навыки и постоянно демонстрировать свои сильные стороны. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b24aa020-bb4d-5de3-b451-f27bf28b6487', 'dc7e1802-5a8b-5bf5-9d6e-565ed748e81a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"Before applying for a promotion, I want to develop my leadership skills and demonstrate my strengths consistently.","translation":"Прежде чем подавать заявку на повышение, я хочу развить лидерские навыки и постоянно демонстрировать свои сильные стороны.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Career Goals"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b16d3a5f-6e45-5734-af86-9ababb0ed078', 'dc7e1802-5a8b-5bf5-9d6e-565ed748e81a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“career path” means the progress of jobs during working life.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L3_W11","is_correct":true,"text":"the progress of jobs during working life"},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L3_W12","is_correct":false,"text":"a skill or certificate for a job"},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L3_W13","is_correct":false,"text":"a move to a more senior position"}],"word":"career path"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3ce87834-500d-5393-a239-6d81ead9cb61', 'dc7e1802-5a8b-5bf5-9d6e-565ed748e81a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Before applying for a promotion, I want to develop my leadership skills and demonstrate my strengths consistently.","explanation":"The missing workplace expression is “career path”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"career path","id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L3_W14","is_correct":true},{"audio_text":"promotion","id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L3_W15","is_correct":false},{"audio_text":"develop","id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L3_W16","is_correct":false}],"sentence_template":"Before applying for a promotion, I want to develop my leadership skills and demonstrate my strengths consistently."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('701cc138-edff-599a-b48b-ca15f0e1fbc6', 'dc7e1802-5a8b-5bf5-9d6e-565ed748e81a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"career path","explanation":"The sentence requires “career path” to communicate the intended workplace meaning.","hint_prefix":"car","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Before applying for a promotion, I want to develop my leadership skills and demonstrate my strengths consistently."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('974c887c-d2fd-5c7c-99a1-151e12049c0d', 'dc7e1802-5a8b-5bf5-9d6e-565ed748e81a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"responsibility","id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L3_W17","text":"responsibility"},{"audio_text":"supervise","id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L3_W18","text":"supervise"},{"audio_text":"career path","id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L3_W19","text":"career path"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da775b1c-55bc-54a3-8773-b626494e79dc', 'dc7e1802-5a8b-5bf5-9d6e-565ed748e81a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Career Goals”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L3_W20","is_correct":true,"text":"Before applying for a promotion, I want to develop my leadership skills and demonstrate my strengths consistently."},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L3_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_ROLES_RESPONSIBILITIES_AND_CAREER_GOALS_L3_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0858ab43-b91f-580e-8930-cdcb5c8cd315', 'dc7e1802-5a8b-5bf5-9d6e-565ed748e81a', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bd39b0e0-d1f0-5aa4-bffa-b531cb19aec1', 'en', 'responsibility', 'обязанность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b66afb85-5404-5cd5-ba59-1ee0580eb06b', 'en', 'supervise', 'контролировать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3c7123db-9095-5711-ab03-b8cc5adb3601', 'en', 'career path', 'карьерный путь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('66600173-1769-5a48-9676-bf08de67f4b9', 'en', 'qualification', 'квалификация', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('104fadd9-edaf-53a0-b9d8-ab13378b1f9b', 'en', 'promotion', 'повышение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5d235f29-afc8-588f-a0e3-aa536d3458be', 'en', 'strength', 'сильная сторона', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c79f3c01-59e6-50e6-89f9-b95a2e6abb78', 'en', 'develop', 'развивать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bd39b0e0-d1f0-5aa4-bffa-b531cb19aec1', 'en', 'responsibility', 'обязанность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b66afb85-5404-5cd5-ba59-1ee0580eb06b', 'en', 'supervise', 'контролировать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3c7123db-9095-5711-ab03-b8cc5adb3601', 'en', 'career path', 'карьерный путь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('66600173-1769-5a48-9676-bf08de67f4b9', 'en', 'qualification', 'квалификация', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('104fadd9-edaf-53a0-b9d8-ab13378b1f9b', 'en', 'promotion', 'повышение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5d235f29-afc8-588f-a0e3-aa536d3458be', 'en', 'strength', 'сильная сторона', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c79f3c01-59e6-50e6-89f9-b95a2e6abb78', 'en', 'develop', 'развивать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bd39b0e0-d1f0-5aa4-bffa-b531cb19aec1', 'en', 'responsibility', 'обязанность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b66afb85-5404-5cd5-ba59-1ee0580eb06b', 'en', 'supervise', 'контролировать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3c7123db-9095-5711-ab03-b8cc5adb3601', 'en', 'career path', 'карьерный путь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('66600173-1769-5a48-9676-bf08de67f4b9', 'en', 'qualification', 'квалификация', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('104fadd9-edaf-53a0-b9d8-ab13378b1f9b', 'en', 'promotion', 'повышение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5d235f29-afc8-588f-a0e3-aa536d3458be', 'en', 'strength', 'сильная сторона', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c79f3c01-59e6-50e6-89f9-b95a2e6abb78', 'en', 'develop', 'развивать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0858ab43-b91f-580e-8930-cdcb5c8cd315', id, '808f1a31-aeff-54ec-a9d7-efd8a79303aa', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'responsibility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0858ab43-b91f-580e-8930-cdcb5c8cd315', id, '808f1a31-aeff-54ec-a9d7-efd8a79303aa', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'supervise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0858ab43-b91f-580e-8930-cdcb5c8cd315', id, '808f1a31-aeff-54ec-a9d7-efd8a79303aa', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'career path' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0858ab43-b91f-580e-8930-cdcb5c8cd315', id, '808f1a31-aeff-54ec-a9d7-efd8a79303aa', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualification' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0858ab43-b91f-580e-8930-cdcb5c8cd315', id, '808f1a31-aeff-54ec-a9d7-efd8a79303aa', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'promotion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0858ab43-b91f-580e-8930-cdcb5c8cd315', id, '808f1a31-aeff-54ec-a9d7-efd8a79303aa', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'strength' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0858ab43-b91f-580e-8930-cdcb5c8cd315', id, '808f1a31-aeff-54ec-a9d7-efd8a79303aa', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'develop' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0858ab43-b91f-580e-8930-cdcb5c8cd315', id, '6e83a22e-6d8e-5bce-bf85-a77eebd7b3ec', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'responsibility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0858ab43-b91f-580e-8930-cdcb5c8cd315', id, '6e83a22e-6d8e-5bce-bf85-a77eebd7b3ec', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'supervise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0858ab43-b91f-580e-8930-cdcb5c8cd315', id, '6e83a22e-6d8e-5bce-bf85-a77eebd7b3ec', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'career path' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0858ab43-b91f-580e-8930-cdcb5c8cd315', id, '6e83a22e-6d8e-5bce-bf85-a77eebd7b3ec', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualification' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0858ab43-b91f-580e-8930-cdcb5c8cd315', id, '6e83a22e-6d8e-5bce-bf85-a77eebd7b3ec', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'promotion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0858ab43-b91f-580e-8930-cdcb5c8cd315', id, '6e83a22e-6d8e-5bce-bf85-a77eebd7b3ec', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'strength' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0858ab43-b91f-580e-8930-cdcb5c8cd315', id, '6e83a22e-6d8e-5bce-bf85-a77eebd7b3ec', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'develop' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0858ab43-b91f-580e-8930-cdcb5c8cd315', id, 'dc7e1802-5a8b-5bf5-9d6e-565ed748e81a', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'responsibility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0858ab43-b91f-580e-8930-cdcb5c8cd315', id, 'dc7e1802-5a8b-5bf5-9d6e-565ed748e81a', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'supervise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0858ab43-b91f-580e-8930-cdcb5c8cd315', id, 'dc7e1802-5a8b-5bf5-9d6e-565ed748e81a', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'career path' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0858ab43-b91f-580e-8930-cdcb5c8cd315', id, 'dc7e1802-5a8b-5bf5-9d6e-565ed748e81a', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualification' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0858ab43-b91f-580e-8930-cdcb5c8cd315', id, 'dc7e1802-5a8b-5bf5-9d6e-565ed748e81a', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'promotion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0858ab43-b91f-580e-8930-cdcb5c8cd315', id, 'dc7e1802-5a8b-5bf5-9d6e-565ed748e81a', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'strength' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0858ab43-b91f-580e-8930-cdcb5c8cd315', id, 'dc7e1802-5a8b-5bf5-9d6e-565ed748e81a', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'develop' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
