-- Track: B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('72274d28-e585-5c47-87cc-b37c558b8179', 'B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION', 'Просьбы, обратная связь и уточнения', 'Развивайте практический английский уровня B1 для работы по теме «Просьбы, обратная связь и уточнения».', '{"en":"Requests, Feedback and Clarification","ru":"Просьбы, обратная связь и уточнения"}'::jsonb, '{"en":"Develop practical B1 workplace English for requests, feedback and clarification.","ru":"Развивайте практический английский уровня B1 для работы по теме «Просьбы, обратная связь и уточнения»."}'::jsonb, 'en', 'B1', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('cd18a86d-b903-5e38-a138-e6189646a181', NULL, 'Рабочая ситуация', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Making Professional Requests","ru":"Рабочая ситуация"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ae4460b-6b63-54c8-8d86-fb45bfa8901b', 'cd18a86d-b903-5e38-a138-e6189646a181', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L1_W01","left":"clarify","right":"уточнять"},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L1_W02","left":"expectation","right":"ожидание"},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L1_W03","left":"constructive feedback","right":"конструктивная обратная связь"},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L1_W04","left":"request","right":"просьба"},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L1_W05","left":"specific","right":"конкретный"},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L1_W06","left":"suggestion","right":"предложение"},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L1_W07","left":"follow up","right":"вернуться к вопросу"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3055a5a6-1296-5106-91d3-15d96130e810', 'cd18a86d-b903-5e38-a138-e6189646a181', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L1_W08","is_correct":true,"text":"Could you clarify which result has the highest priority and when you expect the first draft?"},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L1_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L1_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('46759af2-f602-5db2-8f3b-331520f2d5af', 'cd18a86d-b903-5e38-a138-e6189646a181', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Could you clarify which result has the highest priority and when you expect the first draft?","instruction":"Соберите перевод.","source_language":"ru","source_text":"Не могли бы вы уточнить, какой результат имеет наивысший приоритет и когда вы ожидаете первый черновик?","target_language":"en","word_bank":["Could","you","clarify","which","result","has","the","highest","priority","and","when","you","expect","the","first","draft?"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd466c99-97f8-52b3-9d4d-67ac56746567', 'cd18a86d-b903-5e38-a138-e6189646a181', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"clarify","instruction":"Выберите подходящее слово.","options":["clarify","request","suggestion"],"sentence_template":"Could you ___ which result has the highest priority and when you expect the first draft?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90eff3e6-4c24-5436-b1ed-2ce0622a3054', 'cd18a86d-b903-5e38-a138-e6189646a181', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Could","you","clarify","which","result","has","the","highest","priority","and","when","you","expect","the","first","draft?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["draft?","first","the","expect","you","when","and","priority","highest","the","has","result","which","clarify","you","Could"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('84f87db3-f25e-59ce-af15-3d754d29c3cc', 'cd18a86d-b903-5e38-a138-e6189646a181', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Could you clarify which result has the highest priority and when you expect the first draft? The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ec68f987-9651-5969-a747-ae69af2192e1', 'cd18a86d-b903-5e38-a138-e6189646a181', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Could you clarify which result has the highest priority and when you expect the first draft? The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Не могли бы вы уточнить, какой результат имеет наивысший приоритет и когда вы ожидаете первый черновик? Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da787f08-1d71-51bb-aa1d-03609c07844e', 'cd18a86d-b903-5e38-a138-e6189646a181', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"Could you clarify which result has the highest priority and when you expect the first draft?","translation":"Не могли бы вы уточнить, какой результат имеет наивысший приоритет и когда вы ожидаете первый черновик?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Making Professional Requests"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('edbe232a-17ed-5fff-b0a9-8f088c0dd792', 'cd18a86d-b903-5e38-a138-e6189646a181', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“clarify” means make meaning easier to understand.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L1_W11","is_correct":true,"text":"make meaning easier to understand"},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L1_W12","is_correct":false,"text":"a standard someone expects"},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L1_W13","is_correct":false,"text":"comments intended to support improvement"}],"word":"clarify"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('370d3e6e-67a1-5152-8521-0e04d1fa5336', 'cd18a86d-b903-5e38-a138-e6189646a181', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Could you clarify which result has the highest priority and when you expect the first draft?","explanation":"The missing workplace expression is “clarify”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"clarify","id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L1_W14","is_correct":true},{"audio_text":"constructive feedback","id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L1_W15","is_correct":false},{"audio_text":"specific","id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L1_W16","is_correct":false}],"sentence_template":"Could you ___ which result has the highest priority and when you expect the first draft?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('43a9f16a-94b8-5d12-9867-5385f1bb7071', 'cd18a86d-b903-5e38-a138-e6189646a181', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"clarify","explanation":"The sentence requires “clarify” to communicate the intended workplace meaning.","hint_prefix":"cla","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Could you ___ which result has the highest priority and when you expect the first draft?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ffe71827-645e-58d7-be99-5076bf6edb08', 'cd18a86d-b903-5e38-a138-e6189646a181', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"clarify","id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L1_W17","text":"clarify"},{"audio_text":"expectation","id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L1_W18","text":"expectation"},{"audio_text":"constructive feedback","id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L1_W19","text":"constructive feedback"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e418f7f-c597-5f34-9cef-9e539c2a30af', 'cd18a86d-b903-5e38-a138-e6189646a181', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Making Professional Requests”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L1_W20","is_correct":true,"text":"Could you clarify which result has the highest priority and when you expect the first draft?"},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L1_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L1_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('72274d28-e585-5c47-87cc-b37c558b8179', 'cd18a86d-b903-5e38-a138-e6189646a181', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('08d25a73-c058-5670-8188-b8acc388ffd5', NULL, 'Обсуждение вариантов', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Giving and Receiving Feedback","ru":"Обсуждение вариантов"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a6fcf4de-d91b-5f5b-8285-8fa737f3190b', '08d25a73-c058-5670-8188-b8acc388ffd5', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L2_W01","left":"clarify","right":"уточнять"},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L2_W02","left":"expectation","right":"ожидание"},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L2_W03","left":"constructive feedback","right":"конструктивная обратная связь"},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L2_W04","left":"request","right":"просьба"},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L2_W05","left":"specific","right":"конкретный"},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L2_W06","left":"suggestion","right":"предложение"},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L2_W07","left":"follow up","right":"вернуться к вопросу"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f8b11968-cf90-5a7c-8dd8-8fa921492dcf', '08d25a73-c058-5670-8188-b8acc388ffd5', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L2_W08","is_correct":true,"text":"The manager’s constructive feedback was specific and included a practical suggestion for improvement."},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L2_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L2_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('585fc817-b852-5099-87c6-94580e470556', '08d25a73-c058-5670-8188-b8acc388ffd5', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The manager’s constructive feedback was specific and included a practical suggestion for improvement.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Конструктивная обратная связь менеджера была конкретной и включала практическое предложение по улучшению.","target_language":"en","word_bank":["The","manager’s","constructive","feedback","was","specific","and","included","a","practical","suggestion","for","improvement."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a6a5d35-c317-533f-b3c0-18db128a9a50', '08d25a73-c058-5670-8188-b8acc388ffd5', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"expectation","instruction":"Выберите подходящее слово.","options":["expectation","specific","follow up"],"sentence_template":"The manager’s constructive feedback was specific and included a practical suggestion for improvement."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ee610270-f70d-5bcb-94bb-09937056d3ce', '08d25a73-c058-5670-8188-b8acc388ffd5', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","manager’s","constructive","feedback","was","specific","and","included","a","practical","suggestion","for","improvement."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["improvement.","for","suggestion","practical","a","included","and","specific","was","feedback","constructive","manager’s","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b9da3fa-ea44-5f2c-acd2-f889ea2e518a', '08d25a73-c058-5670-8188-b8acc388ffd5', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The manager’s constructive feedback was specific and included a practical suggestion for improvement. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('392c53b6-1481-56c7-8d57-4a2eabdb6c11', '08d25a73-c058-5670-8188-b8acc388ffd5', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The manager’s constructive feedback was specific and included a practical suggestion for improvement. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Конструктивная обратная связь менеджера была конкретной и включала практическое предложение по улучшению. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b92bcb9-bf8c-55d3-98c8-a14ae952b217', '08d25a73-c058-5670-8188-b8acc388ffd5', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"The manager’s constructive feedback was specific and included a practical suggestion for improvement.","translation":"Конструктивная обратная связь менеджера была конкретной и включала практическое предложение по улучшению.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Giving and Receiving Feedback"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ff4756a-15da-5f94-a097-583947eabdfc', '08d25a73-c058-5670-8188-b8acc388ffd5', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“expectation” means a standard someone expects.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L2_W11","is_correct":true,"text":"a standard someone expects"},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L2_W12","is_correct":false,"text":"comments intended to support improvement"},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L2_W13","is_correct":false,"text":"a polite statement asking for something"}],"word":"expectation"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('282989a9-9909-595d-ba0c-c3ee4998c33b', '08d25a73-c058-5670-8188-b8acc388ffd5', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The manager’s constructive feedback was specific and included a practical suggestion for improvement.","explanation":"The missing workplace expression is “expectation”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"expectation","id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L2_W14","is_correct":true},{"audio_text":"request","id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L2_W15","is_correct":false},{"audio_text":"suggestion","id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L2_W16","is_correct":false}],"sentence_template":"The manager’s constructive feedback was specific and included a practical suggestion for improvement."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f74789cd-cfa7-53b5-8e2f-be489e90815b', '08d25a73-c058-5670-8188-b8acc388ffd5', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"expectation","explanation":"The sentence requires “expectation” to communicate the intended workplace meaning.","hint_prefix":"exp","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The manager’s constructive feedback was specific and included a practical suggestion for improvement."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a54e23aa-6ecc-568d-bacd-cdce40d52d84', '08d25a73-c058-5670-8188-b8acc388ffd5', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"clarify","id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L2_W17","text":"clarify"},{"audio_text":"expectation","id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L2_W18","text":"expectation"},{"audio_text":"constructive feedback","id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L2_W19","text":"constructive feedback"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('52c54532-e89b-5201-b96a-87f5edffae70', '08d25a73-c058-5670-8188-b8acc388ffd5', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Giving and Receiving Feedback”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L2_W20","is_correct":true,"text":"The manager’s constructive feedback was specific and included a practical suggestion for improvement."},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L2_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L2_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('72274d28-e585-5c47-87cc-b37c558b8179', '08d25a73-c058-5670-8188-b8acc388ffd5', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9bd8a711-4499-5d4a-95cc-4ab7a9f84363', NULL, 'Решение и последующие действия', 'Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий.', '{"en":"Clarifying Expectations","ru":"Решение и последующие действия"}'::jsonb, '{"en":"Use B1 English to explain workplace situations, discuss options, and agree on next actions.","ru":"Использовать английский уровня B1 для объяснения рабочих ситуаций, обсуждения вариантов и согласования следующих действий."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1c53ed0e-9f5f-539e-a245-f101f9f8f8e4', '9bd8a711-4499-5d4a-95cc-4ab7a9f84363', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L3_W01","left":"clarify","right":"уточнять"},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L3_W02","left":"expectation","right":"ожидание"},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L3_W03","left":"constructive feedback","right":"конструктивная обратная связь"},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L3_W04","left":"request","right":"просьба"},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L3_W05","left":"specific","right":"конкретный"},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L3_W06","left":"suggestion","right":"предложение"},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L3_W07","left":"follow up","right":"вернуться к вопросу"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5c6a9333-c531-5d3e-a83c-eb89be293c21', '9bd8a711-4499-5d4a-95cc-4ab7a9f84363', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response gives clear B1-level information and connects the situation to an action or reason.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L3_W08","is_correct":true,"text":"I will follow up on the request tomorrow unless the client responds before then."},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L3_W09","is_correct":false,"text":"The problem does not need an explanation or any further action."},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L3_W10","is_correct":false,"text":"No one should receive information about the decision."}],"question":"Which response communicates the workplace situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('db6831b9-b391-5943-84a2-eff0e137d8cd', '9bd8a711-4499-5d4a-95cc-4ab7a9f84363', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I will follow up on the request tomorrow unless the client responds before then.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я вернусь к этой просьбе завтра, если клиент не ответит раньше.","target_language":"en","word_bank":["I","will","follow","up","on","the","request","tomorrow","unless","the","client","responds","before","then."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1925663-c3ce-5245-9fd4-9e0ce3a632ba', '9bd8a711-4499-5d4a-95cc-4ab7a9f84363', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"constructive feedback","instruction":"Выберите подходящее слово.","options":["constructive feedback","suggestion","clarify"],"sentence_template":"I will follow up on the request tomorrow unless the client responds before then."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e5df7aa3-2ea8-5cfd-b38f-814871e82e1a', '9bd8a711-4499-5d4a-95cc-4ab7a9f84363', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","will","follow","up","on","the","request","tomorrow","unless","the","client","responds","before","then."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["then.","before","responds","client","the","unless","tomorrow","request","the","on","up","follow","will","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b56d4dd9-cf89-5982-a8c9-02bd33d64b68', '9bd8a711-4499-5d4a-95cc-4ab7a9f84363', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I will follow up on the request tomorrow unless the client responds before then. The team will review the situation and confirm the next action by the end of the day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e637ef9-4b86-5897-aede-eed96258100b', '9bd8a711-4499-5d4a-95cc-4ab7a9f84363', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I will follow up on the request tomorrow unless the client responds before then. The team will review the situation and confirm the next action by the end of the day. Notice the contrast and stressed action words, then repeat the complete update naturally.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Я вернусь к этой просьбе завтра, если клиент не ответит раньше. Команда рассмотрит ситуацию и подтвердит следующее действие до конца дня. Обратите внимание на противопоставление и ударные слова действия, затем естественно повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5d584061-8ebd-5ae8-9192-cbd5951fc709', '9bd8a711-4499-5d4a-95cc-4ab7a9f84363', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Please explain the situation and recommend a next step.","translation":"Пожалуйста, объясните ситуацию и порекомендуйте следующий шаг.","type":"dialogue"},{"character":"Employee","text":"I will follow up on the request tomorrow unless the client responds before then.","translation":"Я вернусь к этой просьбе завтра, если клиент не ответит раньше.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Confirm responsibilities and agree when the next update will be given."},{"is_correct":false,"text":"End the discussion without assigning any action."}],"text":"Which action best continues the conversation?","type":"choice"}],"title":"Clarifying Expectations"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6cda841d-4c18-5d3c-bb94-e2b78c94c916', '9bd8a711-4499-5d4a-95cc-4ab7a9f84363', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“constructive feedback” means comments intended to support improvement.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L3_W11","is_correct":true,"text":"comments intended to support improvement"},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L3_W12","is_correct":false,"text":"a polite statement asking for something"},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L3_W13","is_correct":false,"text":"clear and exact"}],"word":"constructive feedback"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1f96fb79-dc0b-576c-8028-b59d19914faa', '9bd8a711-4499-5d4a-95cc-4ab7a9f84363', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I will follow up on the request tomorrow unless the client responds before then.","explanation":"The missing workplace expression is “constructive feedback”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"constructive feedback","id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L3_W14","is_correct":true},{"audio_text":"specific","id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L3_W15","is_correct":false},{"audio_text":"follow up","id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L3_W16","is_correct":false}],"sentence_template":"I will follow up on the request tomorrow unless the client responds before then."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3fa6f120-f8e0-5d04-8f02-f2dbc43ed743', '9bd8a711-4499-5d4a-95cc-4ab7a9f84363', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"constructive feedback","explanation":"The sentence requires “constructive feedback” to communicate the intended workplace meaning.","hint_prefix":"con","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I will follow up on the request tomorrow unless the client responds before then."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9c658365-30fe-5687-82d7-4d666fbb831a', '9bd8a711-4499-5d4a-95cc-4ab7a9f84363', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"clarify","id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L3_W17","text":"clarify"},{"audio_text":"expectation","id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L3_W18","text":"expectation"},{"audio_text":"constructive feedback","id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L3_W19","text":"constructive feedback"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bfb2ac6a-70bc-5b91-aaf7-412c14b8ed9f', '9bd8a711-4499-5d4a-95cc-4ab7a9f84363', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"What should we do about “Clarifying Expectations”?"}],"explanation":"The correct response explains the work situation clearly and supports practical next steps.","instruction":"Ответьте.","options":[{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L3_W20","is_correct":true,"text":"I will follow up on the request tomorrow unless the client responds before then."},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L3_W21","is_correct":false,"text":"There is no need to explain the issue or consider a solution."},{"id":"B1_WORK_REQUESTS_FEEDBACK_AND_CLARIFICATION_L3_W22","is_correct":false,"text":"I will give an unrelated answer instead of discussing the work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('72274d28-e585-5c47-87cc-b37c558b8179', '9bd8a711-4499-5d4a-95cc-4ab7a9f84363', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('076f2a6e-d040-58e4-b99b-6c8f8b0e8b7c', 'en', 'clarify', 'уточнять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0e3f9e65-e794-5cac-8202-c34acb61e83e', 'en', 'expectation', 'ожидание', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48171c3f-91fd-532b-b4fa-c8c35858d1b1', 'en', 'constructive feedback', 'конструктивная обратная связь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('89923d48-ca83-5639-98a1-4c70437df0c3', 'en', 'request', 'просьба', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3e6f592c-19e2-57a6-b864-a7c1b871f40a', 'en', 'specific', 'конкретный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('423412d3-b968-5c94-aa74-1f052ddc0986', 'en', 'suggestion', 'предложение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8dc3d3a1-d2f6-5005-8b18-b7e89e1b0607', 'en', 'follow up', 'вернуться к вопросу', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('076f2a6e-d040-58e4-b99b-6c8f8b0e8b7c', 'en', 'clarify', 'уточнять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0e3f9e65-e794-5cac-8202-c34acb61e83e', 'en', 'expectation', 'ожидание', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48171c3f-91fd-532b-b4fa-c8c35858d1b1', 'en', 'constructive feedback', 'конструктивная обратная связь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('89923d48-ca83-5639-98a1-4c70437df0c3', 'en', 'request', 'просьба', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3e6f592c-19e2-57a6-b864-a7c1b871f40a', 'en', 'specific', 'конкретный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('423412d3-b968-5c94-aa74-1f052ddc0986', 'en', 'suggestion', 'предложение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8dc3d3a1-d2f6-5005-8b18-b7e89e1b0607', 'en', 'follow up', 'вернуться к вопросу', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('076f2a6e-d040-58e4-b99b-6c8f8b0e8b7c', 'en', 'clarify', 'уточнять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0e3f9e65-e794-5cac-8202-c34acb61e83e', 'en', 'expectation', 'ожидание', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48171c3f-91fd-532b-b4fa-c8c35858d1b1', 'en', 'constructive feedback', 'конструктивная обратная связь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('89923d48-ca83-5639-98a1-4c70437df0c3', 'en', 'request', 'просьба', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3e6f592c-19e2-57a6-b864-a7c1b871f40a', 'en', 'specific', 'конкретный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('423412d3-b968-5c94-aa74-1f052ddc0986', 'en', 'suggestion', 'предложение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8dc3d3a1-d2f6-5005-8b18-b7e89e1b0607', 'en', 'follow up', 'вернуться к вопросу', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '72274d28-e585-5c47-87cc-b37c558b8179', id, 'cd18a86d-b903-5e38-a138-e6189646a181', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'clarify' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '72274d28-e585-5c47-87cc-b37c558b8179', id, 'cd18a86d-b903-5e38-a138-e6189646a181', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'expectation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '72274d28-e585-5c47-87cc-b37c558b8179', id, 'cd18a86d-b903-5e38-a138-e6189646a181', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'constructive feedback' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '72274d28-e585-5c47-87cc-b37c558b8179', id, 'cd18a86d-b903-5e38-a138-e6189646a181', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'request' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '72274d28-e585-5c47-87cc-b37c558b8179', id, 'cd18a86d-b903-5e38-a138-e6189646a181', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'specific' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '72274d28-e585-5c47-87cc-b37c558b8179', id, 'cd18a86d-b903-5e38-a138-e6189646a181', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'suggestion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '72274d28-e585-5c47-87cc-b37c558b8179', id, 'cd18a86d-b903-5e38-a138-e6189646a181', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'follow up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '72274d28-e585-5c47-87cc-b37c558b8179', id, '08d25a73-c058-5670-8188-b8acc388ffd5', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'clarify' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '72274d28-e585-5c47-87cc-b37c558b8179', id, '08d25a73-c058-5670-8188-b8acc388ffd5', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'expectation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '72274d28-e585-5c47-87cc-b37c558b8179', id, '08d25a73-c058-5670-8188-b8acc388ffd5', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'constructive feedback' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '72274d28-e585-5c47-87cc-b37c558b8179', id, '08d25a73-c058-5670-8188-b8acc388ffd5', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'request' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '72274d28-e585-5c47-87cc-b37c558b8179', id, '08d25a73-c058-5670-8188-b8acc388ffd5', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'specific' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '72274d28-e585-5c47-87cc-b37c558b8179', id, '08d25a73-c058-5670-8188-b8acc388ffd5', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'suggestion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '72274d28-e585-5c47-87cc-b37c558b8179', id, '08d25a73-c058-5670-8188-b8acc388ffd5', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'follow up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '72274d28-e585-5c47-87cc-b37c558b8179', id, '9bd8a711-4499-5d4a-95cc-4ab7a9f84363', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'clarify' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '72274d28-e585-5c47-87cc-b37c558b8179', id, '9bd8a711-4499-5d4a-95cc-4ab7a9f84363', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'expectation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '72274d28-e585-5c47-87cc-b37c558b8179', id, '9bd8a711-4499-5d4a-95cc-4ab7a9f84363', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'constructive feedback' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '72274d28-e585-5c47-87cc-b37c558b8179', id, '9bd8a711-4499-5d4a-95cc-4ab7a9f84363', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'request' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '72274d28-e585-5c47-87cc-b37c558b8179', id, '9bd8a711-4499-5d4a-95cc-4ab7a9f84363', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'specific' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '72274d28-e585-5c47-87cc-b37c558b8179', id, '9bd8a711-4499-5d4a-95cc-4ab7a9f84363', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'suggestion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '72274d28-e585-5c47-87cc-b37c558b8179', id, '9bd8a711-4499-5d4a-95cc-4ab7a9f84363', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'follow up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
